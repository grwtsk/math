/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockMomentIntegral

/-!
# A rational rate for endpoint quadrature of the doubling block

The endpoint difference cancels the parameter-one moments. What remains is
a weighted positive sum of moments at zero, controlled by the square bound
for each moment. All conclusions are inequalities or equalities in ℚ.
-/

namespace GRWTSK.XiPrimeBlockRational

/-- The two parameter-one terms cancel within each harmonic summand. -/
theorem block_endpoint_sub (N : ℕ) :
    block N 0 - block N 1 =
      ∑ i ∈ Finset.range N, moment (N+i+1) 0 / ((N : ℚ)+(i : ℚ)+1) := by
  rw [block, block, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  have h := moment_succ_eq_sub (N+i) (r := 0) (by norm_num)
  norm_num only [zero_add] at h ⊢
  rw [h, ← sub_div]
  ring

/-- The squared zero-parameter moment is at most the reciprocal of j+1. -/
theorem moment_zero_sq_le (j : ℕ) : (moment j 0)^2 ≤ 1/((j : ℚ)+1) := by
  induction j with
  | zero => norm_num [moment]
  | succ j ih =>
    have hfactor : (2*((j : ℚ)+1)/(2*j+3))^2 ≤ ((j : ℚ)+1)/(j+2) := by
      rw [div_pow, div_le_div_iff₀ (by positivity) (by positivity)]
      nlinarith only [show 0 ≤ (j : ℚ) by positivity]
    calc
      (moment (j+1) 0)^2 =
          (2*((j : ℚ)+1)/(2*j+3))^2 * (moment j 0)^2 := by simp only [moment, zero_add]; ring
      _ ≤ (((j : ℚ)+1)/(j+2)) * (1/((j : ℚ)+1)) :=
        mul_le_mul hfactor ih (sq_nonneg _) (by positivity)
      _ = 1/((↑(j+1) : ℚ)+1) := by push_cast; field_simp; ring

private theorem zero_moments_antitone : Antitone (fun j => moment j 0) := by
  apply antitone_nat_of_succ_le
  intro j
  rw [moment_succ_eq_sub j (r := 0) (by norm_num)]
  exact sub_le_self _ (moment_nonneg j (by norm_num))

/-- The whole endpoint difference is bounded by the zeroth-parameter moment at N. -/
theorem block_endpoint_sub_le_moment (N : ℕ) : block N 0 - block N 1 ≤ moment N 0 := by
  rw [block_endpoint_sub]
  have hm := moment_nonneg N (r := 0) (by norm_num)
  calc
    _ ≤ ∑ _i ∈ Finset.range N, moment N 0 / ((N : ℚ)+1) := by
      apply Finset.sum_le_sum
      intro i hi
      apply le_trans (div_le_div_of_nonneg_right
        (zero_moments_antitone (show N ≤ N+i+1 by omega)) (by positivity))
      apply div_le_div_of_nonneg_left hm (by positivity)
      linarith [show (0 : ℚ) ≤ i by positivity]
    _ = (N : ℚ) * (moment N 0 / ((N : ℚ)+1)) := by simp
    _ ≤ moment N 0 := by
      rw [← mul_div_assoc, div_le_iff₀ (by positivity)]
      nlinarith

/-- Squared endpoint difference on every block, including the empty block. -/
theorem block_endpoint_sub_sq_le (N : ℕ) : (block N 0 - block N 1)^2 ≤ 1/((N : ℚ)+1) := by
  have h : 0 ≤ block N 0 - block N 1 := sub_nonneg.mpr
    (block_antitone N (r := 0) (s := 1) (by norm_num) (by norm_num))
  exact (pow_le_pow_left₀ h (block_endpoint_sub_le_moment N) 2).trans (moment_zero_sq_le N)

/-- Finite rational mesh-width bound, including its exact Q scaling. -/
theorem quadrature_width_sq_le (N : ℕ) {Q : ℕ} (hQ : Q ≠ 0) :
    (upper N Q - lower N Q)^2 ≤ 1 / (((N : ℚ)+1) * (Q : ℚ)^2) := by
  rw [quadrature_width N hQ, div_pow, ← div_div]
  exact div_le_div_of_nonneg_right (block_endpoint_sub_sq_le N) (sq_nonneg _)

end GRWTSK.XiPrimeBlockRational
