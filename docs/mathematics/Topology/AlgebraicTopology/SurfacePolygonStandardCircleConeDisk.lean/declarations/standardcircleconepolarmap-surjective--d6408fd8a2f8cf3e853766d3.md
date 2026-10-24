# standardCircleConePolarMap_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0410f99-b70e-b1e6-f962-b18a223ce20c",
  "kind": "theorem",
  "lexical_name": "standardCircleConePolarMap_surjective",
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
  "slug": "standardcircleconepolarmap-surjective--d6408fd8a2f8cf3e853766d3",
  "source": {
    "blob": "e9675d15030fda9a01ab9fdd3d5970e8e0f006b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 317,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6408fd8a2f8cf3e853766d3df6214368bc9ae90157a14161910e67175eafd40",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0410f99-b70e-b1e6-f962-b18a223ce20c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem standardCircleConePolarMap_surjective :
    Function.Surjective standardCircleConePolarMap := by
  intro w
  by_cases hw : (w : ℂ) = 0
  · refine ⟨standardCircleConeApex, ?_⟩
    have hw0 : w = 0 := by
      apply Complex.UnitClosedDisc.coe_injective
      simpa using hw
    simpa [hw0] using standardCircleConePolarMap_apex
  · refine ⟨standardCircleConeProjection
      (closedDiskAngleOfNonzero w hw, closedDiskRadius w), ?_⟩
    rw [standardCircleConePolarMap_projection]
    exact standardCircleConePolarDiskSource_reconstruct_nonzero w hw

/-- Equality of descended polar values forces equality of cone classes,
because the complete source fibers are exactly the defining quotient
relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9675d15030fda9a01ab9fdd3d5970e8e0f006b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
