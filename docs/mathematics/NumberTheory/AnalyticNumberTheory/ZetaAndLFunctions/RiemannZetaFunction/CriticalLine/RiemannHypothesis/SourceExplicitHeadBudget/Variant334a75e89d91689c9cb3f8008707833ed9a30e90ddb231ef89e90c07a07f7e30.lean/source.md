# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceExplicitHeadBudget.Variant334a75e89d91689c9cb3f8008707833ed9a30e90ddb231ef89e90c07a07f7e30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d266a30232ad17a405d307da10a3cb3e4a57dcd4` · SHA-256 `ee269fbda086b36824768df1e4a1168827e5bd5c0db56ee9e188477ac51ae52c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExactAtomBudgetExplicit.Variantdc37e45a148a5092d76ccd0810e6f0e58a110251950601f7d1210d04730608e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc37e45a148a5092d76ccd0810e6f0e58a110251950601f7d1210d04730608e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ExactAtomBudgetExplicit.Variantdc37e45a148a5092d76ccd0810e6f0e58a110251950601f7d1210d04730608e1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"dc37e45a148a5092d76ccd0810e6f0e58a110251950601f7d1210d04730608e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-explicit-head/SourceExplicitHeadBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactXiHeadValue
import SourceExactHeadTailConsumer

/-!
The exact finite prime-power source value is substituted into the original consumers.
This adds no hypothesis or correction and supplies no arithmetic tail/mean witness.
Direction and conceptual origin: grwtsk contributors.
Native consumer substitution: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExactAtomBudgetExplicit.Variantdc37e45a148a5092d76ccd0810e6f0e58a110251950601f7d1210d04730608e1

set_option autoImplicit false
noncomputable section
namespace RH16ExplicitHeadBudget
open RH16ExactXiHeadValue RH16ExactXiHead RH16ExactHeadTail RH16FiniteGammaReturn
open RH16ExactEnergyMean RH16ActualF7Mean RH16CompleteXiTail RH16CompleteXiComplement
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- Explicit logarithms and gamma replace the literal head integral with zero loss. -/
theorem exact_atom_budget_explicit (K Q : ℝ) :
    exactHeadAtomBudget K Q =
      max 0 (K + explicitXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q) := by
  unfold exactHeadAtomBudget
  rw [actualXiHeadJ_eq_explicit]

theorem exact_residual_budget_explicit (K Q : ℝ) :
    exactHeadResidualBudget K Q =
      max 0 (K + explicitXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q) -
        3 / 8 + criticalBaselineCorrection Q := by
  unfold exactHeadResidualBudget
  rw [exact_atom_budget_explicit]

/-- The literal source tail reaches its explicit original all-real lower constant. -/
theorem all_real_lower_of_explicit_head_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ completeXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower Q)
        (archimedeanMultiplier 0 - 2 *
          (max 0 (K + explicitXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q) -
            3 / 8 + criticalBaselineCorrection Q)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  simpa only [exact_residual_budget_explicit] using
    all_real_lower_of_exact_head_tail K Q hQ htail

/-- The actual F7 mean's conditional source application carries the same radius/prefix. -/
theorem all_real_lower_of_explicit_head_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 *
          (max 0 (exactMeanTailBudget M1 R + explicitXiHeadJ / 2 +
            exactHeadErrorBudget (calibratedRadius R) - gammaTraceFloor (calibratedRadius R)) -
              3 / 8 + criticalBaselineCorrection (calibratedRadius R))) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  simpa only [exact_residual_budget_explicit] using
    all_real_lower_of_exact_head_mean M1 R hM1 hR hmean

/-- Carry the explicit source constant into the established leading transition domain. -/
theorem leading_upper_of_explicit_head_tail (K Q A : ℝ) (hQ : 91 ≤ Q)
    (hA : max 25600 Q ≤ A) (htail : -K ≤ completeXiTail A) :
    actualLeadingRenormalizedTail A ≤
      max 0 (K + explicitXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q) -
        3 / 8 + criticalBaselineCorrection Q - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  simpa only [exact_residual_budget_explicit] using
    leading_upper_of_exact_head_tail K Q A hQ hA htail
end RH16ExplicitHeadBudget
```
