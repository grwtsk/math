/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib and imported sources retain their upstream attribution and licenses. -/
import GRWTSK.RealFunctions.InequalitiesInRealAnalysis.FiniteKernelCorrelation
import Mathlib.Analysis.Complex.Basic

/-!
# Finite correlation envelopes and a moving-support obstruction

This extends the existing finite correlation comparison rather than assuming
that a fixed-parameter asymptotic theorem is uniform on a growing support.
The countermodel is an arbitrary finite array, NOT a multiplicative function
and NOT a counterexample to an arithmetic correlation theorem.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Inequalities.FiniteCorrelationEnvelope

open scoped BigOperators
variable {α : Type*}

/-- Keep every coefficient and every parameter-dependent error allowance. -/
theorem abs_weighted_sum_le_envelope (S : Finset α) (K c E : α → ℝ)
    (hK : ∀ h ∈ S, 0 ≤ K h) (hE : ∀ h ∈ S, |c h| ≤ E h) :
    |∑ h ∈ S, K h * c h| ≤ ∑ h ∈ S, K h * E h := by
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro h hh
  rw [abs_mul, abs_of_nonneg (hK h hh)]
  exact mul_le_mul_of_nonneg_left (hE h hh) (hK h hh)

/-- Signed or complex scalar weights pay their actual absolute masses. -/
theorem norm_weighted_sum_le_envelope (S : Finset α) (K c : α → ℂ) (E : α → ℝ)
    (hE : ∀ h ∈ S, ‖c h‖ ≤ E h) :
    ‖∑ h ∈ S, K h * c h‖ ≤ ∑ h ∈ S, ‖K h‖ * E h := by
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro h hh
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_left (hE h hh) (norm_nonneg _)

/-- Unit kernel mass is useful only after a uniform error is supplied. -/
theorem abs_weighted_sum_le_uniform (S : Finset α) (K c : α → ℝ) (ε : ℝ)
    (hK : ∀ h ∈ S, 0 ≤ K h) (hmass : ∑ h ∈ S, K h = 1)
    (hε : ∀ h ∈ S, |c h| ≤ ε) :
    |∑ h ∈ S, K h * c h| ≤ ε := by
  have hb := abs_weighted_sum_le_envelope S K c (fun _ => ε) hK hε
  simpa only [← Finset.sum_mul, hmass, one_mul] using hb

/-- A response concentrated at the label that moves with the cutoff. -/
def movingResponse (N h : ℕ) : ℝ := if h = N then (N : ℝ) else 0

/-- A nonnegative, exactly normalized kernel selecting the moving label. -/
def movingWeight (N h : ℕ) : ℝ := if h = N then 1 else 0

theorem movingWeight_nonneg (N h : ℕ) : 0 ≤ movingWeight N h := by
  unfold movingWeight
  split_ifs <;> norm_num

/-- Every fixed label is eventually exactly zero, not merely little-o. -/
theorem movingResponse_fixed_eventually_zero (h : ℕ) :
    ∃ N₀ : ℕ, ∀ N : ℕ, N₀ ≤ N → movingResponse N h = 0 := by
  refine ⟨h + 1, ?_⟩
  intro N hN
  have hh : h ≠ N := by omega
  simp [movingResponse, hh]

/-- The natural length bound holds for every label, including N=0. -/
theorem abs_movingResponse_le_length (N h : ℕ) :
    |movingResponse N h| ≤ (N : ℝ) := by
  by_cases hh : h = N
  · simp [movingResponse, hh]
  · simp [movingResponse, hh]

@[simp] theorem movingWeight_mass (N : ℕ) :
    (∑ h ∈ Finset.range (N + 1), movingWeight N h) = 1 := by
  classical
  simp [movingWeight]

/-- Despite fixed-label eventual vanishing, the moving average has full size N. -/
theorem moving_weighted_response (N : ℕ) :
    (∑ h ∈ Finset.range (N + 1), movingWeight N h * movingResponse N h) =
      (N : ℝ) := by
  classical
  calc
    _ = ∑ h ∈ Finset.range (N + 1), movingResponse N h := by
      apply Finset.sum_congr rfl
      intro h _
      by_cases hh : h = N <;> simp [movingWeight, movingResponse, hh]
    _ = _ := by simp [movingResponse]

/-- Normalization by the prefix length does not remove the obstruction. -/
theorem moving_normalized_response (N : ℕ) (hN : 0 < N) :
    (∑ h ∈ Finset.range (N + 1), movingWeight N h * movingResponse N h) /
      (N : ℝ) = 1 := by
  rw [moving_weighted_response]
  exact div_self (Nat.cast_ne_zero.mpr (Nat.ne_of_gt hN))

end GRWTSK.Analysis.Inequalities.FiniteCorrelationEnvelope
