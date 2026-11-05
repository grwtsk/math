/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ArithmeticExplicitRemainders
import GRWTSK.FunctionsOfAComplexVariable.GammaVerticalBound
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral

/-!
# Complete height tails for the actual smoothed arithmetic integrand

On Re(s)=2 the actual twisted von Mangoldt source gives |-L'/L|<=4,
uniformly in every positive modulus and character. The existing Gamma integral
ceiling on Re(s)=4 and TWO exact recurrences give
 |Gamma(2+it)|<=envelope/t^2 for t!=0.
No Stirling theorem, reciprocal-derivative bound or zero hypothesis is used.
For x>0 the actual Mellin factor has modulus x^2. Each entire omitted half-line
has norm at most 4*envelope*x^2/T; their upward-oriented sum has norm at most
8*envelope*x^2/T for every T>0.

Upper and reflected lower integrals are separately proved integrable. Reflection
identifies the lower contribution with the original negative half-line. This
coarse polynomial bound concerns the genuine Gamma-smoothed -L'/L integrand,
not the sharper exponential Stirling bound. It does not identify the full Mellin
integral with a prime sum, shift into the critical strip, or remove residues.
Those source/inversion/contour obligations remain separate. The x^2 dependence
is retained; no cutoff independent of the arithmetic variable is inferred.

Primary route: actual arithmetic series, Gamma ceiling, recurrence, complete
positive integral majorant and orientation-preserving reflection.
AI-assisted source; compilation, fresh kernel, axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Filter MeasureTheory
open scoped Topology

namespace GRWTSK.NumberTheory.Conditional.SmoothedArithmeticHeightTail

open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.GammaVerticalBound
open ArithmeticExplicitRemainders

variable {N : ℕ} [NeZero N]

/-- Two recurrences extract an integrable polynomial height majorant. -/
theorem gamma_line_bound (t : ℝ) (nonzero : t ≠ 0) :
    ‖Complex.Gamma (verticalLine 2 t)‖ ≤ envelope / t ^ 2 := by
  let s := verticalLine 2 t
  have hs : s ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    norm_num [s, verticalLine] at hr
  have hs1 : s + 1 ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    norm_num [s, verticalLine] at hr
  have h0 : |t| ≤ ‖s‖ := by
    simpa [s, verticalLine] using Complex.abs_im_le_norm s
  have h1 : |t| ≤ ‖s + 1‖ := by
    simpa [s, verticalLine] using Complex.abs_im_le_norm (s + 1)
  have hp : t ^ 2 ≤ ‖s‖ * ‖s + 1‖ := by
    simpa only [← pow_two, sq_abs] using
      mul_le_mul h0 h1 (abs_nonneg t) (norm_nonneg s)
  have ceiling := norm_Gamma_le_envelope ((s + 1) + 1) (by norm_num [s, verticalLine])
  rw [Complex.Gamma_add_one (s + 1) hs1, Complex.Gamma_add_one s hs,
    norm_mul, norm_mul] at ceiling
  apply (le_div_iff₀ (sq_pos_of_ne_zero nonzero)).mpr
  calc
    ‖Complex.Gamma s‖ * t ^ 2 = t ^ 2 * ‖Complex.Gamma s‖ := by ring
    _ ≤ (‖s‖ * ‖s + 1‖) * ‖Complex.Gamma s‖ :=
      mul_le_mul_of_nonneg_right hp (norm_nonneg _)
    _ ≤ envelope := by nlinarith [ceiling]

theorem norm_logPower_line (x t : ℝ) (positive : 0 < x) :
    ‖logPower x (verticalLine 2 t)‖ = x ^ 2 := by
  simp only [logPower, Complex.norm_exp, verticalLine, Complex.mul_re,
    Complex.add_re, Complex.ofReal_re, Complex.ofReal_im, Complex.I_re,
    Complex.I_im, mul_zero, zero_mul, sub_zero, add_zero]
  rw [two_mul, Real.exp_add, Real.exp_log positive]
  ring

def integrand (χ : DirichletCharacter ℂ N) (x t : ℝ) : ℂ :=
  -logDeriv χ.LFunction (verticalLine 2 t) * Complex.Gamma (verticalLine 2 t) *
    logPower x (verticalLine 2 t)

def majorantConstant (x : ℝ) : ℝ := 4 * envelope * x ^ 2

theorem majorantConstant_nonneg (x : ℝ) : 0 ≤ majorantConstant x :=
  mul_nonneg (mul_nonneg (by norm_num) envelope_pos.le) (sq_nonneg x)

theorem integrand_bound (χ : DirichletCharacter ℂ N) (x t : ℝ)
    (positive : 0 < x) (nonzero : t ≠ 0) :
    ‖integrand χ x t‖ ≤ majorantConstant x / t ^ 2 := by
  have arithmetic : ‖-logDeriv χ.LFunction (verticalLine 2 t)‖ ≤ 4 := by
    simpa using right_halfPlane_source_bound χ (verticalLine 2 t) (1 / 2)
      (by norm_num) (by norm_num [verticalLine])
  rw [integrand, norm_mul, norm_mul, norm_logPower_line x t positive]
  refine (mul_le_mul_of_nonneg_right
    (mul_le_mul arithmetic (gamma_line_bound t nonzero) (norm_nonneg _) (by norm_num))
    (sq_nonneg x)).trans_eq ?_
  unfold majorantConstant
  ring

