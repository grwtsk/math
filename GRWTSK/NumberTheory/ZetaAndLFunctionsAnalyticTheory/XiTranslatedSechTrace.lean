/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral
import Mathlib.Tactic

/-! # Mass of a translated endpoint hyperbolic-secant kernel

The parameter b is cos(π Im a) for a zero a of the xi function. At each b>0
the real projection of the translated kernel has mass one. -/
noncomputable section
namespace GRWTSK.NumberTheory.XiTranslatedSechTrace
open Real Filter MeasureTheory Set
open scoped Topology ENNReal

def density (b t : ℝ) : ℝ :=
  cosh (π*t)*b / (sinh (π*t)^2+b^2)

def primitive (b t : ℝ) : ℝ := arctan (sinh (π*t)/b) / π

theorem density_pos {b : ℝ} (hb : 0 < b) (t : ℝ) : 0 < density b t := by
  unfold density
  positivity

theorem primitive_hasDerivAt {b : ℝ} (hb : 0 < b) (t : ℝ) :
    HasDerivAt (primitive b) (density b t) t := by
  have h := (((hasDerivAt_id t).const_mul π).sinh.div_const b).arctan.div_const π
  have hd : 0 < sinh (π*t)^2+b^2 := by positivity
  have h' : HasDerivAt (primitive b)
      (1/(1+(sinh (π*t)/b)^2) * (cosh (π*t)*(π*1)/b) / π) t := h
  convert h' using 1
  unfold density
  field_simp
  ring

theorem window_mass {b : ℝ} (hb : 0 < b) (u v : ℝ) :
    ∫ t in u..v, density b t = primitive b v - primitive b u := by
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => primitive_hasDerivAt hb t)
  have hc : Continuous (density b) := by
    unfold density
    apply Continuous.div
    · fun_prop
    · fun_prop
    · intro x
      exact (show 0 < sinh (π*x)^2+b^2 by positivity).ne'
  exact hc.intervalIntegrable _ _

theorem primitive_atTop {b : ℝ} (hb : 0 < b) :
    Tendsto (primitive b) atTop (𝓝 (1/2)) := by
  have hsh : Tendsto sinh atTop atTop := by
    apply tendsto_atTop_mono' _ _ tendsto_id
    filter_upwards [eventually_ge_atTop (0:ℝ)] with x hx
    exact self_le_sinh_iff.mpr hx
  have harg : Tendsto (fun t : ℝ => sinh (π*t)/b) atTop atTop := by
    simpa [div_eq_mul_inv] using (hsh.comp (tendsto_id.const_mul_atTop pi_pos)).atTop_mul_const (inv_pos.mpr hb)
  have hat : Tendsto arctan atTop (𝓝 (π/2)) := tendsto_arctan_atTop.mono_right nhdsWithin_le_nhds
  have he : (π/2)/π = (1/2:ℝ) := by field_simp
  unfold primitive
  simpa only [he, Function.comp_def] using (hat.comp harg).div_const π

theorem total_mass {b : ℝ} (hb : 0 < b) : ∫ t, density b t = 1 := by
  have habs (t : ℝ) : density b |t| = density b t := by
    rcases le_total 0 t with hp | hn
    · rw [abs_of_nonneg hp]
    · rw [abs_of_nonpos hn]
      simp [density, mul_neg]
  have hh := integral_Ioi_of_hasDerivAt_of_nonneg' (a := (0:ℝ))
    (fun t _ => primitive_hasDerivAt hb t) (fun t _ => (density_pos hb t).le) (primitive_atTop hb)
  calc
    _ = ∫ t, density b |t| := by simp only [habs]
    _ = 2 * ∫ t in Ioi (0:ℝ), density b t := integral_comp_abs
    _ = 1 := by rw [hh]; norm_num [primitive]

theorem density_integrable {b : ℝ} (hb : 0 < b) : Integrable (density b) := by
  by_contra hn
  have h := total_mass hb
  rw [integral_undef hn] at h
  norm_num at h

/-- Mass of the interval with centre zero, bounded uniformly down to b=0. -/
theorem centred_mass_lower {b L : ℝ} (hb : 0 < b) (hb1 : b ≤ 1) (hL : 0 ≤ L) :
    2 * primitive 1 L ≤ ∫ t in -L..L, density b t := by
  rw [window_mass hb]
  have harg : sinh (π*L) ≤ sinh (π*L)/b := by
    rw [le_div_iff₀ hb]
    exact mul_le_of_le_one_right (sinh_nonneg_iff.mpr (mul_nonneg pi_pos.le hL)) hb1
  have ha := Real.arctan_mono harg
  unfold primitive
  simp only [div_one, mul_neg, sinh_neg, neg_div, arctan_neg, sub_neg_eq_add]
  linarith [div_le_div_of_nonneg_right ha pi_pos.le]

/-- Identification with the real part of the actual reciprocal complex cosh. -/
theorem re_inv_cosh (t y : ℝ) :
    (Complex.cosh ((π*t : ℝ) + (π*y : ℝ)*Complex.I))⁻¹.re =
      density (cos (π*y)) t := by
  let u := π*t
  let v := π*y
  change (Complex.cosh ((u:ℂ) + (v:ℂ)*Complex.I))⁻¹.re =
    cosh u*cos v / (sinh u^2 + cos v^2)
  rw [Complex.inv_re, Complex.normSq_apply, Complex.cosh_add, Complex.cosh_mul_I, Complex.sinh_mul_I]
  simp only [← Complex.ofReal_cosh, ← Complex.ofReal_cos, ← Complex.ofReal_sinh,
    ← Complex.ofReal_sin, Complex.add_re, Complex.mul_re, Complex.mul_im, Complex.add_im,
    Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im, mul_zero, mul_one,
    zero_mul, sub_zero, add_zero, zero_add]
  have hh := Real.cosh_sq_sub_sinh_sq u
  have ht := Real.sin_sq_add_cos_sq v
  congr 1
  linear_combination (cos v)^2 * hh + (sinh u)^2 * ht

/-- The integrated nonnegative mass of a countable family is its cardinality
in the extended nonnegative reals, including an infinite divisor. Each index
represents a single copy, so this identity retains multiplicity. -/
theorem integrated_count {ι : Type*} [Countable ι] (a b : ι → ℝ) (hb : ∀ i, 0 < b i) :
    ∫⁻ t, ∑' i, ENNReal.ofReal (density (b i) (t-a i)) = (ENat.card ι).toENNReal := by
  have hc (i : ι) : Continuous (fun t => density (b i) (t-a i)) := by
    unfold density
    apply Continuous.div
    · fun_prop
    · fun_prop
    · intro t
      exact (show 0 < sinh (π*(t-a i))^2+(b i)^2 by have := hb i; positivity).ne'
  rw [lintegral_tsum (fun i => (hc i).measurable.ennreal_ofReal.aemeasurable)]
  calc
    _ = ∑' i : ι, (1:ℝ≥0∞) := by
      apply tsum_congr
      intro i
      calc
        _ = ∫⁻ t, ENNReal.ofReal (density (b i) t) :=
          lintegral_sub_right_eq_self (fun t => ENNReal.ofReal (density (b i) t)) (a i)
        _ = ENNReal.ofReal (∫ t, density (b i) t) :=
          (ofReal_integral_eq_lintegral_ofReal (density_integrable (hb i))
            (ae_of_all _ fun t => (density_pos (hb i) t).le)).symm
        _ = 1 := by rw [total_mass (hb i), ENNReal.ofReal_one]
    _ = _ := ENNReal.tsum_one

end GRWTSK.NumberTheory.XiTranslatedSechTrace
