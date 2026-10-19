import FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Forward
import FormalResearch.RiemannHypothesis.SourceComparison.ActualConvolutionFourier
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateRealization
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateTilt
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateInverseAdmission
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel
import FormalResearch.RiemannHypothesis.SourceComparison.ReferenceFourier
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateLaplace
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateControllerLaplace
import FormalResearch.RiemannHypothesis.SourceComparison.AngularL2Triangle
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateResidual



/-! Actual controller realization, source residual norm, and signed cutoff increments. -/

namespace FourierL1L2ForwardLiteral
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

end FourierL1L2ForwardLiteral

namespace ActualConvolutionFourierLiteral
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

end ActualConvolutionFourierLiteral

namespace CandidateRealizationLiteral
open MeasureTheory FourierTransform Filter Complex
open FormalResearch.RiemannHypothesis.SourceComparison.CandidateRealization
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality HalfLineExponential HalfLineExtension
open scoped Topology

example (F : ℂ → ℂ) (ξ : ℝ) :
    angularFrequency F ξ = F (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := rfl

example (F : ℂ → ℂ) (x : ℝ) :
    boundaryInverse F x = (𝓕⁻ (angularFrequency F)) x :=
  boundaryInverse_eq_fourierInv F x

variable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1)

example : Integrable (angularFrequency (candidate X ε h)) ∧
    MemLp (angularFrequency (candidate X ε h)) 2 :=
  candidate_frequency_admission X hX ε h hε hh hh1

example : fullBoundaryVector X hX ε h hε hh hh1 =
    (𝓕⁻ ((candidate_frequency_admission X hX ε h hε hh hh1).2.toLp
      (angularFrequency (candidate X ε h))) : FullH) := rfl

example : fullBoundaryVector X hX ε h hε hh hh1 =ᵐ[volume]
    boundaryInverse (candidate X ε h) := fullBoundaryVector_ae X hX ε h hε hh hh1

example : MemLp (boundaryInverse (candidate X ε h)) 2 volume :=
  candidate_boundaryInverse_memLp X hX ε h hε hh hh1

example : Continuous (boundaryInverse (candidate X ε h)) :=
  candidate_boundaryInverse_continuous X hX ε h hε hh hh1

