# diskCharacteristic_eq_iff_diskOuterConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:778e45a8-351e-34e4-6cee-b9f9f1737a10",
  "kind": "theorem",
  "lexical_name": "diskCharacteristic_eq_iff_diskOuterConnected",
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
  "slug": "diskcharacteristic-eq-iff-diskouterconnected--ef07f8f8e4e5b541f018264b",
  "source": {
    "blob": "9803601a0048b6c70d37aac3433d908f740013ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 233,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef07f8f8e4e5b541f018264b46c124f0efe899a2d59d4eccde83b5ee581fd657",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:778e45a8-351e-34e4-6cee-b9f9f1737a10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diskCharacteristic_eq_iff_diskOuterConnected (k : ℕ)
    (u v : Complex.UnitClosedDisc) :
    diskCharacteristic k u = diskCharacteristic k v ↔
      DiskOuterConnected k u v := by
  change coneToFilled k
      ((perimeterConeHomeomorphUnitClosedDisc k).symm u) =
    coneToFilled k
      ((perimeterConeHomeomorphUnitClosedDisc k).symm v) ↔
    DiskOuterConnected k u v
  rw [coneToFilled_eq_iff_outerConnected,
    diskOuterConnected_iff_coneOuterConnected]

/-- The standard disk characteristic map is an actual quotient map,
not merely a continuous surjection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9803601a0048b6c70d37aac3433d908f740013ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
