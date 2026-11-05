/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.CompactPolynomialMomentCorrection
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# The two finite-prolate traces and their explicit repair

Source: Alain Connes, arXiv:2602.04022v1, pp.28--30, the restricted Fourier
relations preceding (17) and the two trace conditions preceding (18).
For the actual real even modes, integral h0 = chi0*h0(0) and integral h4 =
chi2*h4(0). This module uses those two relations explicitly; it does NOT define
prolate functions by those relations or claim to formalize prolate spectral
existence, simplicity, ordering, or convergence.

The denominator-free seed chi2*h4(0)*h0 - chi0*h0(0)*h4 has zero integral but
value (chi2-chi0)*h0(0)*h4(0) at zero. The actual compact corrector from the
imported module removes that value while leaving the integral unchanged.
Its signed summation-map cost is independent of the number of source terms.
The explicit Hermite polynomial calculation fixes the limiting scalar under
the stated normalized phases. It does not establish a finite-prolate limit.

The analytical record includes the complete archimedean, prime and pole graph
cost, not formalized here. No Weil lower separation, ground-state comparison,
global radical identity, Poisson test-class return, RH or GRH is asserted.
The corrected finite seed is still cut off at both endpoints and need not be a
Schwartz function. Two repaired traces are not global Fourier invariance.

Primary argument: integration linearity, trace algebra, and the concrete signed
polynomial sum estimates. Hostile check: distinct nonzero Fourier eigenvalues
prevent a nonzero combination of just these two modes from satisfying BOTH
traces. The corrector is a new admissible direction, not an assumed inverse.
AI-assisted source; all compiler/kernel/axiom/review checks: NOT_RUN.
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; Lean v4.34.1.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ProlateTraces

open GRWTSK.Analysis.RealAnalysis.CompactMomentCorrection

/-- The source's zero-integral combination, with no normalization denominator. -/
def seed (chi0 chi2 : ℝ) (h0 h4 : ℝ → ℝ) (x : ℝ) : ℝ :=
  chi2 * h4 0 * h0 x - chi0 * h0 0 * h4 x

def traceDefect (chi0 chi2 a b : ℝ) : ℝ := (chi2 - chi0) * a * b

theorem seed_at_zero (chi0 chi2 : ℝ) (h0 h4 : ℝ → ℝ) :
    seed chi0 chi2 h0 h4 0 = traceDefect chi0 chi2 (h0 0) (h4 0) := by
  unfold seed traceDefect
  ring

theorem integrable_seed (chi0 chi2 : ℝ) {h0 h4 : ℝ → ℝ}
    (h0i : Integrable h0) (h4i : Integrable h4) :
    Integrable (seed chi0 chi2 h0 h4) :=
  (h0i.const_mul (chi2 * h4 0)).sub (h4i.const_mul (chi0 * h0 0))

/-- Restricted Fourier relations are inputs, but the zero moment is derived. -/
theorem integral_seed (chi0 chi2 : ℝ) {h0 h4 : ℝ → ℝ}
    (h0i : Integrable h0) (h4i : Integrable h4)
    (moment0 : (∫ x : ℝ, h0 x) = chi0 * h0 0)
    (moment4 : (∫ x : ℝ, h4 x) = chi2 * h4 0) :
    (∫ x : ℝ, seed chi0 chi2 h0 h4 x) = 0 := by
  unfold seed
  rw [integral_sub (h0i.const_mul _) (h4i.const_mul _),
    integral_const_mul, integral_const_mul, moment0, moment4]
  ring

/-- The defect cannot be set to zero at a finite parameter with distinct modes. -/
theorem seed_at_zero_ne {chi0 chi2 : ℝ} {h0 h4 : ℝ → ℝ}
    (distinct : chi2 ≠ chi0) (value0 : h0 0 ≠ 0) (value4 : h4 0 ≠ 0) :
    seed chi0 chi2 h0 h4 0 ≠ 0 := by
  rw [seed_at_zero]
  exact mul_ne_zero (mul_ne_zero (sub_ne_zero.mpr distinct) value0) value4

