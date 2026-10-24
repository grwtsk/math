# distinct_first_corner_angles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d01b26b-561e-86f5-5e75-046417b5e1b2",
  "kind": "theorem",
  "lexical_name": "distinct_first_corner_angles",
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
  "slug": "distinct-first-corner-angles--72375b5ba7796310df66f808",
  "source": {
    "blob": "73836f1ca73c8653dc58c5de21aa45f64adf758f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 346,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72375b5ba7796310df66f8086d2dc9177f67270d25ed84270b410fa0f18fa1bb",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d01b26b-561e-86f5-5e75-046417b5e1b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distinct_first_corner_angles (k : ℕ) :
    perimeterAngle k
        (perimeterProjection k ((firstHandle k, (0 : Fin 4)), 0)) ≠
      perimeterAngle k
        (perimeterProjection k ((firstHandle k, (1 : Fin 4)), 0)) := by
  rw [firstCorner_angle_zero, nextCorner_angle_one]
  exact Ne.symm (angle_one_ne_zero k)

/-- However those SAME two source corners are identified in the
PAIRED boundary quotient by the authentic old corner-pairing theorem.
The angular map distinguishes information before attachment that
the true attaching-direction map loses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73836f1ca73c8653dc58c5de21aa45f64adf758f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
