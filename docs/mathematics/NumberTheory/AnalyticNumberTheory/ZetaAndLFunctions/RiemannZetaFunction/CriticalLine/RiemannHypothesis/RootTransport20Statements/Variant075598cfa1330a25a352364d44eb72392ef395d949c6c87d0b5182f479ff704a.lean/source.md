# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootTransport20Statements.Variant075598cfa1330a25a352364d44eb72392ef395d949c6c87d0b5182f479ff704a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72d4b4b5211b90bd0e7038f99de27334d896c1a6` · SHA-256 `075598cfa1330a25a352364d44eb72392ef395d949c6c87d0b5182f479ff704a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateResidual
import FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Forward
import FormalResearch.RiemannHypothesis.SourceComparison.ActualConvolutionFourier
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel
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

open MeasureTheory FourierTransform
open FormalResearch.RiemannHypothesis.SourceComparison
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (HalfLineExtension.zeroExtension
      (HalfLineExponential.referenceVector - HalfLineOperator.sourceOperator
        (CandidateRealization.controller X hX ε h hε hh hh1)) : ℝ → ℂ) :=
  CandidateResidual.residual_integrable X hX ε h hε hh hh1
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (ξ : ℝ) :
    𝓕 (HalfLineExtension.zeroExtension
      (HalfLineExponential.referenceVector - HalfLineOperator.sourceOperator
        (CandidateRealization.controller X hX ε h hε hh hh1)) : ℝ → ℂ) ξ =
      1 / (1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) -
        FixedLaplaceContinuation.actualLaplace (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) *
          CorrectedControllerAnalytic.candidate X ε h
            (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) :=
  CandidateResidual.residual_fourier X hX ε h hε hh hh1 ξ
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      ‖1 / (1 + (t : ℂ) * Complex.I) -
        FixedLaplaceContinuation.actualLaplace ((t : ℂ) * Complex.I) *
          CorrectedControllerAnalytic.candidate X ε h ((t : ℂ) * Complex.I)‖ ^ 2) ∧
      ‖HalfLineExponential.referenceVector - HalfLineOperator.sourceOperator
        (CandidateRealization.controller X hX ε h hε hh hh1)‖ ^ 2 =
        (1 / (2 * Real.pi)) * ∫ t : ℝ,
          ‖1 / (1 + (t : ℂ) * Complex.I) -
            FixedLaplaceContinuation.actualLaplace ((t : ℂ) * Complex.I) *
              CorrectedControllerAnalytic.candidate X ε h ((t : ℂ) * Complex.I)‖ ^ 2 :=
  CandidateResidual.residual_norm_sq X hX ε h hε hh hh1
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 < h) (hh1 : h ≤ 1) :
    ‖HalfLineExponential.referenceVector - HalfLineOperator.sourceOperator
      (CandidateRealization.controller X hX ε h hε hh hh1)‖ ≤
      SourceFilterDeltaConvergence.delta ε h +
        Real.sqrt (ArithmeticErrorIntegrability.arithmeticErrorSq X ε h) :=
  CandidateResidual.residual_norm_le_delta_add_error X hX ε h hε hsmall hh hh1
```
