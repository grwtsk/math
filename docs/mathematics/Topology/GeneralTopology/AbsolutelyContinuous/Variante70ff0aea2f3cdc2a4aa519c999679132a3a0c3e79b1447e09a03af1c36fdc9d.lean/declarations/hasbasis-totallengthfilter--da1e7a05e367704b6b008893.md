# hasBasis_totalLengthFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43cfa13281fe2e2c62f9f6d28aaed6ebffafd415",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c7b0863-9277-7978-2c4c-58854f9ff0b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8a9feae-692d-e20b-5dae-363e75c17131",
  "kind": "lemma",
  "lexical_name": "hasBasis_totalLengthFilter",
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
  "slug": "hasbasis-totallengthfilter--da1e7a05e367704b6b008893",
  "source": {
    "blob": "43cfa13281fe2e2c62f9f6d28aaed6ebffafd415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da1e7a05e367704b6b0088935512cec3d78a2cf9d799844df845e4dc1ef40560",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8a9feae-692d-e20b-5dae-363e75c17131`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasBasis_totalLengthFilter : totalLengthFilter.HasBasis (fun (ε : ℝ) => 0 < ε)
    (fun (ε : ℝ) =>
      {E : ℕ × (ℕ → X × X) | ∑ i ∈ Finset.range E.1, dist (E.2 i).1 (E.2 i).2 < ε}) := by
  convert! Filter.HasBasis.comap (α := ℝ) _ (nhds_basis_Ioo_pos _) using 1
  ext ε E
  simp only [mem_ofPred_eq, zero_sub, zero_add, mem_preimage, mem_Ioo, iff_and_self]
  suffices 0 ≤ ∑ i ∈ Finset.range E.1, dist (E.2 i).1 (E.2 i).2 by grind
  exact Finset.sum_nonneg (fun _ _ ↦ dist_nonneg)

/-- The subcollection of all the finite sequences of `uIoc` intervals consisting of
`uIoc (a i) (b i)`, `i < n` where `a i`, `b i` are all in `uIcc a b` for `i < n` and
`uIoc (a i) (b i)` are mutually disjoint for `i < n`. Technically the finite sequence
`uIoc (a i) (b i)`, `i < n` is represented by any `E : ℕ × (ℕ → ℝ × ℝ)` which satisfies
`E.1 = n` and `E.2 i = (a i, b i)` for `i < n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43cfa13281fe2e2c62f9f6d28aaed6ebffafd415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
