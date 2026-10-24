# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullSubcategory.Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cc6f1f442844c7415f743cedad6dfdf4789de2b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cc6f1f442844c7415f743cedad6dfdf4789de2b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ClosedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/closedunderlimitsofshape--586e14a752bc2bccfbedadca.md) | 29 | `declaration-track:586e14a752bc2bccfbedadca51e07910f1c585313c93b0db5f8df0dc7f329597` |
| 2 | `def` | [ClosedUnderColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/closedundercolimitsofshape--bd49790cb2f092c397152436.md) | 35 | `declaration-track:bd49790cb2f092c3971524367cbdcdab73a9fd69bbdfd25098f8c1cb4efcfe85` |
| 3 | `theorem` | [closedUnderLimitsOfShape_of_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/closedunderlimitsofshape-of-limit--cd20771bedeafde7ae57487a.md) | 43 | `result-track:cd20771bedeafde7ae57487a4bd03e9e5e6642377ce1d04b974954464b05d903` |
| 4 | `theorem` | [closedUnderColimitsOfShape_of_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/closedundercolimitsofshape-of-colimit--dee38beb39b1f096f359afa0.md) | 50 | `result-track:dee38beb39b1f096f359afa058301742917eb52bd423b99dcd68d1d2885f29e5` |
| 5 | `lemma` | [ClosedUnderLimitsOfShape.limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/closedunderlimitsofshape-limit--00b067830e125d83dd9eec9e.md) | 57 | `result-track:00b067830e125d83dd9eec9e00e747bfeb87cc89d09193589dd21f7f98751e2b` |
| 6 | `lemma` | [ClosedUnderColimitsOfShape.colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/closedundercolimitsofshape-colimit--1340fc0e9fa8f11f321fc932.md) | 61 | `result-track:1340fc0e9fa8f11f321fc932ed17fb74cf7a564b88cc633341f4b71d07522b2a` |
| 7 | `def` | [createsLimitFullSubcategoryInclusion'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/createslimitfullsubcategoryinclusion--6b268636152b753210e27b3b.md) | 73 | `declaration-track:6b268636152b753210e27b3b13b595d35566856b50920a3afae2f0312cfa0a9e` |
| 8 | `def` | [createsLimitFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/createslimitfullsubcategoryinclusion--dac01e2189425babd5bd2066.md) | 80 | `declaration-track:dac01e2189425babd5bd2066d6400ab6467658f6a76afe3f18edf306f776ddfb` |
| 9 | `def` | [createsColimitFullSubcategoryInclusion'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/createscolimitfullsubcategoryinclusion--bda6f50d48f65c9192852ffd.md) | 87 | `declaration-track:bda6f50d48f65c9192852ffd8748ef5ebd77c4db6584467bb44a205d985746ce` |
| 10 | `def` | [createsColimitFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/createscolimitfullsubcategoryinclusion--4a2a332a2e9dd0857136d571.md) | 94 | `declaration-track:4a2a332a2e9dd0857136d5716f22d1418ba99235241902016b78ef31cb0ed809` |
| 11 | `def` | [createsLimitFullSubcategoryInclusionOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/createslimitfullsubcategoryinclusionofclosed--b4f7b9cb220ca107511a3d12.md) | 101 | `declaration-track:b4f7b9cb220ca107511a3d125fde21178da5e398cb14f371417df6bc16040f44` |
| 12 | `def` | [createsLimitsOfShapeFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/createslimitsofshapefullsubcategoryinclusion--bbfb7d4a503bba21ec598390.md) | 107 | `declaration-track:bbfb7d4a503bba21ec59839053de9178c7f431602feb72b77a961ab64ab85977` |
| 13 | `theorem` | [hasLimit_of_closedUnderLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/haslimit-of-closedunderlimits--4f05d0f85cc9913c2e97d8a4.md) | 111 | `result-track:4f05d0f85cc9913c2e97d8a48f74dd25e2693f6129ef19e2fe56be52208a5998` |
| 14 | `theorem` | [hasLimitsOfShape_of_closedUnderLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/haslimitsofshape-of-closedunderlimits--85f40a1f10cd438a3259d8f7.md) | 117 | `result-track:85f40a1f10cd438a3259d8f7e1019f43943189cee4be5b858a324f50daf0790d` |
| 15 | `def` | [createsColimitFullSubcategoryInclusionOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/createscolimitfullsubcategoryinclusionofclosed--9603e27977905802b4934ea1.md) | 122 | `declaration-track:9603e27977905802b4934ea12b30f327e9018fe7afb0ff73463da3ca8aefd34d` |
| 16 | `def` | [createsColimitsOfShapeFullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/createscolimitsofshapefullsubcategoryinclusion--bae31b25aafd9dcfa3d5348f.md) | 128 | `declaration-track:bae31b25aafd9dcfa3d5348faa626d0320e08fd83972fc8e59e26d1dda242f48` |
| 17 | `theorem` | [hasColimit_of_closedUnderColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/hascolimit-of-closedundercolimits--5ff60a8aa5ce5805d6c87937.md) | 132 | `result-track:5ff60a8aa5ce5805d6c8793764efa465bcfe5bc877faff23442d9be145fa8c75` |
| 18 | `theorem` | [hasColimitsOfShape_of_closedUnderColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/hascolimitsofshape-of-closedundercolimits--bade05a2e9f4b702432419d3.md) | 138 | `result-track:bade05a2e9f4b702432419d38d86d2bf5e2e3ed1675b9342dcf37e950017e5fd` |
| 19 | `lemma` | [ClosedUnderLimitsOfShape.essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/closedunderlimitsofshape-essimage--bd585121bdb2b4e8a1bf210b.md) | 150 | `result-track:bd585121bdb2b4e8a1bf210bbb3d0300e2af86990b8a23cb922ef4e4b5244ec5` |
| 20 | `lemma` | [ClosedUnderColimitsOfShape.essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/declarations/closedundercolimitsofshape-essimage--28f25e4d99441da6bed9a3e7.md) | 158 | `result-track:28f25e4d99441da6bed9a3e700f800dfe2d898119f04363a913f2e668aceca6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
