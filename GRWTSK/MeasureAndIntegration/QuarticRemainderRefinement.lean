/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MeasureAndIntegration.CubicRemainder

/-!
# One further integration by parts of the actual cubic remainder

The existing cubic kernel is B3/3!. Its explicit primitive is B4/4!, whose
BOTH endpoint values are -1/720. Differentiating the product with the existing
positive-axis complex power derives a cell identity, including both endpoints.
Summing that identity telescopes before taking any infinite limit.

The normalized quartic kernel has absolute value at most 1/720 throughout the
unit interval. The existing positive powerCell integral therefore controls the
complete quartic integral. Finite sums retain the first endpoint and are bounded
uniformly, with no use of sampled integrand values or signed cancellation.

Consumer: QuarticZetaSourceBounds passes the finite identities to the existing
cubic remainder limit and actual zeta source identity. This closes a source
comparison that cannot be inferred merely from the fourth-order formula's name.
The normalized polynomial is different from the unnormalized B4 in EulerHeightSix;
the relationship is division by 24, not a change of source convention.

Classical Euler--Maclaurin integration by parts; comparison source NIST DLMF
25.11.7. Existing dependencies inspected at 043f1a5125b6ee68f3aa0281f8fdd0eed16deb51.
No mathematical novelty claim. AI-assisted source formalization. Compilation,
fresh kernel checking, transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Interval BigOperators

namespace GRWTSK.Analysis.RealAnalysis.QuarticRemainder

open GRWTSK.Analysis.RealAnalysis.CubicEulerMaclaurin
open GRWTSK.Analysis.RealAnalysis.PowerCellMajorant
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.RiemannHypothesis.CubicPowerSummation
open GRWTSK.RiemannHypothesis.CubicRemainder

/-- Normalized B4/4!, retaining the nonzero endpoint correction. -/
def fourth (u : ℝ) : ℝ := (u ^ 4 - 2 * u ^ 3 + u ^ 2 - 1 / 30) / 24

theorem fourth_factor (u : ℝ) :
    fourth u = ((u * (1 - u)) ^ 2 - 1 / 30) / 24 := by
  unfold fourth
  ring

@[simp] theorem fourth_zero : fourth 0 = -(1 / 720 : ℝ) := by norm_num [fourth]
@[simp] theorem fourth_one : fourth 1 = -(1 / 720 : ℝ) := by norm_num [fourth]

/-- This derivative compares the actual maintained cubic and quartic polynomials. -/
theorem hasDerivAt_fourth (u : ℝ) : HasDerivAt fourth (third u) u := by
  convert (((((hasDerivAt_id u).pow 4).sub
    (((hasDerivAt_id u).pow 3).const_mul 2)).add
      ((hasDerivAt_id u).pow 2)).sub_const (1 / 30)).div_const 24 using 1 <;>
    first | rfl | (dsimp [fourth, third]; ring)

/-- The bound is uniform on the whole cell, not an endpoint or next-term estimate. -/
theorem abs_fourth_le (u : ℝ) (inside : u ∈ Icc (0 : ℝ) 1) :
    |fourth u| ≤ (1 / 720 : ℝ) := by
  have positive : 0 ≤ u * (1 - u) := mul_nonneg inside.1 (sub_nonneg.mpr inside.2)
  have upper : u * (1 - u) ≤ (1 / 4 : ℝ) := by nlinarith [sq_nonneg (u - 1 / 2)]
  have squared : (u * (1 - u)) ^ 2 ≤ (1 / 16 : ℝ) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr upper)
      (show 0 ≤ (1 / 4 : ℝ) + u * (1 - u) by linarith)]
  rw [fourth_factor, abs_le]
  constructor <;> nlinarith [sq_nonneg (u * (1 - u))]

/-- The same positive-axis power used by the original cubic summation. -/
def cell (q : ℝ) (s : ℂ) : ℂ :=
  ∫ u in (0 : ℝ)..1, (fourth u : ℂ) * logPower (q + u) (-s - 4)

