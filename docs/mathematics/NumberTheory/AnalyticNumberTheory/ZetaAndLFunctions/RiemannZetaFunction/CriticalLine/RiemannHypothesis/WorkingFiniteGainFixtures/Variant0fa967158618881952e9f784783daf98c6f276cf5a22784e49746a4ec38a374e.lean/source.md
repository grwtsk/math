# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WorkingFiniteGainFixtures.Variant0fa967158618881952e9f784783daf98c6f276cf5a22784e49746a4ec38a374e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `025a534fa1f5e6b79498c72e4ccb33d69880c23a` · SHA-256 `ec3575372d66f7b286ef6796fa47c3142017c8e32ffc48dc09e06ea134e48b4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Next.Variantaa44bbd42b15ee313279f33d83439e21e7b3e199d2d485fbb0152ca090bd61c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa44bbd42b15ee313279f33d83439e21e7b3e199d2d485fbb0152ca090bd61c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Next.Variantaa44bbd42b15ee313279f33d83439e21e7b3e199d2d485fbb0152ca090bd61c6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"aa44bbd42b15ee313279f33d83439e21e7b3e199d2d485fbb0152ca090bd61c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle27/regent-restricted-mixed-source-v1/cycle31/current16-owner-graph-and-staged-games-scope-review-v1/selected-index-working-captures-v2/working-FiniteGainFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.FiniteGainCertificates

/-!
# Finite exact positive and adverse fixtures

These fixtures test the sign and edge certificate; they are not source decoders.
Research direction and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex / ChatGPT.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Next.Variantaa44bbd42b15ee313279f33d83439e21e7b3e199d2d485fbb0152ca090bd61c6

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.FiniteGainFixtures

def next (r : Fin 8) : Fin 8 := ⟨(r.val + 3) % 8, Nat.mod_lt _ (by decide)⟩

def gain (r : Fin 8) : ℝ := if r.val ≤ 4 then 3 else -5

def storage (r : Fin 8) : ℝ := r.val

theorem eight_state_edge_equality (r : Fin 8) :
    gain r + storage r - storage (next r) = 0 := by
  fin_cases r <;> norm_num [gain, storage, next]

theorem eight_state_orbit :
    [next 0, next 3, next 6, next 1, next 4, next 7, next 2, next 5] =
      [3, 6, 1, 4, 7, 2, 5, 0] := by decide

theorem adverse_edge_rejected : (-1 : ℝ) + storage 0 - storage 0 < 0 := by
  norm_num [storage]

end FormalResearch.RiemannHypothesis.FiniteGainFixtures
```
