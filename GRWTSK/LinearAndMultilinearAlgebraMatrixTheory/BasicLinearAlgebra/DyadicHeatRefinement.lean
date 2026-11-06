/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ForcedHodgeStability
import Mathlib.Tactic

/-!
# Dyadic refinement of the existing finite positive Hodge heat

The clock is explicit: level `n` consists of `2^n` steps of duration
`scale * (1/2)^n`. The existing exact heat semigroup gives both the two-child
refinement identity and equality of the complete refined evolution with heat
at time `scale`. This is the actual diagonal operator already defined in
`FinitePositiveHodgeHeat`, not a replacement heat model.

The total of `2^n` local allowances `dyadicStep n * error` is exactly `error`.
Consequently refinement preserves a linear total error budget; it does not
make that budget tend to zero. The forced stability consumer charges every
local recurrence discrepancy and the initial discrepancy. Heat contraction
is used only at nonnegative time, and a harmonic initial discrepancy can
survive every dyadic refinement. No unitary evolution, quantum channel, or
analytic source identification is inferred from these identities.

Primary argument: the real identity `2^n * (1/2)^n = 1`, the existing exact
semigroup law, finite summation, and the existing forced-stability induction.
The retained harmonic fixture is the hostile check against erasing an initial
error by refinement. No separate independent analytic review is claimed.
Compilation, fresh kernel replay, transitive axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.DyadicHeatRefinement

open GRWTSK.Analysis.Hodge.ForcedStability
open GRWTSK.Analysis.Hodge.HeatApproximation
open GRWTSK.Analysis.Division

universe u v
variable {ι : Type u} {Z : Type v}

/-- The normalized duration of one of the `2^n` dyadic cells. -/
def dyadicStep (n : ℕ) : ℝ := (1 / 2 : ℝ) ^ n

@[simp] theorem dyadicStep_zero : dyadicStep 0 = 1 := by
  simp [dyadicStep]

theorem dyadicStep_pos (n : ℕ) : 0 < dyadicStep n := by
  exact pow_pos (by norm_num : (0 : ℝ) < 1 / 2) n

theorem dyadicStep_nonneg (n : ℕ) : 0 ≤ dyadicStep n :=
  (dyadicStep_pos n).le

theorem dyadicStep_succ (n : ℕ) :
    dyadicStep (n + 1) = dyadicStep n / 2 := by
  simp only [dyadicStep, pow_succ]
  ring

theorem two_mul_dyadicStep_succ (n : ℕ) :
    2 * dyadicStep (n + 1) = dyadicStep n := by
  rw [dyadicStep_succ]
  ring

theorem dyadicStep_two_halves (n : ℕ) :
    dyadicStep (n + 1) + dyadicStep (n + 1) = dyadicStep n := by
  linarith [two_mul_dyadicStep_succ n]

theorem two_pow_mul_dyadicStep (n : ℕ) :
    (2 : ℝ) ^ n * dyadicStep n = 1 := by
  unfold dyadicStep
  rw [← mul_pow]
  norm_num

theorem nat_two_pow_mul_dyadicStep (n : ℕ) :
    ((2 ^ n : ℕ) : ℝ) * dyadicStep n = 1 := by
  simpa using two_pow_mul_dyadicStep n

/-- Keep the selected heat duration separate from any arithmetic or physical clock. -/
def dyadicTime (scale : ℝ) (n : ℕ) : ℝ := scale * dyadicStep n

@[simp] theorem dyadicTime_zero (scale : ℝ) : dyadicTime scale 0 = scale := by
  simp [dyadicTime]

theorem dyadicTime_nonneg (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) :
    0 ≤ dyadicTime scale n :=
  mul_nonneg hscale (dyadicStep_nonneg n)

theorem dyadicTime_pos (scale : ℝ) (n : ℕ) (hscale : 0 < scale) :
    0 < dyadicTime scale n :=
  mul_pos hscale (dyadicStep_pos n)

theorem dyadicTime_succ (scale : ℝ) (n : ℕ) :
    dyadicTime scale (n + 1) = dyadicTime scale n / 2 := by
  unfold dyadicTime
  rw [dyadicStep_succ]
  ring

theorem dyadicTime_two_halves (scale : ℝ) (n : ℕ) :
    dyadicTime scale (n + 1) + dyadicTime scale (n + 1) =
      dyadicTime scale n := by
  unfold dyadicTime
  rw [← mul_add, dyadicStep_two_halves]

