/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockRational
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Integral realization of the rational block moments

Shifting the rational exponent by two produces a rational contiguous
relation. Subtracting the shifted integral multiplies its integrand by
one minus the square of the integration variable. The initial integral
is the elementary real-power integral, including exponent zero.
-/

namespace GRWTSK.XiPrimeBlockRational

private theorem moment_shift_two (j : ℕ) {r : ℚ} (hr : 0 ≤ r) :
    moment j (r + 2) = (r + 1) * moment j r / (r + 2 * j + 3) := by
  induction j with
  | zero =>
    simp only [moment, Nat.cast_zero, mul_zero, add_zero]
    have h₁ : r + 1 ≠ 0 := by positivity
    have h₃ : r + 3 ≠ 0 := by positivity
    rw [show r + 2 + 1 = r + 3 by ring]
    field_simp
  | succ j ih =>
    simp only [moment, Nat.cast_succ, ih]
    rw [show r + 2 + 2 * (j : ℚ) + 3 = r + 2 * ((j : ℚ) + 1) + 3 by ring]
    ring

/-- Multiplication of the integrand by one minus its square variable
corresponds to this exact rational first difference. -/
theorem moment_succ_eq_sub (j : ℕ) {r : ℚ} (hr : 0 ≤ r) :
    moment (j + 1) r = moment j r - moment j (r + 2) := by
  rw [moment, moment_shift_two j hr]
  have h : r + 2 * (j : ℚ) + 3 ≠ 0 := by positivity
  field_simp
  ring

private theorem moment_integrable (j : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    IntervalIntegrable (fun u : ℝ => u ^ a * (1 - u ^ 2) ^ j)
      MeasureTheory.volume 0 1 :=
  ((Real.continuous_rpow_const ha).mul
    ((continuous_const.sub (continuous_id.pow 2)).pow j)).intervalIntegrable _ _

/-- The exact value of the block moment for every nonnegative rational exponent. -/
theorem integral_eq_moment (j : ℕ) {r : ℚ} (hr : 0 ≤ r) :
    (∫ u : ℝ in 0..1, u ^ (r : ℝ) * (1 - u ^ 2) ^ j) = (moment j r : ℝ) := by
  induction j generalizing r with
  | zero =>
    have h : 0 ≤ (r : ℝ) := by exact_mod_cast hr
    simp only [pow_zero, mul_one, moment, Rat.cast_div, Rat.cast_one, Rat.cast_add]
    rw [integral_rpow (Or.inl (by linarith)), Real.one_rpow, Real.zero_rpow (by positivity),
      sub_zero]
  | succ j ih =>
    have h : 0 ≤ (r : ℝ) := by exact_mod_cast hr
    have h₂ : 0 ≤ r + 2 := by positivity
    have h₂' : 0 ≤ ((r + 2 : ℚ) : ℝ) := by exact_mod_cast h₂
    rw [moment_succ_eq_sub j hr, Rat.cast_sub, ← ih hr, ← ih h₂,
      ← intervalIntegral.integral_sub (moment_integrable j h) (moment_integrable j h₂')]
    apply intervalIntegral.integral_congr
    intro u hu
    rw [Set.uIcc_of_le zero_le_one] at hu
    simp only [Rat.cast_add, Rat.cast_ofNat]
    rw [Real.rpow_add_of_nonneg hu.1 h (by norm_num : (0 : ℝ) ≤ 2), Real.rpow_two, pow_succ]
    ring

end GRWTSK.XiPrimeBlockRational
