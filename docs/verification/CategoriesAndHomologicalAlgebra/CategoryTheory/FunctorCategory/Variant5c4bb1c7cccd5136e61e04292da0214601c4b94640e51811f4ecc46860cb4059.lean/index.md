# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecd9cbe2652e614ad9de72ec07c2dc9ac3a6b608",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecd9cbe2652e614ad9de72ec07c2dc9ac3a6b608`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Const` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/tensorobj--31ec701bd060dda5cac18f0c.md) | 50 | `declaration-track:31ec701bd060dda5cac18f0cb5ea85350d2f152d995e16a6cc6efe24e77ab3d8` |
| 2 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/tensorhom--6bcf4121f60ba77da62314c9.md) | 63 | `declaration-track:6bcf4121f60ba77da62314c919176bc899e962e3bd5d2a1b626419edd6e52c84` |
| 3 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/whiskerleft--e485d16d6f2be3caa7911e2d.md) | 70 | `declaration-track:e485d16d6f2be3caa7911e2da4ca24eaf4bdf635137dea44447f37c2a56d6902` |
| 4 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/whiskerright--185699ae78d20079c3a3310b.md) | 78 | `declaration-track:185699ae78d20079c3a3310ba38c85781a18626f0d982d19a45989029eb75f57` |
| 5 | `instance` | [functorCategoryMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/functorcategorymonoidal--a3459e5544ffa12f3d1accfb.md) | 92 | `declaration-track:a3459e5544ffa12f3d1accfbd559ea55e250d29df529fb39d6425a7e69090acc` |
| 6 | `theorem` | [tensorUnit_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/tensorunit-obj--2f36d0c63aae3f758f181c8e.md) | 106 | `result-track:2f36d0c63aae3f758f181c8e3dbcd5794b56a4d0ec25f91803cf39dae1e48a74` |
| 7 | `theorem` | [tensorUnit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/tensorunit-map--6687f5196de54185ea7df76a.md) | 111 | `result-track:6687f5196de54185ea7df76aebcad383b0a1eaa226128c6e215650c50d554c4f` |
| 8 | `theorem` | [tensorObj_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/tensorobj-obj--1e221b42cc7f3dfd8ac23198.md) | 116 | `result-track:1e221b42cc7f3dfd8ac2319880cdfdd08f805fd3f363e040b17bd2c77809aa43` |
| 9 | `theorem` | [tensorObj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/tensorobj-map--19fdff1a330e2dc54a9cbe41.md) | 121 | `result-track:19fdff1a330e2dc54a9cbe4109cf36620cd9b1c027d1224ef767ac4ec84f795e` |
| 10 | `theorem` | [tensorHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/tensorhom-app--1a5528f7043e38ad057cbc4b.md) | 126 | `result-track:1a5528f7043e38ad057cbc4b3b5505b882e6105d8ea5fab13d2ca7a8e97544ac` |
| 11 | `theorem` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/leftunitor-hom-app--e2249daf04012f75619fa0cd.md) | 132 | `result-track:e2249daf04012f75619fa0cda4f95592bcbd5a05459151c968ecabfa8e5cf686` |
| 12 | `theorem` | [leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/leftunitor-inv-app--d1e6db251d975ecfc1cee9d7.md) | 138 | `result-track:d1e6db251d975ecfc1cee9d74f952a6da3fae6f20ccae0f129bf925425e5f31b` |
| 13 | `theorem` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/rightunitor-hom-app--89c1137f0250dc24b7c52eaf.md) | 144 | `result-track:89c1137f0250dc24b7c52eaf6038f6d92bed2970e19818757891783e196d134f` |
| 14 | `theorem` | [rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/rightunitor-inv-app--331b081c69d1f1e0a5a0ffea.md) | 150 | `result-track:331b081c69d1f1e0a5a0ffea72fe4806faebe332934b69699fa48a9ec0255b72` |
| 15 | `theorem` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/associator-hom-app--e9efa64577cc0fb7c3a8df7d.md) | 156 | `result-track:e9efa64577cc0fb7c3a8df7d29f21c878fa37393700c60cdefa39a8693bba71a` |
| 16 | `theorem` | [associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/associator-inv-app--a0a88ed360b86c4061d3a655.md) | 162 | `result-track:a0a88ed360b86c4061d3a655d4fc0d97654fd026e5a26c906cbd3f815bf8926f` |
| 17 | `instance` | [functorCategoryBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/functorcategorybraided--6c5f50a829259d2fc68f2091.md) | 177 | `declaration-track:6c5f50a829259d2fc68f20910a546d8bd90b5bc7b506a7fc9a7fb747ef29d8e5` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/example--fcf72740459d043e73ec7e32.md) | 183 | `declaration-track:fcf72740459d043e73ec7e32f75d229b1a812eef100f8e0765e3eeb77eb5d6ae` |
| 19 | `instance` | [functorCategorySymmetric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/declarations/functorcategorysymmetric--cd009465fbfe76e2ef6215bc.md) | 198 | `declaration-track:cd009465fbfe76e2ef6215bc622e6c0a1c5d30c19b9542545a563e5ed39751c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
