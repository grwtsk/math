# sum_psiA_shift_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2278475a5def48b05af157cb9bfffefd6023b35b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6955cc4e-3b64-d520-4e1d-9ca0d0e8f9ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:507da2e4-fb5f-6324-cce2-3f2eaa5a40da",
  "kind": "theorem",
  "lexical_name": "sum_psiA_shift_left",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "sum-psia-shift-left--042af7431092f60f2d0dc075",
  "source": {
    "blob": "2278475a5def48b05af157cb9bfffefd6023b35b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:042af7431092f60f2d0dc075bd6a335b3f1f075ff75014301b3b9f7b7d291627",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:507da2e4-fb5f-6324-cce2-3f2eaa5a40da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_psiA_shift_left (T h τ : ℝ) (d : ℕ) :
    ∑ k ∈ Finset.range d, psiA cϱ p (τ - (T + k * h))
      = ∑ k ∈ Finset.range d, psiA cϱ p ((T - τ) + k * h) := by
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [show τ - (T + k * h) = -((T - τ) + k * h) by ring, psiA_even]

/-- Right grid domination: for 2T ≤ τ and grid points T + k·h ≤ 2T (k < d), after reflecting the
index the distances dominate (τ − 2T) + j·h (ψ antitone on [0,∞)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2278475a5def48b05af157cb9bfffefd6023b35b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
