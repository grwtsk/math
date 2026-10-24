import GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation
open GRWTSK.RiemannHypothesis.CCC
example : 0 ≤ noteCorrelation (primeNoteCascade (primePrefix 11)) (Real.log 11) (Real.log 12) := by
  linarith [primePrefix_eleven_negative_correlation]
