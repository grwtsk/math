# orthogonalProjection_sup_of_orthogonalProjection_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e597f56b-25ea-0d02-563e-5ebc099ed4ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d3c7bf5-be6c-dd18-8998-4824c535dfa1",
  "kind": "lemma",
  "lexical_name": "orthogonalProjection_sup_of_orthogonalProjection_eq",
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
  "slug": "orthogonalprojection-sup-of-orthogonalprojection-eq--a1c17db1d8dd628c4b916276",
  "source": {
    "blob": "2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 253,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1c17db1d8dd628c4b9162763d3cf7b6f24c3ce379240f1bca3e4f8b805daa9b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d3c7bf5-be6c-dd18-8998-4824c535dfa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma orthogonalProjection_sup_of_orthogonalProjection_eq {s₁ s₂ : AffineSubspace 𝕜 P} [Nonempty s₁]
    [Nonempty s₂] [s₁.direction.HasOrthogonalProjection] [s₂.direction.HasOrthogonalProjection]
    {p : P} (h : (orthogonalProjection s₁ p : P) = orthogonalProjection s₂ p)
    [(s₁ ⊔ s₂).direction.HasOrthogonalProjection] :
    (orthogonalProjection (s₁ ⊔ s₂) p : P) = orthogonalProjection s₁ p := by
  rw [coe_orthogonalProjection_eq_iff_mem]
  refine ⟨SetLike.le_def.1 le_sup_left (orthogonalProjection_mem _), ?_⟩
  rw [direction_sup_eq_sup_direction (orthogonalProjection_mem p) (h ▸ orthogonalProjection_mem p),
    ← Submodule.inf_orthogonal]
  exact ⟨vsub_orthogonalProjection_mem_direction_orthogonal _ _,
    h ▸ vsub_orthogonalProjection_mem_direction_orthogonal _ _⟩

/-- Adding a vector to a point in the given subspace, then taking the
orthogonal projection, produces the original point if the vector was
in the orthogonal direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
