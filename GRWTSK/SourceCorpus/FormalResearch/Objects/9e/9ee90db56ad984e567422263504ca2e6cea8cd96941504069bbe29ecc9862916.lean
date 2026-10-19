import FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
import Mathlib.MeasureTheory.Integral.Prod

/-!
Exact full-half-line observations of actual exponential controllers and signed
kernel covariance. All infinite rearrangements carry genuine integrability.
-/

set_option autoImplicit false
namespace ExponentialCovarianceScratch
open MeasureTheory Set Filter
open scoped ComplexConjugate ENNReal
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator HalfLineExtension FullLineConvolution
open FixedSourceKernel FixedKernelAdmission FixedLaplaceContinuation FixedKernelAdjointExponential
open SourceConvolutionAE
noncomputable section

local instance : SFinite halfLineMeasure := by
  unfold halfLineMeasure
  infer_instance

/-- The actual admitted positive real exponential controller. -/
def controller (a : ℝ) (ha : 0 < a) : H :=
  exponentialVector (a : ℂ) (by simpa using ha)

/-- The complete source response, with no output-time truncation. -/
def response (a : ℝ) (ha : 0 < a) : H := sourceOperator (controller a ha)

/-- The controller's genuine representative is the original real exponential. -/
theorem controller_ae (a : ℝ) (ha : 0 < a) :
    controller a ha =ᵐ[halfLineMeasure] (fun t : ℝ => (Real.exp (-a * t) : ℂ)) := by
  have h := exponentialVector_ae (a : ℂ) (by simpa using ha)
  filter_upwards [h] with t ht
  change exponentialVector (a : ℂ) _ t = _
  rw [ht]
  simp [exponentialFunction, Complex.ofReal_exp]