theorem cell_continuous (q : ℝ) (positive : 0 < q) (s : ℂ) :
    ContinuousOn (fun u : ℝ => (fourth u : ℂ) * logPower (q + u) (-s - 4))
      (Icc (0 : ℝ) 1) :=
  (by unfold fourth; fun_prop : Continuous (fun u : ℝ => (fourth u : ℂ))).continuousOn.mul
    (continuousOn_shifted_power q positive (-s - 4))

/-- The signed derivative is derived; it is not a claimed source identity. -/
theorem product_derivative (q : ℝ) (s : ℂ) (u : ℝ) (positive : 0 < q + u) :
    HasDerivAt (fun v : ℝ => (fourth v : ℂ) * logPower (q + v) (-s - 3))
      ((third u : ℂ) * logPower (q + u) (-s - 3) -
        (s + 3) * ((fourth u : ℂ) * logPower (q + u) (-s - 4))) u := by
  have derivative := (hasDerivAt_fourth u).ofReal_comp.mul
    (shifted_power_deriv q u (-s - 3) positive)
  apply derivative.congr_deriv
  rw [show -s - 3 - 1 = -s - 4 by ring]
  ring

/-- Both boundary terms are required for the actual cell-to-cell return. -/
theorem cell_refinement (q : ℝ) (positive : 0 < q) (s : ℂ) :
    cellRemainder q (-s) =
      (logPower q (-s - 3) - logPower (q + 1) (-s - 3)) / 720 + (s + 3) * cell q s := by
  have first := cell_integrable q positive s
  have second := (cell_continuous q positive s).intervalIntegrable_of_Icc (μ := volume)
    (by norm_num : (0 : ℝ) ≤ 1)
  have scaled := second.const_mul (s + 3)
  have integral := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := (0 : ℝ)) (b := 1)
    (f := fun u : ℝ => (fourth u : ℂ) * logPower (q + u) (-s - 3))
    (f' := fun u : ℝ => (third u : ℂ) * logPower (q + u) (-s - 3) -
      (s + 3) * ((fourth u : ℂ) * logPower (q + u) (-s - 4)))
    (fun u hu => by
      have inside : u ∈ Icc (0 : ℝ) 1 := by simpa using hu
      exact product_derivative q s u (by linarith [inside.1])) (first.sub scaled)
  rw [intervalIntegral.integral_sub first scaled,
    intervalIntegral.integral_const_mul] at integral
  change cellRemainder q (-s) - (s + 3) * cell q s =
    (fourth 1 : ℂ) * logPower (q + 1) (-s - 3) -
      (fourth 0 : ℂ) * logPower (q + 0) (-s - 3) at integral
  have atZero : (fourth 0 : ℂ) = -(1 / 720 : ℂ) := by norm_num [fourth]
  have atOne : (fourth 1 : ℂ) = -(1 / 720 : ℂ) := by norm_num [fourth]
  rw [atZero, atOne, add_zero] at integral
  linear_combination integral

/-- Finite refinement is an exact telescope, with the last power still present. -/
theorem finite_refinement (q : ℝ) (positive : 0 < q) (s : ℂ) (N : ℕ) :
    (∑ k ∈ Finset.range N, cellRemainder (q + (k : ℝ)) (-s)) =
      (logPower q (-s - 3) - logPower (q + (N : ℝ)) (-s - 3)) / 720 +
        (s + 3) * ∑ k ∈ Finset.range N, cell (q + (k : ℝ)) s := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [Finset.sum_range_succ, Nat.cast_add, Nat.cast_one]
      rw [ih]
      have identity := cell_refinement (q + (N : ℝ)) (by positivity) s
      simp only [add_assoc] at identity
      linear_combination identity

