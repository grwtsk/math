# Complete source: GRWTSK.Analysis.MeasureTheory.FiniteWithStieltjes.Variant6415ea847747b32de0995267fddd16a6c1e70af145cf9b224c7756ea52858400

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fe5aa783527cd0a8d380506635754c5c0aa7628` · SHA-256 `4202c9f5305e733724de5ce65f2c878ef0b75f09446c1204b9a5bf4025f949f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ActualFiniteBoundsWithProvedStieltjes.Variant861b5bac216ccc5f6aa4620571f03c91afa455d38ce4017ca68da9b4b89a07c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"861b5bac216ccc5f6aa4620571f03c91afa455d38ce4017ca68da9b4b89a07c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ActualFiniteBoundsWithProvedStieltjes.Variant861b5bac216ccc5f6aa4620571f03c91afa455d38ce4017ca68da9b4b89a07c2","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"861b5bac216ccc5f6aa4620571f03c91afa455d38ce4017ca68da9b4b89a07c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_stieltjes_20261004/FiniteWithStieltjes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_stieltjes_20261004.ActualStieltjes
import scratch.common_mean_20261004.FiveModeFiniteExternal

/-!
Finite literal-source theorem after proving the actual strict Stieltjes adapter.
The complete verified-height and corrected count representations remain named
external hypotheses. The corrected count-to-integral budget remains an explicit
calculus obligation; it is not asserted by naming the paper. No all-scale
arithmetic witness, RH theorem, or downstream readiness is claimed.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean proof assistance: OpenAI Codex.
-/

namespace GRWTSK.Analysis.MeasureTheory.ActualFiniteBoundsWithProvedStieltjes.Variant861b5bac216ccc5f6aa4620571f03c91afa455d38ce4017ca68da9b4b89a07c2

set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open MeasureTheory CommonMeanScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

theorem actual_finite_bounds_with_proved_stieltjes
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (hBW : CorrectedBellottiWongCount)
    (hcountBudget : CorrectedBellottiWongCount →
      -actualPositiveZeroCount 3000000000000/(3000000000000 : ℝ)^6 +
        6*(∫ t : ℝ in Set.Ioi 3000000000000, actualPositiveZeroCount t/t^7) ≤
          positiveSixthPowerCountEnvelope 3000000000000) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        sourceA0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  exact actual_finite_bounds_of_external_zero_inputs hverified hBW
    (actual_positive_sixth_stieltjes 3000000000000 (by norm_num)) hcountBudget

end CommonMeanStieltjes
```