theorem continuous_integrand (χ : DirichletCharacter ℂ N) (x : ℝ) :
    Continuous (integrand χ x) := by
  have hgamma : Continuous (fun t : ℝ => Complex.Gamma (verticalLine 2 t)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    have avoids (m : ℕ) : verticalLine 2 t ≠ -(m : ℂ) := by
      intro equality
      have hr := congrArg Complex.re equality
      simp only [verticalLine_re, Complex.neg_re, Complex.natCast_re] at hr
      have hm := Nat.cast_nonneg (α := ℝ) m
      linarith
    exact (Complex.differentiableAt_Gamma _ avoids).continuousAt.comp
      (by unfold verticalLine; fun_prop)
  have hpower : Continuous (fun t : ℝ => logPower x (verticalLine 2 t)) := by
    unfold logPower verticalLine
    fun_prop
  exact ((source_continuous_on_vertical χ 2 (by norm_num)).mul hgamma).mul hpower

/-- A complete improper bound; integrability follows from the same majorant. -/
theorem complete_Ioi_bound (F : ℝ → ℂ) (continuous : Continuous F)
    (C T : ℝ) (height : 0 < T)
    (bound : ∀ t ∈ Ioi T, ‖F t‖ ≤ C / t ^ 2) :
    IntegrableOn F (Ioi T) ∧ ‖∫ t in Ioi T, F t‖ ≤ C / T := by
  have majorant : IntegrableOn (fun t : ℝ => C * t ^ (-2 : ℝ)) (Ioi T) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) height).const_mul C
  have pointwise : ∀ t ∈ Ioi T, ‖F t‖ ≤ C * t ^ (-2 : ℝ) := by
    intro t ht
    have positive : 0 < t := height.trans ht
    have power : t ^ (-2 : ℝ) = 1 / t ^ 2 := by
      rw [Real.rpow_def_of_pos positive]
      rw [show Real.log t * (-2) = -(Real.log t + Real.log t) by ring,
        Real.exp_neg, Real.exp_add, Real.exp_log positive]
      simp [pow_two, one_div]
    rw [power]
    simpa only [mul_one_div] using bound t ht
  constructor
  · apply majorant.mono' continuous.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact pointwise t ht
  · calc
      _ ≤ ∫ t in Ioi T, C * t ^ (-2 : ℝ) := by
        apply norm_integral_le_of_norm_le majorant
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        exact pointwise t ht
      _ = C / T := by
        rw [integral_const_mul, integral_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) height]
        norm_num [Real.rpow_neg_one, div_eq_mul_inv]

theorem upper_tail (χ : DirichletCharacter ℂ N) (x T : ℝ)
    (positive : 0 < x) (height : 0 < T) :
    IntegrableOn (integrand χ x) (Ioi T) ∧
      ‖∫ t in Ioi T, integrand χ x t‖ ≤ majorantConstant x / T :=
  complete_Ioi_bound _ (continuous_integrand χ x) _ _ height
    (fun t ht => integrand_bound χ x t positive (height.trans ht).ne')

theorem reflected_lower_tail (χ : DirichletCharacter ℂ N) (x T : ℝ)
    (positive : 0 < x) (height : 0 < T) :
    IntegrableOn (fun t => integrand χ x (-t)) (Ioi T) ∧
      ‖∫ t in Ioi T, integrand χ x (-t)‖ ≤ majorantConstant x / T := by
  apply complete_Ioi_bound _ ((continuous_integrand χ x).comp continuous_neg) _ _ height
  intro t ht
  simpa only [neg_sq] using integrand_bound χ x (-t) positive
    (neg_ne_zero.mpr (height.trans ht).ne')

/-- Both omitted half-lines with upward ds=i*dt orientation. -/
def verticalTail (χ : DirichletCharacter ℂ N) (x T : ℝ) : ℂ :=
  Complex.I * ((∫ t in Ioi T, integrand χ x t) +
    ∫ t in Ioi T, integrand χ x (-t))

/-- The endpoint is a null set for this ordinary integral, unlike an arithmetic
half-weight cutoff. The lower side is the literal original negative half-line. -/
theorem verticalTail_original_halves (χ : DirichletCharacter ℂ N) (x T : ℝ) :
    verticalTail χ x T = Complex.I * ((∫ t in Ioi T, integrand χ x t) +
      ∫ t in Iic (-T), integrand χ x t) := by
  rw [verticalTail, integral_comp_neg_Ioi]

theorem verticalTail_bound (χ : DirichletCharacter ℂ N) (x T : ℝ)
    (positive : 0 < x) (height : 0 < T) :
    ‖verticalTail χ x T‖ ≤ 8 * envelope * x ^ 2 / T := by
  rw [verticalTail, norm_mul, Complex.norm_I, one_mul]
  refine ((norm_add_le _ _).trans
    (add_le_add (upper_tail χ x T positive height).2
      (reflected_lower_tail χ x T positive height).2)).trans_eq ?_
  unfold majorantConstant
  ring

end GRWTSK.NumberTheory.Conditional.SmoothedArithmeticHeightTail
