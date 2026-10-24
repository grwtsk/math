import SourceExactXiHead
import SourceFiniteGammaReturn
import SourceExactEnergyMeanConsumer

/-!
Apply the actual finite head and favorable gamma trace to every original tail consumer.
The supplied complete signed tail or actual F7 mean remains an explicit arithmetic input.
Direction and conceptual origin: grwtsk contributors.
Native application construction: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16ExactHeadTail
open MeasureTheory
open RH16ExactXiHead RH16FiniteGammaReturn RH16ExactEnergyMean RH16ActualF7Mean
open RH16CompleteXiTail RH16CompleteXiComplement RH16CesaroSignedPairing RH16CesaroPrimitive
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

/-- Pay the complete head once and keep the quantified favorable prime-two trace. -/
def exactHeadAtomBudget (K Q : ℝ) : ℝ :=
  max 0 (K + actualXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q)

def exactHeadResidualBudget (K Q : ℝ) : ℝ :=
  exactHeadAtomBudget K Q - 3 / 8 + criticalBaselineCorrection Q

theorem exactHeadAtomBudget_nonneg (K Q : ℝ) : 0 ≤ exactHeadAtomBudget K Q :=
  le_max_left _ _

/-- Complete reconstruction retains all source integrals and the PLUS gamma sign. -/
theorem remainingAtomWork_eq_gamma_head_tail (A : ℝ) (hA : 91 ≤ A) :
    remainingAtomWork A = Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
      actualXiHead A + completeXiTail A := by
  rw [remainingAtomWork_eq_cesaro_integral A (by linarith : 1 ≤ A)]
  change Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
    signedCesaroPairing A = _
  rw [signedCesaroPairing_eq_head_add_tail A hA]
  ring

theorem remaining_lower_of_exact_head_tail (K Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A)
    (htail : -K ≤ completeXiTail A) :
    -exactHeadAtomBudget K Q ≤ remainingAtomWork A := by
  have hh := head_lower_at_radius A Q hQ hA
  have hg := gammaTraceFloor_le_actual Q A hQ hA
  have hm : K + actualXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q ≤
      exactHeadAtomBudget K Q := le_max_right _ _
  rw [remainingAtomWork_eq_gamma_head_tail A (hQ.trans hA)]
  linarith

/-- Produce the original fixed nonnegative atom witness at the same real radius. -/
theorem atom_witness_of_exact_head_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ completeXiTail A) :
    ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 40 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -D ≤ remainingAtomWork A := by
  exact ⟨exactHeadAtomBudget K Q, exactHeadAtomBudget_nonneg K Q, Q, by linarith,
    fun A hA => remaining_lower_of_exact_head_tail K Q A hQ hA (htail A hA)⟩

/-- The finite prefix is literally through Q; no fixed91 prefix is substituted. -/
theorem all_real_lower_of_exact_head_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ completeXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower Q)
        (archimedeanMultiplier 0 - 2 * exactHeadResidualBudget K Q) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_remaining_signed_tail (exactHeadAtomBudget K Q) Q
    (by linarith : 40 ≤ Q)
  intro A hA
  exact remaining_lower_of_exact_head_tail K Q A hQ hA (htail A hA)

theorem estimate_of_exact_head_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ completeXiTail A) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_exact_head_tail K Q hQ htail⟩

theorem residual_upper_of_exact_head_tail (K Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A)
    (htail : -K ≤ completeXiTail A) :
    mertensResidual A ≤ exactHeadResidualBudget K Q := by
  apply residual_upper_of_remaining_signed_lower (exactHeadAtomBudget K Q) Q A
    (by linarith : 40 ≤ Q) hA
  exact remaining_lower_of_exact_head_tail K Q A hQ hA htail

theorem leading_upper_of_exact_head_tail (K Q A : ℝ) (hQ : 91 ≤ Q)
    (hA : max 25600 Q ≤ A) (htail : -K ≤ completeXiTail A) :
    actualLeadingRenormalizedTail A ≤ exactHeadResidualBudget K Q -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact residual_upper_of_exact_head_tail K Q A hQ ((le_max_right _ _).trans hA) htail

/-- Source-level application to the actual F7 mean, with its unchanged arithmetic input. -/
theorem all_real_lower_of_exact_head_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 -
          2 * exactHeadResidualBudget (exactMeanTailBudget M1 R) (calibratedRadius R)) ≤
          sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_exact_head_tail _ _ (le_max_left _ _)
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean)

theorem estimate_of_exact_head_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_exact_head_mean M1 R hM1 hR hmean⟩

theorem residual_upper_of_exact_head_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : calibratedRadius R ≤ A) (hmean : actualF7MeanBound M1 R) :
    mertensResidual A ≤
      exactHeadResidualBudget (exactMeanTailBudget M1 R) (calibratedRadius R) :=
  residual_upper_of_exact_head_tail _ _ A (le_max_left _ _) hA
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean A hA)

theorem leading_upper_of_exact_head_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : max 25600 (calibratedRadius R) ≤ A)
    (hmean : actualF7MeanBound M1 R) :
    actualLeadingRenormalizedTail A ≤
      exactHeadResidualBudget (exactMeanTailBudget M1 R) (calibratedRadius R) -
        (riemannZeta (1 / 2)).re + 3103 / 50 :=
  leading_upper_of_exact_head_tail _ _ A (le_max_left _ _) hA
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean A ((le_max_right _ _).trans hA))
end RH16ExactHeadTail
