# AffineMap.restrict.injective

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
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:493ed9a2-aae4-25a3-6eb3-53cccffacf24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd80d83a-fc41-d98d-4ab2-cb39cd13bacf",
  "kind": "theorem",
  "lexical_name": "AffineMap.restrict.injective",
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
  "slug": "affinemap-restrict-injective--1d4621b89d3144902b74d442",
  "source": {
    "blob": "c4f0d85f82e9f670a51f02a857d9ad8ee54083f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d4621b89d3144902b74d442dfac67e273d906ea42b9f2431205c268cda65524",
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

Occurrence: `result:bd80d83a-fc41-d98d-4ab2-cb39cd13bacf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineMap.restrict.injective {φ : P₁ →ᵃ[k] P₂} (hφ : Function.Injective φ)
    {E : AffineSubspace k P₁} {F : AffineSubspace k P₂} [Nonempty E] [Nonempty F]
    (hEF : E.map φ ≤ F) : Function.Injective (AffineMap.restrict φ hEF) := by
  intro x y h
  simp only [Subtype.ext_iff, Subtype.coe_mk, AffineMap.restrict.coe_apply] at h ⊢
  exact hφ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Variant763c3a189b5f0c7ebf8af6e024d5537189fd9ea1e58bdc9b1c47dc665ea839c7.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f0d85f82e9f670a51f02a857d9ad8ee54083f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
