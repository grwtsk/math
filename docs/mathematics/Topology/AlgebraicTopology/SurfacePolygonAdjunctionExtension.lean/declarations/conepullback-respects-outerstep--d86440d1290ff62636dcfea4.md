# conePullback_respects_outerStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4efda39b-3b24-6cb2-2b62-373fbb4321c4",
  "kind": "theorem",
  "lexical_name": "conePullback_respects_outerStep",
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
  "slug": "conepullback-respects-outerstep--d86440d1290ff62636dcfea4",
  "source": {
    "blob": "bbafab40d2b7aa8355af9759b8538725590e0bc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 43,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d86440d1290ff62636dcfea4be4d4e58947630f1c37bb756d614ff5f83122d2a",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4efda39b-3b24-6cb2-2b62-373fbb4321c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conePullback_respects_outerStep (k : ℕ)
    {Y : Type*}
    (disk : Complex.UnitClosedDisc → Y)
    (boundary : PolygonBoundaryOneSkeleton k → Y)
    (hcompat : CompatibleDiskBoundary k disk boundary)
    {x y : PerimeterCone k}
    (h : ConeOuterPairStep k x y) :
    conePullback k disk x = conePullback k disk y := by
  cases h with
  | pairA h t =>
      change disk (perimeterConeHomeomorphUnitClosedDisc k
          (coneBoundary k (perimeterProjection k ((h, 0), t)))) =
        disk (perimeterConeHomeomorphUnitClosedDisc k
          (coneBoundary k (perimeterProjection k
            ((h, 2), unitInterval.symm t))))
      calc
        _ = boundary (perimeterAttach k
              (perimeterProjection k ((h, 0), t))) :=
          hcompat _
        _ = boundary (perimeterAttach k
              (perimeterProjection k ((h, 2), unitInterval.symm t))) :=
          congrArg boundary (attachingMap_pairs_a k h t)
        _ = _ := (hcompat _).symm
  | pairB h t =>
      change disk (perimeterConeHomeomorphUnitClosedDisc k
          (coneBoundary k (perimeterProjection k ((h, 1), t)))) =
        disk (perimeterConeHomeomorphUnitClosedDisc k
          (coneBoundary k (perimeterProjection k
            ((h, 3), unitInterval.symm t))))
      calc
        _ = boundary (perimeterAttach k
              (perimeterProjection k ((h, 1), t))) :=
          hcompat _
        _ = boundary (perimeterAttach k
              (perimeterProjection k ((h, 3), unitInterval.symm t))) :=
          congrArg boundary (attachingMap_pairs_b k h t)
        _ = _ := (hcompat _).symm

/-- The same constancy holds for the full generated equivalence,
without introducing any interior radial identifications. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbafab40d2b7aa8355af9759b8538725590e0bc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
