# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FullAudit.Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b377932567934ade5ff070ca3203d60cec461170` · SHA-256 `1146a6607c025c0d64a4a15d5f601917267370fbdfc39fd3c82fdd51f97a2330`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Controller.Variant55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Controller.Variant55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd","mathematical_subject":"Analysis.Integration","original_sha256":"55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/full-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
import Mathlib.MeasureTheory.Integral.Prod

/-!
Exact full-half-line observations of actual exponential controllers and signed
kernel covariance. All infinite rearrangements carry genuine integrability.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.Controller.Variant55750b362541e62b0c47c820fa78acd4be6650289e305566234b352d417400fd

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

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @ExponentialCovarianceScratch.controller
#print ExponentialCovarianceScratch.controller
#print axioms ExponentialCovarianceScratch.controller
#check @ExponentialCovarianceScratch.response
#print ExponentialCovarianceScratch.response
#print axioms ExponentialCovarianceScratch.response
#check @ExponentialCovarianceScratch.controller_ae
#print ExponentialCovarianceScratch.controller_ae
#print axioms ExponentialCovarianceScratch.controller_ae
#check @ExponentialCovarianceScratch.controller_inner
#print ExponentialCovarianceScratch.controller_inner
#print axioms ExponentialCovarianceScratch.controller_inner
#check @ExponentialCovarianceScratch.reference_inner_response
#print ExponentialCovarianceScratch.reference_inner_response
#print axioms ExponentialCovarianceScratch.reference_inner_response
#check @ExponentialCovarianceScratch.response_ae
#print ExponentialCovarianceScratch.response_ae
#print axioms ExponentialCovarianceScratch.response_ae
#check @ExponentialCovarianceScratch.signedCorrelation
#print ExponentialCovarianceScratch.signedCorrelation
#print axioms ExponentialCovarianceScratch.signedCorrelation
#check @ExponentialCovarianceScratch.signedCovariance
#print ExponentialCovarianceScratch.signedCovariance
#print axioms ExponentialCovarianceScratch.signedCovariance
#check @ExponentialCovarianceScratch.signedCorrelation_integrable
#print ExponentialCovarianceScratch.signedCorrelation_integrable
#print axioms ExponentialCovarianceScratch.signedCorrelation_integrable
#check @ExponentialCovarianceScratch.shifted_kernel_norm_integral
#print ExponentialCovarianceScratch.shifted_kernel_norm_integral
#print axioms ExponentialCovarianceScratch.shifted_kernel_norm_integral
#check @ExponentialCovarianceScratch.signed_product_integrable
#print ExponentialCovarianceScratch.signed_product_integrable
#print axioms ExponentialCovarianceScratch.signed_product_integrable
#check @ExponentialCovarianceScratch.weighted_signed_product_integrable
#print ExponentialCovarianceScratch.weighted_signed_product_integrable
#print axioms ExponentialCovarianceScratch.weighted_signed_product_integrable
#check @ExponentialCovarianceScratch.signedCovariance_integrable
#print ExponentialCovarianceScratch.signedCovariance_integrable
#print axioms ExponentialCovarianceScratch.signedCovariance_integrable
#check @ExponentialCovarianceScratch.signedCovariance_eq_reordered
#print ExponentialCovarianceScratch.signedCovariance_eq_reordered
#print axioms ExponentialCovarianceScratch.signedCovariance_eq_reordered
#check @ExponentialCovarianceScratch.fullShift_add
#print ExponentialCovarianceScratch.fullShift_add
#print axioms ExponentialCovarianceScratch.fullShift_add
#check @ExponentialCovarianceScratch.overlap
#print ExponentialCovarianceScratch.overlap
#print axioms ExponentialCovarianceScratch.overlap
#check @ExponentialCovarianceScratch.shifted_controller_inner_of_le
#print ExponentialCovarianceScratch.shifted_controller_inner_of_le
#print axioms ExponentialCovarianceScratch.shifted_controller_inner_of_le
#check @ExponentialCovarianceScratch.shifted_controller_inner
#print ExponentialCovarianceScratch.shifted_controller_inner
#print axioms ExponentialCovarianceScratch.shifted_controller_inner
#check @ExponentialCovarianceScratch.overlap_abs_le
#print ExponentialCovarianceScratch.overlap_abs_le
#print axioms ExponentialCovarianceScratch.overlap_abs_le
#check @ExponentialCovarianceScratch.overlap_measurable
#print ExponentialCovarianceScratch.overlap_measurable
#print axioms ExponentialCovarianceScratch.overlap_measurable
#check @ExponentialCovarianceScratch.gramIntegrand
#print ExponentialCovarianceScratch.gramIntegrand
#print axioms ExponentialCovarianceScratch.gramIntegrand
#check @ExponentialCovarianceScratch.gramIntegrand_integrable
#print ExponentialCovarianceScratch.gramIntegrand_integrable
#print axioms ExponentialCovarianceScratch.gramIntegrand_integrable
#check @ExponentialCovarianceScratch.integral_inner_first
#print ExponentialCovarianceScratch.integral_inner_first
#print axioms ExponentialCovarianceScratch.integral_inner_first
#check @ExponentialCovarianceScratch.response_inner_full_double
#print ExponentialCovarianceScratch.response_inner_full_double
#print axioms ExponentialCovarianceScratch.response_inner_full_double
#check @ExponentialCovarianceScratch.response_inner_double
#print ExponentialCovarianceScratch.response_inner_double
#print axioms ExponentialCovarianceScratch.response_inner_double
```
