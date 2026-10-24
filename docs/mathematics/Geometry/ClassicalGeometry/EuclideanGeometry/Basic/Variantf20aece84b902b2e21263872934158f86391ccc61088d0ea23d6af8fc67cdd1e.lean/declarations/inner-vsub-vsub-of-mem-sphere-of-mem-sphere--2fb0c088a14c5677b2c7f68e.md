# inner_vsub_vsub_of_mem_sphere_of_mem_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8016978f-0451-a900-0d37-f30b6babfc6a",
  "kind": "theorem",
  "lexical_name": "inner_vsub_vsub_of_mem_sphere_of_mem_sphere",
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
  "slug": "inner-vsub-vsub-of-mem-sphere-of-mem-sphere--2fb0c088a14c5677b2c7f68e",
  "source": {
    "blob": "8d7bb48dc642253c3954cd5dd13993084680813f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 306,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fb0c088a14c5677b2c7f68e4ff522a7065d8438866c742f67360607050a6378",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8016978f-0451-a900-0d37-f30b6babfc6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_vsub_vsub_of_mem_sphere_of_mem_sphere {p₁ p₂ : P} {s₁ s₂ : Sphere P} (hp₁s₁ : p₁ ∈ s₁)
    (hp₂s₁ : p₂ ∈ s₁) (hp₁s₂ : p₁ ∈ s₂) (hp₂s₂ : p₂ ∈ s₂) :
    ⟪s₂.center -ᵥ s₁.center, p₂ -ᵥ p₁⟫ = 0 :=
  inner_vsub_vsub_of_dist_eq_of_dist_eq (dist_center_eq_dist_center_of_mem_sphere hp₁s₁ hp₂s₁)
    (dist_center_eq_dist_center_of_mem_sphere hp₁s₂ hp₂s₂)
#align euclidean_geometry.inner_vsub_vsub_of_mem_sphere_of_mem_sphere EuclideanGeometry.inner_vsub_vsub_of_mem_sphere_of_mem_sphere

/-- Two spheres intersect in at most two points in a two-dimensional subspace containing their
centers; this is a version of `eq_of_dist_eq_of_dist_eq_of_mem_of_finrank_eq_two` for bundled
spheres. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d7bb48dc642253c3954cd5dd13993084680813f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
