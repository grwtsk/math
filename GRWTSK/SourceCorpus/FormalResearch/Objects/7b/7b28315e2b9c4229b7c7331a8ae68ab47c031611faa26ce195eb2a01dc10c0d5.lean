import SourceFullXiCesaroConsumer
import SourceLeadingCesaroPropagation

/-!
Apply the newly recovered exact full-Xi primitive identity to the checked sharp
leading consumers. No upper witness is supplied. Every complementary component
and the original source/real-scale domain is retained.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceFullXiLeadingPropagation
open MeasureTheory
open SourceFullXiCesaroConsumer SourceLeadingCesaroPropagation SourceLeadingTailBudget
open SourceActualPsiInverseSquare RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

theorem actual_leading_upper_of_literal_full_Xi (M A : ℝ) (hM : 0 ≤ M)
    (hA : 25600 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |shiftedPsiFullPrimitive t| ≤ M * (t - Real.log 2)) :
    actualLeadingRenormalizedTail A ≤
      (522 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_five_cesaro M A hM hA
  intro t ht
  rw [actualCesaroPrimitive_eq_literalXiKernel t ht]
  exact hG t ht

theorem actual_leading_upper_of_literal_full_Xi_signed_pairing
    (J A : ℝ) (hA : 25600 ≤ A)
    (hJ : -J ≤ ∫ t in Real.log 2..2 * A,
      shiftedPsiFullPrimitive t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t) :
    actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection 91 -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_signed_cesaro J A hA
  rw [signed_pairing_eq_literalXiKernel A (by linarith : 1 ≤ A)]
  exact hJ

end
end FormalResearch.RiemannHypothesis.SourceFullXiLeadingPropagation
