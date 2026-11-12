/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationDecay
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletLogarithmicResidues
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# The actual entire test weight for the Weil contour argument

MSC2020: 11M26, 11M41, 42A38, 30E20. Use the existing correlation and
plus-sign Fourier convention. Its literal weight is integral C_f(r)*
exp((s-1/2)*r) dr. Doubled support and L1 integrability are proved before
parameter differentiation. Entire regularity is not an assumed interface.
For admissible tests the existing Fourier decay yields every-order vertical
strip decay, plus absolute integrability on every vertical line and a
quantitative whole-line L1 bound. Both height signs are included.

The original zero coordinate and reflected product are retained. The final
applications discharge continuity of this actual weight in the existing
local coefficient theorems, including both completed-zeta poles. Integrability
of W alone does NOT imply integrability of W*Lambda'/Lambda on a contour.
No zero-free boundary selection, contour displacement, horizontal-edge limit,
prime-power inversion, full arithmetic explicit formula, or sign is asserted.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Issue math#1801.
Individual primary-source records and a complete written argument are adjacent.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology ComplexConjugate
open GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.NumberTheory.WeilNegativeWitness

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

/-- The original correlation vanishes beyond twice the support radius, on both sides. -/
theorem correlation_eq_zero_of_abs_gt (f : ℝ → ℂ) (A : ℝ)
    (hs : ∀ t, A < |t| → f t = 0) {r : ℝ} (hr : 2 * A < |r|) :
    correlation f r = 0 := by
  unfold correlation
  have heq : (fun t : ℝ => conj (f t) * f (t + r)) =ᵐ[volume] 0 := by
    refine Eventually.of_forall (fun t => ?_)
    change conj (f t) * f (t + r) = 0
    by_cases ht : A < |t|
    · simp [hs t ht]
    · have ht' : |t| ≤ A := le_of_not_gt ht
      have hshift : A < |t + r| := by
        by_contra hn
        have hn' : |t + r| ≤ A := le_of_not_gt hn
        have hrad : |r| ≤ 2 * A := by
          calc
            |r| = |(t + r) - t| := by congr 1; ring
            _ ≤ |t + r| + |t| := abs_sub_le _ _
            _ ≤ 2 * A := by linarith
        exact (not_le_of_gt hr) hrad
      simp [hs (t + r) hshift]
  simpa only [Pi.zero_apply, integral_zero] using integral_congr_ae heq

/-- At frequency zero, the existing integrable-convolution result supplies L1(C_f). -/
theorem integrable_correlation_of_supported (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) :
    Integrable (correlation f) volume := by
  simpa only [mul_zero, zero_mul, Complex.exp_zero, mul_one] using
    integrable_correlation_fourier_integrand f A hf hs 0

/-- Parameter differentiation of the original contour weight, including its moment integral. -/
theorem hasDerivAt_correlation_contour_weight (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (s : ℂ) :
    HasDerivAt
      (fun w : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((w - 1 / 2) * (r : ℂ)))
      (∫ r : ℝ, correlation f r * (r : ℂ) * Complex.exp ((s - 1 / 2) * (r : ℂ))) s := by
  have hC := integrable_correlation_of_supported f A hf hs
  have hCs : ∀ r : ℝ, 2 * A < |r| → correlation f r = 0 :=
    fun _ hr => correlation_eq_zero_of_abs_gt f A hs hr
  simpa only [mul_one] using
    (hasDerivAt_integral_exp (correlation f) (2 * A) (by positivity) hC hCs (s - 1 / 2)).comp s
      ((hasDerivAt_id s).sub_const (1 / 2 : ℂ))

/-- Entire regularity for the literal correlation weight; no smoothness assumption is needed. -/
theorem analyticOnNhd_correlation_contour_weight (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) :
    AnalyticOnNhd ℂ
      (fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))) univ := by
  have hd : Differentiable ℂ
      (fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))) :=
    fun s => (hasDerivAt_correlation_contour_weight f A hA hf hs s).differentiableAt
  exact hd.differentiableOn.analyticOnNhd isOpen_univ

