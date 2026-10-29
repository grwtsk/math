/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.Tactic

/-!
# Exact finite correlation transport and distributional comparison

The sum of absolute joint-law discrepancies controls the covariance of
one-bounded observables. This is an elementary finite-sum estimate, not an
import of Pinsker's inequality or an entropy-decrement theorem. To use a
mutual-information bound one must separately prove its comparison with
this exact L1 discrepancy for the same probability law.

The kernel identity keeps the shift weights and signed correlations.
Coefficient positivity or a unit mass bound does not assert cancellation.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Inequalities.FiniteKernelCorrelation

open scoped BigOperators

variable {α β : Type*}

/-- This is twice total variation when the two arrays are probability laws. -/
def jointL1 (A : Finset α) (B : Finset β)
    (P : α → β → ℝ) (p : α → ℝ) (q : β → ℝ) : ℝ :=
  ∑ i ∈ A, ∑ j ∈ B, |P i j - p i * q j|

theorem product_pairing (A : Finset α) (B : Finset β)
    (p u : α → ℝ) (q v : β → ℝ) :
    (∑ i ∈ A, ∑ j ∈ B, (p i * q j) * (u i * v j)) =
      (∑ i ∈ A, p i * u i) * (∑ j ∈ B, q j * v j) := by
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- No probability assumptions are hidden: the identity holds for arbitrary real arrays. -/
theorem joint_pairing_sub_product (A : Finset α) (B : Finset β)
    (P : α → β → ℝ) (p u : α → ℝ) (q v : β → ℝ) :
    (∑ i ∈ A, ∑ j ∈ B, P i j * (u i * v j)) -
      (∑ i ∈ A, p i * u i) * (∑ j ∈ B, q j * v j) =
      ∑ i ∈ A, ∑ j ∈ B, (P i j - p i * q j) * (u i * v j) := by
  rw [← product_pairing A B p u q v, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- With actual marginals p,q of a probability law P, the left side is covariance. -/
theorem covariance_le_jointL1 (A : Finset α) (B : Finset β)
    (P : α → β → ℝ) (p u : α → ℝ) (q v : β → ℝ)
    (hu : ∀ i ∈ A, |u i| ≤ 1) (hv : ∀ j ∈ B, |v j| ≤ 1) :
    |(∑ i ∈ A, ∑ j ∈ B, P i j * (u i * v j)) -
      (∑ i ∈ A, p i * u i) * (∑ j ∈ B, q j * v j)| ≤
      jointL1 A B P p q := by
  rw [joint_pairing_sub_product A B P p u q v]
  unfold jointL1
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro i hi
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro j hj
  rw [abs_mul, abs_mul]
  have huv : |u i| * |v j| ≤ 1 := by
    calc
      |u i| * |v j| ≤ 1 * 1 := mul_le_mul (hu i hi) (hv j hj)
        (abs_nonneg _) zero_le_one
      _ = 1 := one_mul _
  simpa only [mul_one] using
    mul_le_mul_of_nonneg_left huv (abs_nonneg (P i j - p i * q j))

/-- The marginal product is not dropped unless a separate centering theorem pays it. -/
theorem correlation_le_marginals_add_jointL1 (A : Finset α) (B : Finset β)
    (P : α → β → ℝ) (p u : α → ℝ) (q v : β → ℝ)
    (hu : ∀ i ∈ A, |u i| ≤ 1) (hv : ∀ j ∈ B, |v j| ≤ 1) :
    |∑ i ∈ A, ∑ j ∈ B, P i j * (u i * v j)| ≤
      |(∑ i ∈ A, p i * u i) * (∑ j ∈ B, q j * v j)| +
        jointL1 A B P p q := by
  have h := covariance_le_jointL1 A B P p u q v hu hv
  have ht := abs_add_le
    ((∑ i ∈ A, ∑ j ∈ B, P i j * (u i * v j)) -
      (∑ i ∈ A, p i * u i) * (∑ j ∈ B, q j * v j))
    ((∑ i ∈ A, p i * u i) * (∑ j ∈ B, q j * v j))
  rw [sub_add_cancel] at ht
  linarith

/-- Keep the exact kernel before applying an averaged correlation theorem. -/
theorem weighted_pairing (A : Finset α) (B : Finset β)
    (u : α → ℝ) (v : α → β → ℝ) (K : β → ℝ) :
    (∑ i ∈ A, u i * ∑ j ∈ B, K j * v i j) =
      ∑ j ∈ B, K j * ∑ i ∈ A, u i * v i j := by
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro j hj
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- Constant signals show why a normalized positive kernel alone gives no cancellation. -/
theorem constant_signal_pairing (A : Finset α) (B : Finset β) (K : β → ℝ)
    (hK : ∑ j ∈ B, K j = 1) :
    (∑ _i ∈ A, (1 : ℝ) * ∑ j ∈ B, K j * 1) = (A.card : ℝ) := by
  simp [hK]

end GRWTSK.Analysis.Inequalities.FiniteKernelCorrelation
