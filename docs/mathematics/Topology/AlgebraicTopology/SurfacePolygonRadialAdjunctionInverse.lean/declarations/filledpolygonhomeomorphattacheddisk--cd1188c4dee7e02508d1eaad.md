# filledPolygonHomeomorphAttachedDisk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d46baf7ba5e47dc9dc1e520b20d0a72137d33820610ec3fd9de30d1a5fb0f0f",
  "kind": "def",
  "lexical_name": "filledPolygonHomeomorphAttachedDisk",
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
  "slug": "filledpolygonhomeomorphattacheddisk--cd1188c4dee7e02508d1eaad",
  "source": {
    "blob": "a0b081e0c8dc9e080a49897cfa154a062f49158f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 123,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd1188c4dee7e02508d1eaad0f9448f7ea4994d7bc6eaef4cf58cd1ceb45a6a0",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d46baf7ba5e47dc9dc1e520b20d0a72137d33820610ec3fd9de30d1a5fb0f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def filledPolygonHomeomorphAttachedDisk (k : ℕ) :
    FilledPolygonQuotient k ≃ₜ PolygonAttachedDisk k where
  toFun := radialFillingToAdjunction k
  invFun := adjunctionToFilling k
  left_inv := fun x => congrFun (reverse_forward k) x
  right_inv := fun x => congrFun (forward_reverse k) x
  continuous_toFun := by
    have h := radialFillingToAdjunction_continuous k
    convert h using 1
    all_goals
      congr 4
      exact cornerProductTopology_eq_bot k
  continuous_invFun := adjunctionToFilling_continuous k

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionInverse
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0b081e0c8dc9e080a49897cfa154a062f49158f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
