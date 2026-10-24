# isCoboundedUnder_ge_mul_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6a92917e947c28a9b4a09171dbab0bc50c6b7b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3cb121e-bf41-1873-f7c5-754f86acb2c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac5b8ae1-a26c-b137-f451-ce60e8f1609f",
  "kind": "lemma",
  "lexical_name": "isCoboundedUnder_ge_mul_of_nonneg",
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
  "slug": "iscoboundedunder-ge-mul-of-nonneg--80b668c793b7080d14d0f43f",
  "source": {
    "blob": "b6a92917e947c28a9b4a09171dbab0bc50c6b7b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 331,
    "path": "GRWTSK/Topology/GeneralTopology/IsBounded/Variant701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80b668c793b7080d14d0f43f66611455dee47d04dfa3a628c2a6877281e5c3f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsBounded/Variant701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac5b8ae1-a26c-b137-f451-ce60e8f1609f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCoboundedUnder_ge_mul_of_nonneg [LinearOrder α] [Mul α] [Zero α] [PosMulMono α]
    [MulPosMono α] {f : Filter ι} [f.NeBot] {u v : ι → α} (h₁ : 0 ≤ᶠ[f] u)
    (h₂ : IsBoundedUnder (· ≤ ·) f u)
    (h₃ : 0 ≤ᶠ[f] v)
    (h₄ : IsCoboundedUnder (fun x1 x2 ↦ x2 ≤ x1) f v) :
    IsCoboundedUnder (fun x1 x2 ↦ x2 ≤ x1) f (u * v) := by
  obtain ⟨U, hU⟩ := h₂.eventually_le
  obtain ⟨V, hV⟩ := h₄.frequently_le
  refine IsCoboundedUnder.of_frequently_le (a := U * V) ?_
  apply (hV.and_eventually (hU.and (h₁.and h₃))).mono
  intro x ⟨x_V, x_U, u_0, v_0⟩
  exact (mul_le_mul_of_nonneg_right x_U v_0).trans (mul_le_mul_of_nonneg_left x_V (u_0.trans x_U))

end mul

section Nonempty
variable [Preorder α] [Nonempty α] {f : Filter β} {u : β → α}

@[to_dual isBounded_ge_atTop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsBounded/Variant701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsBounded/Variant701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6a92917e947c28a9b4a09171dbab0bc50c6b7b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
