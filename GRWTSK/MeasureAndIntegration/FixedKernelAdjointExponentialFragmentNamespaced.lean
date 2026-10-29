-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FullShiftNegCancel.Variant2a7bab28045b77f311b188f75ff9891e56d76f9a399a1dfc8ddea1f5e3b99053","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a7bab28045b77f311b188f75ff9891e56d76f9a399a1dfc8ddea1f5e3b99053","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FullShiftNegCancel.Variant2a7bab28045b77f311b188f75ff9891e56d76f9a399a1dfc8ddea1f5e3b99053","mathematical_subject":"Analysis.Integration","original_sha256":"2a7bab28045b77f311b188f75ff9891e56d76f9a399a1dfc8ddea1f5e3b99053","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/FixedKernelAdjointExponentialFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# The actual causal operator and its exponential adjoint witnesses

Weak inner-product transport uses genuine L2 shifts, extension/restriction duality,
and an admitted Bochner integral. Original right-half-plane source zeros yield
nonzero adjoint-kernel vectors; their exclusion remains a separate arithmetic task.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.FullShiftNegCancel.Variant2a7bab28045b77f311b188f75ff9891e56d76f9a399a1dfc8ddea1f5e3b99053

set_option autoImplicit false
namespace FixedKernelAdjointExponentialScratch
open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential FixedSourceKernel FixedKernelAdmission
open FullLineConvolutionScratch HalfLineExtensionScratch HalfLineDualityScratch
open HalfLineOperatorScratch FixedLaplaceContinuationScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- Inverse translations cancel in the genuine full-line L2 quotient. -/
theorem fullShift_neg_cancel (a : ℝ) (f : FullLineConvolutionScratch.FullH) :
    fullShift (-a) (fullShift a f) = f := by
  apply Lp.ext
  have h := (measurePreserving_sub_right volume (-a)).quasiMeasurePreserving.ae_eq_comp
    (fullShift_ae a f)
  filter_upwards [fullShift_ae (-a) (fullShift a f), h] with t h1 h2
  simp only [Function.comp_apply] at h2
  rw [h1, h2]
  congr 1
  ring

