import SourceSharpDiagonalLedgerConsumer

/-! Apply the complete explicit diagonal cost to the actual overlap route.
Direction and conceptual origin: grwtsk contributors.
Source consumer construction and formalization: OpenAI Codex assistance. -/
set_option autoImplicit false
noncomputable section
namespace RH16SharpOverlapConsumer
open RH16ExactRestrictedStrip RH16ExactOverlapConsumer RH16ExactOverlapSamplingConsumer
open RH16ExactReadoutConsumer RH16SharpDiagonalLedgerConsumer
open FormalResearch.RiemannHypothesis
open SourcePairing SourceSamplingLedger SourceRestrictedLowTimeWork SourceActualMixedWorkFubini
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction EstimateMertensResidual

theorem actual_readout_upper_of_overlap (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∀ A : ℝ, max 91 R ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤
        D + exactStripCost (max 91 R) := by
  intro A hQA
  have ho := hover A ((le_max_right _ _).trans hQA)
  have hs := actual_surplus_le_remainingOverlap_add_exact_strip
    (le_max_left (91 : ℝ) R) hQA
  unfold exactStripCost
  linarith

/-- The only supplied arithmetic witness is the unchanged full overlap balance. -/
theorem residual_tail_of_overlap (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∀ A : ℝ, max 91 R ≤ A → mertensResidual A ≤
      exactOverlapSamplingResidualBudget D (max 91 R) (sharpDiagonalCost (max 91 R)) :=
  residual_tail_of_readout D (exactStripCost (max 91 R)) (max 91 R)
    (le_max_left _ _) (actual_readout_upper_of_overlap D R hover)

theorem all_real_lower_of_overlap (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices (max 91 R),
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 *
          exactOverlapSamplingResidualBudget D (max 91 R) (sharpDiagonalCost (max 91 R))) ≤
            sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_readout D (exactStripCost (max 91 R)) (max 91 R)
    (le_max_left _ _) (actual_readout_upper_of_overlap D R hover)

/-- Original source, strip, prefix and main terms are retained, with no head round trip. -/
theorem estimate_of_overlap (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_readout D (exactStripCost (max 91 R)) (max 91 R)
    (le_max_left _ _) (actual_readout_upper_of_overlap D R hover)

end RH16SharpOverlapConsumer
