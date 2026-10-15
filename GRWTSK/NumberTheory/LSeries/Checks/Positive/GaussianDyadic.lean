/- Actual annular Gaussian consumers and missing-coverage obstruction.
Upstream source/license notices are preserved in the imported library modules.
Released under Apache-2.0. -/
import GRWTSK.NumberTheory.LSeries.GaussianDyadic

namespace GRWTSK.NumberTheory.LSeries.GaussianDyadic.Checks
noncomputable section
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.NumberTheory.LSeries.GaussianContour

theorem dyadic_partition_generic (x : ℝ) (hx : 1 ≤ x) :
    HasSum (fun j : ℕ => dyadicAnnulus (x/(2:ℝ)^j)) 1 :=
  dyadicAnnulus_partition x hx

theorem gaussianDyadic_generic (σ Z : ℝ) (hσ : 1 < σ) (hZ : 0 < Z) :
    gaussianZetaContour σ Z =
      ∑' j : ℕ, ∑ n ∈ Finset.range (2^(j+1)), gaussianDyadicTerm Z n j :=
  gaussianZetaContour_eq_dyadic σ Z hσ hZ

theorem gaussianDyadic_two_one :
    gaussianZetaContour 2 1 =
      ∑' j : ℕ, ∑ n ∈ Finset.range (2^(j+1)), gaussianDyadicTerm 1 n j :=
  gaussianZetaContour_eq_dyadic 2 1 (by norm_num) (by norm_num)

theorem gaussianDyadic_first_scale (Z : ℝ) :
    (∑' n : ℕ, gaussianDyadicTerm Z n 0) = gaussianMellinProfile (1/Z) := by
  rw [gaussianDyadicTerm_tsum_eq_sum]
  norm_num [gaussianDyadicTerm, dyadicAnnulus, dyadicCutoff, Finset.sum_range_succ,
    Real.smoothTransition.zero_of_nonpos, Real.smoothTransition.one_of_one_le]

/-- Positive points below one are not necessarily covered by this Nat family. -/
theorem dyadic_quarter_all_zero (j : ℕ) :
    dyadicAnnulus ((1/4:ℝ)/(2:ℝ)^j) = 0 := by
  apply dyadicAnnulus_small
  apply (div_le_iff₀ (by positivity : (0:ℝ) < 2^j)).mpr
  have hp : (1:ℝ) ≤ 2^j := one_le_pow₀ (by norm_num : (1:ℝ) ≤ 2)
  nlinarith

theorem dyadic_quarter_tsum_zero :
    (∑' j : ℕ, dyadicAnnulus ((1/4:ℝ)/(2:ℝ)^j)) = 0 := by
  simp only [dyadic_quarter_all_zero, tsum_zero]

theorem dyadic_quarter_not_partition :
    ¬ HasSum (fun j : ℕ => dyadicAnnulus ((1/4:ℝ)/(2:ℝ)^j)) 1 := by
  intro h
  have ht := h.tsum_eq
  rw [dyadic_quarter_tsum_zero] at ht
  norm_num at ht

end
end GRWTSK.NumberTheory.LSeries.GaussianDyadic.Checks
