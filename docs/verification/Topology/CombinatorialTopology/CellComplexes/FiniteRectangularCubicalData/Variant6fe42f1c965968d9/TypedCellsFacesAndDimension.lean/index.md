# Verification target: GRWTSK.Topology.CombinatorialTopology.CellComplexes.FiniteRectangularCubicalData.Variant6fe42f1c965968d9.TypedCellsFacesAndDimension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23494611e0394d400c569c5f8a12cda50113c098",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/index.md) · [Full source](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23494611e0394d400c569c5f8a12cda50113c098`.

Source path: `GRWTSK/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Vertex](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/declarations/vertex--81d1ee8fb091d317a2c4744b.md) | 36 | `declaration-track:81d1ee8fb091d317a2c4744b80555e4403fe0f19722bdacb58850a5b613b939d` |
| 2 | `structure` | [HorizontalEdge](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/declarations/horizontaledge--4cb9f9ae67e86965367e0954.md) | 42 | `declaration-track:4cb9f9ae67e86965367e09543851ef59191296a437384b5dcfa55ab1882ed346` |
| 3 | `structure` | [VerticalEdge](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/declarations/verticaledge--959acfcbe833d5d80b0527e2.md) | 48 | `declaration-track:959acfcbe833d5d80b0527e2d742c2f7e16806297d7e4f77513fcd8f1f4d8e38` |
| 4 | `def` | [horizontalEndpoints](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/declarations/horizontalendpoints--71b1c7b39f851446638b47c3.md) | 54 | `declaration-track:71b1c7b39f851446638b47c301c6eedb87b0ada6224fa1ae543911da76c1bba2` |
| 5 | `def` | [verticalEndpoints](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/declarations/verticalendpoints--b8445288872053ff44a5d8bc.md) | 61 | `declaration-track:b8445288872053ff44a5d8bc005b7ae76503d8d6db73899a487ceca383e9c95d` |
| 6 | `structure` | [SquareBoundary](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/declarations/squareboundary--77164b724d529dad080e0b7c.md) | 68 | `declaration-track:77164b724d529dad080e0b7c14ddf395e00f4d4df8851a12ebdfdbf7686a4b62` |
| 7 | `def` | [squareBoundary](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/declarations/squareboundary--8c779988769e700e39e47d40.md) | 76 | `declaration-track:8c779988769e700e39e47d40fa242ac2a45ee7bb16fe08549c9ac3a5fc9ef931` |
| 8 | `inductive` | [Cell](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/declarations/cell--73b5fa8910068361a4f2c7f7.md) | 87 | `declaration-track:73b5fa8910068361a4f2c7f724799b9dcb603045d3fa90a723cea42b2256aba0` |
| 9 | `def` | [Cell.dimension](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/declarations/cell-dimension--25748877f0c3cf245a68fb47.md) | 95 | `declaration-track:25748877f0c3cf245a68fb47d3411a5675ac4b635ee43a37a522620a29c5676e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
