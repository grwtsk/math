# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.FiveModeFiniteActual.Variant1fa3e6de8cf11b03eb22664fb1839825c0e5fbbaf7ecc11b0a44e3708f7e23d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7d84a2bd1e564ba1133b181c2e7821c3e8ecd8f` · SHA-256 `3cd3b9068b14aadbad0dcf9743474b950966f6eac632d9fa98a2812b7b79c3c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ActualFiniteBoundsOfCompleteHeightAndStrictTail.Variant20bb4c5c70b928cd637cb1cac735ad86922bbfe9643a6e15b42b9d0b0ab69b54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20bb4c5c70b928cd637cb1cac735ad86922bbfe9643a6e15b42b9d0b0ab69b54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ActualFiniteBoundsOfCompleteHeightAndStrictTail.Variant20bb4c5c70b928cd637cb1cac735ad86922bbfe9643a6e15b42b9d0b0ab69b54","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"20bb4c5c70b928cd637cb1cac735ad86922bbfe9643a6e15b42b9d0b0ab69b54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeFiniteActual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeResidualFormula
import scratch.common_mean_20261004.FiveModeGammaUpper
import scratch.common_mean_20261004.FiveModeZeroHead
import scratch.common_mean_20261004.FiveModeEndpointEnvelope

/-!
Conditional finite theorem for the actual repository source. Its two remaining
inputs are the complete published verified-height assertion and an actual
strict-tail absolute certificate on every real scale in [1,160]. They are
independent external premises, not research axioms. The full gamma bound,
gamma sign, source formula, both-sign verified head and continuum endpoint
maximum have separate proofs. This file does not prove the zero-tail certificate
from the corrected counting theorem and Stieltjes endpoint subtraction.

Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ActualFiniteBoundsOfCompleteHeightAndStrictTail.Variant20bb4c5c70b928cd637cb1cac735ad86922bbfe9643a6e15b42b9d0b0ab69b54

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- No critical-line claim is assumed for a sampled list of zeros. The complete
height premise includes every analytic multiplicity occurrence. The tail
premise concerns the separately defined actual strict complement at T=3e12. -/
theorem actual_finite_bounds_of_complete_height_and_strict_tail
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (htail : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      ‖actualZeroStrictTail A 3000000000000‖ ≤
        CommonMean20261004.FiniteCertificate.tailBound) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        sourceA0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  apply actual_finite_bounds_of_premises
    (fun A => (actualZeroHead A 3000000000000).re)
    (fun A => (actualZeroStrictTail A 3000000000000).re) sourceA0
  · intro A hA _
    exact actual_matrix_head_tail_decomposition A _ hA
  · intro A hA _
    exact actual_zero_head_nonnegative A _ hA (working_complete_verified_height hverified)
  · intro A hA hA160
    exact (Complex.abs_re_le_norm _).trans (htail A hA hA160)
  · intro A hA _
    exact actual_gamma_upper A hA
  · exact sourceA0_lt_neg_four

end CommonMeanScratch
```
