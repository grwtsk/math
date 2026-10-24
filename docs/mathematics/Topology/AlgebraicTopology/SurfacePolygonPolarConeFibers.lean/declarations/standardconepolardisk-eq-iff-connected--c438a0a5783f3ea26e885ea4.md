# standardConePolarDisk_eq_iff_connected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11a5373a-35a7-1a6f-c0e9-1b5bb313091e",
  "kind": "theorem",
  "lexical_name": "standardConePolarDisk_eq_iff_connected",
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
  "slug": "standardconepolardisk-eq-iff-connected--c438a0a5783f3ea26e885ea4",
  "source": {
    "blob": "d4f70b63f9a713a96d480d7d1b2b207833b63cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 89,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c438a0a5783f3ea26e885ea4db9cc6022f999ddf8526ed9660cd3a7f83a452cd",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11a5373a-35a7-1a6f-c0e9-1b5bb313091e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem standardConePolarDisk_eq_iff_connected
    (p q : StandardCircleConeCylinder) :
    standardConePolarDisk (standardCircleConeProjection p) =
      standardConePolarDisk (standardCircleConeProjection q) ↔
        StandardCircleConeConnected p q := by
  constructor
  · intro h
    have hr := jointPolar_radius_eq p q h
    by_cases hz : p.2 = 0
    · apply (standardCircleConeConnected_iff p q).mpr
      exact Or.inr ⟨hz, hr ▸ hz⟩
    · have ha := jointPolar_angle_eq_of_ne_zero p q hz h
      apply (standardCircleConeConnected_iff p q).mpr
      left
      exact Prod.ext ha hr
  · intro h
    exact congrArg standardConePolarDisk (Quotient.sound h)

/-- The quotient-descended polar disk map is injective, by the exact
source fiber criterion rather than by a dimension argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4f70b63f9a713a96d480d7d1b2b207833b63cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
