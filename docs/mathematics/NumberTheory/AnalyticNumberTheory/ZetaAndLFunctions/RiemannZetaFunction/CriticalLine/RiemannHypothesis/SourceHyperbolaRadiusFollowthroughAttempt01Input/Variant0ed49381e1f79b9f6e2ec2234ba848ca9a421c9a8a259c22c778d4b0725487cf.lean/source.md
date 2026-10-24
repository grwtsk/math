# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceHyperbolaRadiusFollowthroughAttempt01Input.Variant0ed49381e1f79b9f6e2ec2234ba848ca9a421c9a8a259c22c778d4b0725487cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `697b753d9b6baa1f6b279c8137d9a7738c37d77f` · SHA-256 `f51dc4d00b1cb2d429b4ecf7f777d0b0019d3af26876fa03bdc33aeee262341a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictUpperOfJointLinearTailRadius.Variant197ee1a35a65554222185c6962719dc8f11396667d717748ce6e770f41eaa18f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"197ee1a35a65554222185c6962719dc8f11396667d717748ce6e770f41eaa18f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.StrictUpperOfJointLinearTailRadius.Variant197ee1a35a65554222185c6962719dc8f11396667d717748ce6e770f41eaa18f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"197ee1a35a65554222185c6962719dc8f11396667d717748ce6e770f41eaa18f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/native/SourceHyperbolaRadiusFollowthrough.attempt01.input.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceHyperbolaSignedCancellation
import SourceEndpointRadiusConsumer

/-!
Apply the existing fixed-radius endpoint consumer to the literal hyperbola
strict-interior return. The original direct residual-to-Estimate receiver is
unchanged. Only the conservative endpoint loss is sharpened at the same R.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictUpperOfJointLinearTailRadius.Variant197ee1a35a65554222185c6962719dc8f11396667d717748ce6e770f41eaa18f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceHyperbolaRadiusFollowthrough
open SourceHyperbolaSignedCancellation SourceEndpointRadiusConsumer
open SourceStrictEnergyConsumer SourceStrictColumnInterior SourceSamplingLedger
open RH16EndpointRadius
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

/-- The existing source endpoint budget is instantiated at the same hyperbola radius. -/
theorem strict_upper_of_joint_linear_tail_radius {K R C_F : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A → jointHyperbolaTail A ≤ K + (5 / 128 : ℝ) * A)
    (hledger : ∀ A : ℝ, 1 ≤ A →
      |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    ∀ A : ℝ, R ≤ A →
      strictColumnInterior A ≤ K + (riemannZeta (1 / 2)).re +
        260 / R ^ 2 + 21440 / R ^ 3 + C_F + 2 * R ^ 3 * Real.exp (-R) := by
  intro A hRA
  have hR1 : 1 ≤ R := by linarith
  have hA1 : 1 ≤ A := hR1.trans hRA
  have hr := residual_le_of_joint_linear_tail hR hjoint A hRA
  have hd := actual_residual_decomposition A hA1
  have he := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA1
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at he
  have hb : |sourceEndpoint A| ≤ 2 * R ^ 3 * Real.exp (-R) := by
    simpa only [endpointBudget_eq_of_three_le R (by linarith)] using
      sourceEndpoint_abs_le_budget R A hR1 hRA
  have hf := (abs_le.mp (hledger A hA1)).1
  have hl := (abs_le.mp hb).1
  linarith

/-- The ledger is chosen once, before quantifying over every real tail scale. -/
theorem strict_tail_of_joint_linear_tail_radius {K R : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A → jointHyperbolaTail A ≤ K + (5 / 128 : ℝ) * A) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      strictColumnInterior A ≤
        max 0 (K + (riemannZeta (1 / 2)).re + 260 / R ^ 2 + 21440 / R ^ 3 +
          C_F + 2 * R ^ 3 * Real.exp (-R)) := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  exact (strict_upper_of_joint_linear_tail_radius hR hjoint hF A hRA).trans
    (le_max_right _ _)

/-- The primary frontier gets the sharper fixed D at its original real radius. -/
theorem primary_strict_frontier_of_joint_linear_tail {K R : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A → jointHyperbolaTail A ≤ K + (5 / 128 : ℝ) * A) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D := by
  obtain ⟨C_F, _hF0, hF⟩ := strict_tail_of_joint_linear_tail_radius hR hjoint
  exact ⟨max 0 (K + (riemannZeta (1 / 2)).re + 260 / R ^ 2 + 21440 / R ^ 3 +
    C_F + 2 * R ^ 3 * Real.exp (-R)), le_max_left _ _, hF⟩

end
end FormalResearch.RiemannHypothesis.SourceHyperbolaRadiusFollowthrough
```
