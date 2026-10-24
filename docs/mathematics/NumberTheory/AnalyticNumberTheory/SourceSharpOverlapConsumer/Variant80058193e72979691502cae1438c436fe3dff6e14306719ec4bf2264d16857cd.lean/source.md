# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceSharpOverlapConsumer.Variant80058193e72979691502cae1438c436fe3dff6e14306719ec4bf2264d16857cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6e1a5daac0245f46577748507f77f15b66f856b` · SHA-256 `40cdeaf5d448b1c414b154c5fa9e9d499e647e3c53878cc96640db010084babc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ActualReadoutUpperOfOverlap.Variant4fefd6ca671d660a975a0af1854820c894f2ff2a678ec16a6f01d23682d02c15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fefd6ca671d660a975a0af1854820c894f2ff2a678ec16a6f01d23682d02c15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ActualReadoutUpperOfOverlap.Variant4fefd6ca671d660a975a0af1854820c894f2ff2a678ec16a6f01d23682d02c15","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"4fefd6ca671d660a975a0af1854820c894f2ff2a678ec16a6f01d23682d02c15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/sharp-radius-overlap-review/sharp-overlap/SourceSharpOverlapConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSharpDiagonalLedgerConsumer

/-! Apply the complete explicit diagonal cost to the actual overlap route.
Direction and conceptual origin: grwtsk contributors.
Source consumer construction and formalization: OpenAI Codex assistance. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ActualReadoutUpperOfOverlap.Variant4fefd6ca671d660a975a0af1854820c894f2ff2a678ec16a6f01d23682d02c15

set_option autoImplicit false
noncomputable section
namespace RH16SharpOverlapConsumer
open RH16ExactRestrictedStrip RH16ExactOverlapConsumer RH16ExactOverlapSamplingConsumer
open RH16ExactReadoutConsumer RH16SharpDiagonalLedgerConsumer
open FormalResearch.RiemannHypothesis
open SourcePairing SourceSamplingLedger SourceRestrictedLowTimeWork SourceActualMixedWorkFubini
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction EstimateMertensResidual

theorem actual_readout_upper_of_overlap (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∀ A : ℝ, max 91 R ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤
        D + exactStripCost (max 91 R) := by
  intro A hQA
  have ho := hover A ((le_max_right _ _).trans hQA)
  have hs := actual_surplus_le_remainingOverlap_add_exact_strip
    (le_max_left (91 : ℝ) R) hQA
  unfold exactStripCost
  linarith

/-- The only supplied arithmetic witness is the unchanged full overlap balance. -/
theorem residual_tail_of_overlap (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∀ A : ℝ, max 91 R ≤ A → mertensResidual A ≤
      exactOverlapSamplingResidualBudget D (max 91 R) (sharpDiagonalCost (max 91 R)) :=
  residual_tail_of_readout D (exactStripCost (max 91 R)) (max 91 R)
    (le_max_left _ _) (actual_readout_upper_of_overlap D R hover)

theorem all_real_lower_of_overlap (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices (max 91 R),
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 *
          exactOverlapSamplingResidualBudget D (max 91 R) (sharpDiagonalCost (max 91 R))) ≤
            sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_readout D (exactStripCost (max 91 R)) (max 91 R)
    (le_max_left _ _) (actual_readout_upper_of_overlap D R hover)

/-- Original source, strip, prefix and main terms are retained, with no head round trip. -/
theorem estimate_of_overlap (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_readout D (exactStripCost (max 91 R)) (max 91 R)
    (le_max_left _ _) (actual_readout_upper_of_overlap D R hover)

end RH16SharpOverlapConsumer
```
