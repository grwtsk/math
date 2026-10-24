# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceGrowingXiHeadConsumer.Variantc905c7b8cc9018856920f53a2e6a421c09f35b34cce1b4c4acca6bc34cbf5f1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7768115429ba583c6a060157eb61d3704282e91e` · SHA-256 `9755575da5944f1e627caca56da2ff73629d04dc0b8c79b7a052ac64497933e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GrowingHeadResidualBudget.Variant4345f1390a65ea5444d228fb1606cb2b41f15a3ebf09df1dd18ecdc08106c7a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4345f1390a65ea5444d228fb1606cb2b41f15a3ebf09df1dd18ecdc08106c7a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.GrowingHeadResidualBudget.Variant4345f1390a65ea5444d228fb1606cb2b41f15a3ebf09df1dd18ecdc08106c7a0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4345f1390a65ea5444d228fb1606cb2b41f15a3ebf09df1dd18ecdc08106c7a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-growing-head-consumer/fresh-replay/SourceGrowingXiHeadConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceGrowingXiHead
import SourceExactHeadTailConsumer

/-! Apply the unconditional moving head to the unchanged original source consumers.
Direction and conceptual origin: grwtsk contributors.
Source consequence composition and formalization: OpenAI Codex assistance.
The remaining signed growing-tail witness is supplied. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GrowingHeadResidualBudget.Variant4345f1390a65ea5444d228fb1606cb2b41f15a3ebf09df1dd18ecdc08106c7a0

set_option autoImplicit false
noncomputable section
namespace RH16GrowingXiHeadConsumer
open RH16GrowingXiHead RH16ExactHeadTail RH16ActualF7
open RH16CompleteXiTail RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.RiemannHypothesis SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

def growingHeadResidualBudget (K Q : ℝ) : ℝ :=
  exactHeadResidualBudget (K + growingXiHeadCost Q) Q

theorem residual_upper_of_growing_tail (K Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A)
    (htail : -K ≤ growingXiTail A) :
    mertensResidual A ≤ growingHeadResidualBudget K Q :=
  residual_upper_of_exact_head_tail _ Q A hQ hA
    (completeXiTail_lower_of_growing_tail hQ hA htail)

/-- The original finite prefix remains at this same real Q. -/
theorem all_real_lower_of_growing_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ growingXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower Q)
        (archimedeanMultiplier 0 - 2 * growingHeadResidualBudget K Q) ≤
          sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_exact_head_tail _ Q hQ
    (fun A hA => completeXiTail_lower_of_growing_tail hQ hA (htail A hA))

theorem estimate_of_growing_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ growingXiTail A) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_growing_tail K Q hQ htail⟩

/-- The independent leading range is max 25600 Q, not a product. -/
theorem leading_upper_of_growing_tail (K Q A : ℝ) (hQ : 91 ≤ Q)
    (hA : max 25600 Q ≤ A) (htail : -K ≤ growingXiTail A) :
    actualLeadingRenormalizedTail A ≤
      growingHeadResidualBudget K Q - (riemannZeta (1 / 2)).re + 3103 / 50 :=
  leading_upper_of_exact_head_tail _ Q A hQ hA
    (completeXiTail_lower_of_growing_tail hQ ((le_max_right _ _).trans hA) htail)

end RH16GrowingXiHeadConsumer
```
