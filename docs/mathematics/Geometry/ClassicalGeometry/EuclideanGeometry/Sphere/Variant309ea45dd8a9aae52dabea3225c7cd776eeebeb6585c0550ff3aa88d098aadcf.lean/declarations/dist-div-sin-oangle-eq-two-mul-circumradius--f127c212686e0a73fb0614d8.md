# dist_div_sin_oangle_eq_two_mul_circumradius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e79c970e-07d3-fe98-f4c8-5dbefad25e7d",
  "kind": "theorem",
  "lexical_name": "dist_div_sin_oangle_eq_two_mul_circumradius",
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
  "slug": "dist-div-sin-oangle-eq-two-mul-circumradius--f127c212686e0a73fb0614d8",
  "source": {
    "blob": "e1e49b87fdba5fec3456568da4a5d389d609eded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 298,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f127c212686e0a73fb0614d8e7d9ab2e3db956e7a51494439ed2ade8f5e8e41d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e79c970e-07d3-fe98-f4c8-5dbefad25e7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_div_sin_oangle_eq_two_mul_circumradius (t : Triangle ℝ P) {i₁ i₂ i₃ : Fin 3}
    (h₁₂ : i₁ ≠ i₂) (h₁₃ : i₁ ≠ i₃) (h₂₃ : i₂ ≠ i₃) : dist (t.points i₁) (t.points i₃) /
      |Real.Angle.sin (∡ (t.points i₁) (t.points i₂) (t.points i₃))| = 2 * t.circumradius :=
  Sphere.dist_div_sin_oangle_eq_two_mul_radius (t.mem_circumsphere _) (t.mem_circumsphere _)
    (t.mem_circumsphere _) (t.Independent.injective.ne h₁₂) (t.Independent.injective.ne h₁₃)
    (t.Independent.injective.ne h₂₃)
#align affine.triangle.dist_div_sin_oangle_eq_two_mul_circumradius Affine.Triangle.dist_div_sin_oangle_eq_two_mul_circumradius

/-- The circumsphere of a triangle may be expressed explicitly in terms of two points and the
angle at the third point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e49b87fdba5fec3456568da4a5d389d609eded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
