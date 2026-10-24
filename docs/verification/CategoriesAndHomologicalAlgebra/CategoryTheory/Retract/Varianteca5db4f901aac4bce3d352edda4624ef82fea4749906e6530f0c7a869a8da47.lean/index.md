# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a88cd266821ef0b9885600f54eae2efdfb1d9b02",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a88cd266821ef0b9885600f54eae2efdfb1d9b02`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Retract` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/isstableunderretracts--aa39d1adbece03b19589c57c.md) | 36 | `declaration-track:aa39d1adbece03b19589c57c887041da6f57a67d08b6e0132a2309f0d7ad68dc` |
| 2 | `lemma` | [of_retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/of-retract--b12a94d7e9f4e65756b0e5e3.md) | 39 | `result-track:b12a94d7e9f4e65756b0e5e34e61a1dddea843f9cc1ea98a1666724af856d0d3` |
| 3 | `instance` | [IsStableUnderRetracts.monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/isstableunderretracts-monomorphisms--a3c792543a9e7713099b2499.md) | 43 | `declaration-track:a3c792543a9e7713099b24999154e53c80f8b0c346ca48550d475d9ea7674985` |
| 4 | `instance` | [IsStableUnderRetracts.epimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/isstableunderretracts-epimorphisms--5e7521cde63dba01b6644c2e.md) | 48 | `declaration-track:5e7521cde63dba01b6644c2e3676181a38176e1668c481e3220b791885c28802` |
| 5 | `instance` | [IsStableUnderRetracts.isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/isstableunderretracts-isomorphisms--95d35b8d66790d3de4c24b69.md) | 53 | `declaration-track:95d35b8d66790d3de4c24b69e7bb934f2c8fbd3f7af40a10851ce4d864f4249f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/instance--3a0ac8cd388cac6ea74fbc11.md) | 59 | `declaration-track:3a0ac8cd388cac6ea74fbc112634f86e1aa8cecbf5b62841285e8c56b767b4e9` |
| 7 | `def` | [retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/retracts--bfafebae7ee76ee8d70ed8a3.md) | 66 | `declaration-track:bfafebae7ee76ee8d70ed8a3e050a3b3e2733b6b429189bb0c0aacb3e5df125e` |
| 8 | `lemma` | [le_retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/le-retracts--3be3c5bc1f861e9e8bca76f6.md) | 69 | `result-track:3be3c5bc1f861e9e8bca76f66103c9db0169f5889b5a955e406ec633af9eaeb9` |
| 9 | `lemma` | [retracts_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/retracts-monotone--9bcf64e062bd762ceb395cd3.md) | 73 | `result-track:9bcf64e062bd762ceb395cd334e818e04e1e725060152d703ccdb71e55468945` |
| 10 | `lemma` | [isStableUnderRetracts_iff_retracts_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/isstableunderretracts-iff-retracts-le--c19a074aacf983600012d4a5.md) | 77 | `result-track:c19a074aacf983600012d4a5cd7e24f62c01f8324c8d783cd0e0d93391d3317d` |
| 11 | `lemma` | [retracts_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/retracts-le--5566c3b7250086cbbe7a9611.md) | 86 | `result-track:5566c3b7250086cbbe7a961122381841fec15db13c7f20b7e53064acfaa4c2ea` |
| 12 | `lemma` | [retracts_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/retracts-le-iff--4f10d3f1dbca0ffde8b4dcbb.md) | 91 | `result-track:4f10d3f1dbca0ffde8b4dcbb3557cd5f3592016bc2573ebacbd765d9ff569429` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Varianteca5db4f901aac4bce3d352edda4624ef82fea4749906e6530f0c7a869a8da47.lean/declarations/instance--015ba7ecb22921300d746bcb.md) | 98 | `declaration-track:015ba7ecb22921300d746bcbb23f3095fdcf6278d9de1933c7d2c81a7d671333` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