/-- The input Gram entry has its exact full-half-line normalization. -/
theorem controller_inner (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (controller a ha) (controller b hb) = ((1 / (a + b) : ℝ) : ℂ) := by
  rw [controller, controller, inner_exponentialVector]
  simp only [Complex.conj_ofReal, Complex.ofReal_div, Complex.ofReal_one, Complex.ofReal_add]

/-- The original reference-response pairing retains the actual Laplace transfer. -/
theorem reference_inner_response (a : ℝ) (ha : 0 < a) :
    inner ℂ referenceVector (response a ha) = actualLaplace 1 / (1 + (a : ℂ)) := by
  rw [response, referenceVector, exponential_inner_sourceOperator, controller,
    inner_exponentialVector]
  simp only [Complex.conj_ofReal, mul_one_div]

/-- The complete response has the genuine causal exponential-convolution representative. -/
theorem response_ae (a : ℝ) (ha : 0 < a) :
    response a ha =ᵐ[halfLineMeasure]
      (fun t => ∫ s in Ioc 0 t, (fixedKernel (t - s) * Real.exp (-a * s) : ℝ)) := by
  filter_upwards [sourceOperator_ae_causal_setIntegral (controller a ha)] with t ht
  rw [show response a ha = sourceOperator (controller a ha) from rfl, ht]
  apply integral_congr_ae
  filter_upwards [ae_restrict_of_ae_restrict_of_subset
    (show Ioc (0 : ℝ) t ⊆ Ioi (0 : ℝ) from fun _ h => h.1) (controller_ae a ha)] with s hs
  rw [hs]
  simp only [Complex.real_smul, Complex.ofReal_mul]

/-- The signed source autocorrelation keeps the complete positive time domain. -/
def signedCorrelation (s : ℝ) : ℝ :=
  ∫ u : ℝ in Ioi 0, fixedKernel u * fixedKernel (u + s)

/-- The covariance transform keeps ordinary signed products of the actual real kernel. -/
def signedCovariance (a : ℝ) : ℝ :=
  ∫ s : ℝ in Ioi 0, Real.exp (-a * s) * signedCorrelation s

/-- Every individual signed correlation integral is genuine, by actual L2 admission. -/
theorem signedCorrelation_integrable (s : ℝ) :
    IntegrableOn (fun u : ℝ => fixedKernel u * fixedKernel (u + s)) (Ioi 0) := by
  have hshift : MemLp (fun u : ℝ => fixedKernel (u + s)) 2 volume :=
    fixedKernel_memLp_two.comp_measurePreserving (measurePreserving_add_right volume s)
  exact (memLp_one_iff_integrable.mp (hshift.mul fixedKernel_memLp_two)).integrableOn

/-- The full norm integral of a translate has the same admitted source mass. -/
theorem shifted_kernel_norm_integral (u : ℝ) :
    (∫ s : ℝ, ‖fixedKernel (u + s)‖) = ∫ s : ℝ, ‖fixedKernel s‖ :=
  integral_add_left_eq_self (μ := volume) (fun s : ℝ => ‖fixedKernel s‖) u

/-- Genuine absolute double integrability precedes every covariance rearrangement. -/
theorem signed_product_integrable :
    Integrable (fun p : ℝ × ℝ => fixedKernel p.1 * fixedKernel (p.1 + p.2))
      (halfLineMeasure.prod halfLineMeasure) := by
  have hmeas : StronglyMeasurable
      (fun p : ℝ × ℝ => fixedKernel p.1 * fixedKernel (p.1 + p.2)) :=
    (fixedKernel_measurable.comp measurable_fst).stronglyMeasurable.mul
      (fixedKernel_measurable.comp (measurable_fst.add measurable_snd)).stronglyMeasurable
  refine (integrable_prod_iff hmeas.aestronglyMeasurable).mpr ⟨?_, ?_⟩
  · filter_upwards [] with u
    exact ((fixedKernel_integrable.comp_add_left u).const_mul (fixedKernel u)).integrableOn
  · refine (fixedKernel_integrable.norm.mul_const (∫ s : ℝ, ‖fixedKernel s‖)).integrableOn.mono'
      hmeas.norm.integral_prod_right'.aestronglyMeasurable ?_
    filter_upwards [] with u
    rw [Real.norm_of_nonneg (integral_nonneg (fun s => norm_nonneg _))]
    simp only [norm_mul, integral_const_mul]
    apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
    calc
      _ ≤ ∫ s : ℝ, ‖fixedKernel (u + s)‖ :=
        integral_mono_measure Measure.restrict_le_self (Filter.Eventually.of_forall
          (fun s => norm_nonneg _)) (fixedKernel_integrable.comp_add_left u).norm
      _ = _ := shifted_kernel_norm_integral u

/-- Exponential weighting preserves genuine absolute product integrability for a≥0. -/
theorem weighted_signed_product_integrable (a : ℝ) (ha : 0 ≤ a) :
    Integrable (fun p : ℝ × ℝ =>
      Real.exp (-a * p.2) * (fixedKernel p.1 * fixedKernel (p.1 + p.2)))
      (halfLineMeasure.prod halfLineMeasure) := by
  apply signed_product_integrable.bdd_mul (by fun_prop) (c := 1)
  have hpos : ∀ᵐ p : ℝ × ℝ ∂halfLineMeasure.prod halfLineMeasure, 0 < p.2 := by
    apply (Measure.ae_prod_iff_ae_ae (by measurability)).mpr
    exact Filter.Eventually.of_forall (fun _ =>
      (show ∀ᵐ s ∂halfLineMeasure, 0 < s from ae_restrict_mem measurableSet_Ioi))
  filter_upwards [hpos] with p hp
  rw [Real.norm_of_nonneg (Real.exp_pos _).le]
  exact Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr ha) hp.le)

/-- The outer covariance integral is genuine, rather than a totalized divergent integral. -/
theorem signedCovariance_integrable (a : ℝ) (ha : 0 ≤ a) :
    IntegrableOn (fun s : ℝ => Real.exp (-a * s) * signedCorrelation s) (Ioi 0) := by
  have h := (weighted_signed_product_integrable a ha).integral_prod_right
  simpa only [signedCorrelation, integral_const_mul, halfLineMeasure, IntegrableOn] using h

