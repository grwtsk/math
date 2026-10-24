import SourceCompleteXiComplementConsumer
import SourceContractedXiConsequences

/-!
Apply the actual favorable finite Xi block to a budget on the complete
complement, retaining the signed improvement K-eta without clipping. The
uniform complement witness remains explicit. Direction: grwtsk contributors.
Native source recovery and formal application: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceRawXiBlockGain

open MeasureTheory
open RH16ActualXiPositiveBlock RH16CompleteXiComplement
open SourceFullXiOuterContraction SourceContractedXiConsequences SourcePositiveSampling
open RH16ActualPsiNegativeBlock RH16ResumeBudget SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization SourcePairing
open RH16ResumeApplication SourceLeadingTailBudget

theorem contracted_pairing_eq_block_add_complement (A : ℝ) (hA : 40 ≤ A) :
    (∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y * deriv (plainProfile A 1) y) =
      (∫ y in (13 / 2)..7, actualTransformedXiBlockDensity A y) + completeXiComplement A := by
  rw [← actual_signed_pairing_eq_contracted A (by linarith)]
  exact signed_pairing_eq_block_add_complement A hA

theorem contracted_pairing_lower_of_complement_raw (K A : ℝ) (hA : 40 ≤ A)
    (hcomp : -K ≤ completeXiComplement A) :
    -(K - blockMargin) ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hb := actual_transformed_block_integral_lower A hA
  have he := contracted_pairing_eq_block_add_complement A hA
  linarith only [hb, he, hcomp]

theorem residual_upper_of_complement_raw (K A : ℝ) (hA : 91 ≤ A)
    (hcomp : -K ≤ completeXiComplement A) :
    mertensResidual A ≤ K - blockMargin - 3 / 8 +
      criticalBaselineCorrection 91 := by
  apply residual_upper_of_contracted_Xi (K - blockMargin) A hA
  exact contracted_pairing_lower_of_complement_raw K A (by linarith) hcomp

theorem all_real_lower_of_complement_at_91 (K : ℝ)
    (hcomp : ∀ A : ℝ, 91 ≤ A → -K ≤ completeXiComplement A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 91)
        (archimedeanMultiplier 0 - 2 * (K - blockMargin - 3 / 8 +
          criticalBaselineCorrection 91)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_lower_of_contracted_Xi (K - blockMargin)
  intro A hA
  exact contracted_pairing_lower_of_complement_raw K A (by linarith) (hcomp A hA)

theorem actual_leading_upper_of_complement_raw (K A : ℝ) (hA : 25600 ≤ A)
    (hcomp : -K ≤ completeXiComplement A) :
    SourceLeadingTailBudget.actualLeadingRenormalizedTail A ≤
      K - blockMargin - 3 / 8 + criticalBaselineCorrection 91 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_contracted_Xi (K - blockMargin) A hA
  exact contracted_pairing_lower_of_complement_raw K A (by linarith) hcomp

theorem estimate_of_complement_at_91 (K : ℝ)
    (hcomp : ∀ A : ℝ, 91 ≤ A → -K ≤ completeXiComplement A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_contracted_pairing (K - blockMargin)
  intro A hA
  exact contracted_pairing_lower_of_complement_raw K A (by linarith) (hcomp A hA)

theorem residual_tail_of_complement_raw (K R : ℝ)
    (hcomp : ∀ A : ℝ, max 91 R ≤ A → -K ≤ completeXiComplement A) :
    ∀ A : ℝ, max 91 R ≤ A →
      mertensResidual A ≤ K - blockMargin - 3 / 8 +
        criticalBaselineCorrection 91 := by
  intro A hA
  exact residual_upper_of_complement_raw K A ((le_max_left 91 R).trans hA) (hcomp A hA)

theorem all_real_lower_of_complement_raw (K R : ℝ)
    (hcomp : ∀ A : ℝ, max 91 R ≤ A → -K ≤ completeXiComplement A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (max 91 R))
        (archimedeanMultiplier 0 - 2 * (K - blockMargin - 3 / 8 +
          criticalBaselineCorrection 91)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail
    (K - blockMargin - 3 / 8 + criticalBaselineCorrection 91)
    (max 91 R) (by have h := le_max_left (91 : ℝ) R; linarith)
  exact residual_tail_of_complement_raw K R hcomp

theorem estimate_of_complement_raw (K R : ℝ)
    (hcomp : ∀ A : ℝ, max 91 R ≤ A → -K ≤ completeXiComplement A) :
    CorrelationAssembly.EstimateObligation := by
  exact ⟨_, all_real_lower_of_complement_raw K R hcomp⟩

end FormalResearch.RiemannHypothesis.SourceRawXiBlockGain
