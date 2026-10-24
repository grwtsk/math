# realAnglePolarDisk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e2d74bcf7785e81d0fd9a5507ce70cae1b347996be41d05fd7c69425ca2c153",
  "kind": "def",
  "lexical_name": "realAnglePolarDisk",
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
  "slug": "realanglepolardisk--c4191dc437b2984baa98b3ba",
  "source": {
    "blob": "31e1926c791320398a8b865f197f320032b9aedf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 49,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4191dc437b2984baa98b3ba9bf455155ad350b4d374d6528ee4834f8d4b93b6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e2d74bcf7785e81d0fd9a5507ce70cae1b347996be41d05fd7c69425ca2c153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def realAnglePolarDisk (θ : ℝ) (r : unitInterval) :
    ClosedComplexUnitDisk :=
  ⟨realAnglePolar θ r, by
    rw [Metric.mem_closedBall, dist_zero_right]
    rw [realAnglePolar_norm θ r.property.1]
    exact r.property.2⟩

/-
Next isolated obligations, not silently discharged:
1. realAnglePolar (θ + n) r = realAnglePolar θ r for n : ℤ;
2. descend realAnglePolarDisk to UnitAddCircle × unitInterval;
3. prove exact fiber equality, including positive radius;
4. descend to the authentic StandardCircleCone;
5. polar decomposition of every z in ClosedComplexUnitDisk;
6. compact-to-Hausdorff bundled homeomorphism;
7. apex, radius and outer boundary transport back to PerimeterCone k.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31e1926c791320398a8b865f197f320032b9aedf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
