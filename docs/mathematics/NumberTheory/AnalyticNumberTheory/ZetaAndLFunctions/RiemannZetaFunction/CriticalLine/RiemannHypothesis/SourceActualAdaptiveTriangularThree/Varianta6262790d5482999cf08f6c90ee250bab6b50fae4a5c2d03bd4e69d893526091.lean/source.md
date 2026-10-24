# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualAdaptiveTriangularThree.Varianta6262790d5482999cf08f6c90ee250bab6b50fae4a5c2d03bd4e69d893526091

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0da947931d24c1820f97af8cd481ebde1ed8d579` · SHA-256 `a6262790d5482999cf08f6c90ee250bab6b50fae4a5c2d03bd4e69d893526091`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveTriangularConsumer
import SourceEndpointThree

/-!
Apply the proved literal endpoint-three budget to the original finite adaptive
triangular source certificate. The signed triangular upper premise remains
explicit; the same real validity radius and original finite prefix are retained.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAdaptiveTriangularThree
open SourceAdaptiveTriangularConsumer SourceStrictEnergyConsumer
open SourceStrictColumnInterior SourceSamplingLedger SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

/-- This is the unchanged literal endpoint inside the original triangular compensation. -/
theorem sourceEndpoint_abs_le_three (A : ℝ) (hA : 1 ≤ A) :
    |sourceEndpoint A| ≤ 3 :=
  SourceEndpointThree.actual_centered_column_endpoint_abs_le_three A hA

/-- The half-unit finite discrepancy and actual endpoint-three are charged exactly once. -/
theorem residual_upper_of_actualTriangular_upper (A D C_F : ℝ) (hA : 1 ≤ A)
    (hG : triangularInterior A ≤ D)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + 1 / 2 + 3 + C_F := by
  have hc := (abs_le.mp (strictInterior_triangular_discrepancy A hA)).2
  have hs := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  have he := (abs_le.mp (sourceEndpoint_abs_le_three A hA)).2
  have hr := actual_residual_decomposition A hA
  have hf := (abs_le.mp hF).2
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at hs
  linarith

/-- The original actual signed tail premise remains at its original all-real radius. -/
theorem residual_tail_of_actualTriangular_tail (D R : ℝ) (_hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + 1 / 2 + 3 + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  exact residual_upper_of_actualTriangular_upper A D C_F (hR.trans hRA)
    (hG A hRA) (hF A (hR.trans hRA))

/-- The unchanged original finite-prefix consumer supplies the original Estimate obligation. -/
theorem estimate_of_actualTriangular_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_actualTriangular_tail D R hD hR hG
  exact estimate_of_mertens_residual_tail
    ⟨D + 1 / 2 + 3 + C_F, by linarith, R, hR, hF⟩

end
end FormalResearch.RiemannHypothesis.SourceActualAdaptiveTriangularThree
```
