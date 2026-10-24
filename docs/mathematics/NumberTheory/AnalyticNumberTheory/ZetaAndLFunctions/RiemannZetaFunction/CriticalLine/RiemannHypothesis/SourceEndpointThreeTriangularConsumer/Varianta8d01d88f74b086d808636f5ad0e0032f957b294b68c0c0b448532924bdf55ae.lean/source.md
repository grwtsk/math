# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointThreeTriangularConsumer.Varianta8d01d88f74b086d808636f5ad0e0032f957b294b68c0c0b448532924bdf55ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bc72577a76ac1325efacbd515b3093d7dbdc057` · SHA-256 `42f9f9b1fcc8711f7b155cb2fc5660b91171710e784a0696948190e184fe56f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointAbsLeThree.Variant983951b2ef27d95d468300eae0ad8b257fad9feb1f6d3e4e223aba25cac82a90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"983951b2ef27d95d468300eae0ad8b257fad9feb1f6d3e4e223aba25cac82a90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceEndpointAbsLeThree.Variant983951b2ef27d95d468300eae0ad8b257fad9feb1f6d3e4e223aba25cac82a90","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"983951b2ef27d95d468300eae0ad8b257fad9feb1f6d3e4e223aba25cac82a90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/packet-followup-lamzouri-unit/source/983951b2ef27d95d468300eae0ad8b257fad9feb1f6d3e4e223aba25cac82a90/SourceEndpointThreeTriangularConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveTriangularConsumer
import RecoveredSourceEndpointThree

/-!
Source-matched endpoint-three followthrough for the finite triangular consumer.
The centered diagonal, independent main term and endpoint itself are unchanged.
The proved bound three replaces the conservative bound twelve; it is paid once.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointAbsLeThree.Variant983951b2ef27d95d468300eae0ad8b257fad9feb1f6d3e4e223aba25cac82a90

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceEndpointThreeTriangularConsumer
open SourceStrictEnergyConsumer SourceStrictColumnInterior SourceAdaptiveTriangularConsumer
open SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

/-- The recovered proof has exactly the independently defined endpoint's original bytes. -/
theorem sourceEndpoint_abs_le_three (A : ℝ) (hA : 1 ≤ A) : |sourceEndpoint A| ≤ 3 :=
  RecoveredSourceEndpointThree.actual_centered_column_endpoint_abs_le_three A hA

theorem sourceEndpoint_abs_le_exponential (A : ℝ) (hA : 1 ≤ A) :
    |sourceEndpoint A| ≤ 2 * A ^ 3 * Real.exp (-A) :=
  RecoveredSourceEndpointThree.actual_centered_column_endpoint_abs_le_exponential A hA

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

end
end FormalResearch.RiemannHypothesis.SourceEndpointThreeTriangularConsumer
```
