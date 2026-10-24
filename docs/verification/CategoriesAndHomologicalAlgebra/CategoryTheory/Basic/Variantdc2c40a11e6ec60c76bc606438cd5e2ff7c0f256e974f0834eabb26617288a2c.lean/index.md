# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87b6846b27a5f48deac290c7accfd29d6afa45a0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87b6846b27a5f48deac290c7accfd29d6afa45a0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum--1ee716880c5ddc30ba544115.md) | 40 | `declaration-track:1ee716880c5ddc30ba5441158120c01ab2498b57d7c35d314cd2a0c856ec6220` |
| 2 | `theorem` | [sum_comp_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum-comp-inl--ed64c3cb1848667106b06940.md) | 63 | `result-track:ed64c3cb1848667106b06940876b73eeee427a951067826f9ec6fc35e655609a` |
| 3 | `theorem` | [sum_comp_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum-comp-inr--3f53376390d8f3607cc2ec46.md) | 71 | `result-track:3f53376390d8f3607cc2ec46870b74f38666725ffb3c2e61598a0fea7c31274c` |
| 4 | `def` | [inl_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/inl--0bb5eca6d6bdb7cbd34d09a5.md) | 86 | `declaration-track:0bb5eca6d6bdb7cbd34d09a5fbdc0cbcc7d581be37760db7838000c0f5018d56` |
| 5 | `def` | [inr_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/inr--f503e97beaacf4bcfc9fb8c3.md) | 93 | `declaration-track:f503e97beaacf4bcfc9fb8c39d3f703fd92b66a1e7aab41c57872258ee2a5ff1` |
| 6 | `def` | [swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/swap--42145457497db560d5b5d2f7.md) | 102 | `declaration-track:42145457497db560d5b5d2f713284f9b16cd5fa82f58c7f5d0f7c85d8509bc1d` |
| 7 | `theorem` | [swap_obj_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/swap-obj-inl--0a21cc6e0b2c157fdc9cc789.md) | 118 | `result-track:0a21cc6e0b2c157fdc9cc7898df7fae591035c92d37a5fcd73bd96741f77b083` |
| 8 | `theorem` | [swap_obj_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/swap-obj-inr--c8aaed9093cf79f2f76e8078.md) | 123 | `result-track:c8aaed9093cf79f2f76e80788d7624d42018879aacc91fc2e71cf797f0a1e5ff` |
| 9 | `theorem` | [swap_map_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/swap-map-inl--d63a1d82fae677f6e7ca63b3.md) | 128 | `result-track:d63a1d82fae677f6e7ca63b306f931573b57730a3a8bdba4187fb6dd5dd847cf` |
| 10 | `theorem` | [swap_map_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/swap-map-inr--e2b3259d95f043b4a8fca3f9.md) | 133 | `result-track:e2b3259d95f043b4a8fca3f98c1840f58f9bd8770302a15534646a6bfbd59c74` |
| 11 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/equivalence--e0e4cbe79fc4ed74416d0adb.md) | 142 | `declaration-track:e0e4cbe79fc4ed74416d0adbaaf6d68ea2abcadfbb2a915a03cb2c1d0904610d` |
| 12 | `instance` | [isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/isequivalence--d1b3cf2ad342721832d742fe.md) | 150 | `declaration-track:d1b3cf2ad342721832d742fe13bf960ff47bb7a43b1ebc0126088ba97943c70f` |
| 13 | `def` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/symmetry--00b950bca1d81e0224a7ca7f.md) | 155 | `declaration-track:00b950bca1d81e0224a7ca7f3967ed3d251758e061d033e5f189023b9fcb54e7` |
| 14 | `def` | [sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum--c940208a97d716dfc94a192c.md) | 169 | `declaration-track:c940208a97d716dfc94a192cf5030d16544439f232d4764ab32c0b2e0ca31615` |
| 15 | `theorem` | [sum_obj_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum-obj-inl--bc2c4d85fd92cd616c072a4f.md) | 193 | `result-track:bc2c4d85fd92cd616c072a4f68a98c31f47f78a23e7372bd6f3de08747ef4b9c` |
| 16 | `theorem` | [sum_obj_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum-obj-inr--a1d73686fcd9997f8845c943.md) | 198 | `result-track:a1d73686fcd9997f8845c9439aa01a97d88b78b36339437c1c16d1620d0ca2d0` |
| 17 | `theorem` | [sum_map_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum-map-inl--85d087d9277ba6ff9b2f6480.md) | 203 | `result-track:85d087d9277ba6ff9b2f648031a6b1d753a5edcb16cc076ff2e7ca6f86ccbc34` |
| 18 | `theorem` | [sum_map_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum-map-inr--855166f7bd502150cba3bdd5.md) | 209 | `result-track:855166f7bd502150cba3bdd591fabb8ae01225ddde1ea6d753478d1ad0c2cf33` |
| 19 | `def` | [sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum--04317bfff47d1c8ae8b36eb5.md) | 219 | `declaration-track:04317bfff47d1c8ae8b36eb5d2f99024799f8aa68e511e2a09f68ed2fbbfeb46` |
| 20 | `theorem` | [sum_app_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum-app-inl--2e1523061629ab5397a0f295.md) | 232 | `result-track:2e1523061629ab5397a0f295b2779e2aea6b09b3fac8b718022d21379892f062` |
| 21 | `theorem` | [sum_app_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdc2c40a11e6ec60c76bc606438cd5e2ff7c0f256e974f0834eabb26617288a2c.lean/declarations/sum-app-inr--ec43ab16e274b1adddec4c39.md) | 238 | `result-track:ec43ab16e274b1adddec4c391ab502508646291e0bfbd372bae19a5ae0987463` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
