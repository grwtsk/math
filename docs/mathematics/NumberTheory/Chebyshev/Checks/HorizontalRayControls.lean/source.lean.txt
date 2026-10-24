/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentHorizontalRays

set_option autoImplicit false

/-! Synthetic scalar/domain controls. NOT_RUN / NOT_KERNEL_AUDITED.
These are not numerical zeta-zero data or prime certificates. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.HorizontalRayControls

open GRWTSK.Analysis.Complex.TentHorizontalRayMajorant
open GRWTSK.RiemannHypothesis.TrivialZeroResidues

noncomputable section

/-- Real-part reduction does not round to a negative odd line. -/
theorem fractional_anchor :
    Nat.floor ((-1 - (-6 : ℝ)) / 2) = 2 ∧ (-6 : ℝ) + 2 * 2 = -2 := by norm_num

/-- The half-open anchor convention includes -1 and excludes the next lower endpoint. -/
theorem anchor_at_boundary :
    Nat.floor ((-1 - (-3 : ℝ)) / 2) = 1 ∧ (-3 : ℝ) + 2 * 1 = -1 := by norm_num

/-- Height zero is not an admissible horizontal ray for the full logarithmic derivative. -/
theorem zero_height_contains_actual_trivial_zero : riemannZeta (-2 : ℂ) = 0 := by
  simpa [trivialPoint] using zeta_trivialPoint 0

/-- Even real shifts leave the imaginary part intact; reflection reverses it. -/
theorem shifted_and_reflected_height (s : ℂ) (k : ℕ) :
    (s - 2 * (k : ℂ)).im = s.im ∧ (1 - (s - 2 * (k : ℂ))).im = -s.im := by simp

/-- Zero constant envelope does not remove the positive integrated affine cost. -/
theorem zero_constant_keeps_shift_cost (x h : ℝ) :
    affineRayBudget x h 0 = shiftMomentBudget x h := by simp [affineRayBudget_eq]

theorem shift_cost_is_positive : 0 < shiftMomentBudget (13 / 2) (5 / 2) :=
  shiftMomentBudget_pos _ _ (by norm_num) (by norm_num)

/-- A finite strip bound proportional to height squared gives no vanishing normalized rate. -/
theorem quadratic_strip_bound_has_nonzero_ratio (T : ℝ) (hT : T ≠ 0) :
    T ^ 2 / T ^ 2 = 1 := div_self (pow_ne_zero _ hT)

/-- A fixed-parameter smallness statement must not be substituted along a moving parameter. -/
theorem moving_parameter_diagonal (N : ℕ) :
    ((N : ℝ) + 1) / ((N : ℝ) + 1) = 1 := by
  exact div_self (by positivity)

end
end GRWTSK.NumberTheory.Chebyshev.Checks.HorizontalRayControls