/-- Fubini gives the exact signed covariance in either integration order. -/
theorem signedCovariance_eq_reordered (a : ℝ) (ha : 0 ≤ a) :
    signedCovariance a = ∫ u : ℝ in Ioi 0, ∫ s : ℝ in Ioi 0,
      Real.exp (-a * s) * (fixedKernel u * fixedKernel (u + s)) := by
  rw [signedCovariance]
  simp only [signedCorrelation, ← integral_const_mul]
  exact (integral_integral_swap (weighted_signed_product_integrable a ha)).symm

/-- Translation composition is proved on the actual full-line quotient. -/
theorem fullShift_add (u v : ℝ) (f : FullLineConvolution.FullH) :
    fullShift u (fullShift v f) = fullShift (u + v) f := by
  apply Lp.ext
  have h := (measurePreserving_sub_right volume u).quasiMeasurePreserving.ae_eq_comp
    (fullShift_ae v f)
  filter_upwards [fullShift_ae u (fullShift v f), h, fullShift_ae (u + v) f]
    with t h1 h2 h3
  simp only [Function.comp_apply] at h2
  rw [h1, h2, h3]
  congr 1
  ring

/-- The exact real overlap factor retains both time-order sectors. -/
def overlap (a b u v : ℝ) : ℝ :=
  if u ≤ v then Real.exp (-a * (v - u)) / (a + b)
  else Real.exp (-b * (u - v)) / (a + b)

/-- In the first time-order sector, translation duality computes the overlap exactly. -/
theorem shifted_controller_inner_of_le (a b : ℝ) (ha : 0 < a) (hb : 0 < b)
    (u v : ℝ) (huv : u ≤ v) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) =
      ((Real.exp (-a * (v - u)) / (a + b) : ℝ) : ℂ) := by
  calc
    _ = inner ℂ (fullShift (-u) (fullShift u (zeroExtension (controller a ha))))
        (fullShift (-u) (fullShift v (zeroExtension (controller b hb)))) :=
      ((fullShift (-u)).inner_map_map _ _).symm
    _ = inner ℂ (zeroExtension (controller a ha))
        (fullShift (v - u) (zeroExtension (controller b hb))) := by
      rw [fullShift_neg_cancel, fullShift_add]
      congr 2
      ring
    _ = _ := by
      rw [controller, exponential_inner_shift (v - u) (sub_nonneg.mpr huv)]
      change Complex.exp (-(a : ℂ) * ((v - u : ℝ) : ℂ)) *
        inner ℂ (controller a ha) (controller b hb) = _
      rw [controller_inner]
      simp only [Complex.ofReal_div, Complex.ofReal_exp, Complex.ofReal_mul,
        Complex.ofReal_neg, Complex.ofReal_one, mul_one_div]

/-- Both time-order sectors compute the full shifted-exponential Gram entry. -/
theorem shifted_controller_inner (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) = (overlap a b u v : ℂ) := by
  by_cases huv : u ≤ v
  · exact (shifted_controller_inner_of_le a b ha hb u v huv).trans (by simp [overlap, huv])
  · rw [← inner_conj_symm,
      shifted_controller_inner_of_le b a hb ha v u (le_of_not_ge huv)]
    rw [Complex.conj_ofReal]
    simp only [overlap, if_neg huv, add_comm]

/-- The exact overlap is bounded uniformly before integration against signed source weights. -/
theorem overlap_abs_le (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) :
    |overlap a b u v| ≤ 1 / (a + b) := by
  have hab : 0 < a + b := add_pos ha hb
  unfold overlap
  split_ifs with huv
  · rw [abs_of_nonneg (div_nonneg (Real.exp_pos _).le hab.le)]
    exact div_le_div_of_nonneg_right
      (Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr ha.le)
        (sub_nonneg.mpr huv))) hab.le
  · rw [abs_of_nonneg (div_nonneg (Real.exp_pos _).le hab.le)]
    exact div_le_div_of_nonneg_right
      (Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hb.le)
        (sub_nonneg.mpr (le_of_not_ge huv)))) hab.le

/-- The two-sector overlap is measurable on the complete time plane. -/
theorem overlap_measurable (a b : ℝ) :
    Measurable (fun p : ℝ × ℝ => overlap a b p.1 p.2) := by
  unfold overlap
  exact Measurable.ite (by measurability) (by fun_prop) (by fun_prop)

