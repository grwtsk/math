# map_nhdsSet_subtype_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc09a0ae9903f2419cc4f63415f10d94dafea47e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 628,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fee800d-5437-6232-72f7-3b3722d0a67e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24011f32-0d7e-9d04-495d-030080f20955",
  "kind": "lemma",
  "lexical_name": "map_nhdsSet_subtype_val",
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
  "slug": "map-nhdsset-subtype-val--3f0433ff27657e118673deb5",
  "source": {
    "blob": "bc09a0ae9903f2419cc4f63415f10d94dafea47e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 628,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f0433ff27657e118673deb5e5412a8fcf9cbb6937c3370fef74e67ed2aba568",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24011f32-0d7e-9d04-495d-030080f20955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_nhdsSet_subtype_val {s : Set α} (t : Set s) :
    map (↑) (𝓝ˢ t) = 𝓝ˢ[s] ((↑) '' t) := by
  rw [IsInducing.subtypeVal.map_nhdsSet_eq, Subtype.range_val]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsWithin/Variante580c9d0523179f77e5b8053093787d19751e685bb8d151794f9c1213fc79150.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc09a0ae9903f2419cc4f63415f10d94dafea47e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
