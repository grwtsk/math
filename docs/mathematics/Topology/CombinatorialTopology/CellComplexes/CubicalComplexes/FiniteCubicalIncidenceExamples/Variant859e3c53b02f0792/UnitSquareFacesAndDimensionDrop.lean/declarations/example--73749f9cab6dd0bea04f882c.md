# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2192a066efdf992aa2c94becb710be65c160322e9272687a48eaeb3f4101bd5",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--73749f9cab6dd0bea04f882c",
  "source": {
    "blob": "78cc80ff3c42d4117c8da5bdde6d4ce5ed16f213",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 60,
    "path": "GRWTSK/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteCubicalIncidenceExamples/Variant859e3c53b02f0792/UnitSquareFacesAndDimensionDrop.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73749f9cab6dd0bea04f882cd10e01e87c5fc7a6b8b38297f8116b28e4290105",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteCubicalIncidenceExamples/Variant859e3c53b02f0792/UnitSquareFacesAndDimensionDrop.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2192a066efdf992aa2c94becb710be65c160322e9272687a48eaeb3f4101bd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    Cell.vertical (squareBoundary unitCell).left ∈
      incidenceFaces (Cell.square unitCell) := by
  simp [incidenceFaces]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteCubicalIncidenceExamples/Variant859e3c53b02f0792/UnitSquareFacesAndDimensionDrop.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/CellComplexes/CubicalComplexes/FiniteCubicalIncidenceExamples/Variant859e3c53b02f0792/UnitSquareFacesAndDimensionDrop.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cc80ff3c42d4117c8da5bdde6d4ce5ed16f213` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
