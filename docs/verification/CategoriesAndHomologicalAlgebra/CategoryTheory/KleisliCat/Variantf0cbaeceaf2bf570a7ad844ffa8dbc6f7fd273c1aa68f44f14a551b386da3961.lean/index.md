# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KleisliCat.Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd739a8dee97e2642b384e0107483520330bdce2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd739a8dee97e2642b384e0107483520330bdce2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KleisliCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/declarations/kleislicat--6d8d54ea64828b72ab1f857f.md) | 31 | `declaration-track:6d8d54ea64828b72ab1f857f54c5fb835a4f25c50c4b967ea33c741eb510faa6` |
| 2 | `def` | [KleisliCat.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/declarations/kleislicat-mk--0011c76b6c093c27652cafc8.md) | 35 | `declaration-track:0011c76b6c093c27652cafc84fed4d66b6f3ab6514160882bd55cda92804abe1` |
| 3 | `instance` | [KleisliCat.categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/declarations/kleislicat-categorystruct--6f9450927daadf91a92f0144.md) | 38 | `declaration-track:6f9450927daadf91a92f014421be2efe84d2a2c92077ca02e2ca994adbbae39f` |
| 4 | `instance` | [KleisliCat.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/declarations/kleislicat-category--fed8a6ce1c0738ab04fce6dc.md) | 44 | `declaration-track:fed8a6ce1c0738ab04fce6dc2082451ee552df7988767efbd103d641b2155814` |
| 5 | `theorem` | [KleisliCat.id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/declarations/kleislicat-id-def--4cd0491fbf89bb58921a380a.md) | 53 | `result-track:4cd0491fbf89bb58921a380a4698e05bf05be2f32b1f22fc52ca719c37f13dbb` |
| 6 | `theorem` | [KleisliCat.comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/declarations/kleislicat-comp-def--e57f0a31cd8bda8af836f8c8.md) | 56 | `result-track:e57f0a31cd8bda8af836f8c8ac9121a3e6716a5bd0d5bf08518a1614ca25a98b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/declarations/instance--ccbe9a6a098efe8788f74280.md) | 60 | `declaration-track:ccbe9a6a098efe8788f74280f609213afb36704f35931a5918b6597ae085b29f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/declarations/instance--ccdbce52c72f45d8f5c55ef2.md) | 63 | `declaration-track:ccdbce52c72f45d8f5c55ef249184d60ccb0f64d3ba21b8f02e118a7a2159ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
