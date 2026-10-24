/- Intended rejection: a nonzero cyclic modulus does not supply the prime
modulus hypothesis required by the source anti-concentration theorem. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModBalancedExpectedLayers

example {p m : ℕ} [NeZero p] (S : Finset (ZMod p)) (hn : 2 ≤ S.card)
    (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) (z : ZMod p) :
    (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + (2 : ℝ) ^ 24 / ((S.card : ℝ) * Real.sqrt m) := by
  have source_bound :=
    GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModBalancedExpectedLayers.subsetSumProbability_le_source_constant (p := p) (m := m)
  exact source_bound
