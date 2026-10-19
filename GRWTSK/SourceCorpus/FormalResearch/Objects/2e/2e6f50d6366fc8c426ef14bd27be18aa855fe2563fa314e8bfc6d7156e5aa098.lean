import SourceResidualBudget
import SourceLocalizedSignedConsumer

/-!
Exact conditional lower budgets for the full source Abel block, endpoint three,
and independently bounded ledger. D and R remain explicit open witness premises.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace RH16ResumeBudget

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceJointWorkConsumer
open FormalResearch.RiemannHypothesis.SourceLocalizedSignedConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

theorem all_real_source_lower_of_compensatedJointWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * (D + 3 + C_F)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_compensatedJointWork_tail D R hD hR hwork
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail (D + 3 + C_F) R hR hF⟩

theorem all_real_source_lower_of_compensatedLocalizedWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedLocalizedWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * (D + 3 + C_F)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_compensatedLocalizedWork_tail D R hD hR hwork
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail (D + 3 + C_F) R hR hF⟩

end
end RH16ResumeBudget
