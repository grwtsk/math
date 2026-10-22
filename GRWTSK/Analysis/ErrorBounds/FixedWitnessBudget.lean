/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Fixed negative witnesses and affine residual budgets

All ordered quantities are real scalar evaluations at one fixed test input.
The finite lower-bound loss includes any map-norm/normalization factors already
proved by a caller; they are not inferred here. A negative witness forces a
floor on the complete comparison budget.

An independently supplied recurrence B(n+1) <= r B(n) + c gives a finite-stage
majorant around a supplied affine fixed point L, with r L + c = L. A strict
finite margin below the retained witness strength yields contradiction.
No recurrence, source comparison, negative zeta witness, limiting theorem,
zero-divisor completeness, or convergence to the Weil form is constructed here.
-/

namespace GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget

open GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction

/-- A negative source evaluation forces loss plus comparison error to cover its strength.
No division by a possibly zero witness norm is performed. -/
theorem witness_forces_budget {actual approximate strength loss error : ℝ}
    (negative : actual ≤ -strength)
    (lower : -loss ≤ approximate)
    (comparison : |actual - approximate| ≤ error) :
    strength ≤ loss + error := by
  have lowerComparison : -error ≤ actual - approximate := (abs_le.mp comparison).1
  linarith

/-- Specialization to a nonnegative finite model. -/
theorem positive_model_error_floor {actual approximate strength error : ℝ}
    (negative : actual ≤ -strength) (positive : 0 ≤ approximate)
    (comparison : |actual - approximate| ≤ error) : strength ≤ error := by
  have bound := witness_forces_budget (loss := 0) negative (by simpa using positive)
    comparison
  simpa using bound

/-- Reuse the existing five-channel total; do not silently drop its source or tail term.
Application-specific additional residuals still require their own adapter. -/
theorem witness_forces_screw_budget {actual approximate strength loss : ℝ}
    (budget : Budget) (negative : actual ≤ -strength)
    (lower : -loss ≤ approximate)
    (comparison : |actual - approximate| ≤ budget.total) :
    strength ≤ loss + budget.total :=
  witness_forces_budget negative lower comparison

/-- A strictly smaller complete budget is inconsistent with the supplied witness. -/
theorem no_witness_below_budget {actual approximate strength loss error : ℝ}
    (negative : actual ≤ -strength) (lower : -loss ≤ approximate)
    (comparison : |actual - approximate| ≤ error)
    (margin : loss + error < strength) : False := by
  have bound := witness_forces_budget negative lower comparison
  linarith

/-- Finite affine-recursion bound. L is supplied with its exact fixed-point equation;
no claim that the forcing c vanishes is hidden in the statement. -/
theorem affine_budget_majorant (B : ℕ → ℝ) (r c L : ℝ)
    (nonnegativeRate : 0 ≤ r) (fixed : r * L + c = L)
    (step : ∀ n, B (n + 1) ≤ r * B n + c) (n : ℕ) :
    B n ≤ L + r ^ n * (B 0 - L) := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        B (n + 1) ≤ r * B n + c := step n
        _ ≤ r * (L + r ^ n * (B 0 - L)) + c :=
          add_le_add_left (mul_le_mul_of_nonneg_left ih nonnegativeRate) c
        _ = (r * L + c) + r ^ (n + 1) * (B 0 - L) := by
          rw [pow_succ]
          ring
        _ = L + r ^ (n + 1) * (B 0 - L) := by rw [fixed]

/-- The final consumer is finite: the source evaluation is fixed before n is chosen.
A rate less than one helps establish the margin, but is not itself the margin. -/
theorem no_witness_at_affine_budget_stage
    (B : ℕ → ℝ) (r c L : ℝ) (nonnegativeRate : 0 ≤ r)
    (fixed : r * L + c = L) (step : ∀ n, B (n + 1) ≤ r * B n + c)
    (n : ℕ) (actual approximate strength loss : ℝ)
    (negative : actual ≤ -strength) (lower : -loss ≤ approximate)
    (comparison : |actual - approximate| ≤ B n)
    (margin : loss + (L + r ^ n * (B 0 - L)) < strength) : False := by
  have floorBound := witness_forces_budget negative lower comparison
  have upperBound := affine_budget_majorant B r c L nonnegativeRate fixed step n
  linarith

/-- Positive finite data alone coexist with a negative target and a unit discrepancy. -/
theorem positive_model_without_small_error :
    (0 : ℝ) ≤ 0 ∧ (-1 : ℝ) < 0 ∧ |(-1 : ℝ) - 0| = 1 := by
  norm_num

/-- Strict homogeneous contraction does not erase a persistent forcing floor. -/
theorem persistent_forcing_fixture :
    (0 : ℝ) < 1 / 2 ∧ (1 / 2 : ℝ) < 1 ∧
      (1 / 2 : ℝ) * 1 + 1 / 2 = 1 := by
  norm_num

end GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget
