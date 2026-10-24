# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bd6ecc8369bce046a1e9e56687f05376b540dc2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bd6ecc8369bce046a1e9e56687f05376b540dc2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [typesCartesianMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/typescartesianmonoidalcategory--c9f97e83a1554fe5dca3e7eb.md) | 31 | `declaration-track:c9f97e83a1554fe5dca3e7eb21942c72ba196da7c113ad6dfb7b0dc77d093069` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/instance--40cffdbb8fc21d6e76fa6584.md) | 34 | `declaration-track:40cffdbb8fc21d6e76fa65845716aad37a3ceaadc51ff224b3dd532b93a26826` |
| 3 | `theorem` | [tensor_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/tensor-apply--cd134976172bbbe3458f1dbe.md) | 37 | `result-track:cd134976172bbbe3458f1dbe39d1981fc8779e0cb8da0b32e23343c26647a21c` |
| 4 | `theorem` | [whiskerLeft_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/whiskerleft-apply--075beab1cd22f58a40608a0b.md) | 42 | `result-track:075beab1cd22f58a40608a0ba6d1d81582139ddf7af33332329a3f7993c82ac2` |
| 5 | `theorem` | [whiskerRight_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/whiskerright-apply--f9fe23c28edf0162364d1eeb.md) | 47 | `result-track:f9fe23c28edf0162364d1eebf8e9d8baff2b0a94e4b69de68fa3d099bedd4bde` |
| 6 | `theorem` | [leftUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/leftunitor-hom-apply--3e28ef64c7f64cb6957c0384.md) | 52 | `result-track:3e28ef64c7f64cb6957c03846fde316eb34a858176e6a6df226fd28f3d7d8cd8` |
| 7 | `theorem` | [leftUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/leftunitor-inv-apply--cc84cb8cbe03f115d7737f3c.md) | 57 | `result-track:cc84cb8cbe03f115d7737f3cd14e299d1375dcde908bf7a06fa61c7a3feb7352` |
| 8 | `theorem` | [rightUnitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/rightunitor-hom-apply--1b6510fee15ab62edab1ab14.md) | 62 | `result-track:1b6510fee15ab62edab1ab143ec012039d7395b20fc8e3da139be96c06f375c8` |
| 9 | `theorem` | [rightUnitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/rightunitor-inv-apply--2c5b3371415c85f6fc176b40.md) | 67 | `result-track:2c5b3371415c85f6fc176b40827cecfac521f3b922b69a5cf34f8dc4d3ea2c1e` |
| 10 | `theorem` | [associator_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/associator-hom-apply--33460e7ac9b04b6cd53bdd15.md) | 72 | `result-track:33460e7ac9b04b6cd53bdd15f43b74aa8882698668ddc1b10ecb3c90cccd8c7b` |
| 11 | `theorem` | [associator_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/associator-inv-apply--09419d57260227fd1e39ae18.md) | 77 | `result-track:09419d57260227fd1e39ae18113762f6707e0346a09ecc7f9657920bb4f92c70` |
| 12 | `theorem` | [associator_hom_apply_1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/associator-hom-apply-1--609c6b3459a2988ba2f12974.md) | 81 | `result-track:609c6b3459a2988ba2f1297421a513df5e0a69fb467142b057e185830bdeefa6` |
| 13 | `theorem` | [associator_hom_apply_2_1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/associator-hom-apply-2-1--1449c8c343955483bd048090.md) | 85 | `result-track:1449c8c343955483bd04809060997ce42601a1bb19e7cce9ed3c91ad66aeaef4` |
| 14 | `theorem` | [associator_hom_apply_2_2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/associator-hom-apply-2-2--e219ee831e14176e91f2574d.md) | 89 | `result-track:e219ee831e14176e91f2574d2a73f283d469f01eed250ff0b3a10c74a2118b86` |
| 15 | `theorem` | [associator_inv_apply_1_1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/associator-inv-apply-1-1--5847dcba9815be995f970b94.md) | 93 | `result-track:5847dcba9815be995f970b944b8e6b90130a41b644d510827ceccaefa9514eb1` |
| 16 | `theorem` | [associator_inv_apply_1_2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/associator-inv-apply-1-2--88c4eb8e94355aa64ccf9baa.md) | 97 | `result-track:88c4eb8e94355aa64ccf9baa81bfe350fef6ce8da5a8dd3a9e8c0724a0a42676` |
| 17 | `theorem` | [associator_inv_apply_2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/associator-inv-apply-2--4e80f260c6ca5502eba83f82.md) | 101 | `result-track:4e80f260c6ca5502eba83f82cdd2d54e032fea1183eacad114387bf480d86129` |
| 18 | `theorem` | [braiding_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/braiding-hom-apply--a1d101a22dece392516838a2.md) | 106 | `result-track:a1d101a22dece392516838a24d205de39ebdcf6708ed6386f27aa5e3da1bcece` |
| 19 | `theorem` | [braiding_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/braiding-inv-apply--a4e425f67d6551d77e1fa546.md) | 111 | `result-track:a4e425f67d6551d77e1fa546115d8ec9f4cd1634cddc18431805024b92f52abf` |
| 20 | `theorem` | [CartesianMonoidalCategory.lift_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/cartesianmonoidalcategory-lift-apply--18f48ea479714a8003d8d340.md) | 116 | `result-track:18f48ea479714a8003d8d34086bc92ec40c9f0fe230edfce9cd97c8d388244d9` |
| 21 | `def` | [MonoidalFunctor.mapPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfdfb22c86f0356d2bb8307058679dc2c8b95ab9554d2d0798289747f81a0a0b2.lean/declarations/monoidalfunctor-mappi--c5c865297b4d60e387a3ab0e.md) | 124 | `declaration-track:c5c865297b4d60e387a3ab0e767a8060607f7232f5cbb010c7dd8517398e59c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
