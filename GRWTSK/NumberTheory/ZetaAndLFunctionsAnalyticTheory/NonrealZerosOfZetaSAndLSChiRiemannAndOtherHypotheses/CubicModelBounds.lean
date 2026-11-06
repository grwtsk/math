/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CoreCubicApproximation
import GRWTSK.FunctionsOfAComplexVariable.ResidualDerivativeBounds

/-!
# Explicit size and slope budgets for finite cubic models

On Re(s)>=0, |s|<=R and |s-1|>=d>0, every positive-base power k^(-s)
has norm at most one. Keeping L=N+1, the finite terminal factor is bounded by
L/d+1/2+R/(12L); its derivative is bounded by L/d^2+1/(12L).
The complete differentiated finite sum also pays sum_{k=1}^N log k and the
terminal logarithmic factor. No derivative of a magnitude bound is taken.

These bounds instantiate the existing product-rule and convex mean-value
consumer. Therefore finite residual samples acquire a genuine between-sample
bound for this actual model, rather than assuming a Lipschitz number from data.
The omitted analytic tail is separate and must still be added by
ApproximationResidualTransfer before certifying the actual source.

The estimates are conservative and grow with N; they are not a claim of an
efficient all-height mesh or a proof that every strict residual test succeeds.
Compilation, fresh kernel checking, transitive axiom audit and independent
review: NOT_RUN. Source and Mathlib pins unchanged.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set

namespace GRWTSK.NumberTheory.Conditional.CubicModelBounds

open GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.Division

private theorem base_ge_one (n : ℕ) : (1 : ℝ) ≤ (n : ℝ) + 1 := by
  have h := Nat.cast_nonneg (α := ℝ) n
  linarith

/-- Positive-base complex powers are bounded on the required half-plane. -/
theorem power_bound (x : ℝ) (base : 1 ≤ x) (s : ℂ) (halfPlane : 0 ≤ s.re) :
    ‖logPower x (-s)‖ ≤ 1 := by
  rw [logPower, Complex.norm_exp]
  apply Real.exp_le_one_iff.mpr
  simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im,
    mul_zero, sub_zero]
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr halfPlane) (Real.log_nonneg base)

theorem power_slope_bound (x : ℝ) (base : 1 ≤ x) (s : ℂ) (halfPlane : 0 ≤ s.re) :
    ‖-(Real.log x : ℂ) * logPower x (-s)‖ ≤ Real.log x := by
  rw [norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Real.log_nonneg base)]
  simpa using mul_le_mul_of_nonneg_left (power_bound x base s halfPlane)
    (Real.log_nonneg base)

private theorem division_bound {a b : ℂ} {A d : ℝ} (positive : 0 < d)
    (numerator : ‖a‖ ≤ A) (denominator : d ≤ ‖b‖) : ‖a / b‖ ≤ A / d := by
  have hA : 0 ≤ A := (norm_nonneg _).trans numerator
  rw [norm_div]
  apply (div_le_div_iff₀ (positive.trans_le denominator) positive).mpr
  exact (mul_le_mul_of_nonneg_right numerator positive.le).trans
    (mul_le_mul_of_nonneg_left denominator hA)

def factorSize (N : ℕ) (R d : ℝ) : ℝ :=
  cutoff N / d + 1 / 2 + R / (12 * cutoff N)

def factorSlopeSize (N : ℕ) (d : ℝ) : ℝ :=
  cutoff N / d ^ 2 + 1 / (12 * cutoff N)

def logarithmicSize (N : ℕ) : ℝ := ∑ i : Fin N, Real.log ((i.val : ℝ) + 1)

def valueSize (N : ℕ) (R d : ℝ) : ℝ := (N : ℝ) + factorSize N R d

def slopeSize (N : ℕ) (R d : ℝ) : ℝ :=
  logarithmicSize N + factorSlopeSize N d + factorSize N R d * Real.log (cutoff N)