/-- Exact correspondence to the existing spectral coordinate, with no projection to ordinates. -/
theorem correlation_contour_weight_eq_fourier (f : ℝ → ℂ) (s : ℂ) :
    (∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))) =
      ∫ r : ℝ, correlation f r * Complex.exp (Complex.I * spectralCoordinate s * (r : ℂ)) := by
  have hk : Complex.I * spectralCoordinate s = s - 1 / 2 := by
    rw [spectralCoordinate, ← mul_assoc, mul_neg, Complex.I_mul_I, neg_neg, one_mul]
  simp only [hk]

/-- The entire weight returns to the original reflected Fourier product, not a norm square. -/
theorem correlation_contour_weight_eq_reflected_product (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (s : ℂ) :
    (∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))) =
      (∫ t : ℝ, f t * Complex.exp (Complex.I * spectralCoordinate s * (t : ℂ))) *
        conj (∫ t : ℝ, f t * Complex.exp (Complex.I * conj (spectralCoordinate s) * (t : ℂ))) := by
  rw [correlation_contour_weight_eq_fourier]
  exact fourier_correlation_eq_reflected_product f A hf hs (spectralCoordinate s)

/-- Every-order decay for the actual contour weight at every complex source parameter. -/
theorem norm_correlation_contour_weight_le_decay (f : ℝ → ℂ) (A : ℝ)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (s : ℂ) :
    ‖∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))‖ ≤
      derivativeL1Cost f k ^ 2 *
        (Real.exp (A * |s.re - 1 / 2|) / (1 + ‖s - 1 / 2‖) ^ k) ^ 2 := by
  have hn : ‖spectralCoordinate s‖ = ‖s - 1 / 2‖ := by
    simp only [spectralCoordinate, norm_mul, norm_neg, Complex.norm_I, one_mul]
  have ha : |1 / 2 - s.re| = |s.re - 1 / 2| := abs_sub_comm _ _
  rw [correlation_contour_weight_eq_fourier]
  simpa only [decayWeight, spectralCoordinate_im, hn, ha] using
    norm_fourier_correlation_le_decay f A hf hs k (spectralCoordinate s)

/-- The same decay is uniform over every prescribed vertical strip. -/
theorem norm_correlation_contour_weight_le_strip (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ)
    (R : ℝ) (s : ℂ) (hR : |s.re - 1 / 2| ≤ R) :
    ‖∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))‖ ≤
      derivativeL1Cost f k ^ 2 * (Real.exp (A * R) / (1 + |s.im|) ^ k) ^ 2 := by
  have hi : |s.im| ≤ ‖s - 1 / 2‖ := by
    simpa using Complex.abs_im_le_norm (s - 1 / 2)
  have hp : (1 + |s.im|) ^ k ≤ (1 + ‖s - 1 / 2‖) ^ k := by gcongr
  have he : Real.exp (A * |s.re - 1 / 2|) ≤ Real.exp (A * R) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hR hA)
  have hfrac : Real.exp (A * |s.re - 1 / 2|) / (1 + ‖s - 1 / 2‖) ^ k ≤
      Real.exp (A * R) / (1 + |s.im|) ^ k := by
    calc
      _ ≤ Real.exp (A * R) / (1 + ‖s - 1 / 2‖) ^ k :=
        div_le_div_of_nonneg_right he (by positivity)
      _ ≤ _ := div_le_div_of_nonneg_left (Real.exp_pos _).le (by positivity) hp
  apply (norm_correlation_contour_weight_le_decay f A hf hs k s).trans
  gcongr

