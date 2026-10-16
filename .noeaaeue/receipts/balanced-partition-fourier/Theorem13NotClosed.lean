import GRWTSK.Analysis.Fourier.ZModBalancedPartition
open GRWTSK.ZModBalancedPartition
-- EXPECTED REJECTION: the proved layer bound is not the final numerical bound.
example {p m : ℕ} [NeZero p] (S : Finset (ZMod p))
    (hn : 2 ≤ S.card)
    (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card)
    (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      (p : ℝ)⁻¹ + (2 : ℝ) ^ 24 / ((S.card : ℝ) * Real.sqrt m) :=
  source_slice_mass_le_balanced_layers S hn hl hu z