/-- A pointwise majorant for the entire normalized quartic density. -/
theorem density_bound (q σ : ℝ) (base : 1 ≤ q) (s : ℂ) (halfPlane : σ ≤ s.re)
    (u : ℝ) (inside : u ∈ Icc (0 : ℝ) 1) :
    ‖(fourth u : ℂ) * logPower (q + u) (-s - 4)‖ ≤
      Real.exp (-(σ + 4) * Real.log (q + u)) / 720 := by
  have logNonnegative : 0 ≤ Real.log (q + u) := Real.log_nonneg (by linarith [inside.1])
  have power : ‖logPower (q + u) (-s - 4)‖ ≤
      Real.exp (-(σ + 4) * Real.log (q + u)) := by
    simp only [logPower, Complex.norm_exp, Complex.mul_re, Complex.sub_re,
      Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero,
      (show (4 : ℂ).re = 4 by norm_num)]
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right (by linarith) logNonnegative
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
  have estimate := mul_le_mul (abs_fourth_le u inside) power (norm_nonneg _)
    (by norm_num : (0 : ℝ) ≤ 1 / 720)
  simpa only [one_div, inv_mul_eq_div] using estimate

/-- Existing positive integral cells bound the complete quartic integral. -/
theorem cell_bound (q σ : ℝ) (base : 1 ≤ q) (margin : -3 < σ)
    (s : ℂ) (halfPlane : σ ≤ s.re) :
    ‖cell q s‖ ≤ powerCell q (σ + 3) / 720 := by
  have qPositive : 0 < q := zero_lt_one.trans_le base
  have pPositive : 0 < σ + 3 := by linarith
  have continuous : ContinuousOn
      (fun u : ℝ => Real.exp (-((σ + 3) + 1) * Real.log (q + u))) (Icc (0 : ℝ) 1) := by
    intro u hu
    have positive : q + u ≠ 0 := ne_of_gt (by linarith [hu.1])
    exact (by fun_prop (disch := assumption) : ContinuousAt
      (fun v : ℝ => Real.exp (-((σ + 3) + 1) * Real.log (q + v))) u).continuousWithinAt
  unfold cell
  refine (intervalIntegral.norm_integral_le_integral_norm (by norm_num)).trans ?_
  calc
    (∫ u in (0 : ℝ)..1, ‖(fourth u : ℂ) * logPower (q + u) (-s - 4)‖) ≤
        ∫ u in (0 : ℝ)..1, Real.exp (-((σ + 3) + 1) * Real.log (q + u)) / 720 := by
      apply intervalIntegral.integral_mono_on (by norm_num)
        ((cell_continuous q qPositive s).intervalIntegrable_of_Icc (by norm_num)).norm
        ((continuous.intervalIntegrable_of_Icc (by norm_num)).div_const 720)
      intro u hu
      simpa only [add_assoc, show (3 : ℝ) + 1 = 4 by norm_num] using
        density_bound q σ base s halfPlane u hu
    _ = powerCell q (σ + 3) / 720 := by
      rw [intervalIntegral.integral_div, integral_powerCell q (σ + 3) qPositive pPositive]

/-- A uniform bound for every finite remainder prefix, before any limit exchange. -/
theorem finite_bound (q σ : ℝ) (base : 1 ≤ q) (margin : -3 < σ)
    (s : ℂ) (halfPlane : σ ≤ s.re) (N : ℕ) :
    ‖∑ k ∈ Finset.range N, cell (q + (k : ℝ)) s‖ ≤
      decayPower (σ + 3) q / (720 * (σ + 3)) := by
  calc
    ‖∑ k ∈ Finset.range N, cell (q + (k : ℝ)) s‖ ≤
        ∑ k ∈ Finset.range N, ‖cell (q + (k : ℝ)) s‖ := norm_sum_le _ _
    _ ≤ ∑ k ∈ Finset.range N, powerCell (q + (k : ℝ)) (σ + 3) / 720 :=
      Finset.sum_le_sum (fun k _ => cell_bound (q + (k : ℝ)) σ
        (by linarith [Nat.cast_nonneg (α := ℝ) k]) margin s halfPlane)
    _ = (∑ k ∈ Finset.range N, powerCell (q + (k : ℝ)) (σ + 3)) / 720 :=
      (Finset.sum_div _ _ _).symm
    _ ≤ (decayPower (σ + 3) q / (σ + 3)) / 720 :=
      div_le_div_of_nonneg_right (sum_powerCell_le q (σ + 3) (by linarith) N) (by norm_num)
    _ = _ := by rw [div_div, mul_comm (σ + 3) 720]

end GRWTSK.Analysis.RealAnalysis.QuarticRemainder
