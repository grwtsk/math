/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap

/-!
# Signed finite selection and genuine upper-certificate descent

A selected set is paid using the actual sign of its summands, not positivity
of a Gram matrix. Complements are literal finite complements; overlapping
selection rules never count a summand twice. The final comparison distinguishes
an invariant exact reconstruction from an improved certified upper bound.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.FiniteSums.SignedSelection

open GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap

variable {ι : Type*} [DecidableEq ι]

/-- Extract only actual nonpositive summands, retaining the signed complement. -/
theorem sum_eq_complement_sub_credit (S B : Finset ι) (f : ι → ℝ)
    (hB : B ⊆ S) (hneg : ∀ i ∈ B, f i ≤ 0) :
    (∑ i ∈ S, f i) = (∑ i ∈ S \ B, f i) - ∑ i ∈ B, |f i| := by
  have hi : S ∩ B = B := Finset.inter_eq_right.mpr hB
  have hs := sum_inter_add_sdiff S B f
  rw [hi] at hs
  have hn : (∑ i ∈ B, f i) = -(∑ i ∈ B, |f i|) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro i hi
    rw [abs_of_nonpos (hneg i hi), neg_neg]
  rw [hn] at hs
  linarith

/-- The exact overpayment of the absolute majorant after selected cancellation. -/
theorem absolute_upper_slack (S B : Finset ι) (f : ι → ℝ)
    (hB : B ⊆ S) (hneg : ∀ i ∈ B, f i ≤ 0) :
    ((∑ i ∈ S, |f i|) - 2 * ∑ i ∈ B, |f i|) - (∑ i ∈ S, f i) =
      ∑ i ∈ S \ B, (|f i| - f i) := by
  have hi : S ∩ B = B := Finset.inter_eq_right.mpr hB
  have hs := sum_inter_add_sdiff S B (fun i => |f i|)
  rw [hi] at hs
  rw [sum_eq_complement_sub_credit S B f hB hneg, Finset.sum_sub_distrib]
  linarith

/-- Twice the selected negative mass is removed from the unsigned allowance. -/
theorem sum_le_absolute_sub_twice_credit (S B : Finset ι) (f : ι → ℝ)
    (hB : B ⊆ S) (hneg : ∀ i ∈ B, f i ≤ 0) :
    (∑ i ∈ S, f i) ≤ (∑ i ∈ S, |f i|) - 2 * ∑ i ∈ B, |f i| := by
  have he := absolute_upper_slack S B f hB hneg
  have hn : 0 ≤ ∑ i ∈ S \ B, (|f i| - f i) :=
    Finset.sum_nonneg (fun i _ => sub_nonneg.mpr (le_abs_self (f i)))
  linarith

/-- Enlarging a certified selection pays precisely the newly selected mass. -/
theorem upper_step_eq_new_credit (S B C : Finset ι) (f : ι → ℝ)
    (hBC : B ⊆ C) :
    (∑ i ∈ S, |f i|) - 2 * ∑ i ∈ C, |f i| =
      ((∑ i ∈ S, |f i|) - 2 * ∑ i ∈ B, |f i|) -
        2 * ∑ i ∈ C \ B, |f i| := by
  have hs := sum_inter_add_sdiff C B (fun i => |f i|)
  rw [Finset.inter_eq_right.mpr hBC] at hs
  linarith

/-- Finite simultaneous refinements preserve all cancellation inside each step. -/
theorem signed_steps_telescope (v : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, (v (k + 1) - v k)) = v N - v 0 := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      simp only [Nat.succ_eq_add_one]
      ring

/-- Descending an auxiliary model alone is not a descent of the exact target.
The source-extracted residual compensates the model change exactly. -/
theorem upper_certificate_slack (S T : Finset ι) (g a : ι → ℝ) (D : ℝ) :
    ((∑ i ∈ S, g i) + D) - (∑ i ∈ T, a i) =
      D - (arithmeticRemainder S T g a - geometryRemainder S T g) := by
  have h := difference_eq_remainders S T g a
  linarith

/-- A real gain must come from reducing the proved remainder overpayment. -/
theorem upper_certificate_step (S₁ S₂ T : Finset ι) (g₁ g₂ a : ι → ℝ)
    (D₁ D₂ : ℝ) :
    ((∑ i ∈ S₂, g₂ i) + D₂) - ((∑ i ∈ S₁, g₁ i) + D₁) =
      (D₂ - (arithmeticRemainder S₂ T g₂ a - geometryRemainder S₂ T g₂)) -
      (D₁ - (arithmeticRemainder S₁ T g₁ a - geometryRemainder S₁ T g₁)) := by
  have h₁ := upper_certificate_slack S₁ T g₁ a D₁
  have h₂ := upper_certificate_slack S₂ T g₂ a D₂
  linarith

end GRWTSK.Analysis.FiniteSums.SignedSelection
