# finite_nonempty_inter_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51f8d39e22c2b5b5b929065f6c203725fd4962f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff01de5d-ccb1-9bc6-501d-c2805d1db0ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9abab2b-24ff-9d49-9618-ebdec10c03b6",
  "kind": "theorem",
  "lexical_name": "finite_nonempty_inter_compact",
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
  "slug": "finite-nonempty-inter-compact--caf10489f9f787f99c5354d9",
  "source": {
    "blob": "51f8d39e22c2b5b5b929065f6c203725fd4962f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caf10489f9f787f99c5354d9c0ab89610340349e9ca8420926551dcdd82cffad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9abab2b-24ff-9d49-9618-ebdec10c03b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_nonempty_inter_compact {f : ι → Set X}
    (hf : LocallyFinite f) (hs : IsCompact s) : { i | (f i ∩ s).Nonempty }.Finite := by
  choose U hxU hUf using hf
  rcases hs.elim_nhds_subcover U fun x _ => hxU x with ⟨t, -, hsU⟩
  refine (t.finite_toSet.biUnion fun x _ => hUf x).subset ?_
  rintro i ⟨x, hx⟩
  rcases mem_iUnion₂.1 (hsU hx.2) with ⟨c, hct, hcx⟩
  exact mem_biUnion hct ⟨x, hx.1, hcx⟩

/-- If `X` is a compact space, then a locally finite family of sets of `X` can have only finitely
many nonempty elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Variantb09de16935623ab4a79ffa1b2885d02c72a678cddfe1cbde07462e1a1e176465.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51f8d39e22c2b5b5b929065f6c203725fd4962f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
