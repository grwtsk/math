# triangle_split_helper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b9eec3bfffe16edcb4476095c15bb04bf922f7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a60754a7-b59e-13f0-c908-b16e4b3874af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d261a7fa-2390-20de-b4cf-09839581145a",
  "kind": "lemma",
  "lexical_name": "triangle_split_helper",
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
  "slug": "triangle-split-helper--a3304e65e1e5721d7cee8a37",
  "source": {
    "blob": "9b9eec3bfffe16edcb4476095c15bb04bf922f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3304e65e1e5721d7cee8a370c5039a3fd73e4a11a9654a118b6360704385c46",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d261a7fa-2390-20de-b4cf-09839581145a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma triangle_split_helper [DecidableEq α] :
    (s \ (badVertices G ε s t ∪ badVertices G ε s u)).biUnion
      (fun x ↦ (G.interedges {y ∈ t | G.Adj x y} {y ∈ u | G.Adj x y}).image (x, ·)) ⊆
      (s ×ˢ t ×ˢ u).filter (fun (x, y, z) ↦ G.Adj x y ∧ G.Adj x z ∧ G.Adj y z) := by
  rintro ⟨x, y, z⟩
  simp only [mem_filter, mem_product, mem_biUnion, mem_sdiff, exists_prop, mem_union,
    mem_image, Prod.exists, and_assoc, exists_imp, and_imp, Prod.mk_inj, mem_interedges_iff]
  rintro x hx - y z hy xy hz xz yz rfl rfl rfl
  exact ⟨hx, hy, hz, xy, xz, yz⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9eec3bfffe16edcb4476095c15bb04bf922f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
