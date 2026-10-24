# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comonadicity.Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8104185abcb6483febc89bfb4f5325e4d2920e39",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8104185abcb6483febc89bfb4f5325e4d2920e39`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Equalizer` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [main_pair_coreflexive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/main-pair-coreflexive--f7146d220132e10f04c2bedf.md) | 69 | `declaration-track:f7146d220132e10f04c2bedf74815c942be0f13caf41c7a37176c4b3702087e2` |
| 2 | `instance` | [main_pair_F_cosplit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/main-pair-f-cosplit--564c52610f12c7deda409742.md) | 81 | `declaration-track:564c52610f12c7deda409742ca1fa6d86412a61a74a923b9f3d2a45a5421f0ee` |
| 3 | `def` | [comparisonRightAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comparisonrightadjointobj--4ce21e02ba27946a9f912da1.md) | 87 | `declaration-track:4ce21e02ba27946a9f912da133b79a704b1f22af8b23da1a187c33d471308e14` |
| 4 | `def` | [comparisonRightAdjointHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comparisonrightadjointhomequiv--cf63ee9b93f09e5359bf3035.md) | 96 | `declaration-track:cf63ee9b93f09e5359bf303565f2eda3447b4888d16886bc27cfbaffc6f2dba1` |
| 5 | `def` | [rightAdjointComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/rightadjointcomparison--05a5cd8b2898717c3ee08319.md) | 118 | `declaration-track:05a5cd8b2898717c3ee0831949b8ec553d63f706fa3615c0214fd228997e59e3` |
| 6 | `def` | [comparisonAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comparisonadjunction--9d67b7953b42cf9f2617acfd.md) | 133 | `declaration-track:9d67b7953b42cf9f2617acfd81dceb3c5e9e0e3c89c00801700b6c8acb6585d5` |
| 7 | `theorem` | [comparisonAdjunction_counit_f_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comparisonadjunction-counit-f-aux--6d290467d39ed2fb5b4d3293.md) | 141 | `result-track:6d290467d39ed2fb5b4d32939b2de3a0e1c62b8d2c7962406f316306ec27f326` |
| 8 | `def` | [counitFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/counitfork--0c1ebc5259210cab6d4ec459.md) | 153 | `declaration-track:0c1ebc5259210cab6d4ec45927ef75e445264008bd56cfb65b53b487a0c56ed8` |
| 9 | `theorem` | [unitFork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/unitfork--b4965e18099d180d557ee3b0.md) | 160 | `result-track:b4965e18099d180d557ee3b0a96d0c3a945f9e53cd1d568874d01815939ba52e` |
| 10 | `theorem` | [comparisonAdjunction_counit_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comparisonadjunction-counit-f--b7548be9719f2f301bbe5174.md) | 165 | `result-track:b7548be9719f2f301bbe5174be99a31bd543204514353ebe9393aaad96d9ecb2` |
| 11 | `def` | [unitFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/unitfork--bc0978701fbf712ad2dffd18.md) | 178 | `declaration-track:bc0978701fbf712ad2dffd183780d44399977ae16a54f9539dbc03ad6c87fdfc` |
| 12 | `def` | [counitLimitOfPreservesEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/counitlimitofpreservesequalizer--dfba222ab6ee29afebf9cfd9.md) | 185 | `declaration-track:dfba222ab6ee29afebf9cfd9f865a723aef884f2a00a7c0b9c1bed15dbf78550` |
| 13 | `def` | [unitEqualizerOfCoreflectsEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/unitequalizerofcoreflectsequalizer--60abfabb697c3402bd6bcdcc.md) | 192 | `declaration-track:60abfabb697c3402bd6bcdcc614220a46b12c253d9c0cac60ba76bf357edb321` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--44c3a913312e5d81821687b3.md) | 198 | `declaration-track:44c3a913312e5d81821687b33872898862720aa1522746c7a2217f03ff43363c` |
| 15 | `theorem` | [comparisonAdjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comparisonadjunction-unit-app--ab0abb6ceee7f8233a003462.md) | 207 | `result-track:ab0abb6ceee7f8233a0034622bba6ff9583371f0965ccb14ee3a559611f4aa0a` |
| 16 | `def` | [createsFSplitEqualizersOfComonadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/createsfsplitequalizersofcomonadic--1038c5c9e848ac9485242abe.md) | 229 | `declaration-track:1038c5c9e848ac9485242abe5d73e3a82bc2160a243914935a87cc7f4db7f188` |
| 17 | `class` | [HasEqualizerOfIsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/hasequalizerofiscosplitpair--258d54f530d1f6c3bfe1dad1.md) | 240 | `declaration-track:258d54f530d1f6c3bfe1dad1ffe1888653c6773d0417e6e7d760f69d1a7d4906` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--7989398b1e03adc78c8db262.md) | 244 | `declaration-track:7989398b1e03adc78c8db2620a9555c4c6645bde0f604666b6d2f901061f6e24` |
| 19 | `class` | [PreservesLimitOfIsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/preserveslimitofiscosplitpair--22dd1383aec1f3b2e013a6f4.md) | 250 | `declaration-track:22dd1383aec1f3b2e013a6f43632f2e1c228e4d59805abc49ce9f5d9d775efd8` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--d814d98dd6355ea0ccf60a1f.md) | 254 | `declaration-track:d814d98dd6355ea0ccf60a1ff7d8c7cc56d914b0060ecc801ae2a19a2d36f495` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--84ff8f3ff5146bbd0e7288bc.md) | 257 | `declaration-track:84ff8f3ff5146bbd0e7288bcedb80be2dee53fd2ae96df742c75465da9949985` |
| 22 | `class` | [ReflectsLimitOfIsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/reflectslimitofiscosplitpair--0ff980e303f16273ff3ae6c4.md) | 263 | `declaration-track:0ff980e303f16273ff3ae6c474e19c6803b1f868b25790d694c6bd9d40d98e5b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--da863f0b5c82080ebaa33a97.md) | 267 | `declaration-track:da863f0b5c82080ebaa33a973e110346db7e8391b701154c5e933855eaa3fb3f` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--103641341e07d1f58e1003e9.md) | 270 | `declaration-track:103641341e07d1f58e1003e9557dad1623c653e35caa0d2a55c9cbc53b49cd2f` |
| 25 | `def` | [comonadicOfHasPreservesReflectsFSplitEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comonadicofhaspreservesreflectsfsplitequalizers--cb95e7cba627b0c3401a3ea5.md) | 278 | `declaration-track:cb95e7cba627b0c3401a3ea5bbc3fc001b683eca4c286f8c8a50b6882acef0bf` |
| 26 | `class` | [CreatesLimitOfIsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/createslimitofiscosplitpair--931246f282f06b19c562304e.md) | 308 | `declaration-track:931246f282f06b19c562304e206ca508a8a49a0faeaa958c9602da1cec482928` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--87ae0322ccf9619183c0e0ba.md) | 312 | `declaration-track:87ae0322ccf9619183c0e0ba66572c072337a114277bf12c2eaff87231c246fa` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--9fbced0a7726b65c2c31dfbe.md) | 315 | `declaration-track:9fbced0a7726b65c2c31dfbe34ae846b760898a86bb9fdedd34787a1903ad885` |
| 29 | `def` | [comonadicOfCreatesFSplitEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comonadicofcreatesfsplitequalizers--0399d406d27e3d811dd9ce7f.md) | 325 | `declaration-track:0399d406d27e3d811dd9ce7fb4f193b1231af6fe61f3f942f34d94cfbe0b0f0b` |
| 30 | `def` | [comonadicOfHasPreservesFSplitEqualizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comonadicofhaspreservesfsplitequalizersofreflectsisomorphisms--358c1974969a07254903ff6e.md) | 338 | `declaration-track:358c1974969a07254903ff6eae5d9c6d417e5b7c45b557cb7f5943ffb015dd4c` |
| 31 | `class` | [PreservesLimitOfIsCoreflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/preserveslimitofiscoreflexivepair--b9fd1fc9d958768d6bcaa49c.md) | 353 | `declaration-track:b9fd1fc9d958768d6bcaa49c3ca4830b2466a91269fe98be59efa0d21cd751d2` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--88d7cc6f544b661fb1228627.md) | 357 | `declaration-track:88d7cc6f544b661fb1228627c5dbfa04ac3dc75c30023ecb20c9db978d2c1468` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/instance--c1abfb9f82db25b90165bdc2.md) | 360 | `declaration-track:c1abfb9f82db25b90165bdc212fea7c7673dbe38ccf7dc53556b9eb42e2c2af0` |
| 34 | `def` | [comonadicOfHasPreservesCoreflexiveEqualizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/declarations/comonadicofhaspreservescoreflexiveequalizersofreflectsisomorphisms--9ae08dc4bd1af8e9003f385d.md) | 370 | `declaration-track:9ae08dc4bd1af8e9003f385d6a1ba7f10f2d855359d0d1a9a9a59be7fb40f175` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