/-- The signed double Gram integrand uses the unmodified actual real kernel. -/
def gramIntegrand (a b : ℝ) (p : ℝ × ℝ) : ℝ :=
  fixedKernel p.1 * fixedKernel p.2 * overlap a b p.1 p.2

/-- Genuine absolute double integrability admits the actual signed Gram formula. -/
theorem gramIntegrand_integrable (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    Integrable (gramIntegrand a b) (volume.prod volume) := by
  have h := (fixedKernel_integrable.mul_prod fixedKernel_integrable).bdd_mul
    (overlap_measurable a b).aestronglyMeasurable
    (c := 1 / (a + b)) (Filter.Eventually.of_forall (fun p => by
      rw [Real.norm_eq_abs]
      exact overlap_abs_le a b ha hb p.1 p.2))
  convert h using 1
  funext p
  exact mul_comm _ _

/-- Bochner integration commutes with the conjugate-linear first inner argument. -/
theorem integral_inner_first (f : ℝ → FullLineConvolution.FullH) (hf : Integrable f)
    (g : FullLineConvolution.FullH) :
    (∫ u : ℝ, inner ℂ (f u) g) = inner ℂ (∫ u : ℝ, f u) g := by
  calc
    _ = ∫ u : ℝ, conj (inner ℂ g (f u)) := by
      apply integral_congr_ae
      filter_upwards [] with u
      exact (inner_conj_symm _ _).symm
    _ = conj (inner ℂ g (∫ u : ℝ, f u)) := by rw [integral_conj, integral_inner hf]
    _ = _ := inner_conj_symm _ _

/-- Admitted Hilbert-valued Fubini transport gives the full signed double Gram integral. -/
theorem response_inner_full_double (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      ((∫ u : ℝ, ∫ v : ℝ, gramIntegrand a b (u, v)) : ℝ) := by
  have hA := weighted_shift_integrable fixedKernel fixedKernel_integrable
    (zeroExtension (controller a ha))
  have hB := weighted_shift_integrable fixedKernel fixedKernel_integrable
    (zeroExtension (controller b hb))
  rw [← zeroExtension.inner_map_map, response, response,
    zeroExtension_sourceOperator, zeroExtension_sourceOperator, actualFull_apply, actualFull_apply,
    ← integral_inner_first _ hA]
  calc
    _ = ∫ u : ℝ, ∫ v : ℝ, (gramIntegrand a b (u, v) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [] with u
      rw [← integral_inner hB]
      apply integral_congr_ae
      filter_upwards [] with v
      rw [inner_smul_left, inner_smul_right, shifted_controller_inner]
      simp only [Complex.conj_ofReal, gramIntegrand, Complex.ofReal_mul]
      ring
    _ = _ := by simp only [integral_complex_ofReal]

/-- Causality restores exactly the positive half-lines in the signed double Gram formula. -/
theorem response_inner_double (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      ((∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0, gramIntegrand a b (u, v)) : ℝ) := by
  rw [response_inner_full_double]
  congr 1
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun u hu => by
      simp only [gramIntegrand, fixedKernel_zero_of_nonpos u (le_of_not_gt hu),
        zero_mul, integral_zero])]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro u hu
  exact (setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun v hv => by
      simp only [gramIntegrand, fixedKernel_zero_of_nonpos v (le_of_not_gt hv),
        mul_zero, zero_mul])).symm

end
end ExponentialCovarianceScratch

namespace ExponentialCovarianceLiteral
open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator HalfLineExtension FullLineConvolution
open FixedSourceKernel FixedLaplaceContinuation
open ExponentialCovarianceScratch
noncomputable section

example (a : ℝ) (ha : 0 < a) :
    controller a ha = exponentialVector (a : ℂ) (by simpa using ha) := rfl
example (a : ℝ) (ha : 0 < a) : response a ha = sourceOperator (controller a ha) := rfl
example (a : ℝ) (ha : 0 < a) :
    controller a ha =ᵐ[halfLineMeasure] (fun t : ℝ => (Real.exp (-a * t) : ℂ)) :=
  controller_ae a ha
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (controller a ha) (controller b hb) = ((1 / (a + b) : ℝ) : ℂ) :=
  controller_inner a b ha hb
example (a : ℝ) (ha : 0 < a) :
    inner ℂ referenceVector (response a ha) = actualLaplace 1 / (1 + (a : ℂ)) :=
  reference_inner_response a ha
example (a : ℝ) (ha : 0 < a) :
    response a ha =ᵐ[halfLineMeasure]
      (fun t => ∫ s in Ioc 0 t, ((fixedKernel (t - s) * Real.exp (-a * s) : ℝ) : ℂ)) :=
  response_ae a ha
example (s : ℝ) : signedCorrelation s =
    ∫ u : ℝ in Ioi 0, fixedKernel u * fixedKernel (u + s) := rfl
example (a : ℝ) : signedCovariance a =
    ∫ s : ℝ in Ioi 0, Real.exp (-a * s) * signedCorrelation s := rfl
example (s : ℝ) :
    IntegrableOn (fun u : ℝ => fixedKernel u * fixedKernel (u + s)) (Ioi 0) :=
  signedCorrelation_integrable s
example (u : ℝ) : (∫ s : ℝ, ‖fixedKernel (u + s)‖) = ∫ s : ℝ, ‖fixedKernel s‖ :=
  shifted_kernel_norm_integral u
example : Integrable (fun p : ℝ × ℝ => fixedKernel p.1 * fixedKernel (p.1 + p.2))
    (halfLineMeasure.prod halfLineMeasure) := signed_product_integrable
example (a : ℝ) (ha : 0 ≤ a) :
    Integrable (fun p : ℝ × ℝ =>
      Real.exp (-a * p.2) * (fixedKernel p.1 * fixedKernel (p.1 + p.2)))
      (halfLineMeasure.prod halfLineMeasure) := weighted_signed_product_integrable a ha
example (a : ℝ) (ha : 0 ≤ a) :
    IntegrableOn (fun s : ℝ => Real.exp (-a * s) * signedCorrelation s) (Ioi 0) :=
  signedCovariance_integrable a ha
example (a : ℝ) (ha : 0 ≤ a) : signedCovariance a =
    ∫ u : ℝ in Ioi 0, ∫ s : ℝ in Ioi 0,
      Real.exp (-a * s) * (fixedKernel u * fixedKernel (u + s)) :=
  signedCovariance_eq_reordered a ha
example (u v : ℝ) (f : FullLineConvolution.FullH) :
    fullShift u (fullShift v f) = fullShift (u + v) f := fullShift_add u v f
example (a b u v : ℝ) : overlap a b u v =
    if u ≤ v then Real.exp (-a * (v - u)) / (a + b)
    else Real.exp (-b * (u - v)) / (a + b) := rfl
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) (huv : u ≤ v) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) =
      ((Real.exp (-a * (v - u)) / (a + b) : ℝ) : ℂ) :=
  shifted_controller_inner_of_le a b ha hb u v huv
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) = (overlap a b u v : ℂ) :=
  shifted_controller_inner a b ha hb u v
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) :
    |overlap a b u v| ≤ 1 / (a + b) := overlap_abs_le a b ha hb u v
example (a b : ℝ) : Measurable (fun p : ℝ × ℝ => overlap a b p.1 p.2) :=
  overlap_measurable a b
example (a b : ℝ) (p : ℝ × ℝ) :
    gramIntegrand a b p = fixedKernel p.1 * fixedKernel p.2 * overlap a b p.1 p.2 := rfl
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    Integrable (gramIntegrand a b) (volume.prod volume) := gramIntegrand_integrable a b ha hb
example (f : ℝ → FullLineConvolution.FullH) (hf : Integrable f)
    (g : FullLineConvolution.FullH) :
    (∫ u : ℝ, inner ℂ (f u) g) = inner ℂ (∫ u : ℝ, f u) g := integral_inner_first f hf g
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      (((∫ u : ℝ, ∫ v : ℝ, gramIntegrand a b (u, v)) : ℝ) : ℂ) :=
  response_inner_full_double a b ha hb
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      (((∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0, gramIntegrand a b (u, v)) : ℝ) : ℂ) :=
  response_inner_double a b ha hb
end
end ExponentialCovarianceLiteral
