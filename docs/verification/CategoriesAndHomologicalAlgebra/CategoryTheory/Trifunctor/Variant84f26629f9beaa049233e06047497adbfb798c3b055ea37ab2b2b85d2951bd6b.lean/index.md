# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Trifunctor.Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64a75a791e7caa84da277e0939e025e82c1eaf00",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64a75a791e7caa84da277e0939e025e82c1eaf00`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Bifunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.CurryingThree` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Associator` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvertedBy₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/isinvertedby--af27ecb13648127cf3e135d0.md) | 42 | `declaration-track:af27ecb13648127cf3e135d0a2a6c34cf4fc50c536f48d02ea65d88d66f5d279` |
| 2 | `class` | [Lifting₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/lifting--db88a08508fe2cb4ad6d83d9.md) | 58 | `declaration-track:db88a08508fe2cb4ad6d83d98431d0ea17d1790a4080c41b8cfca657b3a109d8` |
| 3 | `def` | [Lifting₃.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/lifting-iso--ed3760cfeb490373ce3e597f.md) | 70 | `declaration-track:ed3760cfeb490373ce3e597f04163e0493dcdc88fba8267ea69f1e6f89d461e0` |
| 4 | `instance` | [Lifting₃.uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/lifting-uncurry--16142654eff85ddd1f827b4c.md) | 76 | `declaration-track:16142654eff85ddd1f827b4c776e8eef7ce3c72ad17dec8a3512036e48a877e9` |
| 5 | `def` | [lift₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/lift--be6779aee28a0d01bea2a53b.md) | 97 | `declaration-track:be6779aee28a0d01bea2a53b7d1b33a993f7558ac4445816869f8cdcab8a89f3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/instance--a44de4b70bb39142c2f61a58.md) | 100 | `declaration-track:a44de4b70bb39142c2f61a58912cbc08a85164d95d103ba926eeb75d6c6bf9f6` |
| 7 | `def` | [lift₃NatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/lift-nattrans--26f92b0f573311ea9491bf10.md) | 121 | `declaration-track:26f92b0f573311ea9491bf10d691f01824fbe20b281885dddd3196356acd37ec` |
| 8 | `theorem` | [lift₃NatTrans_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/lift-nattrans-app-app-app--db9ff2a445428f9c4e39ed7a.md) | 127 | `result-track:db9ff2a445428f9c4e39ed7a12b0906b963bc62f82c922921052459887408c49` |
| 9 | `theorem` | [natTrans₃_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/nattrans-ext--07d8482e0352c9fdaa3a4034.md) | 141 | `result-track:07d8482e0352c9fdaa3a40341c59e754c7a2c073f4d33b7de8ba401ed152d731` |
| 10 | `def` | [lift₃NatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/lift-natiso--c60b0d80f3cfc022029ebb09.md) | 151 | `declaration-track:c60b0d80f3cfc022029ebb092912ed0ee5707db442fac9b84911080a23d3ed80` |
| 11 | `def` | [Lifting₃.bifunctorComp₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/lifting-bifunctorcomp--0246d99e0654791d7c70dace.md) | 179 | `declaration-track:0246d99e0654791d7c70dace265a2b5531e16afcceef697c69e73b837069109a` |
| 12 | `def` | [Lifting₃.bifunctorComp₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/lifting-bifunctorcomp--c186d047d3341f3e7ba08a8a.md) | 193 | `declaration-track:c186d047d3341f3e7ba08a8aeeb2ea9bae2ba08551b722975f3e8a4eff15a1b3` |
| 13 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/associator--2d2a42675387969b601db36f.md) | 206 | `declaration-track:2d2a42675387969b601db36f2a30ba0386a20fb3b001e05f44493d347ca5f283` |
| 14 | `lemma` | [associator_hom_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/declarations/associator-hom-app-app-app--1713b3f3ed8ebeaf9028dfce.md) | 211 | `result-track:1713b3f3ed8ebeaf9028dfcede75b6702feeae51520213a9c48d3d28d268d800` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
