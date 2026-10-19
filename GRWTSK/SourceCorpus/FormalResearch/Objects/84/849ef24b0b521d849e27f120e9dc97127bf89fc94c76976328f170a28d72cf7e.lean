import scratch.common_mean_stieltjes_20261004.FiniteExternalInputs

#check CommonMeanStieltjes.actual_finite_bounds_with_external_literature_inputs
#print axioms CommonMeanStieltjes.actual_finite_bounds_with_external_literature_inputs
#print CommonMeanScratch.CompletePositiveVerifiedHeight
#print CommonMeanScratch.CorrectedBellottiWongCount
#print CommonMeanScratch.zeroCountMain
#print CommonMeanScratch.correctedBellottiWongError

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
