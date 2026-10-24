/- Intended rejection: the epsilon margin cannot be omitted from the
larger-slice theorem's conclusion. This has one deliberate type mismatch. -/
import GRWTSK.Analysis.Fourier.ZModLargerSlice

example {p m : ℕ} [NeZero p] (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 1 ≤ m) (ε : ℝ)
    (hε : 0 < ε) (hε1 : ε < 1) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + GRWTSK.ZModLargerSliceParameters.largerSliceConstant ε *
        Real.sqrt (Real.log S.card) / ((S.card : ℝ) * Real.sqrt m) := by
  have source_bound : (m : ℝ) ≤ (1 - ε) * S.card →
      (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
        1 / p + GRWTSK.ZModLargerSliceParameters.largerSliceConstant ε *
          Real.sqrt (Real.log S.card) / ((S.card : ℝ) * Real.sqrt m) :=
    fun hdensity =>
      GRWTSK.ZModLargerSlice.subsetSumProbability_le_largerSlice
        hp S hn hm ε hε hε1 hdensity z
  exact source_bound
