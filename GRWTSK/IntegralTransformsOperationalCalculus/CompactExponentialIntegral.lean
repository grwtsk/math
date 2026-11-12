/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierCollisionBound
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic.GCongr

/-!
# Entire exponential integrals of compactly supported L1 functions

MSC2020: 44A10, 42A38, 30D15. The literal integral has kernel exp(z*t).
The plus-sign Fourier convention is recovered by z=I*w, not redefined.
Every polynomial moment is integrable. A single integrable derivative
majorant on the unit parameter ball justifies differentiation under the
integral. The input need not be smooth or pointwise continuous.

Consumer: the original correlation contour weight in WeilContourWeight.
No contour shift, arithmetic explicit formula, or sign theorem is asserted.
SOURCE_PROOF_CANDIDATE: elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Issue math#1801.
Pinned primary input: Patrick Massot, Mathlib ParametricIntegral, with
individual source-bound records and the analytical argument adjacent.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory Metric
open scoped Topology
open GRWTSK.MeasureAndIntegration.FourierCollisionBound

namespace GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral

/-- All moments have genuine L1 integrability, including order zero. -/
theorem integrable_moment (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (n : ℕ) :
    Integrable (fun t : ℝ => (t : ℂ) ^ n * f t) volume := by
  have hc : Continuous (fun t : ℝ => (t : ℂ) ^ n) := by fun_prop
  refine (hf.norm.const_mul (A ^ n)).mono'
    (hc.aestronglyMeasurable.mul hf.aestronglyMeasurable) ?_
  exact Eventually.of_forall (fun t => by
    by_cases ht : |t| ≤ A
    · simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
      gcongr
    · simp [hs t (lt_of_not_ge ht)])

/-- Exponential twisting is obtained from the existing complex Fourier integrability. -/
theorem integrable_exp_integrand (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (z : ℂ) :
    Integrable (fun t : ℝ => f t * Complex.exp (z * (t : ℂ))) volume := by
  have hz : Complex.I * (-Complex.I * z) = z := by
    rw [← mul_assoc, mul_neg, Complex.I_mul_I, neg_neg, one_mul]
  simpa only [hz] using integrable_fourier_integrand f A hf hs (-Complex.I * z)

/-- The derivative is dominated on one fixed parameter ball, uniformly in t. -/
theorem norm_parameter_derivative_le (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hs : ∀ t, A < |t| → f t = 0) (z₀ : ℂ) {z : ℂ}
    (hz : z ∈ ball z₀ 1) (t : ℝ) :
    ‖f t * (t : ℂ) * Complex.exp (z * (t : ℂ))‖ ≤
      (A * Real.exp (A * (‖z₀‖ + 1))) * ‖f t‖ := by
  by_cases ht : |t| ≤ A
  · have hnorm : ‖z‖ ≤ ‖z₀‖ + 1 := by
      have hdist : ‖z - z₀‖ < 1 := by simpa only [mem_ball, dist_eq_norm] using hz
      calc
        ‖z‖ = ‖(z - z₀) + z₀‖ := by rw [sub_add_cancel]
        _ ≤ ‖z - z₀‖ + ‖z₀‖ := norm_add_le _ _
        _ ≤ ‖z₀‖ + 1 := by linarith
    have hexp : Real.exp (z.re * t) ≤ Real.exp (A * (‖z₀‖ + 1)) := by
      apply Real.exp_le_exp.mpr
      calc
        z.re * t ≤ |z.re * t| := le_abs_self _
        _ = |z.re| * |t| := abs_mul _ _
        _ ≤ (‖z₀‖ + 1) * A :=
          mul_le_mul ((Complex.abs_re_le_norm z).trans hnorm) ht
            (abs_nonneg _) (by positivity)
        _ = _ := mul_comm _ _
    simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp,
      Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
    calc
      ‖f t‖ * |t| * Real.exp (z.re * t) ≤
          ‖f t‖ * A * Real.exp (A * (‖z₀‖ + 1)) := by gcongr
      _ = _ := by ring
  · simp [hs t (lt_of_not_ge ht)]

/-- Differentiation of the actual Bochner integral, with local domination proved above. -/
theorem hasDerivAt_integral_exp (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (z₀ : ℂ) :
    HasDerivAt (fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (z * (t : ℂ)))
      (∫ t : ℝ, f t * (t : ℂ) * Complex.exp (z₀ * (t : ℂ))) z₀ := by
  have hmeas : ∀ᶠ z : ℂ in 𝓝 z₀,
      AEStronglyMeasurable (fun t : ℝ => f t * Complex.exp (z * (t : ℂ))) volume :=
    Eventually.of_forall (fun z => (integrable_exp_integrand f A hf hs z).aestronglyMeasurable)
  have hmeas' : AEStronglyMeasurable
      (fun t : ℝ => f t * (t : ℂ) * Complex.exp (z₀ * (t : ℂ))) volume := by
    have hc : Continuous (fun t : ℝ => (t : ℂ) * Complex.exp (z₀ * (t : ℂ))) := by fun_prop
    simpa only [mul_assoc] using hf.aestronglyMeasurable.mul hc.aestronglyMeasurable
  have hbound : ∀ᵐ t : ℝ, ∀ z ∈ ball z₀ 1,
      ‖f t * (t : ℂ) * Complex.exp (z * (t : ℂ))‖ ≤
        (A * Real.exp (A * (‖z₀‖ + 1))) * ‖f t‖ :=
    Eventually.of_forall (fun t z hz => norm_parameter_derivative_le f A hA hs z₀ hz t)
  have hd : ∀ᵐ t : ℝ, ∀ z ∈ ball z₀ 1,
      HasDerivAt (fun w : ℂ => f t * Complex.exp (w * (t : ℂ)))
        (f t * (t : ℂ) * Complex.exp (z * (t : ℂ))) z := by
    refine Eventually.of_forall (fun t z _ => ?_)
    convert (((hasDerivAt_id z).mul_const (t : ℂ)).cexp.const_mul (f t)) using 1 <;> ring
  exact (hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (ball_mem_nhds z₀ (by norm_num : (0 : ℝ) < 1)) hmeas
    (integrable_exp_integrand f A hf hs z₀) hmeas' hbound
    (hf.norm.const_mul (A * Real.exp (A * (‖z₀‖ + 1)))) hd).2

/-- Every parameter derivative raises the polynomial moment by one. -/
theorem hasDerivAt_integral_exp_moment (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (n : ℕ) (z₀ : ℂ) :
    HasDerivAt (fun z : ℂ => ∫ t : ℝ, (t : ℂ) ^ n * f t * Complex.exp (z * (t : ℂ)))
      (∫ t : ℝ, (t : ℂ) ^ (n + 1) * f t * Complex.exp (z₀ * (t : ℂ))) z₀ := by
  have hm := integrable_moment f A hA hf hs n
  have hms : ∀ t : ℝ, A < |t| → (t : ℂ) ^ n * f t = 0 :=
    fun t ht => by rw [hs t ht, mul_zero]
  have hd := hasDerivAt_integral_exp (fun t : ℝ => (t : ℂ) ^ n * f t) A hA hm hms z₀
  convert hd using 1
  apply integral_congr_ae
  exact Eventually.of_forall (fun t => by rw [pow_succ]; ring)

/-- All iterated complex derivatives are the actual moment integrals. -/
theorem iterated_deriv_integral_exp (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (n : ℕ) :
    deriv^[n] (fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (z * (t : ℂ))) =
      fun z : ℂ => ∫ t : ℝ, (t : ℂ) ^ n * f t * Complex.exp (z * (t : ℂ)) := by
  induction n with
  | zero => funext z; simp
  | succ n ih =>
      rw [Function.iterate_succ_apply', ih]
      funext z
      exact (hasDerivAt_integral_exp_moment f A hA hf hs n z).deriv

/-- Entire analyticity is derived, not assumed as a field of a transform interface. -/
theorem analyticOnNhd_integral_exp (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) :
    AnalyticOnNhd ℂ (fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (z * (t : ℂ))) univ := by
  have hd : Differentiable ℂ (fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (z * (t : ℂ))) :=
    fun z => (hasDerivAt_integral_exp f A hA hf hs z).differentiableAt
  exact hd.differentiableOn.analyticOnNhd isOpen_univ

/-- Return to the fixed plus-sign Fourier convention, at every complex frequency. -/
theorem analyticOnNhd_fourier_integral (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) :
    AnalyticOnNhd ℂ
      (fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))) univ := by
  intro z _
  exact ((analyticOnNhd_integral_exp f A hA hf hs) (Complex.I * z) (mem_univ _)).comp
    (analyticAt_const.mul analyticAt_id)

end GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral
