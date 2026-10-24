# Complete source: GRWTSK.Analysis.ComplexAnalysis.FiniteExternalInputs.Variant014e7ac952f50eb8aae330513a6399d4d3ddf1d4a8b174ac2cadc6772697c761

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `503a54b01454c73769c0c9bc57c59e4e7080fc5c` · SHA-256 `cd574b2dcf4019044f0365e8ac69a4be55061164a2ffcc789426b984824b25ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.ActualFiniteBoundsWithExternalLiteratureInputs.Variant3ea3aa246b4b79a423eb0c4a8aa68a5c7f9dec983c98310fcb9e442f4741ccf2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ea3aa246b4b79a423eb0c4a8aa68a5c7f9dec983c98310fcb9e442f4741ccf2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.ActualFiniteBoundsWithExternalLiteratureInputs.Variant3ea3aa246b4b79a423eb0c4a8aa68a5c7f9dec983c98310fcb9e442f4741ccf2","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"3ea3aa246b4b79a423eb0c4a8aa68a5c7f9dec983c98310fcb9e442f4741ccf2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/count-audit/finite-wrapper-independent-review/replica/scratch/common_mean_stieltjes_20261004/FiniteExternalInputs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_stieltjes_20261004.CountBudget
import scratch.common_mean_20261004.FiveModeFiniteExternal
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
Final finite literal-source theorem with only the two published external inputs
left explicit. Actual multiplicity counting, strict Stieltjes convergence,
endpoint subtraction, the corrected count-integral budget and source adapters
are proved; the literature inputs have no accepted Lean instances in this lane.
The result is finite, conditional, and does not supply an all-scale arithmetic
witness or an unconditional RH theorem.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean construction assistance: OpenAI Codex.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.ActualFiniteBoundsWithExternalLiteratureInputs.Variant3ea3aa246b4b79a423eb0c4a8aa68a5c7f9dec983c98310fcb9e442f4741ccf2

set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open CommonMeanScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Complete-height and literal corrected counting inputs are named hypotheses;
all adapter and rational-bound premises of the finite source result are proved. -/
theorem actual_finite_bounds_with_external_literature_inputs
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (hBW : CorrectedBellottiWongCount) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        sourceA0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  apply actual_finite_bounds_of_verified_height_and_sixth_tail hverified
    (actual_positive_sixth_summable 3000000000000 (by norm_num))
  exact actual_positive_sixth_count_bound 3000000000000
    (Real.exp_one_lt_three.le.trans (by norm_num)) hBW

end CommonMeanStieltjes
```