/-- Two distinct trace eigenvalues give a nonsingular two-by-two constraint. -/
theorem two_modes_two_traces {chi0 chi2 a b c d : ℝ}
    (distinct : chi0 ≠ chi2) (ha : a ≠ 0) (hb : b ≠ 0)
    (value : c * a + d * b = 0)
    (moment : c * chi0 * a + d * chi2 * b = 0) : c = 0 ∧ d = 0 := by
  have hc : (chi0 - chi2) * a * c = 0 := by
    linear_combination moment - chi2 * value
  have hc0 : c = 0 := (mul_eq_zero.mp hc).resolve_left
    (mul_ne_zero (sub_ne_zero.mpr distinct) ha)
  have hd0 : d = 0 := by
    rw [hc0, zero_mul, zero_add] at value
    exact (mul_eq_zero.mp value).resolve_right hb
  exact ⟨hc0, hd0⟩

/-- Both traces are repaired using the independently constructed compact profile. -/
theorem repaired_seed_traces (chi0 chi2 : ℝ) {h0 h4 : ℝ → ℝ}
    (h0i : Integrable h0) (h4i : Integrable h4)
    (moment0 : (∫ x : ℝ, h0 x) = chi0 * h0 0)
    (moment4 : (∫ x : ℝ, h4 x) = chi2 * h4 0) :
    repair (seed chi0 chi2 h0 h4) 0 = 0 ∧
      (∫ x : ℝ, repair (seed chi0 chi2 h0 h4) x) = 0 := by
  constructor
  · exact repair_zero _
  · rw [integral_repair (integrable_seed chi0 chi2 h0i h4i)]
    exact integral_seed chi0 chi2 h0i h4i moment0 moment4

/-- No positive operator gap is used to control the scalar defect. -/
theorem traceDefect_abs_le {chi0 chi2 a b A B : ℝ}
    (ha : |a| ≤ A) (hb : |b| ≤ B) :
    |traceDefect chi0 chi2 a b| ≤ |chi2 - chi0| * A * B := by
  have hA : 0 ≤ A := (abs_nonneg a).trans ha
  unfold traceDefect
  rw [abs_mul, abs_mul]
  exact mul_le_mul (mul_le_mul_of_nonneg_left ha (abs_nonneg _)) hb
    (abs_nonneg b) (mul_nonneg (abs_nonneg _) hA)

/-- The finite multiplicative summation map, retaining the sqrt(u) factor. -/
def finiteImage (h : ℝ → ℝ) (u : ℝ) (M : ℕ) : ℝ :=
  Real.sqrt u * prefix h u M

theorem finiteImage_repair (h : ℝ → ℝ) (u : ℝ) (M : ℕ) :
    finiteImage (repair h) u M = finiteImage h u M - h 0 * finiteImage corrector u M := by
  unfold finiteImage prefix repair
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
  ring

/-- A complete finite correction bound: all additional source terms are zero. -/
theorem finiteImage_corrector_abs_le {u : ℝ} (hu : 0 < u) (hu1 : u ≤ 1)
    (N M : ℕ) (hleft : (N : ℝ) * u ≤ 1)
    (hright : 1 ≤ ((N : ℝ) + 1) * u) (hNM : N ≤ M) :
    |finiteImage corrector u M| ≤ 40 * Real.sqrt u := by
  unfold finiteImage
  rw [abs_mul, abs_of_nonneg (Real.sqrt_nonneg u)]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left
    (prefix_corrector_abs_le hu hu1 N M hleft hright hNM) (Real.sqrt_nonneg u)

theorem finiteImage_repair_error (h : ℝ → ℝ) {u : ℝ} (hu : 0 < u) (hu1 : u ≤ 1)
    (N M : ℕ) (hleft : (N : ℝ) * u ≤ 1)
    (hright : 1 ≤ ((N : ℝ) + 1) * u) (hNM : N ≤ M) :
    |finiteImage (repair h) u M - finiteImage h u M| ≤
      40 * |h 0| * Real.sqrt u := by
  have identity : finiteImage (repair h) u M - finiteImage h u M =
      -(h 0 * finiteImage corrector u M) := by
    rw [finiteImage_repair]
    ring
  rw [identity, abs_neg, abs_mul]
  calc
    _ ≤ |h 0| * (40 * Real.sqrt u) := mul_le_mul_of_nonneg_left
      (finiteImage_corrector_abs_le hu hu1 N M hleft hright hNM) (abs_nonneg _)
    _ = _ := by ring

