# tan_angle_sub_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dd8a002-c408-b171-ff59-d6f1ac034f36",
  "kind": "theorem",
  "lexical_name": "tan_angle_sub_of_inner_eq_zero",
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
  "slug": "tan-angle-sub-of-inner-eq-zero--3afd0c81961e83557ac11f34",
  "source": {
    "blob": "52cb9d784abbcda21f2d93e8bce4d3f8acac8570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 276,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3afd0c81961e83557ac11f344c482a3a1e4601712cb7ab7594bb48e15166bf7c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dd8a002-c408-b171-ff59-d6f1ac034f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_angle_sub_of_inner_eq_zero {x y : V} (h : ⟪x, y⟫ = 0) :
    Real.tan (angle x (x - y)) = ‖y‖ / ‖x‖ := by
  rw [← neg_eq_zero, ← inner_neg_right] at h
  rw [sub_eq_add_neg, tan_angle_add_of_inner_eq_zero h, norm_neg]

/-- The cosine of an angle in a right-angled triangle multiplied by the hypotenuse equals the
adjacent side, version subtracting vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cb9d784abbcda21f2d93e8bce4d3f8acac8570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
