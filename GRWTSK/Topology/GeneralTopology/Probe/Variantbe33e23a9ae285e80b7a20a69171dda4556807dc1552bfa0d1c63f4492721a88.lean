import SourcePrimeSquareTailWork
set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
#check @Summable.sum_le_tsum
#check @SummationFilter.instNeBotUnconditional
#synth (SummationFilter.unconditional Nat.Primes).NeBot
example : (SummationFilter.unconditional Nat.Primes).NeBot := by
  constructor
  change (Filter.atTop : Filter (Finset Nat.Primes)).NeBot
  infer_instance