/-- The actual formal derivative expression on a cell with fixed sample count. -/
def logarithmicSlope (u : ℝ) (N : ℕ) : ℝ :=
  Real.sqrt u * (prefix profile u N / 2 + prefix dilationProfile u N)

theorem logarithmicSlope_abs_le {u : ℝ} (hu : 0 < u) (hu1 : u ≤ 1)
    (N : ℕ) (hleft : (N : ℝ) * u ≤ 1) (hright : 1 ≤ ((N : ℝ) + 1) * u) :
    |logarithmicSlope u N| ≤ 160 * Real.sqrt u := by
  have hp := prefix_profile_abs_le hu hu1 N hleft hright
  have hd := prefix_dilationProfile_abs_le hu hu1 N hleft hright
  have hsum : |prefix profile u N / 2 + prefix dilationProfile u N| ≤ 160 := by
    refine (abs_add_le _ _).trans ?_
    rw [abs_div]
    norm_num only [abs_ofNat]
    linarith
  unfold logarithmicSlope
  rw [abs_mul, abs_of_nonneg (Real.sqrt_nonneg u)]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left hsum (Real.sqrt_nonneg u)

/-- Explicit standard Hermite polynomials with positive values at zero.
This definition does not claim a theorem about convergence of finite prolates. -/
def hermiteZero (x : ℝ) : ℝ :=
  Real.sqrt (Real.sqrt 2) * Real.exp (-Real.pi * x ^ 2)

def hermiteFour (x : ℝ) : ℝ :=
  Real.sqrt (Real.sqrt 2) / (8 * Real.sqrt 6) *
    (64 * Real.pi ^ 2 * x ^ 4 - 96 * Real.pi * x ^ 2 + 12) * Real.exp (-Real.pi * x ^ 2)

/-- Fixed scalar for the denominator-free seed under the stated Hermite phases. -/
def limitingScalar : ℝ := -Real.sqrt 3 / 2

theorem limitingScalar_ne_zero : limitingScalar ≠ 0 := by
  unfold limitingScalar
  exact div_ne_zero (neg_ne_zero.mpr (ne_of_gt (Real.sqrt_pos.2 (by norm_num))))
    (by norm_num)

/-- A literal polynomial identity fixes 4*h_p, not an unspecified multiple. -/
theorem normalized_hermite_seed (x : ℝ) :
    limitingScalar *
      (hermiteFour 0 * hermiteZero x - hermiteZero 0 * hermiteFour x) =
      2 * Real.pi * x ^ 2 * (2 * Real.pi * x ^ 2 - 3) * Real.exp (-Real.pi * x ^ 2) := by
  have h6 : Real.sqrt 6 ≠ 0 := ne_of_gt (Real.sqrt_pos.2 (by norm_num))
  have hc : (Real.sqrt (Real.sqrt 2)) ^ 2 * Real.sqrt 3 = Real.sqrt 6 := by
    rw [Real.sq_sqrt (Real.sqrt_nonneg 2), ← Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 2)]
    norm_num
  have hc' : (Real.sqrt (Real.sqrt 2)) ^ 2 * Real.sqrt 3 / Real.sqrt 6 = 1 := by
    rw [hc, div_self h6]
  calc
    _ = ((Real.sqrt (Real.sqrt 2)) ^ 2 * Real.sqrt 3 / Real.sqrt 6) *
        (4 * Real.pi ^ 2 * x ^ 4 - 6 * Real.pi * x ^ 2) * Real.exp (-Real.pi * x ^ 2) := by
      simp only [limitingScalar, hermiteZero, hermiteFour, zero_pow (by norm_num : 2 ≠ 0),
        zero_pow (by norm_num : 4 ≠ 0), mul_zero, neg_zero, Real.exp_zero, mul_one,
        sub_zero, zero_add]
      field_simp [h6]
      <;> ring
    _ = _ := by rw [hc']; ring

end GRWTSK.NumberTheory.WeilQuadraticForm.ProlateTraces
