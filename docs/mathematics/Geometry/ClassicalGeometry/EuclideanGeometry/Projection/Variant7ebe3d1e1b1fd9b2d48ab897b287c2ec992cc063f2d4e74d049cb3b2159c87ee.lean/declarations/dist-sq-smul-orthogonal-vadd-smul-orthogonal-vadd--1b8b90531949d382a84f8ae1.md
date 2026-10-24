# dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd

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
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5faa6ee-c54b-c0a0-10ad-daa60cc07835",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba0b00b8-1d52-da3a-b4dc-df3f63cf4177",
  "kind": "theorem",
  "lexical_name": "dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd",
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
  "slug": "dist-sq-smul-orthogonal-vadd-smul-orthogonal-vadd--1b8b90531949d382a84f8ae1",
  "source": {
    "blob": "2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 352,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b8b90531949d382a84f8ae1a55e45be00108c8dcdf55ce612f11707e352ad68",
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

Occurrence: `result:ba0b00b8-1d52-da3a-b4dc-df3f63cf4177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd {s : AffineSubspace 𝕜 P} {p₁ p₂ : P}
    (hp₁ : p₁ ∈ s) (hp₂ : p₂ ∈ s) (r₁ r₂ : 𝕜) {v : V} (hv : v ∈ s.directionᗮ) :
    dist (r₁ • v +ᵥ p₁) (r₂ • v +ᵥ p₂) * dist (r₁ • v +ᵥ p₁) (r₂ • v +ᵥ p₂) =
      dist p₁ p₂ * dist p₁ p₂ + ‖r₁ - r₂‖ * ‖r₁ - r₂‖ * (‖v‖ * ‖v‖) :=
  calc
    dist (r₁ • v +ᵥ p₁) (r₂ • v +ᵥ p₂) * dist (r₁ • v +ᵥ p₁) (r₂ • v +ᵥ p₂) =
        ‖p₁ -ᵥ p₂ + (r₁ - r₂) • v‖ * ‖p₁ -ᵥ p₂ + (r₁ - r₂) • v‖ := by
      rw [dist_eq_norm_vsub V (r₁ • v +ᵥ p₁), vsub_vadd_eq_vsub_sub, vadd_vsub_assoc, sub_smul,
        add_comm, add_sub_assoc]
    _ = ‖p₁ -ᵥ p₂‖ * ‖p₁ -ᵥ p₂‖ + ‖(r₁ - r₂) • v‖ * ‖(r₁ - r₂) • v‖ :=
      norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero _ _
        (Submodule.inner_right_of_mem_orthogonal (vsub_mem_direction hp₁ hp₂)
          (Submodule.smul_mem _ _ hv))
    _ = dist p₁ p₂ * dist p₁ p₂ + ‖r₁ - r₂‖ * ‖r₁ - r₂‖ * (‖v‖ * ‖v‖) := by
      rw [norm_smul, dist_eq_norm_vsub V p₁]
      ring

/-- `p` is equidistant from two points in `s` if and only if its
`orthogonalProjection` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant7ebe3d1e1b1fd9b2d48ab897b287c2ec992cc063f2d4e74d049cb3b2159c87ee.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd1e69f8dfc54ef2bda074b1300e3f735d61a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
