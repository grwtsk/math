# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompensatedRadiusConsumer.Variant74dc57b2f952916af99164e89b13b41f1014b6f1cb16b08457a7f46ac72bc34a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `511b540ebc7b4cc6689e31d76a6d4b4e13ab479e` · SHA-256 `74dc57b2f952916af99164e89b13b41f1014b6f1cb16b08457a7f46ac72bc34a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
