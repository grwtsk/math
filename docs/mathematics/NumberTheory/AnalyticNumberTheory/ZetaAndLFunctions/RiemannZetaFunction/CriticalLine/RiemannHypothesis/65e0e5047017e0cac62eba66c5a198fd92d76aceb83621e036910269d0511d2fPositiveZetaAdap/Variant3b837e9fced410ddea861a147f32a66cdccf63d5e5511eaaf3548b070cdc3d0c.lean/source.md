# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2fPositiveZetaAdap.Variant3b837e9fced410ddea861a147f32a66cdccf63d5e5511eaaf3548b070cdc3d0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2416f8e0e4b9eaf7e90ac5d11e922bbcbb316398` · SHA-256 `c0e380aefb1481f7648a5b6eca06dda81060c632ce56efc86108eb291253779b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NontrivialZetaZeroOfStrip.Variant65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.NontrivialZetaZeroOfStrip.Variant65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/65/65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f--PositiveZetaAdapterScratch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import Mathlib.NumberTheory.LSeries.ZetaZeros

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NontrivialZetaZeroOfStrip.Variant65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f

namespace FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
/-- A strip zero satisfies the canonical exact trivial-zero and pole exclusions. -/
theorem nontrivial_zeta_zero_of_strip (ρ : ℂ) (hzero : riemannZeta ρ = 0)
    (hstrip : 0 < ρ.re ∧ ρ.re < 1) : NontrivialZetaZero ρ := by
  refine ⟨hzero, ?_, ?_⟩
  · rintro ⟨n, hn⟩
    have hr := congrArg Complex.re hn
    have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    norm_num at hr
    linarith [hstrip.1]
  · intro hn
    have hr := congrArg Complex.re hn
    norm_num at hr
    linarith [hstrip.2]


end FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
```
