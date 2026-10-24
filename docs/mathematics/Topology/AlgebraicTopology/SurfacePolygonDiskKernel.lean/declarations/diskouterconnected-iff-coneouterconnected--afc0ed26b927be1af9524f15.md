# diskOuterConnected_iff_coneOuterConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ea0d020-aa0b-0a1b-1fa1-f5fdd6b74746",
  "kind": "theorem",
  "lexical_name": "diskOuterConnected_iff_coneOuterConnected",
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
  "slug": "diskouterconnected-iff-coneouterconnected--afc0ed26b927be1af9524f15",
  "source": {
    "blob": "9803601a0048b6c70d37aac3433d908f740013ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 199,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afc0ed26b927be1af9524f15c6d40c0235cf1887f9c97b25c859d9e75b5cae94",
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

Occurrence: `result:6ea0d020-aa0b-0a1b-1fa1-f5fdd6b74746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diskOuterConnected_iff_coneOuterConnected (k : ℕ)
    (u v : Complex.UnitClosedDisc) :
    DiskOuterConnected k u v ↔
      ConeOuterConnected k
        ((perimeterConeHomeomorphUnitClosedDisc k).symm u)
        ((perimeterConeHomeomorphUnitClosedDisc k).symm v) := by
  constructor
  · exact diskOuterConnected_to_coneOuterConnected k
  · intro h
    have h' := coneOuterConnected_to_diskOuterConnected k h
    simpa using h'

/-- Every primitive disk pairing preserves the complex norm; in fact
both endpoints lie on the unit circle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9803601a0048b6c70d37aac3433d908f740013ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