/-- A whole-line Cauchy majorant, not a sampled or finite-height bound. -/
theorem norm_correlation_contour_weight_vertical_le (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (sigma t : ℝ) :
    ‖∫ r : ℝ, correlation f r *
      Complex.exp ((((sigma : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) * (r : ℂ))‖ ≤
      (derivativeL1Cost f 1 ^ 2 * Real.exp (A * |sigma - 1 / 2|) ^ 2) * (1 + t ^ 2)⁻¹ := by
  have hre : ((sigma : ℂ) + Complex.I * (t : ℂ)).re = sigma := by simp [Complex.mul_re]
  have him : ((sigma : ℂ) + Complex.I * (t : ℂ)).im = t := by simp [Complex.mul_im]
  have hw := norm_correlation_contour_weight_le_strip f A hA hf hs 1
    |sigma - 1 / 2| ((sigma : ℂ) + Complex.I * (t : ℂ)) (by simpa only [hre] using (le_refl |sigma - 1 / 2|))
  simp only [him, pow_one, div_pow, ← mul_div_assoc] at hw
  apply hw.trans
  rw [← div_eq_mul_inv]
  apply div_le_div_of_nonneg_left (by positivity) (by positivity)
  nlinarith [sq_abs t, abs_nonneg t]

/-- Absolute integrability on EVERY vertical line, with an explicit total norm budget.
This does not assert integrability after multiplication by a logarithmic derivative. -/
theorem integrable_correlation_contour_weight_vertical (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (sigma : ℝ) :
    let W := fun t : ℝ => ∫ r : ℝ, correlation f r *
      Complex.exp ((((sigma : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) * (r : ℂ))
    Integrable W volume ∧
      (∫ t : ℝ, ‖W t‖) ≤
        (derivativeL1Cost f 1 ^ 2 * Real.exp (A * |sigma - 1 / 2|) ^ 2) * Real.pi := by
  intro W
  let K := derivativeL1Cost f 1 ^ 2 * Real.exp (A * |sigma - 1 / 2|) ^ 2
  have hwhole := analyticOnNhd_correlation_contour_weight f A hA
    (hf.1.continuous.integrable_of_hasCompactSupport hf.2) (supported_of_tsupport hs)
  have hc : Continuous W := by
    have hcw : Continuous
        (fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))) :=
      continuous_iff_continuousAt.mpr (fun s => (hwhole s (mem_univ s)).continuousAt)
    exact hcw.comp (by fun_prop)
  have hmajor : Integrable (fun t : ℝ => K * (1 + t ^ 2)⁻¹) volume :=
    integrable_inv_one_add_sq.const_mul K
  have hb (t : ℝ) : ‖W t‖ ≤ K * (1 + t ^ 2)⁻¹ :=
    norm_correlation_contour_weight_vertical_le f A hA hf hs sigma t
  have hi : Integrable W volume :=
    hmajor.mono' hc.aestronglyMeasurable (Eventually.of_forall hb)
  refine ⟨hi, ?_⟩
  calc
    (∫ t : ℝ, ‖W t‖) ≤ ∫ t : ℝ, K * (1 + t ^ 2)⁻¹ := integral_mono hi.norm hmajor hb
    _ = K * Real.pi := by rw [integral_const_mul, integral_univ_inv_one_add_sq]

/-- The actual test weight supplies the continuity premise at each original source zero. -/
theorem completedLFunction_correlation_weight_at_zero {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) (rho : CriticalStripZero chi)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Integrable f volume)
    (hs : ∀ t, A < |t| → f t = 0) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Tendsto (fun s => (s - rho.1) * (W s * logDeriv (DirichletCharacter.completedLFunction chi) s))
      (𝓝[≠] rho.1) (𝓝 ((zeroMultiplicity chi rho : ℂ) * W rho.1)) := by
  intro W
  exact completedLFunction_weighted_logDeriv_at_zero chi rho W
    ((analyticOnNhd_correlation_contour_weight f A hA hf hs) rho.1 (mem_univ _)).continuousAt

/-- Both zeta poles use the SAME entire test, without imposing either pole-neutral condition. -/
theorem completedZeta_correlation_weight_at_poles
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Integrable f volume)
    (hs : ∀ t, A < |t| → f t = 0) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Tendsto (fun s => s * (W s * logDeriv completedRiemannZeta s))
      (𝓝[≠] (0 : ℂ)) (𝓝 (-W 0)) ∧
    Tendsto (fun s => (s - 1) * (W s * logDeriv completedRiemannZeta s))
      (𝓝[≠] (1 : ℂ)) (𝓝 (-W 1)) := by
  intro W
  have hwhole := analyticOnNhd_correlation_contour_weight f A hA hf hs
  exact ⟨completedZeta_weighted_logDeriv_at_zero W (hwhole 0 (mem_univ _)).continuousAt,
    completedZeta_weighted_logDeriv_at_one W (hwhole 1 (mem_univ _)).continuousAt⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