/-- The terminal correction's pole distance is paid explicitly. -/
theorem terminal_factor_bound (N : ℕ) (s : ℂ) {R d : ℝ}
    (positive : 0 < d) (distance : d ≤ ‖s - 1‖) (size : ‖s‖ ≤ R) :
    ‖terminalFactor N s‖ ≤ factorSize N R d := by
  have hL := cutoff_pos N
  have constantNorm : ‖(cutoff N : ℂ)‖ = cutoff N := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_pos hL]
  have denominatorNorm : ‖12 * (cutoff N : ℂ)‖ = 12 * cutoff N := by
    rw [norm_mul, constantNorm]
    norm_num
  have first := division_bound positive (le_of_eq constantNorm) distance
  have last := division_bound (show 0 < 12 * cutoff N by positivity) size
    (le_of_eq denominatorNorm.symm)
  have middle : ‖(1 / 2 : ℂ)‖ = (1 / 2 : ℝ) := by norm_num
  unfold terminalFactor factorSize
  exact (norm_add_le _ _).trans
    (add_le_add ((norm_add_le _ _).trans (add_le_add first middle.le)) last)

theorem terminal_slope_bound (N : ℕ) (s : ℂ) {d : ℝ}
    (positive : 0 < d) (distance : d ≤ ‖s - 1‖) :
    ‖terminalSlope N s‖ ≤ factorSlopeSize N d := by
  have hL := cutoff_pos N
  have constantNorm : ‖-(cutoff N : ℂ)‖ = cutoff N := by
    rw [norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hL]
  have squared : d ^ 2 ≤ ‖(s - 1) ^ 2‖ := by
    rw [norm_pow]
    exact pow_le_pow_left₀ positive.le distance 2
  have first := division_bound (sq_pos_of_pos positive) constantNorm.le squared
  have denominatorNorm : ‖12 * (cutoff N : ℂ)‖ = 12 * cutoff N := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hL]
    norm_num
  have last := division_bound (show 0 < 12 * cutoff N by positivity)
    (a := (1 : ℂ)) (A := 1) (by simp) denominatorNorm.symm.le
  unfold terminalSlope factorSlopeSize
  exact (norm_add_le _ _).trans (add_le_add first last)

/-- Both the finite head and the corrected terminal power are bounded. -/
theorem value_bound (N : ℕ) (s : ℂ) {R d : ℝ}
    (positive : 0 < d) (distance : d ≤ ‖s - 1‖)
    (halfPlane : 0 ≤ s.re) (size : ‖s‖ ≤ R) :
    ‖approximation N s‖ ≤ valueSize N R d := by
  have head : ‖∑ i : Fin N, logPower ((i.val : ℝ) + 1) (-s)‖ ≤ (N : ℝ) := by
    refine (norm_sum_le _ _).trans ?_
    calc
      (∑ i : Fin N, ‖logPower ((i.val : ℝ) + 1) (-s)‖) ≤ ∑ _i : Fin N, (1 : ℝ) :=
        Finset.sum_le_sum (fun i _ => power_bound _ (base_ge_one i.val) s halfPlane)
      _ = (N : ℝ) := by simp
  have factor := terminal_factor_bound N s positive distance size
  have tailPower := power_bound (cutoff N) (base_ge_one N) s halfPlane
  have tail : ‖terminalFactor N s * logPower (cutoff N) (-s)‖ ≤ factorSize N R d := by
    rw [norm_mul]
    simpa only [mul_one] using mul_le_mul factor tailPower (norm_nonneg _)
      ((norm_nonneg _).trans factor)
  exact (norm_add_le _ _).trans (add_le_add head tail)

