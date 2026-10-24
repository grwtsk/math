# sbtw_of_collinear_of_dist_center_lt_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62ba293f-2232-1785-907a-e2e6f205c1b3",
  "kind": "theorem",
  "lexical_name": "sbtw_of_collinear_of_dist_center_lt_radius",
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
  "slug": "sbtw-of-collinear-of-dist-center-lt-radius--77cc52c24ca920010b9c1da9",
  "source": {
    "blob": "8d7bb48dc642253c3954cd5dd13993084680813f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 394,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77cc52c24ca920010b9c1da9bca1d06d46580bf63bd16b6a7b702d6740e4a305",
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

Occurrence: `result:62ba293f-2232-1785-907a-e2e6f205c1b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sbtw_of_collinear_of_dist_center_lt_radius {s : Sphere P} {p₁ p₂ p₃ : P}
    (h : Collinear ℝ ({p₁, p₂, p₃} : Set P)) (hp₁ : p₁ ∈ s) (hp₂ : dist p₂ s.center < s.radius)
    (hp₃ : p₃ ∈ s) (hp₁p₃ : p₁ ≠ p₃) : Sbtw ℝ p₁ p₂ p₃ :=
  h.sbtw_of_dist_eq_of_dist_lt hp₁ hp₂ hp₃ hp₁p₃
#align euclidean_geometry.sbtw_of_collinear_of_dist_center_lt_radius EuclideanGeometry.sbtw_of_collinear_of_dist_center_lt_radius

end EuclideanSpace

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantf20aece84b902b2e21263872934158f86391ccc61088d0ea23d6af8fc67cdd1e.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d7bb48dc642253c3954cd5dd13993084680813f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