theorem dyadicTime_total (scale : ℝ) (n : ℕ) :
    ((2 ^ n : ℕ) : ℝ) * dyadicTime scale n = scale := by
  unfold dyadicTime
  calc
    ((2 ^ n : ℕ) : ℝ) * (scale * dyadicStep n) =
        scale * (((2 ^ n : ℕ) : ℝ) * dyadicStep n) := by ring
    _ = scale := by rw [nat_two_pow_mul_dyadicStep, mul_one]

/-- Refinement is an exact operator identity for the existing Hodge heat. -/
theorem heat_dyadic_refine (a : ι → ℝ) (scale : ℝ) (n : ℕ) :
    heat a (dyadicTime scale n) =
      (heat a (dyadicTime scale (n + 1))).comp
        (heat a (dyadicTime scale (n + 1))) := by
  rw [← heat_add, dyadicTime_two_halves]

theorem heat_dyadic_refine_apply (a x : ι → ℝ) (scale : ℝ) (n : ℕ) :
    heat a (dyadicTime scale n) x =
      heat a (dyadicTime scale (n + 1))
        (heat a (dyadicTime scale (n + 1)) x) := by
  rw [heat_dyadic_refine]
  rfl

/-- Actual repeated heat steps, with the exact chronological recursion retained. -/
def heatSteps (a : ι → ℝ) (time : ℝ) : ℕ → (ι → ℝ) → (ι → ℝ)
  | 0, x => x
  | count + 1, x => heat a time (heatSteps a time count x)

theorem heatSteps_eq (a x : ι → ℝ) (time : ℝ) (count : ℕ) :
    heatSteps a time count x = heat a ((count : ℝ) * time) x := by
  induction count with
  | zero => simp [heatSteps, heat_zero]
  | succ count ih =>
    calc
      heatSteps a time (count + 1) x =
          heat a time (heat a ((count : ℝ) * time) x) := by
            simp only [heatSteps, ih]
      _ = heat a (time + (count : ℝ) * time) x := by
        rw [heat_add]
        rfl
      _ = heat a (((count + 1 : ℕ) : ℝ) * time) x := by
        have htime : time + (count : ℝ) * time =
            ((count + 1 : ℕ) : ℝ) * time := by push_cast; ring
        rw [htime]

/-- Every finite dyadic level represents the same total heat evolution. -/
theorem heatSteps_dyadic_total (a x : ι → ℝ) (scale : ℝ) (n : ℕ) :
    heatSteps a (dyadicTime scale n) (2 ^ n) x = heat a scale x := by
  rw [heatSteps_eq, dyadicTime_total]

/-- Return a complete dyadic resolution to the actual complex source. The
filtering bias, coefficient noise and basis evaluation cost belong to the
fixed TOTAL heat time `scale`, even as the mesh is refined. -/
theorem complete_source_error_dyadic [Fintype ι]
    (source : Z → ℂ) (basis : ι → Z → ℂ) (a exact measured : ι → ℝ)
    {scale tail : ℝ} (hscale : 0 ≤ scale) (n : ℕ) (z : Z)
    (sourceTail : ‖source z - synthesis basis exact z‖ ≤ tail) :
    ‖source z - synthesis basis
      (heatSteps a (dyadicTime scale n) (2 ^ n) measured) z‖ ≤
      tail + filterBudget basis a exact measured scale z := by
  rw [heatSteps_dyadic_total]
  exact complete_source_error source basis a exact measured hscale z sourceTail

/-- The full source price is multiplied by the supplied inverse bound. No
source tail, heat bias, coefficient error or evaluation norm is discarded by
the dyadic interface, and no inverse-growth estimate is manufactured. -/
theorem residual_after_dyadic_heat [Fintype ι]
    (source : Z → ℂ) (basis : ι → Z → ℂ) (a exact measured : ι → ℝ)
    {scale tail ε M : ℝ} (hscale : 0 ≤ scale) (n : ℕ) (z : Z) (inverse : ℂ)
    (sourceTail : ‖source z - synthesis basis exact z‖ ≤ tail)
    (modelResidual : ‖residual
      (synthesis basis (heatSteps a (dyadicTime scale n) (2 ^ n) measured) z)
      inverse 1‖ ≤ ε)
    (inverseBound : ‖inverse‖ ≤ M) :
    ‖residual (source z) inverse 1‖ ≤
      ε + (tail + filterBudget basis a exact measured scale z) * M := by
  rw [heatSteps_dyadic_total] at modelResidual
  exact residual_after_filter source basis a exact measured hscale z inverse
    sourceTail modelResidual inverseBound

