# dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq

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
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb89bcd9-0c3e-4292-e373-a3258af88acc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8342392e-bf8d-839b-666a-eb0338d6b34e",
  "kind": "theorem",
  "lexical_name": "dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq",
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
  "slug": "dist-sq-eq-dist-orthogonalprojection-sq-add-dist-orthogonalprojection-sq--56d76ed79c83065b68d5a2e3",
  "source": {
    "blob": "2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 295,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d76ed79c83065b68d5a2e3f2eb4700b6578e443be65ed60a4c610f88938f81",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8342392e-bf8d-839b-666a-eb0338d6b34e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq
    {s : AffineSubspace 𝕜 P} [Nonempty s] [s.direction.HasOrthogonalProjection] {p₁ : P} (p₂ : P)
    (hp₁ : p₁ ∈ s) :
    dist p₁ p₂ * dist p₁ p₂ =
      dist p₁ (orthogonalProjection s p₂) * dist p₁ (orthogonalProjection s p₂) +
        dist p₂ (orthogonalProjection s p₂) * dist p₂ (orthogonalProjection s p₂) := by
  rw [dist_comm p₂ _, dist_eq_norm_vsub V p₁ _, dist_eq_norm_vsub V p₁ _, dist_eq_norm_vsub V _ p₂,
    ← vsub_add_vsub_cancel p₁ (orthogonalProjection s p₂) p₂,
    norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero (𝕜 := 𝕜)]
  exact Submodule.inner_right_of_mem_orthogonal (vsub_orthogonalProjection_mem_direction p₂ hp₁)
    (orthogonalProjection_vsub_mem_direction_orthogonal s p₂)

/-- If the distance from `p₁` to its orthogonal projection equals its distance to a point in `s`,
the orthogonal projection is that point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
