library(twitteR)

consumer_key <- "0AJ9nLvGjj7nqLD4XqTRVmrxQ" #From dev.twitter.com
consumer_secret <- "syyaRcy7qkozFjVisIS13pPnjOqA2r8Nnwu52u8y07m6eC9IER" #From dev.twitter.com
access_token <- "949028546449731585-Lz68j2ydeA9VwEvM7wOt45yCm9OC6uH" #From dev.twitter.com
access_token_secret <- "EZgAhJsilW6BrVyH1qHK5ulbiwTFCS1jZzrwoHjBVW6Pi" #From dev.twitter.com

#Connect to twitter with access tokens
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_token_secret)


account <- "realDonaldTrump"
account
account.timeline <- userTimeline(account, n=100, includeRts=TRUE)

TrialDF <- twListToDF(account.timeline)
file.timeline <- paste(account, "Trump.csv", sep="")
write.csv(TrialDF, file.timeline)