theorem heat_dyadic_contracts [Fintype ι]
    (a x : ι → ℝ) (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) :
    dot (heat a (dyadicTime scale n) x) (heat a (dyadicTime scale n) x) ≤
      dot x x :=
  heat_contracts a x (dyadicTime_nonneg scale n hscale)

/-- All normalized cell weights sum to one at every finite level. -/
theorem sum_dyadicStep (n : ℕ) :
    (∑ _cell : Fin (2 ^ n), dyadicStep n) = 1 := by
  simpa only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    using nat_two_pow_mul_dyadicStep n

theorem sum_dyadicTime (scale : ℝ) (n : ℕ) :
    (∑ _cell : Fin (2 ^ n), dyadicTime scale n) = scale := by
  simpa only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
    using dyadicTime_total scale n

/-- A linear local error allocation preserves the total budget under refinement. -/
theorem sum_dyadicAllowance (n : ℕ) (error : ℝ) :
    (∑ _cell : Fin (2 ^ n), dyadicStep n * error) = error := by
  calc
    (∑ _cell : Fin (2 ^ n), dyadicStep n * error) =
        (∑ _cell : Fin (2 ^ n), dyadicStep n) * error := by
          rw [Finset.sum_mul]
    _ = error := by rw [sum_dyadicStep, one_mul]

theorem sum_allowance_le (n : ℕ) (error : ℝ)
    (allowance : Fin (2 ^ n) → ℝ)
    (hallowance : ∀ cell, allowance cell ≤ dyadicStep n * error) :
    (∑ cell, allowance cell) ≤ error := by
  calc
    (∑ cell, allowance cell) ≤
        ∑ _cell : Fin (2 ^ n), dyadicStep n * error :=
      Finset.sum_le_sum fun cell _ => hallowance cell
    _ = error := sum_dyadicAllowance n error

theorem sum_range_dyadicAllowance (n : ℕ) (error : ℝ) :
    (∑ _cell ∈ Finset.range (2 ^ n), dyadicStep n * error) = error := by
  simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
  calc
    ((2 ^ n : ℕ) : ℝ) * (dyadicStep n * error) =
        (((2 ^ n : ℕ) : ℝ) * dyadicStep n) * error := by ring
    _ = error := by rw [nat_two_pow_mul_dyadicStep, one_mul]

/-- The existing forced recurrence consumer charges all `2^n` local defects. -/
theorem accumulatedBudget_dyadic_le (a : ι → ℝ) (scale : ℝ)
    (x y : ℕ → ι → ℝ) (n : ℕ) (i : ι) (error : ℝ)
    (hlocal : ∀ k < 2 ^ n,
      |defect a (dyadicTime scale n) x y k i| ≤ dyadicStep n * error) :
    accumulatedBudget a (dyadicTime scale n) x y (2 ^ n) i ≤
      |x 0 i - y 0 i| + error := by
  unfold accumulatedBudget
  apply add_le_add_left
  calc
    (∑ k ∈ Finset.range (2 ^ n),
        |defect a (dyadicTime scale n) x y k i|) ≤
        ∑ _k ∈ Finset.range (2 ^ n), dyadicStep n * error := by
      exact Finset.sum_le_sum fun k hk => hlocal k (Finset.mem_range.mp hk)
    _ = error := sum_range_dyadicAllowance n error

/-- A finite level is stable with its initial discrepancy and every local defect.
Uniformity in `n`, or a vanishing level budget, must be supplied separately. -/
theorem error_dyadic_le_initial_add (a : ι → ℝ) (scale : ℝ)
    (hscale : 0 ≤ scale) (x y : ℕ → ι → ℝ) (n : ℕ) (i : ι) (error : ℝ)
    (hlocal : ∀ k < 2 ^ n,
      |defect a (dyadicTime scale n) x y k i| ≤ dyadicStep n * error) :
    |x (2 ^ n) i - y (2 ^ n) i| ≤ |x 0 i - y 0 i| + error :=
  (error_le_accumulated a (dyadicTime_nonneg scale n hscale) x y (2 ^ n) i).trans
    (accumulatedBudget_dyadic_le a scale x y n i error hlocal)

end GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.DyadicHeatRefinement