example : ‖fullBoundaryVector X hX ε h hε hh hh1‖ ^ 2 =
    (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖candidate X ε h ((t : ℂ) * I)‖ ^ 2 :=
  fullBoundaryVector_norm_sq X hX ε h hε hh hh1

example : controller X hX ε h hε hh hh1 =
    (restriction (fullBoundaryVector X hX ε h hε hh hh1) : H) := rfl

example : controller X hX ε h hε hh hh1 =ᵐ[halfLineMeasure]
    boundaryInverse (candidate X ε h) := controller_ae X hX ε h hε hh hh1

example : zeroExtension (controller X hX ε h hε hh hh1) =
    fullBoundaryVector X hX ε h hε hh hh1 :=
  zeroExtension_controller X hX ε h hε hh hh1

example : ‖controller X hX ε h hε hh hh1‖ ^ 2 =
    (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖candidate X ε h ((t : ℂ) * I)‖ ^ 2 :=
  controller_norm_sq X hX ε h hε hh hh1

end CandidateRealizationLiteral

namespace CandidateTiltLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.CandidateTilt
open MeasureTheory Filter Complex
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality
example (F : ℂ → ℂ)
    (hF : ∀ z : ℂ, 0 ≤ z.re → DifferentiableAt ℂ F z)
    (φ : ℝ → ℝ) (hφ : Integrable φ)
    (hb : ∀ σ t : ℝ, 0 ≤ σ → ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t)
    (htop : Tendsto φ atTop (nhds 0)) (hbot : Tendsto φ atBot (nhds 0))
    (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    boundaryInverse F x = (Real.exp (x * σ) : ℂ) *
      boundaryInverse (fun z => F ((σ : ℂ) + z)) x :=
  boundaryInverse_shift F hF φ hφ hb htop hbot σ hσ x
example (X : ℕ) (ε h σ : ℝ) (z : ℂ) :
    candidate X ε h ((σ : ℂ) + z) = candidate X (ε + σ) h z :=
  candidate_shift X ε h σ z
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    boundaryInverse (candidate X ε h) x = (Real.exp (x * σ) : ℂ) *
      boundaryInverse (candidate X (ε + σ) h) x :=
  candidate_boundaryInverse_shift X hX ε h hε hh hh1 σ hσ x

end CandidateTiltLiteral

namespace CandidateInverseAdmissionLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.CandidateInverseAdmission
open MeasureTheory Complex Set
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ x : ℝ, ‖boundaryInverse (candidate X ε h) x‖ ≤ C :=
  candidate_boundaryInverse_bounded X hX ε h hε hh hh1
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) :
    boundaryInverse (candidate X ε h) x = (Real.exp (-(ε / 2) * x) : ℂ) *
      boundaryInverse (candidate X (ε / 2) h) x :=
  candidate_boundaryInverse_half_shift X hX ε h hε hh hh1 x
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ x : ℝ,
      ‖boundaryInverse (candidate X ε h) x‖ ≤ C * Real.exp (-(ε / 2) * x) :=
  candidate_boundaryInverse_exp_bound X hX ε h hε hh hh1
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (boundaryInverse (candidate X ε h)) :=
  candidate_boundaryInverse_integrable X hX ε h hε hh hh1
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun x : ℝ => Complex.exp (-z * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) (Ioi (0 : ℝ)) :=
  candidate_boundaryInverse_laplace_integrable X hX ε h hε hh hh1 z hz

end CandidateInverseAdmissionLiteral

namespace FullLinePlancherelLiteral
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

end FullLinePlancherelLiteral

namespace ReferenceFourierLiteral
open MeasureTheory FourierTransform Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison.ReferenceFourier
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineExtension

example : zeroExtension referenceVector =ᵐ[volume]
    (Ioi (0 : ℝ)).indicator (fun t : ℝ => Complex.exp (-(t : ℂ))) :=
  reference_zeroExtension_ae

example : Integrable ((zeroExtension referenceVector : FullH) : ℝ → ℂ) :=
  reference_zeroExtension_integrable

example (ξ : ℝ) : (𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ =
    1 / (1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * I) := reference_zeroExtension_fourier ξ

example (ξ : ℝ) : ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2 =
    (1 + (2 * Real.pi * ξ) ^ 2)⁻¹ := reference_zeroExtension_fourier_norm_sq ξ

example : Integrable (fun ξ : ℝ =>
    ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2) ∧
    (∫ ξ : ℝ, ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2) =
      (1 / 2 : ℝ) := reference_zeroExtension_fourier_square_integral

end ReferenceFourierLiteral

namespace CandidateLaplaceLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.CandidateLaplace
open MeasureTheory Complex Set
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (τ : ℝ) :
    (∫ x : ℝ, Complex.exp (-(τ : ℂ) * I * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) = candidate X ε h ((τ : ℂ) * I) :=
  candidate_boundaryInverse_fourier X hX ε h hε hh hh1 τ
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    Complex.exp (-(σ : ℂ) * (x : ℂ)) * boundaryInverse (candidate X ε h) x =
      boundaryInverse (candidate X (ε + σ) h) x :=
  candidate_boundaryInverse_tilt X hX ε h hε hh hh1 σ hσ x
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    (∫ x : ℝ in Ioi 0, Complex.exp (-z * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) = candidate X ε h z :=
  candidate_boundaryInverse_laplace X hX ε h hε hh hh1 z hz
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    (∫ x : ℝ in Ioi 0, Complex.exp (-z * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) =
      (MobiusPoleNumerator.correctedQuotient X (z + (ε : ℂ)) / reducedW (z + (ε : ℂ))) *
        (1 + (h : ℂ) * (z + (ε : ℂ)))⁻¹ ^ 6 / (1 + z + (ε : ℂ)) := by
  simpa only [candidate, quotient] using
    candidate_boundaryInverse_laplace X hX ε h hε hh hh1 z hz

end CandidateLaplaceLiteral

namespace CorrectedCutoffIncrementLiteral

open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusPoleNumerator FiniteMobiusController SourceFilterDelta ArithmeticErrorIntegrability
open FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement
noncomputable section

example (N : ℕ) (z : ℂ) : cutoffShape N z =
  Complex.exp ((1 / 2 - z) * (Real.log (N : ℝ) : ℂ)) -
    Complex.exp ((1 / 2 - z) * (Real.log ((N + 1 : ℕ) : ℝ) : ℂ)) := rfl

example (N : ℕ) (ε h t : ℝ) : boundaryResidual N ε h t =
  boundaryFilter ε h t * (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
    correctedNumerator N ((ε : ℂ) + (t : ℂ) * Complex.I)) := rfl

example (z : ℂ) : correctedNumerator 1 z = 0 := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement.correctedNumerator_one z

example (N : ℕ) (hN : 1 ≤ N) (z : ℂ) :
    correctedNumerator (N + 1) z - correctedNumerator N z =
      (mobiusReciprocalSum N : ℂ) * cutoffShape N z := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement.correctedNumerator_succ_sub N hN z

example (N : ℕ) (hN : 1 ≤ N) (z : ℂ) :
    correctedNumerator N z =
      ∑ n ∈ Finset.Ico 1 N, (mobiusReciprocalSum n : ℂ) * cutoffShape n z := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement.correctedNumerator_eq_sum_increments N hN z

example (N : ℕ) (hN : 1 ≤ N) (ε h t : ℝ) :
    boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t =
      -(mobiusReciprocalSum N : ℂ) *
        (boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          cutoffShape N ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement.boundaryResidual_succ_sub N hN ε h t

example (N M : ℕ) (hN : 1 ≤ N) (hM : 1 ≤ M)
    (ε h t : ℝ) :
    (boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t) *
      star (boundaryResidual (M + 1) ε h t - boundaryResidual M ε h t) =
      ((mobiusReciprocalSum N * mobiusReciprocalSum M : ℝ) : ℂ) *
        (boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) *
          star (boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I)) *
        cutoffShape N ((ε : ℂ) + (t : ℂ) * Complex.I) *
          star (cutoffShape M ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement.boundaryResidual_increment_product N M hN hM ε h t

example (N M : ℕ)
    (hN : 1 ≤ N) (hM : 1 ≤ M) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      (boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t) *
        star (boundaryResidual (M + 1) ε h t - boundaryResidual M ε h t)) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.CorrectedCutoffIncrement.boundaryResidual_increment_product_integrable N M hN hM ε h hε hsmall hh hh1

example (N : ℕ) (ε h : ℝ) : arithmeticErrorSq N ε h =
    (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖boundaryResidual N ε h t‖ ^ 2 := rfl

end

end CorrectedCutoffIncrementLiteral

namespace CandidateControllerLaplaceLiteral
open FormalResearch.RiemannHypothesis.SourceComparison.CandidateControllerLaplace FormalResearch.RiemannHypothesis.SourceComparison.CandidateRealization
open MeasureTheory FourierTransform Complex Set
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun x : ℝ => Complex.exp (-z * (x : ℂ)) *
      controller X hX ε h hε hh hh1 x) (Ioi 0) :=
  controller_laplace_integrable X hX ε h hε hh hh1 z hz
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    (∫ x : ℝ in Ioi 0, Complex.exp (-z * (x : ℂ)) *
      controller X hX ε h hε hh hh1 x) = candidate X ε h z :=
  controller_laplace X hX ε h hε hh hh1 z hz
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun x : ℝ => fullBoundaryVector X hX ε h hε hh hh1 x) :=
  fullBoundaryVector_integrable X hX ε h hε hh hh1
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (ξ : ℝ) :
    (𝓕 (fun x : ℝ => fullBoundaryVector X hX ε h hε hh hh1 x)) ξ =
      candidate X ε h (((2 * Real.pi * ξ : ℝ) : ℂ) * I) :=
  fullBoundaryVector_fourier X hX ε h hε hh hh1 ξ

end CandidateControllerLaplaceLiteral

namespace AngularL2TriangleLiteral
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison.AngularL2Triangle

example (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) =
      Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f‖ :=
  sqrt_normalized_integral_eq_norm f hf

example (f g : ℝ → ℂ) (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t + g t‖ ^ 2) ≤
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖g t‖ ^ 2) :=
  sqrt_normalized_integral_add_le f g hf hg

end AngularL2TriangleLiteral

namespace CandidateResidualLiteral
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

end CandidateResidualLiteral
