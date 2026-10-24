# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TruncatedDivisorLiteralSnippet.Variant00e8aea4570d30e6dd6996b9fd620a89830db7d54f4709e93296eff46dfafec4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d49e56d7df854e032b5cbe8a2aac59128448b6a5` · SHA-256 `2d905e0836d1ad59daed755dd8bfb62466dcc96c8e9906a2d3e69d748cd73c4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SourceUnit.Variant3e42f6a738ee19a77826127b0f4baac5691c5e90bc117038102a1493975b7cee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e42f6a738ee19a77826127b0f4baac5691c5e90bc117038102a1493975b7cee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SourceUnit.Variant3e42f6a738ee19a77826127b0f4baac5691c5e90bc117038102a1493975b7cee","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3e42f6a738ee19a77826127b0f4baac5691c5e90bc117038102a1493975b7cee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/truncated-divisor-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SourceUnit.Variant3e42f6a738ee19a77826127b0f4baac5691c5e90bc117038102a1493975b7cee

noncomputable section
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open TruncatedDivisorResidualScratch DampedDivisorCoefficient
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator FiniteMobiusController

example (X : ℕ) (ε : ℝ) (n : ℕ) : truncatedDivisorCoefficient X ε n =
    ∑ d ∈ n.divisors.filter (fun d => d ≤ X),
      (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ)) := rfl

example (X : ℕ) (ε : ℝ) (n : ℕ) (hn : n ≤ X) :
    truncatedDivisorCoefficient X ε n = dampedDivisorCoefficient ε n :=
  truncatedDivisorCoefficient_eq_full X ε n hn

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X ε d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      (∑ n ∈ Icc 1 ⌊x⌋₊, truncatedDivisorCoefficient X ε n) -
        (X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) :=
  damped_floor_eq_truncated_prefix X ε x hX

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, truncatedDivisorCoefficient X ε n : ℝ) : ℂ) +
        (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) :=
  arithmeticResidual_eq_truncated_prefix X ε x hX hx
end
```
