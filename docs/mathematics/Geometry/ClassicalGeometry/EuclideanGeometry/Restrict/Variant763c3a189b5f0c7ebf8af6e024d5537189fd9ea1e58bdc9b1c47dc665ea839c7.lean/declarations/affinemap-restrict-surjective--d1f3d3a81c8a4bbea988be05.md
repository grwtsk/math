# AffineMap.restrict.surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4f0d85f82e9f670a51f02a857d9ad8ee54083f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cae439b1-f4eb-7c51-3157-3af1b4a1eb79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f05ab84-ca4a-0d8b-94ab-01f7721d5038",
  "kind": "theorem",
  "lexical_name": "AffineMap.restrict.surjective",
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
  "slug": "affinemap-restrict-surjective--d1f3d3a81c8a4bbea988be05",
  "source": {
    "blob": "c4f0d85f82e9f670a51f02a857d9ad8ee54083f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 72,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f3d3a81c8a4bbea988be051aec306166df4fe8adbe2f5b95829efe1136b9c6",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f05ab84-ca4a-0d8b-94ab-01f7721d5038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineMap.restrict.surjective (φ : P₁ →ᵃ[k] P₂) {E : AffineSubspace k P₁}
    {F : AffineSubspace k P₂} [Nonempty E] [Nonempty F] (h : E.map φ = F) :
    Function.Surjective (AffineMap.restrict φ (le_of_eq h)) := by
  rintro ⟨x, hx : x ∈ F⟩
  rw [← h, AffineSubspace.mem_map] at hx
  obtain ⟨y, hy, rfl⟩ := hx
  exact ⟨⟨y, hy⟩, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f0d85f82e9f670a51f02a857d9ad8ee54083f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
