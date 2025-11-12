library(ggplot2)
library(dplyr)
library(tidyverse)
german <- rchallenge::german
help("german")
summary(german)

german|>
  ggplot(aes(x = amount)) +
  geom_histogram()
german|>
  filter(age >= 30)|>
  filter(amount >=5000)|>
  select(age, amount, credit_risk)|>
  arrange(desc(amount))
german|>
  group_by(credit_risk)|>
  summarise(avg_amount = mean(amount))

set.seed(123)