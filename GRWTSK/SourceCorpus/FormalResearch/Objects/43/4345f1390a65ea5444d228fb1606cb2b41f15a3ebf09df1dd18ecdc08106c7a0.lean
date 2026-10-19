import SourceGrowingXiHead
import SourceExactHeadTailConsumer

/-! Apply the unconditional moving head to the unchanged original source consumers.
Direction and conceptual origin: grwtsk contributors.
Source consequence composition and formalization: OpenAI Codex assistance.
The remaining signed growing-tail witness is supplied. -/
set_option autoImplicit false
noncomputable section
namespace RH16GrowingXiHeadConsumer
open RH16GrowingXiHead RH16ExactHeadTail RH16ActualF7
open RH16CompleteXiTail RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.RiemannHypothesis SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

def growingHeadResidualBudget (K Q : ℝ) : ℝ :=
  exactHeadResidualBudget (K + growingXiHeadCost Q) Q

theorem residual_upper_of_growing_tail (K Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A)
    (htail : -K ≤ growingXiTail A) :
    mertensResidual A ≤ growingHeadResidualBudget K Q :=
  residual_upper_of_exact_head_tail _ Q A hQ hA
    (completeXiTail_lower_of_growing_tail hQ hA htail)

/-- The original finite prefix remains at this same real Q. -/
theorem all_real_lower_of_growing_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ growingXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower Q)
        (archimedeanMultiplier 0 - 2 * growingHeadResidualBudget K Q) ≤
          sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_exact_head_tail _ Q hQ
    (fun A hA => completeXiTail_lower_of_growing_tail hQ hA (htail A hA))

theorem estimate_of_growing_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ growingXiTail A) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_growing_tail K Q hQ htail⟩

/-- The independent leading range is max 25600 Q, not a product. -/
theorem leading_upper_of_growing_tail (K Q A : ℝ) (hQ : 91 ≤ Q)
    (hA : max 25600 Q ≤ A) (htail : -K ≤ growingXiTail A) :
    actualLeadingRenormalizedTail A ≤
      growingHeadResidualBudget K Q - (riemannZeta (1 / 2)).re + 3103 / 50 :=
  leading_upper_of_exact_head_tail _ Q A hQ hA
    (completeXiTail_lower_of_growing_tail hQ ((le_max_right _ _).trans hA) htail)

end RH16GrowingXiHeadConsumer
