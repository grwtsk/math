# RadialGluingStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8aca120f4fbd4b8dac9746a1c2d75e8c38ade381b0595f5cdae72a7a18d5cac",
  "kind": "inductive",
  "lexical_name": "RadialGluingStep",
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
  "slug": "radialgluingstep--08c44aa26f3f49cff91b8cbf",
  "source": {
    "blob": "7aef6274b44e788648e9e434b09c3160ca14c8af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 89,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08c44aa26f3f49cff91b8cbf526da55d22b33259a5383d8ee04bad63864f04f8",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8aca120f4fbd4b8dac9746a1c2d75e8c38ade381b0595f5cdae72a7a18d5cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RadialGluingStep (k : ℕ) :
    RadialSource k → RadialSource k → Prop where
  | seam01 (h : Handle k) (r : unitInterval) :
      RadialGluingStep k
        (((h, 0), 1), r) (((h, 1), 0), r)
  | seam12 (h : Handle k) (r : unitInterval) :
      RadialGluingStep k
        (((h, 1), 1), r) (((h, 2), 0), r)
  | seam23 (h : Handle k) (r : unitInterval) :
      RadialGluingStep k
        (((h, 2), 1), r) (((h, 3), 0), r)
  | seamNext (h : Handle k) (r : unitInterval) :
      RadialGluingStep k
        (((h, 3), 1), r) (((nextHandle k h, 0), 0), r)
  | apex (p : BoundaryPoint k) :
      RadialGluingStep k (p, 0) (apexSource k)
  | outerA (h : Handle k) (t : unitInterval) :
      RadialGluingStep k
        (((h, 0), t), 1)
        (((h, 2), unitInterval.symm t), 1)
  | outerB (h : Handle k) (t : unitInterval) :
      RadialGluingStep k
        (((h, 1), t), 1)
        (((h, 3), unitInterval.symm t), 1)

/-- Genuine equivalence closure of ONLY the seven declared radial
gluing families; the relation is not an everywhere-true oracle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aef6274b44e788648e9e434b09c3160ca14c8af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
