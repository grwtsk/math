import scratch.common_mean_stieltjes_20261004.CountOccurrences
#print CommonMeanStieltjes.PositiveOccurrenceWindow
#print CommonMeanStieltjes.PositiveCountFibres
#check CommonMeanStieltjes.positiveOccurrenceWindowEquiv
#print axioms CommonMeanStieltjes.positiveOccurrenceWindowEquiv
#check CommonMeanStieltjes.positive_occurrence_window_finite
#print axioms CommonMeanStieltjes.positive_occurrence_window_finite
#check CommonMeanStieltjes.positive_occurrence_window_card_eq_count
#print axioms CommonMeanStieltjes.positive_occurrence_window_card_eq_count
open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
