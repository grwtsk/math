# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Occurrences.Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f75e77ee65405a0febecd2591d2db15c2efe184` · SHA-256 `3108fe55d7c3940ad4ff4dbead42d2761b26b6ddef080b21375678100b2fdecc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePointEquiv.Variantc2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePointEquiv.Variantc2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/weil-lineage-d360/FormalResearch/RiemannHypothesis/WeilSource/Occurrences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.WeilSource.Import
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability

/-!
# Exact transport from weighted zero points to the original occurrence family

Both carriers are the actual zeros in the open critical strip. Analytic
multiplicity is counted once: as a coefficient on the external point side and
as the number of Fin slots on the source side. Summability is required before
regrouping. No enumeration, simplicity, finite height cutoff, or norm-square
substitution is used.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePointEquiv.Variantc2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13

namespace FormalResearch.RiemannHypothesis.WeilSource

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject ZeroSideTargets

noncomputable section

/-- The two distinct-zero carriers have exactly the same actual predicate. -/
def sourcePointEquiv : ZeroPoint ≃ Zeta23.zetaZeroConfig.carrier := Equiv.refl _

/-- Transport preserves the complex point, not merely its ordinate. -/
theorem sourcePointEquiv_val (p : ZeroPoint) : (sourcePointEquiv p : ℂ) = p.val := rfl

/-- Both multiplicities are the finite natural analytic order of Mathlib's zeta. -/
theorem sourcePointEquiv_mult (p : ZeroPoint) :
    Zeta23.zetaZeroConfig.mult (sourcePointEquiv p) = multiplicity p := rfl

/-- Regroup an already summable occurrence family, counting each slot exactly once. -/
theorem occurrence_tsum_eq_weighted (F : ZeroPoint → ℂ)
    (hF : Summable (fun o : ZeroOccurrence ↦ F o.1)) :
    (∑' o : ZeroOccurrence, F o.1) = ∑' p : ZeroPoint, (multiplicity p : ℂ) * F p := by
  change Summable (fun o : (Σ p : ZeroPoint, Fin (multiplicity p)) ↦ F o.1) at hF
  change (∑' o : (Σ p : ZeroPoint, Fin (multiplicity p)), F o.1) = _
  rw [hF.tsum_sigma]
  apply tsum_congr
  intro p
  simp [tsum_fintype, nsmul_eq_mul]

/-- The existing unconditional source summability supplies the transport hypothesis. -/
theorem weighted_source_sum_eq_occurrences (A : ℝ) (hA : 1 ≤ A) :
    (∑' p : Zeta23.zetaZeroConfig.carrier,
      (Zeta23.zetaZeroConfig.mult p : ℂ) * bilateralTransform A ((p : ℂ) - 1 / 2) ^ 2) =
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2 := by
  change (∑' p : ZeroPoint,
    (multiplicity p : ℂ) * bilateralTransform A (p.val - 1 / 2) ^ 2) = _
  exact (occurrence_tsum_eq_weighted
    (fun p ↦ bilateralTransform A (p.val - 1 / 2) ^ 2)
    (SourceZeroSummability.source_transform_squares_summable A hA)).symm

end
end FormalResearch.RiemannHypothesis.WeilSource
```
