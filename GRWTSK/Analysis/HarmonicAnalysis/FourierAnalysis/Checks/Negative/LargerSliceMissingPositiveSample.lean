/- Intended rejection: positive sample size cannot be omitted from the
larger-slice theorem's conclusion. This has one deliberate type mismatch. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModLargerSlice

example {p m : ℕ} [NeZero p] (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdensity : (m : ℝ) ≤ (1 - ε) * S.card) (z : ZMod p) :
    (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModLargerSliceParameters.largerSliceConstant ε *
        Real.sqrt (Real.log S.card) / ((S.card : ℝ) * Real.sqrt m) := by
  have source_bound : 1 ≤ m →
      (GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
        1 / p + GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModLargerSliceParameters.largerSliceConstant ε *
          Real.sqrt (Real.log S.card) / ((S.card : ℝ) * Real.sqrt m) :=
    fun hm =>
      GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ZModLargerSlice.subsetSumProbability_le_largerSlice
        hp S hn hm ε hε hε1 hdensity z
  exact source_bound
