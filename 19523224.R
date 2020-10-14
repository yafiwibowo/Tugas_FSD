#Tugas Soal Statiska
#title: "R Notebook"
#output: html_notebook
---------------------
  {r}
library(ISLR)
library(lsr)
dataCredit <- Credit
head(dataCredit)
install.packages("ISLR")
library(ISLR)
dataCredit <- Credit
head(dataCredit)

#no.1
#mean and median of rating
mean(dataCredit$Rating)
median(dataCredit&Rating)

#mean and median of cards
mean(dataCredit$Cards)
median(dataCredit$Cards)

#mean and median of age
mean(dataCredit$Age)
median(dataCredit$Age)

#No.2 
install.packages("lsr")
library(lsr)
#mode of Gender
modeOf(dataCredit$Gender)

#mode of Students
modeOf(dataCredit$Student)

#mode of Married
modeOf(dataCredit$Married)

#No. 3
#percentile 10
quantile(x = dataCredit$Education, probs = 0.10)

#percentile 37
quantile(x = dataCredit$Education, probs = 0.37)

#percentile 91
quantile(x = dataCredit$Education, probs = 0.91)

#No. 4
#Quartiles of Balance
quantile(x = dataCredit$Balance, probs = c(0.25,0.50,0.75))

#Coresponding Boxplot
boxplot(dataCredit$Balance)

#No. 5
#correlation and scatter plot between limit and Limit and Rating
newData <- data.frame(limit = dataCredit$Limit, rating = dataCredit$Rating)
newData

cor(newData)
plot(newData$limit, newData$rating)

#Correlation and scatter plot between Age and Cards
newData <- data.frame(Age = dataCredit$Age, Cards = dataCredit$Cards)
newData

cor(newData)
plot(newData$Age, newData$cards)

#Correlation and scatter plot between Income and Education
newData <- data.frame(Income = dataCredit$Income, Education = dataCredit$Education)
newData

cor(newData)
plot(newData$Income, newData$Education)
#Sebuah penelitian membutuhkan sampel darah, kemudian dilakukan tes darah terhadap 15 orang.
#Terdapat 4 jenis golongan darah A, AB, o dan B. Tentukan probilitas 4 orang memiliki golongan darah O adalah ?
dbinom(x=4, size = 15, prob = 1/15)
#mencari probabilitas kumulatif x=4
pbinom(q = 4, size = 15, prob = 1/15)
#mencari nilai persentil 50
qbinom(p = 0.50, size = 15, prob = 1/15)
#simulasi sampel 25 variabel acak
rbinom(n = 25, size =15, prob = 1/15)
