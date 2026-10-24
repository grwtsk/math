# VerticalEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebb59d9ef4aadd124389920b1f2037222b34a989e45d1b9ecf8978a4f9dedb57",
  "kind": "structure",
  "lexical_name": "VerticalEdge",
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
  "slug": "verticaledge--959acfcbe833d5d80b0527e2",
  "source": {
    "blob": "23494611e0394d400c569c5f8a12cda50113c098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 48,
    "path": "GRWTSK/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:959acfcbe833d5d80b0527e2d742c2f7e16806297d7e4f77513fcd8f1f4d8e38",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebb59d9ef4aadd124389920b1f2037222b34a989e45d1b9ecf8978a4f9dedb57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure VerticalEdge (rows columns : Nat) where
  row : Fin rows
  column : Fin (columns + 1)
  deriving DecidableEq, Repr

/-- The endpoints of a horizontal edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23494611e0394d400c569c5f8a12cda50113c098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
