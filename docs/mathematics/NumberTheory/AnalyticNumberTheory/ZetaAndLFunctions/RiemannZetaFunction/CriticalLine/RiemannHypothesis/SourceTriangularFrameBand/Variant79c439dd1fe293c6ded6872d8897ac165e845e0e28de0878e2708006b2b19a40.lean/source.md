# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceTriangularFrameBand.Variant79c439dd1fe293c6ded6872d8897ac165e845e0e28de0878e2708006b2b19a40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d3647b9588fbed52f92c6db1e7220148ffe448c` · SHA-256 `69d92561fea058333397597658797a74fe2330b4183e9ed5603b7a62ab867e50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AttenuatedNearDiagonalLower.Variant1460382749da608e418edc28c9eda697b80833ea8b9a62a43d5d8874e597aca1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1460382749da608e418edc28c9eda697b80833ea8b9a62a43d5d8874e597aca1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AttenuatedNearDiagonalLower.Variant1460382749da608e418edc28c9eda697b80833ea8b9a62a43d5d8874e597aca1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1460382749da608e418edc28c9eda697b80833ea8b9a62a43d5d8874e597aca1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791313948283285000/SourceTriangularFrameBand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceTriangularSignObstruction
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
The actual adaptive attenuation retains a uniformly positive near-diagonal band.
Together with the retained growing harmonic log bands, this tests the optional
uniform-frame approach. It is not a bound on the actual signed arithmetic rows.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AttenuatedNearDiagonalLower.Variant1460382749da608e418edc28c9eda697b80833ea8b9a62a43d5d8874e597aca1

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceTriangularFrameBand

open SourceTriangularSignObstruction SourceAdaptiveTriangularConsumer
open SourceMangoldtNorm SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem attenuated_near_diagonal_lower (A t : ℝ) (hA : 1 ≤ A)
    (ht : |t| ≤ A / 20) : 237 / 320 ≤ attenuatedCorrelation A t := by
  have hAp : 0 < A := by linarith
  have hsource := sourceCorrelation_sub_one_abs_le hA t
  have hsmall : 5 * |t| / A ≤ 1 / 4 := by
    apply (div_le_iff₀ hAp).mpr
    linarith
  have hc : 3 / 4 ≤ sourceCorrelation explicitSecondDerivative A t := by
    have hl := (abs_le.mp hsource).1
    linarith
  have hband : 4 * A ≤ bandwidth A := by
    dsimp [bandwidth]
    linarith [B1_nonneg A]
  have hr : |t| / bandwidth A ≤ 1 / 80 := by
    apply (div_le_iff₀ (bandwidth_pos A hA)).mpr
    linarith
  have hw : 79 / 80 ≤ 1 - |t| / bandwidth A := by linarith
  have hm : (79 / 80 : ℝ) * (3 / 4) ≤
      (1 - |t| / bandwidth A) * sourceCorrelation explicitSecondDerivative A t :=
    mul_le_mul hw hc (by norm_num) (by linarith)
  unfold attenuatedCorrelation
  norm_num at hm ⊢
  exact hm

end FormalResearch.RiemannHypothesis.SourceTriangularFrameBand
```
