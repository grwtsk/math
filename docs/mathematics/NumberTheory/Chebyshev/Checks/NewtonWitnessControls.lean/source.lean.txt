/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalNewtonHeadBinding

set_option autoImplicit false

/-! Source controls, not executed tests or claims about actual zeta zeros. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.NewtonWitnessControls

open GRWTSK.Analysis.Complex.ContractiveZeroDisk

/-- An arbitrarily small nonzero constant has no zero. -/
theorem residual_alone_fails (e : ℂ) (he : e ≠ 0) : ¬∃ z : ℂ, (fun _ : ℂ => e) z = 0 := by
  rintro ⟨z, hz⟩
  exact he hz

/-- A zero inverse produces fixed points everywhere but no zero implication. -/
theorem zero_inverse_fixed (z : ℂ) : correction (fun _ => 1) 0 z = z := by
  simp [correction]

theorem zero_inverse_defect : ‖(1 : ℂ) - 0 * 7‖ = 1 := by norm_num

theorem noncontracting_threshold_rejected : ¬ ((1 : ℚ) < 1) := by norm_num

theorem self_map_failure : ¬ ((3 / 4 : ℚ) + (1 / 2) * 1 ≤ 1) := by norm_num

/-- The contraction needs a curvature allowance away from the center. -/
theorem omitted_curvature_changes_guard : (1 / 4 : ℚ) < 1 ∧ ¬ (1 / 4 + 1 < 1) := by norm_num

/-- The second-order Cauchy estimate retains factorial TWO. -/
theorem cauchy_second_constant : (2 : ℚ) / (1 / 2) ^ 2 = 8 := by norm_num

theorem outer_domain_low_stage : ¬ (2 ≤ (1 : ℕ)) := by decide

/-- Squared containment without a nonnegative margin gives a false certificate. -/
theorem negative_margin_countermodel :
    (0 : ℚ) ^ 2 ≤ (5 / 2 - 3) ^ 2 ∧ ¬ (3 : ℚ) ≤ 5 / 2 := by norm_num

/-- Local Newton certification is about complex location, not its projection. -/
theorem center_on_line_does_not_fix_point :
    (1 / 2 : ℚ) ≠ 1 / 2 + 1 / 100 := by norm_num

/-- Enlarging the certified radius changes the all-disk derivative-defect budget. -/
theorem radius_cost_not_constant : (2 : ℚ) * (1 / 10) < 2 * (1 / 5) := by norm_num

/-- Equality can pass disk invariance, not strict contraction or the prime margin. -/
theorem invariance_equality_allowed :
    (1 / 2 : ℚ) + (1 / 2) * 1 ≤ 1 ∧ ¬ ((0 : ℚ) < 0) := by norm_num

end GRWTSK.NumberTheory.Chebyshev.Checks.NewtonWitnessControls
