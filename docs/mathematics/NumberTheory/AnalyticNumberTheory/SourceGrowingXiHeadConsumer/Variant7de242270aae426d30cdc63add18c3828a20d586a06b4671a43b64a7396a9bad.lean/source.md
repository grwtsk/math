# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceGrowingXiHeadConsumer.Variant7de242270aae426d30cdc63add18c3828a20d586a06b4671a43b64a7396a9bad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d40a6991885d7318219b2ce14ca0bc7638cf16e0` · SHA-256 `a453d2a6150ef3e1112971c16e7c2aa4fbc68e261c6f00f640496b64cc3179a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.GrowingHeadResidualBudget.Variantb7bb8aec5659a7fae12df3d34cfde022e01d6812adb5c31e63602b7c46748071","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7bb8aec5659a7fae12df3d34cfde022e01d6812adb5c31e63602b7c46748071","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.GrowingHeadResidualBudget.Variantb7bb8aec5659a7fae12df3d34cfde022e01d6812adb5c31e63602b7c46748071","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"b7bb8aec5659a7fae12df3d34cfde022e01d6812adb5c31e63602b7c46748071","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/growing-head-source-consumer/author-replay/SourceGrowingXiHeadConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceGrowingXiHead
import SourceExactHeadTailConsumer

/-! Apply the unconditional moving head to the unchanged original source consumers.
Direction and conceptual origin: grwtsk contributors.
Source consequence composition and formalization: OpenAI Codex assistance.
The remaining signed growing-tail witness is supplied. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.GrowingHeadResidualBudget.Variantb7bb8aec5659a7fae12df3d34cfde022e01d6812adb5c31e63602b7c46748071

set_option autoImplicit false
noncomputable section
namespace RH16GrowingXiHeadConsumer
open RH16GrowingXiHead RH16ExactHeadTail RH16ActualF7
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
    SourceLeadingFullKappaReduction.actualLeadingRenormalizedTail A ≤
      growingHeadResidualBudget K Q - (riemannZeta (1 / 2)).re + 3103 / 50 :=
  leading_upper_of_exact_head_tail _ Q A hQ hA
    (completeXiTail_lower_of_growing_tail hQ ((le_max_right _ _).trans hA) htail)

end RH16GrowingXiHeadConsumer
```
