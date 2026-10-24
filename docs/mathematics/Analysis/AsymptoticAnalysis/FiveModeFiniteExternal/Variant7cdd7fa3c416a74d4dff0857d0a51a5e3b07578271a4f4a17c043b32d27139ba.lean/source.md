# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.FiveModeFiniteExternal.Variant7cdd7fa3c416a74d4dff0857d0a51a5e3b07578271a4f4a17c043b32d27139ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94123c9fb73ca2b1bb7b64af7696133886a5a1af` · SHA-256 `be761fb248593197fd9d9880273456d7cdf2880dde04c55ef2a48ca2847898b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ActualFiniteBoundsOfVerifiedHeightAndSixthTail.Variant985847ef43d9b2bf3225158d1149e2189977aac9e23c5ee9bda24915beeff35e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"985847ef43d9b2bf3225158d1149e2189977aac9e23c5ee9bda24915beeff35e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ActualFiniteBoundsOfVerifiedHeightAndSixthTail.Variant985847ef43d9b2bf3225158d1149e2189977aac9e23c5ee9bda24915beeff35e","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"985847ef43d9b2bf3225158d1149e2189977aac9e23c5ee9bda24915beeff35e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeFiniteExternal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeSourceTailMajorant
import scratch.common_mean_20261004.FiveModeCountConstants

/-!
Conditional finite theorem for the literal repository source. The actual
transform majorant, original Z, both signs, gamma budget, source identity,
continuum maximum and final rational arithmetic have proofs. The published
complete verified-height assertion and corrected counting theorem have no
accepted Lean instances here. The strict Stieltjes adapter and its counting
integral budget are also explicitly unproved premises. No research axiom or
admitted proof is introduced, and no all-scale witness follows.

Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.Analysis.AsymptoticAnalysis.ActualFiniteBoundsOfVerifiedHeightAndSixthTail.Variant985847ef43d9b2bf3225158d1149e2189977aac9e23c5ee9bda24915beeff35e

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- The source-specific transform estimate is proved. The remaining sixth-
moment input refers to the complete strict positive-ordinate occurrence sum. -/
theorem actual_finite_bounds_of_verified_height_and_sixth_tail
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (hs : Summable (positiveSixthPowerWeight 3000000000000))
    (hcount : actualPositiveSixthPowerTail 3000000000000 ≤
      positiveSixthPowerCountEnvelope 3000000000000) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        sourceA0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  apply actual_finite_bounds_of_complete_height_and_strict_tail hverified
  exact actual_strict_tail_certificate_of_source_and_count
    (fun A hA _ => actual_source_absolute_tail_majorant A _ hA (by norm_num)) hs
    (hcount.trans count_envelope_cutoff_le_rational_cap)

/-- Named external inputs and the remaining analytic count adapter. In
particular, `hcountBudget` is not asserted as a proved paper identity: it is
the exact next Lean obligation. `hstieltjes` retains -N(T)/T^6 and integral
convergence, with closed N(T) and a strict omitted tail even at a zero ordinate. -/
theorem actual_finite_bounds_of_external_zero_inputs
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (hBW : CorrectedBellottiWongCount)
    (hstieltjes : PositiveSixthPowerStieltjes 3000000000000)
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
  apply actual_finite_bounds_of_verified_height_and_sixth_tail hverified hstieltjes.1
  rw [hstieltjes.2.2]
  exact hcountBudget hBW

end CommonMeanScratch
```
