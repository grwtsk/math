# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GenericTransport16Statements.Variantbd85d6b4d08e98b717f127ba85c26ecbf9b07abd32445036302a7e2c2e77f2a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `810382c98247ec5797a738c39c3d4d5eaad496dc` · SHA-256 `9d9be66c7fa15e7c6f88de68836ee21a3cff933f4cda5c095cca18e3d43c9ba2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FourierL1L2Forward.Variant699c172ddffe9ed69b813a5cd13933b936387706d374844f0f99197d680215a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"699c172ddffe9ed69b813a5cd13933b936387706d374844f0f99197d680215a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FourierL1L2Forward.Variant699c172ddffe9ed69b813a5cd13933b936387706d374844f0f99197d680215a2","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"699c172ddffe9ed69b813a5cd13933b936387706d374844f0f99197d680215a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/GenericTransport16Statements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Forward
import FormalResearch.RiemannHypothesis.SourceComparison.ActualConvolutionFourier
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FourierL1L2Forward.Variant699c172ddffe9ed69b813a5cd13933b936387706d374844f0f99197d680215a2

set_option autoImplicit false
open MeasureTheory FourierTransform
open FormalResearch.RiemannHypothesis.SourceComparison
example (f g : ℝ → ℂ) (hf : Integrable f) (hg : Integrable g) :
    (∫ x : ℝ, (𝓕 f) x * g x) = ∫ x : ℝ, f x * (𝓕 g) x :=
  FourierL1L2Forward.integral_fourier_mul_eq f g hf hg
example (f g : ℝ → ℂ) (hf : Integrable f) (hg : Integrable g) (ξ : ℝ) :
    𝓕 (fun x => f x - g x) ξ = 𝓕 f ξ - 𝓕 g ξ :=
  FourierL1L2Forward.fourier_sub f g hf hg ξ
example (f : ℝ → ℂ) (hf : Integrable f) : Continuous (𝓕 f) :=
  FourierL1L2Forward.continuous_fourier f hf
example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ((𝓕 (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕 f :=
  FourierL1L2Forward.fourier_toLp_ae f hf hf2
example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    MemLp (𝓕 f) 2 := FourierL1L2Forward.fourier_memLp f hf hf2
example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    (FourierL1L2Forward.fourier_memLp f hf hf2).toLp (𝓕 f) = 𝓕 (hf2.toLp f) :=
  FourierL1L2Forward.fourier_toLp_eq f hf hf2
example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ‖(FourierL1L2Forward.fourier_memLp f hf hf2).toLp (𝓕 f)‖ = ‖hf2.toLp f‖ :=
  FourierL1L2Forward.norm_fourier_toLp f hf hf2

open MeasureTheory FourierTransform
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourceComparison
example (f : FullLineConvolution.FullH) :
    SourceConvolutionAE.convolutionFunction f =
      (fun a : ℝ => (FixedSourceKernel.fixedKernel a : ℂ)) ⋆[ContinuousLinearMap.mul ℂ ℂ]
        (f : ℝ → ℂ) := ActualConvolutionFourier.convolutionFunction_eq f
example (f : FullLineConvolution.FullH) (hf : Integrable (f : ℝ → ℂ)) :
    Integrable (FullLineConvolution.actualFull f : ℝ → ℂ) :=
  ActualConvolutionFourier.actualFull_integrable f hf
example (ξ : ℝ) :
    𝓕 (fun a : ℝ => (FixedSourceKernel.fixedKernel a : ℂ)) ξ =
      FixedLaplaceContinuation.actualLaplace (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) :=
  ActualConvolutionFourier.fixedKernel_fourier ξ
example (f : FullLineConvolution.FullH) (hf : Integrable (f : ℝ → ℂ)) (ξ : ℝ) :
    𝓕 (FullLineConvolution.actualFull f : ℝ → ℂ) ξ =
      FixedLaplaceContinuation.actualLaplace (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) *
        𝓕 (f : ℝ → ℂ) ξ := ActualConvolutionFourier.actualFull_fourier f hf ξ
example (f : HalfLineExponential.H)
    (hf : Integrable (HalfLineExtension.zeroExtension f : ℝ → ℂ)) :
    Integrable (HalfLineExtension.zeroExtension (HalfLineOperator.sourceOperator f) : ℝ → ℂ) :=
  ActualConvolutionFourier.zeroExtension_sourceOperator_integrable f hf
example (f : HalfLineExponential.H)
    (hf : Integrable (HalfLineExtension.zeroExtension f : ℝ → ℂ)) (ξ : ℝ) :
    𝓕 (HalfLineExtension.zeroExtension (HalfLineOperator.sourceOperator f) : ℝ → ℂ) ξ =
      FixedLaplaceContinuation.actualLaplace (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) *
        𝓕 (HalfLineExtension.zeroExtension f : ℝ → ℂ) ξ :=
  ActualConvolutionFourier.sourceOperator_fourier f hf ξ

open MeasureTheory FourierTransform
open FormalResearch.RiemannHypothesis.SourceComparison
example (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    ‖hf.toLp f‖ ^ 2 = ∫ t : ℝ, ‖f t‖ ^ 2 := FullLinePlancherel.norm_sq_toLp f hf
example (f : HalfLineExtension.FullH) (hf : Integrable (f : ℝ → ℂ)) :
    Integrable (fun ξ : ℝ => ‖𝓕 (f : ℝ → ℂ) ξ‖ ^ 2) ∧
      (∫ ξ : ℝ, ‖𝓕 (f : ℝ → ℂ) ξ‖ ^ 2) = ‖f‖ ^ 2 :=
  FullLinePlancherel.fourier_integral_norm_sq f hf
example (f : HalfLineExtension.FullH) (hf : Integrable (f : ℝ → ℂ))
    (G : ℝ → ℂ) (hG : ∀ ξ : ℝ, 𝓕 (f : ℝ → ℂ) ξ = G (2 * Real.pi * ξ)) :
    Integrable (fun t : ℝ => ‖G t‖ ^ 2) ∧
      ‖f‖ ^ 2 = (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖G t‖ ^ 2 :=
  FullLinePlancherel.angular_plancherel f hf G hG
```
