# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointRadiusConsumer.Variant2f7e6a81af195e425288073035ef8be3477772fdcb30ee9c47ad03c3937e814d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a473fee3b0ba97cfa98b8f8e28d1a35d5da2184` · SHA-256 `7d161abb9c4f4eb443514d1a370d695ee9849ed4d6b2dd39a1db02410511da27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointAbsLeBudget.Variant8e843f881fbe7a49a0fe911ed7c0ccd50efd3b842f8dc243ff9e73ab2a261371","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e843f881fbe7a49a0fe911ed7c0ccd50efd3b842f8dc243ff9e73ab2a261371","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceEndpointAbsLeBudget.Variant8e843f881fbe7a49a0fe911ed7c0ccd50efd3b842f8dc243ff9e73ab2a261371","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8e843f881fbe7a49a0fe911ed7c0ccd50efd3b842f8dc243ff9e73ab2a261371","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-followthrough-20261006/dependencies/independent-endpoint-replay/SourceEndpointRadiusConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import EndpointRadius
import SourceEndpointEnvelope
import SourceStrictEnergyConsumer
import SourceUnconditionalCorrectedCalibration

/-! Fixed-radius applications of the native endpoint envelope. All constants
are chosen before the real scale. The corrected pairing keeps its direct
residual consumer, with no extra endpoint or ledger loss. Local candidate.
Research direction: grwtsk contributors. AI construction: OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointAbsLeBudget.Variant8e843f881fbe7a49a0fe911ed7c0ccd50efd3b842f8dc243ff9e73ab2a261371

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceEndpointRadiusConsumer
noncomputable section
open RH16EndpointRadius SourceEndpointEnvelope SourceStrictEnergyConsumer
open SourceStrictColumnInterior SourceSamplingLedger SourceVaughanHankel
open SourceCompleteCorrectedAbelPairing SourceUnconditionalCorrectedCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

theorem sourceEndpoint_abs_le_budget (R A : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A) :
    |sourceEndpoint A| ≤ endpointBudget R := by
  exact (actual_centered_column_endpoint_abs_le_envelope A (hR.trans hRA)).trans
    (envelope_le_budget R A (by linarith) hRA)

theorem sourceEndpoint_abs_le_at_117 (A : ℝ) (hA : 117 ≤ A) :
    |sourceEndpoint A| ≤ 2 * (117 : ℝ) ^ 3 * Real.exp (-117) := by
  have h := sourceEndpoint_abs_le_budget 117 A (by norm_num) hA
  simpa only [endpointBudget_eq_of_three_le 117 (by norm_num)] using h

/-- Native T=S+E, with its original sign and radius. -/
theorem covariance_upper_of_strictColumnInterior_upper
    (D R A : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A)
    (hS : strictColumnInterior A ≤ D) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤
      D + endpointBudget R := by
  have he := covariance_sub_main_eq_strictColumnInterior_add_endpoint A (hR.trans hRA)
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at he
  have hb := (abs_le.mp (sourceEndpoint_abs_le_budget R A hR hRA)).2
  linarith

theorem residual_upper_of_strictColumnInterior_upper
    (D R A C_F : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A)
    (hS : strictColumnInterior A ≤ D)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + endpointBudget R + C_F := by
  have ht := covariance_upper_of_strictColumnInterior_upper D R A hR hRA hS
  have hr := actual_residual_decomposition A (hR.trans hRA)
  have hf := (abs_le.mp hF).2
  linarith

theorem residual_tail_of_strictColumnInterior_tail (D R : ℝ) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + endpointBudget R + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  exact residual_upper_of_strictColumnInterior_upper D R A C_F hR hRA
    (hS A hRA) (hF A (hR.trans hRA))

/-- Uses the maintained all-real/finite-prefix consumer unchanged. -/
theorem estimate_of_strictColumnInterior_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_strictColumnInterior_tail D R hR hS
  exact estimate_of_mertens_residual_tail
    ⟨D + endpointBudget R + C_F, by linarith [endpointBudget_nonneg R], R, hR, hF⟩

/-- Direct corrected-pairing bound; no endpoint or ledger costs are added. -/
theorem residual_upper_of_complete_pairing_upper (K R A : ℝ) (hR : 117 ≤ R)
    (hRA : R ≤ A) (hP : completeCorrectedAbelPairing A ≤ K) :
    mertensResidual A ≤ K + (riemannZeta (1 / 2)).re + (3 / 50 : ℝ) := by
  have hc := (abs_lt.mp (residual_sub_complete_pairing_sub_zeta_abs_lt A (hR.trans hRA))).2
  linarith

/-- Preserve the existing direct consumer instead of a P->S->r round trip. -/
theorem estimate_of_complete_pairing_tail_direct (K R : ℝ) (hR : 117 ≤ R)
    (hP : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_complete_corrected_signed_tail hR hP

/-- This adapter is for consumers requiring S; its losses are fixed at R. -/
theorem strictColumnInterior_upper_of_complete_pairing_upper
    (K R A C_F : ℝ) (hR : 117 ≤ R) (hRA : R ≤ A)
    (hP : completeCorrectedAbelPairing A ≤ K)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    strictColumnInterior A ≤ K + (riemannZeta (1 / 2)).re + (3 / 50 : ℝ) +
      C_F + endpointBudget R := by
  have hR1 : 1 ≤ R := by linarith
  have hp := residual_upper_of_complete_pairing_upper K R A hR hRA hP
  have he := covariance_sub_main_eq_strictColumnInterior_add_endpoint A (hR1.trans hRA)
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at he
  have hr := actual_residual_decomposition A (hR1.trans hRA)
  have hb := (abs_le.mp (sourceEndpoint_abs_le_budget R A hR1 hRA)).1
  have hf := (abs_le.mp hF).1
  linarith

theorem strictColumnInterior_tail_of_complete_pairing_tail
    (K R : ℝ) (hR : 117 ≤ R)
    (hP : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      strictColumnInterior A ≤
        max 0 (K + (riemannZeta (1 / 2)).re + (3 / 50 : ℝ) + C_F + endpointBudget R) := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  exact (strictColumnInterior_upper_of_complete_pairing_upper K R A C_F hR hRA
    (hP A hRA) (hF A (by linarith))).trans (le_max_right _ _)

end
end FormalResearch.RiemannHypothesis.SourceEndpointRadiusConsumer
```
