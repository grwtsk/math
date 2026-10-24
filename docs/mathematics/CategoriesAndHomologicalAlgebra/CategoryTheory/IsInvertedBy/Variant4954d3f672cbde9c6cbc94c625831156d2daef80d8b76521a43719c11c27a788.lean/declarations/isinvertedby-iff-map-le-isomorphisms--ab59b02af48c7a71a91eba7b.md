# IsInvertedBy.iff_map_le_isomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "967d0a5435b7769cbb1505ed427c2bddc7ed63dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/4954d3f672cbde9c6cbc94c625831156d2daef80d8b76521a43719c11c27a788.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba3d9ce4-6fa6-177b-1790-d313fc44a708",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e283c143-358d-3988-b4e0-eadf88545837",
  "kind": "lemma",
  "lexical_name": "IsInvertedBy.iff_map_le_isomorphisms",
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
  "slug": "isinvertedby-iff-map-le-isomorphisms--ab59b02af48c7a71a91eba7b",
  "source": {
    "blob": "967d0a5435b7769cbb1505ed427c2bddc7ed63dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant4954d3f672cbde9c6cbc94c625831156d2daef80d8b76521a43719c11c27a788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab59b02af48c7a71a91eba7b9a53367e3c5b651ab187e79a6481674b0f7bced0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant4954d3f672cbde9c6cbc94c625831156d2daef80d8b76521a43719c11c27a788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e283c143-358d-3988-b4e0-eadf88545837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsInvertedBy.iff_map_le_isomorphisms (W : MorphismProperty C) (F : C ⥤ D) :
    W.IsInvertedBy F ↔ W.map F ≤ isomorphisms D := by
  rw [iff_le_inverseImage_isomorphisms, map_le_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant4954d3f672cbde9c6cbc94c625831156d2daef80d8b76521a43719c11c27a788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant4954d3f672cbde9c6cbc94c625831156d2daef80d8b76521a43719c11c27a788.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `967d0a5435b7769cbb1505ed427c2bddc7ed63dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
