import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Order.Bounds.Basic
import Mathlib.Tactic

/-!
# Exact candidate-wise and normalized budget returns

Batch 39 candidate correction, messages c9f7c18e-e879-4bb6-8735-43b7bd7a14af
and 44f6b5dd-61a7-49a2-86b3-1771657dc332. Attainment is an explicit input.
These order identities do not assert the native analytic candidate reduction
or supply a common arithmetic upper bound. Zero represents the prescribed
nonnegative meter; it is automatically paid by a nonnegative allowance.
Human correction: grwtsk contributors. Lean proofs: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchCandidateBudget

theorem candidate_budget_iff (H : Set ℝ) (M L : ℝ) (hM : IsGreatest H M) :
    M ≤ L ↔ ∀ h ∈ H, h ≤ L := by
  constructor
  · intro hML h hh
    exact (hM.2 hh).trans hML
  · intro hall
    exact hall M hM.1

theorem zero_represents_nonnegative_meter (H : Set ℝ) (M : ℝ)
    (hM : IsGreatest H M) (hzero : 0 ∈ H) : 0 ≤ M := hM.2 hzero

theorem zero_is_automatically_paid (L : ℝ) (hL : 0 ≤ L) : (0 : ℝ) ≤ L := hL

theorem zero_removed_budget_iff (H : Set ℝ) (L : ℝ) (hL : 0 ≤ L) :
    (∀ h ∈ H, h ≤ L) ↔ ∀ h ∈ H \ {0}, h ≤ L := by
  constructor
  · intro hall h hh
    exact hall h hh.1
  · intro hall h hh
    by_cases hz : h = 0
    · simpa [hz] using hL
    · exact hall h ⟨hh, by simpa using hz⟩

theorem positive_part_budget_iff (H : Set ℝ) (M L : ℝ) (hM : IsGreatest H M) :
    max 0 M ≤ L ↔ 0 ≤ L ∧ ∀ h ∈ H, h ≤ L := by
  rw [max_le_iff, candidate_budget_iff H M L hM]

theorem represented_meter_needs_no_extra_positive_part (H : Set ℝ) (M : ℝ)
    (hM : IsGreatest H M) (hzero : 0 ∈ H) : max 0 M = M :=
  max_eq_right (zero_represents_nonnegative_meter H M hM hzero)

theorem normalized_candidate_budget_iff (H : Set ℝ) (M r Q L : ℝ)
    (hM : IsGreatest H M) (hQ : 0 < Q) :
    (M - r) / Q ≤ (L - r) / Q ↔ ∀ h ∈ H, h ≤ L := by
  rw [div_le_div_iff_of_pos_right hQ, sub_le_sub_iff_right]
  exact candidate_budget_iff H M L hM

theorem combine_return_allowances (A D₁ D₂ p₁ p₂ : ℝ) (hA : 1 ≤ A)
    (hD₁ : 0 ≤ D₁) (hD₂ : 0 ≤ D₂) :
    max (D₁ * A ^ p₁) (D₂ * A ^ p₂) ≤ max D₁ D₂ * A ^ max p₁ p₂ := by
  have ha : 0 ≤ A := by linarith
  have hp₁ := Real.rpow_le_rpow_of_exponent_le hA (le_max_left p₁ p₂)
  have hp₂ := Real.rpow_le_rpow_of_exponent_le hA (le_max_right p₁ p₂)
  apply max_le
  · exact (mul_le_mul_of_nonneg_left hp₁ hD₁).trans
      (mul_le_mul_of_nonneg_right (le_max_left D₁ D₂) (Real.rpow_nonneg ha _))
  · exact (mul_le_mul_of_nonneg_left hp₂ hD₂).trans
      (mul_le_mul_of_nonneg_right (le_max_right D₁ D₂) (Real.rpow_nonneg ha _))

end FormalResearch.RiemannHypothesis.Conversation.BranchCandidateBudget