/-- The explicit parameter derivative retains the finite logarithmic head and terminal derivative. -/
theorem slope_formula_bound (N : ℕ) (s : ℂ) {R d : ℝ}
    (positive : 0 < d) (distance : d ≤ ‖s - 1‖)
    (halfPlane : 0 ≤ s.re) (size : ‖s‖ ≤ R) :
    ‖approximationSlope N s‖ ≤ slopeSize N R d := by
  have head : ‖∑ i : Fin N, -(Real.log ((i.val : ℝ) + 1) : ℂ) *
      logPower ((i.val : ℝ) + 1) (-s)‖ ≤ logarithmicSize N := by
    refine (norm_sum_le _ _).trans ?_
    exact Finset.sum_le_sum (fun i _ => power_slope_bound _ (base_ge_one i.val) s halfPlane)
  have factor := terminal_factor_bound N s positive distance size
  have slope := terminal_slope_bound N s positive distance
  have power := power_bound (cutoff N) (base_ge_one N) s halfPlane
  have powerSlope := power_slope_bound (cutoff N) (base_ge_one N) s halfPlane
  have first : ‖terminalSlope N s * logPower (cutoff N) (-s)‖ ≤ factorSlopeSize N d := by
    rw [norm_mul]
    simpa only [mul_one] using mul_le_mul slope power (norm_nonneg _)
      ((norm_nonneg _).trans slope)
  have second : ‖terminalFactor N s *
      (-(Real.log (cutoff N) : ℂ) * logPower (cutoff N) (-s))‖ ≤
      factorSize N R d * Real.log (cutoff N) := by
    rw [norm_mul]
    exact mul_le_mul factor powerSlope (norm_nonneg _) ((norm_nonneg _).trans factor)
  have total := (norm_add_le _ _).trans
    (add_le_add head ((norm_add_le _ _).trans (add_le_add first second)))
  simpa only [approximationSlope, slopeSize, add_assoc] using total

private theorem avoids_pole {s : ℂ} {d : ℝ} (positive : 0 < d)
    (distance : d ≤ ‖s - 1‖) : s ≠ 1 := by
  intro h
  subst s
  simp only [sub_self, norm_zero] at distance
  linarith

theorem derivative_bound (N : ℕ) (s : ℂ) {R d : ℝ}
    (positive : 0 < d) (distance : d ≤ ‖s - 1‖)
    (halfPlane : 0 ≤ s.re) (size : ‖s‖ ≤ R) :
    ‖deriv (approximation N) s‖ ≤ slopeSize N R d := by
  rw [(hasDerivAt_approximation N s (avoids_pole positive distance)).deriv]
  exact slope_formula_bound N s positive distance halfPlane size

/-- Explicit model bounds supply the mesh variation on a genuine convex control set. -/
theorem residual_variation (N : ℕ) (inverse : ℂ → ℂ) (K : Set ℂ)
    {R d M D : ℝ} (positive : 0 < d) (convex : Convex ℝ K)
    (distance : ∀ z ∈ K, d ≤ ‖z - 1‖)
    (halfPlane : ∀ z ∈ K, 0 ≤ z.re) (size : ∀ z ∈ K, ‖z‖ ≤ R)
    (regular : ∀ z ∈ K, DifferentiableAt ℂ inverse z)
    (inverseSize : ∀ z ∈ K, ‖inverse z‖ ≤ M)
    (inverseSlope : ∀ z ∈ K, ‖deriv inverse z‖ ≤ D)
    {x y : ℂ} (hx : x ∈ K) (hy : y ∈ K) :
    ‖residual (approximation N x) (inverse x) 1 -
      residual (approximation N y) (inverse y) 1‖ ≤
      (slopeSize N R d * M + valueSize N R d * D) * dist x y :=
  residual_variation_of_product_bounds (approximation N) inverse K
    (fun z hz => (hasDerivAt_approximation N z (avoids_pole positive (distance z hz))).differentiableAt)
    regular convex
    (fun z hz => value_bound N z positive (distance z hz) (halfPlane z hz) (size z hz))
    (fun z hz => derivative_bound N z positive (distance z hz) (halfPlane z hz) (size z hz))
    inverseSize inverseSlope hx hy

end GRWTSK.NumberTheory.Conditional.CubicModelBounds
