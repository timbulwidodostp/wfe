# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Weighted Linear Fixed Effects Regression Models for Causal Inference Use wfe With (In) R Software
install.packages("readxl")
install.packages("httr")
install.packages("wfe")
library("httr")
library("readxl")
library("wfe")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/wfe/raw/main/wfe/wfe.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
wfe <- readxl::read_excel(temp_file)
# Estimate Weighted Linear Fixed Effects Regression Models for Causal Inference Use wfe With (In) R Software
# Average Treatment Effect
mod.ate<-wfe(y~tr+x1+x2,data=wfe,treat="tr",unit.index="strata.id",method="unit",qoi="ate",hetero.se=TRUE,auto.se=TRUE)
# summarize the results
summary(mod.ate)
# Average Treatment Effect for the Treated
mod.att <- wfe(y~tr+x1+x2,data=wfe,treat="tr",unit.index="strata.id",method="unit",qoi="att",hetero.se=TRUE,auto.se=TRUE)
# summarize the results
summary(mod.att)
# # Weighted Linear Fixed Effects Regression Models for Causal Inference Use wfe With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished