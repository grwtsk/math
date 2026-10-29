-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ConvolutionFunctionEq.Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.ConvolutionFunctionEq.Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"a625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/ActualConvolutionFourier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE
import FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceBoundary
import Mathlib.Analysis.Fourier.Convolution

/-! Genuine Fourier multiplication for the admitted source convolution. -/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ConvolutionFunctionEq.Varianta625546f0178b7585319bb42cce697558e2ec305a0d96edc6c1c2cf8c775be86

set_option autoImplicit false
namespace ActualConvolutionFourierScratch
open MeasureTheory FourierTransform Set
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission FixedLaplaceContinuation
open FullLineConvolution SourceConvolutionAE HalfLineOperator
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension hiding FullH
noncomputable section

/-- The admitted scalar convolution is the same complex bilinear convolution used by Fourier. -/
theorem convolutionFunction_eq (f : FullH) :
    convolutionFunction f =
      (fun a : ℝ => (fixedKernel a : ℂ)) ⋆[ContinuousLinearMap.mul ℂ ℂ] (f : ℝ → ℂ) := by
  ext t
  simp only [convolutionFunction, convolution_def, ContinuousLinearMap.mul_apply']
  rfl

/-- An L1 input to the actual full-line source operator has a genuine L1 output. -/
theorem actualFull_integrable (f : FullH) (hf : Integrable (f : ℝ → ℂ)) :
    Integrable (actualFull f : ℝ → ℂ) := by
  have hc : Integrable (convolutionFunction f) := by
    rw [convolutionFunction_eq]
    exact MeasureTheory.Integrable.integrable_convolution
      (ContinuousLinearMap.mul ℂ ℂ)
      (show Integrable (fun a : ℝ => (fixedKernel a : ℂ)) from
        fixedKernel_integrable.ofReal) hf
  exact hc.congr (actualFull_ae_convolution f).symm

/-- The Fourier transform of the actual source kernel is its boundary Laplace value. -/
theorem fixedKernel_fourier (ξ : ℝ) :
    𝓕 (fun a : ℝ => (fixedKernel a : ℂ)) ξ =
      actualLaplace (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := by
  rw [Real.fourier_eq', actualLaplace,
    setIntegral_eq_integral_of_forall_compl_eq_zero]
  · apply integral_congr_ae
    filter_upwards [] with a
    simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial]
    rw [mul_comm (Complex.exp _) _]
    congr 2
    simp only [Complex.ofReal_mul, Complex.ofReal_neg]
    ring
  · intro a ha
    have hnonpos : a ≤ 0 := le_of_not_gt ha
    rw [fixedKernel_zero_of_nonpos a hnonpos, Complex.ofReal_zero, zero_mul]

/-- On genuine L1 inputs, the actual admitted L2 convolution has the exact source multiplier. -/
theorem actualFull_fourier (f : FullH) (hf : Integrable (f : ℝ → ℂ)) (ξ : ℝ) :
    𝓕 (actualFull f : ℝ → ℂ) ξ =
      actualLaplace (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) * 𝓕 (f : ℝ → ℂ) ξ := by
  rw [Real.fourier_congr_ae (actualFull_ae_convolution f) ξ, convolutionFunction_eq,
    Real.fourier_mul_convolution_eq
      (show Integrable (fun a : ℝ => (fixedKernel a : ℂ)) from
        fixedKernel_integrable.ofReal) hf, fixedKernel_fourier]

/-- Causal zero-extension transports genuine integrability through the original operator. -/
theorem zeroExtension_sourceOperator_integrable (f : HalfLineExponential.H)
    (hf : Integrable (zeroExtension f : ℝ → ℂ)) :
    Integrable (zeroExtension (sourceOperator f) : ℝ → ℂ) := by
  rw [zeroExtension_sourceOperator]
  exact actualFull_integrable _ hf

/-- The original half-line operator retains the complete source boundary multiplier. -/
theorem sourceOperator_fourier (f : HalfLineExponential.H)
    (hf : Integrable (zeroExtension f : ℝ → ℂ)) (ξ : ℝ) :
    𝓕 (zeroExtension (sourceOperator f) : ℝ → ℂ) ξ =
      actualLaplace (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) *
        𝓕 (zeroExtension f : ℝ → ℂ) ξ := by
  rw [zeroExtension_sourceOperator]
  exact actualFull_fourier _ hf ξ

end
end ActualConvolutionFourierScratch
