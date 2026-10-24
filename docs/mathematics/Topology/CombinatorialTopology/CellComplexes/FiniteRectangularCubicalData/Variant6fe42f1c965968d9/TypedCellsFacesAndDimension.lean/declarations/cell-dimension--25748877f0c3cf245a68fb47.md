# Cell.dimension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f69622795d5e75b484908a9da108882de05894be9d0155765269a4f59396d692",
  "kind": "def",
  "lexical_name": "Cell.dimension",
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
  "slug": "cell-dimension--25748877f0c3cf245a68fb47",
  "source": {
    "blob": "23494611e0394d400c569c5f8a12cda50113c098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25748877f0c3cf245a68fb47d3411a5675ac4b635ee43a37a522620a29c5676e",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f69622795d5e75b484908a9da108882de05894be9d0155765269a4f59396d692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cell.dimension {rows columns : Nat} : Cell rows columns → Nat
  | .vertex _ => 0
  | .horizontal _ | .vertical _ => 1
  | .square _ => 2

end BitMatrix.Topology.Raster
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23494611e0394d400c569c5f8a12cda50113c098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
