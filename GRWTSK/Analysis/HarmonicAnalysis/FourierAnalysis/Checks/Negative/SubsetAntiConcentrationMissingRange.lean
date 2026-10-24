/- Intended rejection: the source theorem's logarithmic lower and upper
sample-size restrictions cannot be omitted from its conclusion. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModBalancedExpectedLayers

example {p m : ℕ} [NeZero p] (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (z : ZMod p) :
    (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + (2 : ℝ) ^ 24 / ((S.card : ℝ) * Real.sqrt m) := by
  have source_bound :=
    GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModBalancedExpectedLayers.subsetSumProbability_le_source_constant (m := m) hp S hn
  exact source_bound
