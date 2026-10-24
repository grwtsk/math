# Verification target: GRWTSK.Topology.CombinatorialTopology.CellComplexes.FiniteRectangularCubicalData.Variant6fe42f1c965968d9.WholeFiniteInventoryAndCanonicalComplex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab7c686a03d6321b3c55cc7399bce5b18c339290",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean/index.md) · [Full source](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab7c686a03d6321b3c55cc7399bce5b18c339290`.

Source path: `GRWTSK/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Topology.CombinatorialTopology.CellComplexes.FiniteRectangularCubicalData.Variant6fe42f1c965968d9.TypedCellsFacesAndDimension`](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/TypedCellsFacesAndDimension.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [vertexFintype](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean/declarations/vertexfintype--d237462555e60529c0c463fa.md) | 36 | `declaration-track:d237462555e60529c0c463faa8c102fa62ef9746e8795a8f78f53f628ab6849c` |
| 2 | `instance` | [horizontalEdgeFintype](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean/declarations/horizontaledgefintype--cfe2b0730f7bdea61d453e19.md) | 43 | `declaration-track:cfe2b0730f7bdea61d453e19098f5ac1e876cb8991313236ffae987d11ebec41` |
| 3 | `instance` | [verticalEdgeFintype](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean/declarations/verticaledgefintype--40e64cc304b985da64b56b34.md) | 51 | `declaration-track:40e64cc304b985da64b56b34b81eb05b99f29b36df821083748c42b16a617cb8` |
| 4 | `instance` | [cellFintype](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean/declarations/cellfintype--4734da6c1d8ad0f3ab5d8452.md) | 59 | `declaration-track:4734da6c1d8ad0f3ab5d8452f0c56b41ecbccf621a3296b6fc5dfccb8dddcbe8` |
| 5 | `structure` | [Complex](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean/declarations/complex--c6ddf672146f4fc9d321bf82.md) | 80 | `declaration-track:c6ddf672146f4fc9d321bf824d9f5cfc37b370fc5fb47ebef448525bc9fb5fc0` |
| 6 | `def` | [rectangularComplex](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean/declarations/rectangularcomplex--1ca73a1a020f02e3b366d741.md) | 85 | `declaration-track:1ca73a1a020f02e3b366d74166cf6c81fee437d04a19d1bd3c7a8e85ef10b0d8` |
| 7 | `theorem` | [mem_rectangularComplex](../../../../../../../mathematics/Topology/CombinatorialTopology/CellComplexes/FiniteRectangularCubicalData/Variant6fe42f1c965968d9/WholeFiniteInventoryAndCanonicalComplex.lean/declarations/mem-rectangularcomplex--2d2f73df79e42ab05f4d0007.md) | 90 | `result-track:2d2f73df79e42ab05f4d000798d8c05aac9eb7f95d86bcfec7de05fab8db5414` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
