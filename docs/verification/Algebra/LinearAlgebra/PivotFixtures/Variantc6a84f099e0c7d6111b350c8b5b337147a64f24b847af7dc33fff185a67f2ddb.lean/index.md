# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotFixtures.Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01c4240b3e3c0456b66589c8f1d699dc3a5b4646",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01c4240b3e3c0456b66589c8f1d699dc3a5b4646`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.Plucker24` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pivotSubmatrix_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/pivotsubmatrix-eq-one--30efb4efc581e48f0d3294d2.md) | 30 | `result-track:30efb4efc581e48f0d3294d295f0c2842f9593f627ef325ff27295fc1ed68c34` |
| 2 | `theorem` | [matrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/matrix-injective--5ae311bf80aa8bd7ed5be68c.md) | 36 | `result-track:5ae311bf80aa8bd7ed5be68c07f3e0a2633ad424c2d7c68615b31811f2809bb1` |
| 3 | `theorem` | [matrix_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/matrix-rank--489f682313471ff4d94eacc9.md) | 42 | `result-track:489f682313471ff4d94eacc90911c4fc36ce083d7158360298fdd8d84c586905` |
| 4 | `theorem` | [rowSpace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/rowspace-injective--ffb4be51729bb9aff7ec2a72.md) | 48 | `result-track:ffb4be51729bb9aff7ec2a72062b29d94821b7c72a022cd6d6ea81880178ac67` |
| 5 | `def` | [toSubspace](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/tosubspace--6c885f75b52833bd02d5ad75.md) | 55 | `declaration-track:6c885f75b52833bd02d5ad75aa665d2514b95e47c86fd3ee1ba150406692fb95` |
| 6 | `theorem` | [toSubspace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/tosubspace-injective--78548419b8a92cdcd8124588.md) | 61 | `result-track:78548419b8a92cdcd8124588bccab89b02b042a2528ac7fa4973ab025b3cb5a0` |
| 7 | `def` | [boundaryPivotFamily](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/boundarypivotfamily--4b3a01ed9792bb5a48d22fb9.md) | 68 | `declaration-track:4b3a01ed9792bb5a48d22fb98c98e2a736a127421c8b0adb4c02ac37e5addcf6` |
| 8 | `theorem` | [boundaryPivotFamily_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/boundarypivotfamily-coordinates--b3b6dab4073812f1e3c12273.md) | 72 | `result-track:b3b6dab4073812f1e3c122737945f44bff7b2a415383fbdddf5d848bb97af6e3` |
| 9 | `theorem` | [boundaryPivotFamily_firstPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/boundarypivotfamily-firstpivot--1b380c9969f1bedb217a086a.md) | 78 | `result-track:1b380c9969f1bedb217a086a0d71459f010b8d3f0fd356d3a6aaf3f095dc4474` |
| 10 | `theorem` | [boundaryPivotFamily_secondPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/boundarypivotfamily-secondpivot--ce72b4ce5824f38a1897a509.md) | 84 | `result-track:ce72b4ce5824f38a1897a509417020f9ddb00da411250938c02504730d3c1c5e` |
| 11 | `theorem` | [boundaryPivotFamily_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/boundarypivotfamily-rank--dfd8e8e8120100a29f9d6536.md) | 90 | `result-track:dfd8e8e8120100a29f9d65369e4cf4d0a890ea98470befc714e31656878d4f7c` |
| 12 | `theorem` | [boundaryPivotFamily_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/boundarypivotfamily-nonnegative--6afdc709a75aa7cc07b3e634.md) | 96 | `result-track:6afdc709a75aa7cc07b3e63435c48f715395a6ce69f7ff9e7bcad2af3a75533f` |
| 13 | `theorem` | [boundaryPivotFamily_zero_witness](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/boundarypivotfamily-zero-witness--f4e5f8c9d0d98b187e6fe07d.md) | 103 | `result-track:f4e5f8c9d0d98b187e6fe07d9929111a485c49c146f6064e588d626b123be9c2` |
| 14 | `theorem` | [boundaryPivotFamily_firstChart_entry](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/boundarypivotfamily-firstchart-entry--717c249af03f4e62df6f13f8.md) | 112 | `result-track:717c249af03f4e62df6f13f8e4d4b90c0e44aa27e1d401dd80076965635da8fb` |
| 15 | `theorem` | [boundaryPivotFamily_secondChart](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/declarations/boundarypivotfamily-secondchart--03b9b252241332d103bd2a63.md) | 126 | `result-track:03b9b252241332d103bd2a6338b9a756337d4d705b23963775f488a168934721` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