/-- The admitted exponential has its actual zero-extended representative almost everywhere. -/
theorem zeroExtension_exponential_ae (z : ℂ) (hz : 0 < z.re) :
    zeroExtension (exponentialVector z hz) =ᵐ[volume]
      (Ioi (0 : ℝ)).indicator (exponentialFunction z) := by
  have h := (ae_restrict_iff' measurableSet_Ioi).mp (exponentialVector_ae z hz)
  filter_upwards [zeroExtension_ae (exponentialVector z hz), h] with t he ht
  rw [he]
  by_cases hpos : t ∈ Ioi (0 : ℝ)
  · rw [indicator_of_mem hpos, indicator_of_mem hpos]
    exact ht hpos
  · rw [indicator_of_notMem hpos, indicator_of_notMem hpos]

/-- Backward translation of an extended exponential restricts to the exact scalar multiple. -/
theorem restriction_backwardShift_exponential (a : ℝ) (ha : 0 ≤ a)
    (z : ℂ) (hz : 0 < z.re) :
    restriction (fullShift (-a) (zeroExtension (exponentialVector z hz))) =
      Complex.exp (-conj z * (a : ℂ)) • exponentialVector z hz := by
  apply Lp.ext
  have he := (measurePreserving_sub_right volume (-a)).quasiMeasurePreserving.ae_eq_comp
    (zeroExtension_exponential_ae z hz)
  filter_upwards [restriction_ae (fullShift (-a) (zeroExtension (exponentialVector z hz))),
    ae_restrict_of_ae (fullShift_ae (-a) (zeroExtension (exponentialVector z hz))),
    ae_restrict_of_ae he, Lp.coeFn_smul (Complex.exp (-conj z * (a : ℂ))) (exponentialVector z hz),
    exponentialVector_ae z hz, ae_restrict_mem measurableSet_Ioi]
    with t hr hs heq hsm hex ht
  simp only [Function.comp_apply] at heq
  rw [hr, hs, heq, hsm, Pi.smul_apply, hex]
  rw [indicator_of_mem (show t - -a ∈ Ioi (0 : ℝ) by
    change 0 < t - -a
    linarith [show 0 < t from ht])]
  change Complex.exp (-conj z * ((t - -a : ℝ) : ℂ)) =
    Complex.exp (-conj z * (a : ℂ)) * Complex.exp (-conj z * (t : ℂ))
  rw [← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- The half-line exponential tests actual shifts with the Laplace exponential factor. -/
theorem exponential_inner_shift (a : ℝ) (ha : 0 ≤ a) (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (zeroExtension (exponentialVector z hz)) (fullShift a (zeroExtension f)) =
      Complex.exp (-z * (a : ℂ)) * inner ℂ (exponentialVector z hz) f := by
  calc
    _ = inner ℂ (fullShift (-a) (zeroExtension (exponentialVector z hz)))
        (fullShift (-a) (fullShift a (zeroExtension f))) :=
      ((fullShift (-a)).inner_map_map _ _).symm
    _ = inner ℂ (restriction (fullShift (-a) (zeroExtension (exponentialVector z hz)))) f := by
      rw [fullShift_neg_cancel, inner_restriction_zeroExtension]
    _ = _ := by
      rw [restriction_backwardShift_exponential a ha z hz, inner_smul_left]
      rw [← Complex.exp_conj]
      simp only [map_mul, map_neg, Complex.conj_conj, Complex.conj_ofReal]

/-- An admitted Bochner integral gives the exact weak source-operator identity. -/
theorem exponential_inner_sourceOperator (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (exponentialVector z hz) (sourceOperator f) =
      actualLaplace z * inner ℂ (exponentialVector z hz) f := by
  rw [sourceOperator_apply]
  have hdual : ∀ u : FullLineConvolutionScratch.FullH,
      inner ℂ (exponentialVector z hz) (restriction u) =
        inner ℂ (zeroExtension (exponentialVector z hz)) u := by
    intro u
    rw [← inner_conj_symm, inner_restriction_zeroExtension, inner_conj_symm]
  rw [hdual, ← integral_inner (weighted_shift_integrable fixedKernel fixedKernel_integrable
    (zeroExtension f))]
  calc
    _ = ∫ a : ℝ, ((fixedKernel a : ℂ) * Complex.exp (-z * (a : ℂ))) *
        inner ℂ (exponentialVector z hz) f := by
      apply integral_congr_ae
      filter_upwards [] with a
      rw [inner_smul_right]
      by_cases ha : 0 ≤ a
      · rw [exponential_inner_shift a ha z hz f]
        ring
      · rw [fixedKernel_zero_of_nonpos a (le_of_not_ge ha), Complex.ofReal_zero,
          zero_mul, zero_mul, zero_mul]
    _ = (∫ a : ℝ, (fixedKernel a : ℂ) * Complex.exp (-z * (a : ℂ))) *
        inner ℂ (exponentialVector z hz) f := integral_mul_const _ _
    _ = _ := by
      congr 1
      exact (setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
        (fun t ht ↦ by rw [fixedKernel_zero_of_nonpos t (le_of_not_gt ht),
          Complex.ofReal_zero, zero_mul])).symm

/-- The actual Hilbert adjoint acts on exponential vectors by the conjugated source transform. -/
theorem sourceOperator_adjoint_exponential (z : ℂ) (hz : 0 < z.re) :
    sourceOperator.adjoint (exponentialVector z hz) =
      conj (actualLaplace z) • exponentialVector z hz := by
  apply ext_inner_right ℂ
  intro f
  rw [ContinuousLinearMap.adjoint_inner_left, exponential_inner_sourceOperator,
    inner_smul_left, Complex.conj_conj]

/-- An original right-of-line zeta zero gives an actual adjoint-kernel vector. -/
theorem sourceOperator_adjoint_exponential_zero_of_nontrivial (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    sourceOperator.adjoint (exponentialVector (ρ - 1 / 2) (by
      simp only [Complex.sub_re, Complex.div_ofNat_re, Complex.one_re]; linarith)) = 0 := by
  rw [sourceOperator_adjoint_exponential]
  have h : actualLaplace (ρ - 1 / 2) = 0 :=
    actual_laplace_integral_zero_of_nontrivial ρ hρ hρre
  rw [h, map_zero, zero_smul]

/-- Every right-half-plane occurrence gives its own actual adjoint-kernel vector. -/
theorem sourceOperator_adjoint_exponential_zero_occurrence (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) :
    sourceOperator.adjoint (exponentialVector (ZeroObject.shiftedValue o) ho) = 0 := by
  rw [sourceOperator_adjoint_exponential]
  have h : actualLaplace (ZeroObject.shiftedValue o) = 0 :=
    actual_laplace_integral_zero_occurrence o ho
  rw [h, map_zero, zero_smul]

/-- The original zero supplies a nonzero kernel vector with strictly positive reference coefficient. -/
theorem nontrivial_reference_visible_kernel (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ u : H, u ≠ 0 ∧ sourceOperator.adjoint u = 0 ∧
      0 < ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 := by
  have hz : 0 < (ρ - (1 / 2 : ℂ)).re := by
    simp only [Complex.sub_re, Complex.div_ofNat_re, Complex.one_re]
    linarith
  exact ⟨exponentialVector (ρ - 1 / 2) hz, exponentialVector_ne_zero _ hz,
    sourceOperator_adjoint_exponential_zero_of_nontrivial ρ hρ hρre,
    reference_projection_coefficient_pos _ hz⟩

/-- The occurrence witness retains the exact reference coefficient and every multiplicity slot. -/
theorem occurrence_reference_visible_kernel (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) :
    ∃ u : H, u ≠ 0 ∧ sourceOperator.adjoint u = 0 ∧
      ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 =
        2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ∧
      0 < ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 := by
  exact ⟨exponentialVector (ZeroObject.shiftedValue o) ho, exponentialVector_ne_zero _ ho,
    sourceOperator_adjoint_exponential_zero_occurrence o ho,
    reference_projection_coefficient _ ho, reference_projection_coefficient_pos _ ho⟩

end
end FixedKernelAdjointExponentialScratch
