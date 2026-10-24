# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointThreeTriangularConsumer.Variant5a96e048302d1ac8040ddd26e7a705f0a16bf0ec1d8d57dd46ef8258ebc4f82f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f13ace3304cd0db859b29377838d9f7a17bb318` · SHA-256 `5a96e048302d1ac8040ddd26e7a705f0a16bf0ec1d8d57dd46ef8258ebc4f82f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveTriangularConsumer
import RecoveredSourceEndpointThree
import EndpointRadiusBudget

/-!
Source-matched endpoint-three followthrough for the finite triangular consumer.
The centered diagonal, independent main term and endpoint itself are unchanged.
The proved bound three replaces the conservative bound twelve; it is paid once.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceEndpointThreeTriangularConsumer
open SourceStrictEnergyConsumer SourceStrictColumnInterior SourceAdaptiveTriangularConsumer
open SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

/-- The recovered bound applies to the independently defined literal endpoint. -/
theorem sourceEndpoint_abs_le_three (A : ℝ) (hA : 1 ≤ A) : |sourceEndpoint A| ≤ 3 :=
  RecoveredSourceEndpointThree.actual_centered_column_endpoint_abs_le_three A hA

theorem sourceEndpoint_abs_le_exponential (A : ℝ) (hA : 1 ≤ A) :
    |sourceEndpoint A| ≤ 2 * A ^ 3 * Real.exp (-A) :=
  RecoveredSourceEndpointThree.actual_centered_column_endpoint_abs_le_exponential A hA

theorem sourceEndpoint_abs_le_radiusBudget (R A : ℝ) (hR : 1 ≤ R) (hA : R ≤ A) :
    |sourceEndpoint A| ≤ RH16EndpointRadiusBudget.radiusBudget R :=
  (sourceEndpoint_abs_le_exponential A (hR.trans hA)).trans
    (RH16EndpointRadiusBudget.envelope_le_radiusBudget R A hR hA)

/-- The endpoint bound improves without changing the source's finite decomposition. -/
theorem residual_upper_of_strict_interior_upper (A D C_F : ℝ) (hA : 1 ≤ A)
    (hS : strictColumnInterior A ≤ D)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + 3 + C_F := by
  have hs := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at hs
  have hr := actual_residual_decomposition A hA
  have hb := (abs_le.mp (sourceEndpoint_abs_le_three A hA)).2
  have hf := (abs_le.mp hF).2
  linarith

/-- The ledger constant is selected once before quantifying the real scale. -/
theorem residual_tail_of_strict_interior_upper (D R : ℝ) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A → mertensResidual A ≤ D + 3 + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  exact residual_upper_of_strict_interior_upper A D C_F (hR.trans hRA)
    (hS A hRA) (hF A (hR.trans hRA))

/-- A signed triangular upper bound pays attenuation one-half and endpoint three once each. -/
theorem residual_tail_of_triangular_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K + 1 / 2 + 3 + C_F := by
  apply residual_tail_of_strict_interior_upper (K + 1 / 2) R hR
  intro A hRA
  have he := (abs_le.mp (strictInterior_triangular_discrepancy A (hR.trans hRA))).2
  have hg := hG A hRA
  linarith

/-- Arbitrary signed K is accepted; nonnegativity is provided by the explicit maximum. -/
theorem estimate_of_triangular_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  let D := max 0 (K + 1 / 2)
  have hD : 0 ≤ D := le_max_left _ _
  have hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D := by
    intro A hRA
    have he := (abs_le.mp (strictInterior_triangular_discrepancy A (hR.trans hRA))).2
    have hg := hG A hRA
    have hd : K + 1 / 2 ≤ D := le_max_right _ _
    linarith
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_strict_interior_upper D R hR hS
  exact estimate_of_mertens_residual_tail ⟨D + 3 + C_F, by linarith, R, hR, hF⟩

/-- The explicit radius-dependent endpoint envelope is charged exactly once. -/
theorem residual_tail_of_strict_interior_upper_radius (D R : ℝ) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + RH16EndpointRadiusBudget.radiusBudget R + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  have hs := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at hs
  have hr := actual_residual_decomposition A hA
  have hb := (abs_le.mp (sourceEndpoint_abs_le_radiusBudget R A hR hRA)).2
  have hf := (abs_le.mp (hF A hA)).2
  have hstrict := hS A hRA
  linarith

theorem residual_tail_of_triangular_upper_radius (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K + 1 / 2 + RH16EndpointRadiusBudget.radiusBudget R + C_F := by
  apply residual_tail_of_strict_interior_upper_radius (K + 1 / 2) R hR
  intro A hRA
  have he := (abs_le.mp (strictInterior_triangular_discrepancy A (hR.trans hRA))).2
  have hg := hG A hRA
  linarith

theorem estimate_of_triangular_upper_radius (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  let D := max 0 (K + 1 / 2)
  have hD : 0 ≤ D := le_max_left _ _
  have hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D := by
    intro A hRA
    have he := (abs_le.mp (strictInterior_triangular_discrepancy A (hR.trans hRA))).2
    have hg := hG A hRA
    have hd : K + 1 / 2 ≤ D := le_max_right _ _
    linarith
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_strict_interior_upper_radius D R hR hS
  exact estimate_of_mertens_residual_tail
    ⟨D + RH16EndpointRadiusBudget.radiusBudget R + C_F,
      by linarith [RH16EndpointRadiusBudget.radiusBudget_nonneg R], R, hR, hF⟩

end
end FormalResearch.RiemannHypothesis.SourceEndpointThreeTriangularConsumer
```
