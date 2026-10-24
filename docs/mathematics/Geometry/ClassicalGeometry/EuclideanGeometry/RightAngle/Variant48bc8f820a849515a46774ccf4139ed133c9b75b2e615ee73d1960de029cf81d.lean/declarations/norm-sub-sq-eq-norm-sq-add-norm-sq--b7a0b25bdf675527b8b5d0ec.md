# norm_sub_sq_eq_norm_sq_add_norm_sq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2660442-697a-24a3-06d3-e849c2b116ca",
  "kind": "theorem",
  "lexical_name": "norm_sub_sq_eq_norm_sq_add_norm_sq'",
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
  "slug": "norm-sub-sq-eq-norm-sq-add-norm-sq--b7a0b25bdf675527b8b5d0ec",
  "source": {
    "blob": "f7dfdbcbce51d453e6c5dc5e823c80a652af90d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 75,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant48bc8f820a849515a46774ccf4139ed133c9b75b2e615ee73d1960de029cf81d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7a0b25bdf675527b8b5d0ec06c8786cf9ddf085350801e59f26a0e213b354ca",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant48bc8f820a849515a46774ccf4139ed133c9b75b2e615ee73d1960de029cf81d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2660442-697a-24a3-06d3-e849c2b116ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sub_sq_eq_norm_sq_add_norm_sq' (x y : V) (h : angle x y = π / 2) :
    ‖x - y‖ * ‖x - y‖ = ‖x‖ * ‖x‖ + ‖y‖ * ‖y‖ :=
  (norm_sub_sq_eq_norm_sq_add_norm_sq_iff_angle_eq_pi_div_two x y).2 h
#align inner_product_geometry.norm_sub_sq_eq_norm_sq_add_norm_sq' InnerProductGeometry.norm_sub_sq_eq_norm_sq_add_norm_sq'

/-- An angle in a right-angled triangle expressed using `arccos`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant48bc8f820a849515a46774ccf4139ed133c9b75b2e615ee73d1960de029cf81d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant48bc8f820a849515a46774ccf4139ed133c9b75b2e615ee73d1960de029cf81d.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7dfdbcbce51d453e6c5dc5e823c80a652af90d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
