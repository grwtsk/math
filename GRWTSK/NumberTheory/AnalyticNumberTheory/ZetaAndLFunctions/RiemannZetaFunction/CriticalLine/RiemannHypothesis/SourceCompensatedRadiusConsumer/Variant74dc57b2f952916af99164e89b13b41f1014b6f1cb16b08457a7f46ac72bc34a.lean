import SourceEndpointRadiusConsumer
import SourceCompensatedBilinearConsumer

/-! Fixed-radius endpoint application to the complete signed Abel and bilinear
energies. Every boundary, physical diagonal and independent main term remains.
Local candidate. Research direction: grwtsk contributors. AI: OpenAI Codex. -/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCompensatedRadiusConsumer
noncomputable section
open RH16EndpointRadius SourceEndpointRadiusConsumer SourceJointWorkConsumer
open SourceCompensatedBilinearConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

theorem residual_tail_of_compensatedJointWork_tail (D R : ℝ) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + endpointBudget R + C_F := by
  apply SourceEndpointRadiusConsumer.residual_tail_of_strictColumnInterior_tail D R hR
  intro A hRA
  rw [← compensatedJointWork_eq_strictColumnInterior A (hR.trans hRA)]
  exact hwork A hRA

theorem estimate_of_compensatedJointWork_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  apply SourceEndpointRadiusConsumer.estimate_of_strictColumnInterior_tail D R hD hR
  intro A hRA
  rw [← compensatedJointWork_eq_strictColumnInterior A (hR.trans hRA)]
  exact hwork A hRA

theorem residual_tail_of_compensatedBilinearWork_tail (D R : ℝ) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedBilinearWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + endpointBudget R + C_F := by
  apply residual_tail_of_compensatedJointWork_tail D R hR
  intro A hRA
  rw [← compensatedBilinearWork_eq_compensatedJointWork A (hR.trans hRA)]
  exact hwork A hRA

theorem estimate_of_compensatedBilinearWork_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedBilinearWork A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_compensatedJointWork_tail D R hD hR
  intro A hRA
  rw [← compensatedBilinearWork_eq_compensatedJointWork A (hR.trans hRA)]
  exact hwork A hRA

end
end FormalResearch.RiemannHypothesis.SourceCompensatedRadiusConsumer
