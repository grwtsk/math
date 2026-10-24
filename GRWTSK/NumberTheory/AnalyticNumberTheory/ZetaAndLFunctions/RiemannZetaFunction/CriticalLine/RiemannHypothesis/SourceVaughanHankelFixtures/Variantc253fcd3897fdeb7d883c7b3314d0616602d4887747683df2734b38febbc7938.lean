import SourceVaughanHankel

/-!
# Hostile fixtures for literal Vaughan centering

The actual unit-scale long row at n=2 has centered coefficient zero and raw
coefficient minus one. The equality of centered and uncentered deleted
weighted diagonals therefore cannot be obtained by silently substituting rows.
This coefficient fixture does not claim a weighted diagonal is nonzero.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceVaughanHankelFixtures

open ArithmeticFunction
open SourceVaughanHankel SourceHankelReflection
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateVaughanIdentity EstimateSourceMobiusKernel
open EstimateBetaCentering EstimateVaughanTranslationGate EstimateVaughanDiagonalArithmetic

noncomputable section

/-- The literal finite mean at the unit Vaughan cutoff is one. -/
theorem alpha_one : alpha 1 = 1 := by norm_num [alpha]

/-- Every raw long row at cutoff one carries coefficient minus one. -/
theorem beta_one_of_one_lt (n : ℕ) (hn : 1 < n) : beta 1 n = -1 := by
  rw [beta_eq_delta_sub_short, if_neg (by omega : n ≠ 1),
    short_divisor_sum_eq_indicator 1 n (by omega)]
  norm_num

/-- The actual centered long row at cutoff one is identically zero. -/
theorem centeredBeta_one_of_one_lt (n : ℕ) (hn : 1 < n) : centeredBeta 1 n = 0 := by
  rw [centeredBeta, beta_one_of_one_lt n hn, alpha_one]
  norm_num

/-- The first hostile row lies inside the unchanged unit-scale long inventory. -/
theorem two_mem_unit_scale_longInventory : 2 ∈ longInventory 1 := by
  unfold longInventory
  rw [Finset.mem_Ioc]
  constructor
  · norm_num [vaughanCutoff]
  · unfold sourceKernelCutoff EstimateMertensAbel.sourceUpper
    norm_num only [mul_one]
    apply (Nat.le_floor_iff (Real.exp_pos (2 : ℝ)).le).mpr
    have he := Real.add_one_le_exp (2 : ℝ)
    norm_num at he ⊢
    linarith

/-- Replacing the centered row by the uncentered row changes an actual retained coefficient. -/
theorem actual_unit_scale_centering_substitution_false :
    centeredBeta (vaughanCutoff 1) 2 ≠ beta (vaughanCutoff 1) 2 := by
  norm_num only [vaughanCutoff, one_pow, Nat.floor_one]
  rw [centeredBeta_one_of_one_lt 2 (by omega), beta_one_of_one_lt 2 (by omega)]
  norm_num

/-- The centered deleted diagonal is zero at the unit scale because every literal centered row is zero. -/
theorem centeredDeletedDiagonal_one : centeredDeletedDiagonal 1 = 0 := by
  unfold centeredDeletedDiagonal
  apply Finset.sum_eq_zero
  intro m hm
  have hm1 : 1 < m := by
    have h := (Finset.mem_Ioc.mp hm).1
    norm_num [vaughanCutoff] at h
    exact h
  rw [show vaughanCutoff 1 = 1 by norm_num [vaughanCutoff],
    centeredBeta_one_of_one_lt m hm1, mul_zero, zero_mul]

/-- At the unit scale, the uncentered diagonal is the negative retained mean diagonal. -/
theorem old_diagonal_one_eq_negative_mean : typeTwoDiagonal 1 = -deletedDiagonalMean 1 := by
  have h := centeredDeletedDiagonal_eq_old_diagonal_add_centering (1 : ℝ)
  rw [centeredDeletedDiagonal_one,
    show vaughanCutoff 1 = 1 by norm_num [vaughanCutoff], alpha_one, one_mul] at h
  linarith

end
end FormalResearch.RiemannHypothesis.SourceVaughanHankelFixtures
