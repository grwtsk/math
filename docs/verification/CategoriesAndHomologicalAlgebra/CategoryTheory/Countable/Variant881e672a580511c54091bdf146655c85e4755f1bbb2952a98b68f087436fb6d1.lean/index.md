# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4622ba35201171a4481ce3daa282338362aa70a8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4622ba35201171a4481ce3daa282338362aa70a8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EssentiallySmall` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Small` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [discreteCountable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/discretecountable--ea987c9b22a8c4df58db56b0.md) | 31 | `declaration-track:ea987c9b22a8c4df58db56b0505981e31b8942476b0a65e2325bfbe17efb42af` |
| 2 | `class` | [CountableCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/countablecategory--d52a10e9bfcc3e99ba8707fd.md) | 35 | `declaration-track:d52a10e9bfcc3e99ba8707fdb00a107e1f8feae1e9d78ca414ec324e3f5a777a` |
| 3 | `instance` | [countablerCategoryDiscreteOfCountable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/countablercategorydiscreteofcountable--346be38dae70b5682922ac1e.md) | 41 | `declaration-track:346be38dae70b5682922ac1e2ff7e8068d72dcefb1f3030b7b51d0e82b19aa30` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--0990c7679c5f445eaac07bb3.md) | 44 | `declaration-track:0990c7679c5f445eaac07bb3f8db7966d5c0461c981235cf9954b98b60e07b79` |
| 5 | `abbrev` | [ObjAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/objastype--b1c1273938c9d242ef0ccbf3.md) | 51 | `declaration-track:b1c1273938c9d242ef0ccbf33fbec51d32121169f98a28c9b74a610df7f59139` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--e3898899dd6f2f111b5f74dc.md) | 54 | `declaration-track:e3898899dd6f2f111b5f74dc7b40559b4e97688a8816e9bc185eefa04f5d7d5b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--ef48dcef2b2ab0227f1bfbf6.md) | 56 | `declaration-track:ef48dcef2b2ab0227f1bfbf6bc8518dfd4ea4b5150ccfb411459384ad54b4b0a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--ed9b46d8aeebd2e51662aa7d.md) | 59 | `declaration-track:ed9b46d8aeebd2e51662aa7d2a147ba0044424a58572db83a8e40b07d9c1872b` |
| 9 | `def` | [objAsTypeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/objastypeequiv--40ccbe38897cbbdc778403e8.md) | 62 | `declaration-track:40ccbe38897cbbdc778403e87aec725e403457dc4e0fd8c9b9a055ead7d8c880` |
| 10 | `def` | [HomAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/homastype--b64714e31768a732b9c488cd.md) | 66 | `declaration-track:b64714e31768a732b9c488cd50476659009fa7407eec8fe0eef71d5a18707fe8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--62a0c3972875e69c473e84e1.md) | 68 | `declaration-track:62a0c3972875e69c473e84e15e5bb0e75098667040846952831b5326d6e20fcf` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--efc6999c9af64ecb69364175.md) | 71 | `declaration-track:efc6999c9af64ecb69364175e9032a3b0e60c81f812155b4973faeb3b972c560` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--a6b7c241fd35ea4157b81642.md) | 73 | `declaration-track:a6b7c241fd35ea4157b81642fc11ab607f9cd4fe2875ee74ee27a0bf7467fd60` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--59f7d1478b813c1ff08a92d5.md) | 75 | `declaration-track:59f7d1478b813c1ff08a92d5342f78d7adbb94317d5308ac6fde9a188435fac0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--c3dbf1e26f9d9d8a8848e029.md) | 80 | `declaration-track:c3dbf1e26f9d9d8a8848e029b8a54177bf77f9cd24fe9ab0d46cbf443780ae69` |
| 16 | `def` | [homAsTypeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/homastypeequiv--db30fe80a17f7373d767be17.md) | 83 | `declaration-track:db30fe80a17f7373d767be17e1890fea700ac86b48aaf77689d79454fd89decf` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--314c27be91e2be341c203d47.md) | 88 | `declaration-track:314c27be91e2be341c203d47bed087f54fc3b9b07665eb508eb87720dd679e3a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/instance--9a7b5a65e46455b30c10201a.md) | 90 | `declaration-track:9a7b5a65e46455b30c10201aa6d6be340ff262473501b5b5914dfbd951916691` |
| 19 | `instance` | [countableCategoryOpposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/countablecategoryopposite--921531d3c71bee09ef326fde.md) | 95 | `declaration-track:921531d3c71bee09ef326fde2ca27cc17f108c3b3dce2aef7b35b8648428ea9a` |
| 20 | `instance` | [countableCategoryUlift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variant881e672a580511c54091bdf146655c85e4755f1bbb2952a98b68f087436fb6d1.lean/declarations/countablecategoryulift--f624789268232c0e5e51f773.md) | 101 | `declaration-track:f624789268232c0e5e51f7733430718b5b0992cbb9b9763b9801a71d5afa097f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
