# Verification target: GRWTSK.Topology.GeneralTopology.Fin.Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3b1991bb1a9e5470aff39069116ad9d22ebee7d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3b1991bb1a9e5470aff39069116ad9d22ebee7d`.

Source path: `GRWTSK/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_valEmbedding_univ](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/declarations/map-valembedding-univ--ce6634ec05fbc34caa1f825e.md) | 26 | `result-track:ce6634ec05fbc34caa1f825e676e85e624a8a5de892335be8ffbd49aedad546e` |
| 2 | `theorem` | [Ioi_zero_eq_map](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/declarations/ioi-zero-eq-map--1af06fef1db237b74069813a.md) | 31 | `result-track:1af06fef1db237b74069813af865ee7c98829d23ad836f8db25d798559285e4b` |
| 3 | `theorem` | [Iio_last_eq_map](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/declarations/iio-last-eq-map--2d94306815f033f68ff89f8d.md) | 35 | `result-track:2d94306815f033f68ff89f8d59b2ff63dcb0244828ad68f19db7b2dabea55c66` |
| 4 | `theorem` | [Ioi_succ](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/declarations/ioi-succ--0dc338612b0384301ab71d5d.md) | 38 | `result-track:0dc338612b0384301ab71d5dda62948b701898cc81b14737cce9816f7b7f2cac` |
| 5 | `theorem` | [Iio_castSucc](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/declarations/iio-castsucc--9d7c4904a029bfe2a0a3c26a.md) | 40 | `result-track:9d7c4904a029bfe2a0a3c26a0ae15ac04cd6f1487a16fc532ab8fbff8afcb880` |
| 6 | `theorem` | [card_filter_univ_succ](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/declarations/card-filter-univ-succ--754b699501dad127935fa677.md) | 42 | `result-track:754b699501dad127935fa677c8c7c9da96c4d15a491f12284b93114c52c075dc` |
| 7 | `theorem` | [card_filter_univ_succ'](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/declarations/card-filter-univ-succ--b96bf26047560e682b61f185.md) | 46 | `result-track:b96bf26047560e682b61f1858e0dcbac2840b8b667003f3fa3c0df566542088f` |
| 8 | `theorem` | [card_filter_univ_eq_vector_get_eq_count](../../../../../mathematics/Topology/GeneralTopology/Fin/Variantff230cb6a02803f396877a9d90d0620d96da540da4187f90302513f96d0f7042.lean/declarations/card-filter-univ-eq-vector-get-eq-count--2ad9a9e298f714f8ce826666.md) | 50 | `result-track:2ad9a9e298f714f8ce826666c0b2d5d575a2d302a87197101ab209b9de949244` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
