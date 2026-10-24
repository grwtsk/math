# realAnglePolarDisk_eq_of_unitAddCircle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b85ca15c-60e9-39dd-20e9-7eb157298c0a",
  "kind": "theorem",
  "lexical_name": "realAnglePolarDisk_eq_of_unitAddCircle_eq",
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
  "slug": "realanglepolardisk-eq-of-unitaddcircle-eq--f32200e1acd83f046b537962",
  "source": {
    "blob": "393233fd959747dc630c2e88814e243869d23cad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 34,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f32200e1acd83f046b537962533897d03122381df87cb8ec00bc3ce2d81ae951",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b85ca15c-60e9-39dd-20e9-7eb157298c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realAnglePolarDisk_eq_of_unitAddCircle_eq
    (r : unitInterval) {θ φ : ℝ}
    (h : (θ : UnitAddCircle) = (φ : UnitAddCircle)) :
    realAnglePolarDisk θ r = realAnglePolarDisk φ r := by
  apply Subtype.ext
  have hp :
      Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) =
        Complex.exp ((2 * Real.pi * φ : ℝ) * Complex.I) :=
    (polar_phase_eq_iff_unitAddCircle_eq θ φ).mpr h
  change realAnglePolar θ r = realAnglePolar φ r
  unfold realAnglePolar
  rw [hp]

/-- Fixed-radius polar map on the genuine quotient UnitAddCircle,
not a map on an arbitrarily selected real representative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `393233fd959747dc630c2e88814e243869d23cad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
