/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Gamma.Deligne
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# An elementary exponential envelope for the complex Gamma function

MSC2020: 33B15, 30D15.

The integral proof gives a bound uniform in the imaginary part and in every
real parameter 1 <= Re(z) <= R. It uses a genuinely integrable exponential
majorant, not Stirling asymptotics or a separately selected compact maximum.
The consumer is the functional-equation estimate for the actual primitive
Dirichlet source in `DirichletLFunctionLeftBounds.lean`.

Primary API: David Loeffler's Mathlib Gamma integral and improper integrals.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Coordination: math#1801.
Individual provenance records and the analytical argument are adjacent.
-/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory

namespace GRWTSK.SpecialFunctions.ComplexGammaGrowth

/-- A logarithmic envelope for every nonnegative exponent up to R. -/
theorem mul_log_le_envelope {a R t : ℝ} (ha : 0 ≤ a) (haR : a ≤ R)
    (hR : 1 ≤ R) (ht : 0 < t) :
    a * Real.log t ≤ R * Real.log (2 * R) + t / 2 := by
  have hR0 : 0 < R := by linarith
  have hlogR : 0 ≤ Real.log (2 * R) := Real.log_nonneg (by linarith)
  by_cases ht1 : t ≤ 1
  · have hlogt : Real.log t ≤ 0 := Real.log_nonpos ht.le ht1
    exact (mul_nonpos_of_nonneg_of_nonpos ha hlogt).trans (by positivity)
  · have hlogt : 0 ≤ Real.log t := Real.log_nonneg (le_of_not_ge ht1)
    have hlog := Real.log_le_sub_one_of_pos (div_pos ht (by positivity : 0 < 2 * R))
    rw [Real.log_div ht.ne' (by positivity : 2 * R ≠ 0)] at hlog
    have hscaled := mul_le_mul_of_nonneg_left hlog hR0.le
    have hcancel : R * (t / (2 * R)) = t / 2 := by
      field_simp [hR0.ne'] <;> ring
    have hfirst := mul_le_mul_of_nonneg_right haR hlogt
    nlinarith

/-- The entire Gamma integrand is controlled by one integrable exponential. -/
theorem gamma_integrand_le_envelope {sigma R t : ℝ}
    (hsigma : 1 ≤ sigma) (hsigmaR : sigma ≤ R) (ht : 0 < t) :
    Real.exp (-t) * t ^ (sigma - 1) ≤
      Real.exp (R * Real.log (2 * R)) * Real.exp (-(1 / 2 : ℝ) * t) := by
  have h := mul_log_le_envelope (a := sigma - 1) (R := R)
    (by linarith) (by linarith) (by linarith) ht
  rw [Real.rpow_def_of_pos ht, ← Real.exp_add, ← Real.exp_add]
  apply Real.exp_le_exp.mpr
  nlinarith

/-- Uniform complex Gamma growth, with Euler-integral convergence proved first. -/
theorem norm_Gamma_le_envelope {z : ℂ} {R : ℝ}
    (hz : 1 ≤ z.re) (hzR : z.re ≤ R) :
    ‖Complex.Gamma z‖ ≤ 2 * Real.exp (R * Real.log (2 * R)) := by
  have hz0 : 0 < z.re := by linarith
  have hi := Complex.GammaIntegral_convergent hz0
  have hm : IntegrableOn
      (fun t : ℝ => Real.exp (R * Real.log (2 * R)) *
        Real.exp (-(1 / 2 : ℝ) * t)) (Ioi 0) :=
    (integrableOn_exp_mul_Ioi (a := -(1 / 2 : ℝ)) (by norm_num) 0).const_mul _
  rw [Complex.Gamma_eq_integral hz0, Complex.GammaIntegral]
  calc
    _ ≤ ∫ t : ℝ in Ioi 0, ‖(Real.exp (-t) : ℂ) * (t : ℂ) ^ (z - 1)‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi 0, Real.exp (R * Real.log (2 * R)) *
        Real.exp (-(1 / 2 : ℝ) * t) := by
      apply integral_mono_ae hi.norm hm
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [norm_mul, Complex.norm_of_nonneg (Real.exp_pos _).le,
        Complex.norm_cpow_eq_rpow_re_of_pos ht _]
      simpa only [Complex.sub_re, Complex.one_re] using
        gamma_integrand_le_envelope hz hzR ht
    _ = 2 * Real.exp (R * Real.log (2 * R)) := by
      rw [integral_const_mul, integral_exp_mul_Ioi (by norm_num : -(1 / 2 : ℝ) < 0)]
      norm_num <;> ring

/-- Positive-real complex powers retain their actual principal-branch norm. -/
theorem norm_ofReal_cpow_le_exp_abs {x R : ℝ} (hx : 0 < x) {z : ℂ}
    (hz : |z.re| ≤ R) :
    ‖(x : ℂ) ^ z‖ ≤ Real.exp (R * |Real.log x|) := by
  rw [Complex.norm_cpow_eq_rpow_re_of_pos hx, Real.rpow_def_of_pos hx]
  apply Real.exp_le_exp.mpr
  calc
    Real.log x * z.re ≤ |Real.log x * z.re| := le_abs_self _
    _ = |Real.log x| * |z.re| := abs_mul _ _
    _ ≤ |Real.log x| * R := mul_le_mul_of_nonneg_left hz (abs_nonneg _)
    _ = R * |Real.log x| := mul_comm _ _

/-- The Deligne complex Gamma factor has a uniform explicit envelope. -/
theorem norm_GammaC_le_envelope {z : ℂ} {R : ℝ}
    (hz : 1 ≤ z.re) (hzR : z.re ≤ R) :
    ‖Complex.Gammaℂ z‖ ≤ 4 * Real.exp
      (R * (Real.log (2 * R) + |Real.log (2 * Real.pi)|)) := by
  have hp := norm_ofReal_cpow_le_exp_abs (x := 2 * Real.pi)
    (R := R) (z := -z) (by positivity)
    (by simpa only [Complex.neg_re, abs_neg, abs_of_nonneg (by linarith : 0 ≤ z.re)]
      using hzR)
  have hp' : ‖(2 * (Real.pi : ℂ)) ^ (-z)‖ ≤
      Real.exp (R * |Real.log (2 * Real.pi)|) := by
    simpa only [Complex.ofReal_mul, Complex.ofReal_ofNat] using hp
  have hg := norm_Gamma_le_envelope hz hzR
  have htwo : ‖(2 : ℂ)‖ = (2 : ℝ) := by norm_num
  rw [Complex.Gammaℂ_def, norm_mul, norm_mul, htwo]
  calc
    _ ≤ (2 * Real.exp (R * |Real.log (2 * Real.pi)|)) *
        (2 * Real.exp (R * Real.log (2 * R))) :=
      mul_le_mul (mul_le_mul_of_nonneg_left hp' (by norm_num)) hg
        (norm_nonneg _) (by positivity)
    _ = _ := by rw [mul_add, Real.exp_add]; ring

/-- Both parity factors are controlled with the imaginary coordinate retained. -/
theorem norm_cos_sin_le_exp_im (z : ℂ) :
    ‖Complex.cos z‖ ≤ Real.exp |z.im| ∧
      ‖Complex.sin z‖ ≤ Real.exp |z.im| := by
  have hp : ‖Complex.exp (z * Complex.I)‖ ≤ Real.exp |z.im| := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simpa using neg_le_abs z.im
  have hm : ‖Complex.exp (-z * Complex.I)‖ ≤ Real.exp |z.im| := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simpa using le_abs_self z.im
  have htwo : ‖(2 : ℂ)‖ = (2 : ℝ) := by norm_num
  constructor
  · rw [Complex.cos, norm_div, htwo]
    have h := norm_add_le (Complex.exp (z * Complex.I))
      (Complex.exp (-z * Complex.I))
    linarith
  · rw [Complex.sin, norm_div, norm_mul, Complex.norm_I, mul_one, htwo]
    have h := norm_sub_le (Complex.exp (-z * Complex.I))
      (Complex.exp (z * Complex.I))
    linarith

end GRWTSK.SpecialFunctions.ComplexGammaGrowth
