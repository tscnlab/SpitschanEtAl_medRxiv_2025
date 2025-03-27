#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
library(forcats) # For reversing factor levels
library(tidyr)
library(dplyr)

setwd("")
#Read Data
data=read.csv('LadenburgStatementsR_DATA_2024-10-30_1914.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$redcap_survey_identifier)="Survey Identifier"
label(data$ladenburg_statements_timestamp)="Survey Timestamp"
label(data$s01_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s01_comment)="Do you have any comments on the statement?"
label(data$s02_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s02_comment)="Do you have any comments on the statement?"
label(data$s03_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s03_comment)="Do you have any comments on the statement?"
label(data$s04_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s04_comment)="Do you have any comments on the statement?"
label(data$s05_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s05_comment)="Do you have any comments on the statement?"
label(data$s06_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s06_comment)="Do you have any comments on the statement?"
label(data$s07_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s07_comment)="Do you have any comments on the statement?"
label(data$s08_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s08_comment)="Do you have any comments on the statement?"
label(data$s09_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s09_comment)="Do you have any comments on the statement?"
label(data$s10_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s10_comment)="Do you have any comments on the statement?"
label(data$s11_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s11_comment)="Do you have any comments on the statement?"
label(data$s12_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s12_comment)="Do you have any comments on the statement?"
label(data$s13_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s13_comment)="Do you have any comments on the statement?"
label(data$s14_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s14_comment)="Do you have any comments on the statement?"
label(data$s15_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s15_comment)="Do you have any comments on the statement?"
label(data$s16_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s16_comment)="Do you have any comments on the statement?"
label(data$s17_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s17_comment)="Do you have any comments on the statement?"
label(data$s18_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s18_comment)="Do you have any comments on the statement?"
label(data$s19_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s19_comment)="Do you have any comments on the statement?"
label(data$s20_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s20_comment)="Do you have any comments on the statement?"
label(data$s21_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s21_comment)="Do you have any comments on the statement?"
label(data$s22_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s22_comment)="Do you have any comments on the statement?"
label(data$s23_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s23_comment)="Do you have any comments on the statement?"
label(data$s24_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s24_comment)="Do you have any comments on the statement?"
label(data$s25_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s25_comment)="Do you have any comments on the statement?"
label(data$s26_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s26_comment)="Do you have any comments on the statement?"
label(data$s27_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s27_comment)="Do you have any comments on the statement?"
label(data$s28_statement)="Do you agree or disagree with the preceding statement, based on the current scientific evidence?"
label(data$s28_comment)="Do you have any comments on the statement?"
label(data$open_ended)="Do you have any additional comments?"
label(data$ladenburg_statements_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$s01_statement.factor = factor(data$s01_statement,levels=c("1","0"))
data$s02_statement.factor = factor(data$s02_statement,levels=c("1","0"))
data$s03_statement.factor = factor(data$s03_statement,levels=c("1","0"))
data$s04_statement.factor = factor(data$s04_statement,levels=c("1","0"))
data$s05_statement.factor = factor(data$s05_statement,levels=c("1","0"))
data$s06_statement.factor = factor(data$s06_statement,levels=c("1","0"))
data$s07_statement.factor = factor(data$s07_statement,levels=c("1","0"))
data$s08_statement.factor = factor(data$s08_statement,levels=c("1","0"))
data$s09_statement.factor = factor(data$s09_statement,levels=c("1","0"))
data$s10_statement.factor = factor(data$s10_statement,levels=c("1","0"))
data$s11_statement.factor = factor(data$s11_statement,levels=c("1","0"))
data$s12_statement.factor = factor(data$s12_statement,levels=c("1","0"))
data$s13_statement.factor = factor(data$s13_statement,levels=c("1","0"))
data$s14_statement.factor = factor(data$s14_statement,levels=c("1","0"))
data$s15_statement.factor = factor(data$s15_statement,levels=c("1","0"))
data$s16_statement.factor = factor(data$s16_statement,levels=c("1","0"))
data$s17_statement.factor = factor(data$s17_statement,levels=c("1","0"))
data$s18_statement.factor = factor(data$s18_statement,levels=c("1","0"))
data$s19_statement.factor = factor(data$s19_statement,levels=c("1","0"))
data$s20_statement.factor = factor(data$s20_statement,levels=c("1","0"))
data$s21_statement.factor = factor(data$s21_statement,levels=c("1","0"))
data$s22_statement.factor = factor(data$s22_statement,levels=c("1","0"))
data$s23_statement.factor = factor(data$s23_statement,levels=c("1","0"))
data$s24_statement.factor = factor(data$s24_statement,levels=c("1","0"))
data$s25_statement.factor = factor(data$s25_statement,levels=c("1","0"))
data$s26_statement.factor = factor(data$s26_statement,levels=c("1","0"))
data$s27_statement.factor = factor(data$s27_statement,levels=c("1","0"))
data$s28_statement.factor = factor(data$s28_statement,levels=c("1","0"))
data$ladenburg_statements_complete.factor = factor(data$ladenburg_statements_complete,levels=c("0","1","2"))

levels(data$s01_statement.factor)=c("Agree","Disagree")
levels(data$s02_statement.factor)=c("Agree","Disagree")
levels(data$s03_statement.factor)=c("Agree","Disagree")
levels(data$s04_statement.factor)=c("Agree","Disagree")
levels(data$s05_statement.factor)=c("Agree","Disagree")
levels(data$s06_statement.factor)=c("Agree","Disagree")
levels(data$s07_statement.factor)=c("Agree","Disagree")
levels(data$s08_statement.factor)=c("Agree","Disagree")
levels(data$s09_statement.factor)=c("Agree","Disagree")
levels(data$s10_statement.factor)=c("Agree","Disagree")
levels(data$s11_statement.factor)=c("Agree","Disagree")
levels(data$s12_statement.factor)=c("Agree","Disagree")
levels(data$s13_statement.factor)=c("Agree","Disagree")
levels(data$s14_statement.factor)=c("Agree","Disagree")
levels(data$s15_statement.factor)=c("Agree","Disagree")
levels(data$s16_statement.factor)=c("Agree","Disagree")
levels(data$s17_statement.factor)=c("Agree","Disagree")
levels(data$s18_statement.factor)=c("Agree","Disagree")
levels(data$s19_statement.factor)=c("Agree","Disagree")
levels(data$s20_statement.factor)=c("Agree","Disagree")
levels(data$s21_statement.factor)=c("Agree","Disagree")
levels(data$s22_statement.factor)=c("Agree","Disagree")
levels(data$s23_statement.factor)=c("Agree","Disagree")
levels(data$s24_statement.factor)=c("Agree","Disagree")
levels(data$s25_statement.factor)=c("Agree","Disagree")
levels(data$s26_statement.factor)=c("Agree","Disagree")
levels(data$s27_statement.factor)=c("Agree","Disagree")
levels(data$s28_statement.factor)=c("Agree","Disagree")
levels(data$ladenburg_statements_complete.factor)=c("Incomplete","Unverified","Complete")

# Create a list of labels corresponding to each statement
statement_labels <- c(
  "Light can be described by its spectrum: how much energy there is at each wavelength across the visible spectrum (from 380 to 780 nm).",
  "Light can be described by its spectrum: how much energy there is at each wavelength across the visible spectrum (from 380 to 780 nm).",
  "The pattern of one's light exposure across the day and the year can be quite complex, and depends on where one is and what one does.",
  "Light exposure can be described by its intensity: The total amount of energy across all wavelengths from 380 to 780 nm.",
  "Daylight has what we call a broad spectrum, with a lot of energy across many wavelengths.",
  "Different electric light sources (e.g. LED or fluorescent lamps, etc.) have different spectra.",
  "The properties of daylight (spectrum, intensity and spatial distribution) vary throughout the day and the year, and with changing weather.",
  "The human eye contains the retina, which has several photosensitive cells that differ in their responses to different wavelengths.",
  "The cones allow us to see colour, motion and spatial detail in bright lighting conditions.",
  "The rods allow us to see rudimentary spatial detail under dim light.",
  "The intrinsically photosensitive retinal ganglion cells (ipRGCs) convert light into signals that influence many physiological functions.",
  "Predominantly through the ipRGCs, light causes the suppression of melatonin in the evening and at night.",
  "Light is the main signal that ensures the circadian system is synchronized to the 24-hour cycles in the environment.",
  "Light directly influences the biological clock in the brain, regulating sleep-wake cycles and other daily physiological rhythms.",
  "Light in the morning can advance the circadian clock, and light in the evening can delay the circadian clock.",
  "Light can also boost alertness and cognitive function under some conditions.",
  "What determines these physiological responses to light is primarily determined by how much light reaches the retina and stimulates the ipRGCs at a certain time.",
  "Higher light levels in the evening can increase the time to fall asleep, predominantly through ipRGCs.",
  "Higher light levels during the daytime can improve mood.",
  "Higher light levels during the daytime can improve sleep quality in the following night.",
  "Following a medically-prescribed protocol for bright light exposure in the morning can lead to improvements in mood for people with certain clinical diagnoses.",
  "Higher light levels during the daytime reduce the physiological effects of light in the evening and at night.",
  "A healthy pattern of daily light exposure includes a rhythm of bright light and darkness every day.",
  "Age can influence the physiological effect of light on humans, as less light reaches the retina because of ageing.",
  "There are substantial individual differences in the physiological response to light.",
  "The majority of studies on the physiological effects of light have been performed in the laboratory.",
  "There is a need for studies on the physiological effects of light incorporating a broad range of study populations.",
  "The physiological effects of light are an area of active investigation."
)

# Select the statement columns (e.g., s01_statement.factor, s02_statement.factor, etc.)
statement_columns <- grep("^s\\d{2}_statement.factor$", names(data), value = TRUE)

# Reshape the data into long format for easier plotting
data_long <- data %>%
  select(all_of(statement_columns)) %>%
  pivot_longer(cols = everything(), names_to = "Statement", values_to = "Response")

# Clean the statement names (remove '_statement.factor') and map to full statement labels
data_long$Statement <- gsub("_statement.factor", "", data_long$Statement)
data_long$Statement <- factor(data_long$Statement, labels = statement_labels)

# Reverse the order of the statements so that the first one is at the top
data_long$Statement <- fct_rev(data_long$Statement)

# Calculate proportions for each statement
data_prop <- data_long %>%
  group_by(Statement, Response) %>%
  summarise(Count = n()) %>%
  mutate(Proportion = Count / sum(Count))

# Count the number of respondents
n_respondents <- n_distinct(data$record_id)

# Ensure that "Agree" is plotted first (left) and "Disagree" second (right)
data_prop$Response <- factor(data_prop$Response, levels = c("Disagree", "Agree"))

# Plot data as a heatmap -----------------------------------------------------------------
library(ggplot2)
library(dplyr)
library(scales)

# Fix NA labels
data_prop$Response[is.na(data_prop$Response)] <- "Did Not Complete"

# Set factor levels in preferred order
data_prop$Response <- factor(data_prop$Response, levels = c("Agree", "Disagree", "Did Not Complete"))

# Order Statement factor for top-to-bottom appearance in plot
data_prop <- data_prop %>%
  mutate(Statement = factor(Statement, levels = rev(unique(Statement)))) %>%
  mutate(y_pos = as.numeric(Statement))  # For row borders

# Create full list of horizontal lines (between and below all rows)
hline_data <- data.frame(y_pos = c(unique(data_prop$y_pos) + 0.5, min(data_prop$y_pos) - 0.5))

# Build the heatmap
ggplot(data_prop, aes(x = Response, y = Statement, fill = Proportion)) +
  geom_tile(color = "white", linewidth = 0.4) +
  geom_text(aes(label = percent(Proportion, accuracy = 1)), size = 6) +
  geom_hline(data = hline_data, aes(yintercept = y_pos), color = "black", size = 0.3) +
  scale_fill_gradientn(
    colors = c("#D55E00", "#F0E442", "#009E73"),  # Orange → Yellow → Green
    values = rescale(c(0, 0.5, 1)),
    limits = c(0, 1),
    labels = percent_format()
  ) +
  labs(
    title = paste("Consensus among Ladenburg Light & Health Consortium (n = ", n_respondents, ")", sep = ""),
    x = NULL, y = NULL, fill = "Proportion"
  ) +
  theme_minimal() +
  theme(
    # Clean white background
    panel.background = element_rect(fill = "white", color = NA),
    plot.background = element_rect(fill = "white", color = NA),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    
    # Text styling
    axis.text.x = element_text(size = 18, angle = 0, hjust = 0.5),
    axis.text.y = element_text(size = 20),
    plot.title = element_text(size = 20, face = "bold", hjust = 0.5),
    
    # Legend styling
    legend.text = element_text(size = 14),
    legend.title = element_text(size = 16, face = "bold"),
    legend.key.height = unit(1.4, "cm"),
    legend.key.width = unit(1, "cm")
  )

ggsave(
  filename = "consensus_plot_heatmap.png",
  plot = last_plot(),
  width = 28,       # Wider canvas
  height = 8,       # Taller for long labels
  units = "in",
  dpi = 500,
  bg = "white"      # Prevent transparent background in PNG
)
