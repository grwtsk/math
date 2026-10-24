# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comonadicity.Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ae38ebe86ae9635b1ad7f1108128b3d40ed2ba5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ae38ebe86ae9635b1ad7f1108128b3d40ed2ba5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Equalizer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [main_pair_coreflexive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/main-pair-coreflexive--86195146bece9bbeb8001189.md) | 61 | `declaration-track:86195146bece9bbeb8001189cfb0c67ee33fd3b2af2598182135f696465cd37d` |
| 2 | `instance` | [main_pair_F_cosplit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/main-pair-f-cosplit--288b806fc7f75feec44a84f4.md) | 73 | `declaration-track:288b806fc7f75feec44a84f4d946c3590ffc6cf2e677a2cdf0e5700ab5eeb501` |
| 3 | `def` | [comparisonRightAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comparisonrightadjointobj--6777735a48a781d5f5a7494b.md) | 79 | `declaration-track:6777735a48a781d5f5a7494bbf6fa860efb013534a3db88d99415bf25dc1a401` |
| 4 | `def` | [comparisonRightAdjointHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comparisonrightadjointhomequiv--e4cced09951adb7a02c4eebe.md) | 88 | `declaration-track:e4cced09951adb7a02c4eebe153cca473b535c987fa5515afabf53623f373948` |
| 5 | `def` | [rightAdjointComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/rightadjointcomparison--1ea567b8fb23d4beab1cf199.md) | 110 | `declaration-track:1ea567b8fb23d4beab1cf1997e64071449f9147dc545b5695154f424b2cae2c5` |
| 6 | `def` | [comparisonAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comparisonadjunction--633980a5f9a237961da9af30.md) | 125 | `declaration-track:633980a5f9a237961da9af30df34fb5f9a5effd99e622ca81baa9bd3c2664d53` |
| 7 | `theorem` | [comparisonAdjunction_counit_f_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comparisonadjunction-counit-f-aux--81898627d90cfaa8c144ee7d.md) | 133 | `result-track:81898627d90cfaa8c144ee7d1f3b7df09443be2311a6179e4dc4f1ca98940f01` |
| 8 | `def` | [counitFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/counitfork--c1bda2dd56797b2f5f6eb894.md) | 145 | `declaration-track:c1bda2dd56797b2f5f6eb894cc465ca1dd059935c8d0c2c3396ae8a1d147a2e7` |
| 9 | `theorem` | [unitFork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/unitfork--bcb7c09f5e8b516ab5af0b66.md) | 152 | `result-track:bcb7c09f5e8b516ab5af0b66021921a1339880d4ac3eb2fcc0d4d8f5b68118d3` |
| 10 | `theorem` | [comparisonAdjunction_counit_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comparisonadjunction-counit-f--f66cc7ce69c6e4ca7a01d61b.md) | 157 | `result-track:f66cc7ce69c6e4ca7a01d61b9e5409226d28b461239a5f3f12a218d22b34fe2f` |
| 11 | `def` | [unitFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/unitfork--5f2a92e06e322df23eac53e8.md) | 170 | `declaration-track:5f2a92e06e322df23eac53e8eccc5156c3ef364a5ed48d7ccf7546c5f92f7b58` |
| 12 | `def` | [counitLimitOfPreservesEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/counitlimitofpreservesequalizer--a0de4575a6a47763def32de8.md) | 177 | `declaration-track:a0de4575a6a47763def32de844b9fd9bd16a6336433b845b4ade4b5fd359a118` |
| 13 | `def` | [unitEqualizerOfCoreflectsEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/unitequalizerofcoreflectsequalizer--4eeac439a0cc337a4556cc94.md) | 184 | `declaration-track:4eeac439a0cc337a4556cc940b745be95f56f8c3fbf188058b1e3cca6c841a23` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--f522933cbe0ef943ba731106.md) | 190 | `declaration-track:f522933cbe0ef943ba7311066890fc18e542a66d06aaa622bc4a7135cfa79297` |
| 15 | `theorem` | [comparisonAdjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comparisonadjunction-unit-app--d50e19ef8b891318ef5ee9fd.md) | 199 | `result-track:d50e19ef8b891318ef5ee9fd1e9b3b1bc8d456789a2d2598a2c09869cd6f2e67` |
| 16 | `def` | [createsFSplitEqualizersOfComonadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/createsfsplitequalizersofcomonadic--72fa15019e393aa3189639fa.md) | 221 | `declaration-track:72fa15019e393aa3189639fa29b53b7a6f29e19d1aed4f167f73c08132df4717` |
| 17 | `class` | [HasEqualizerOfIsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/hasequalizerofiscosplitpair--ec21dbbe6a52596e345cffcf.md) | 232 | `declaration-track:ec21dbbe6a52596e345cffcfb88c3df55f5cebcb836099884759d3ae3a24b5fc` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--e01f25471da3e0f83150ab97.md) | 236 | `declaration-track:e01f25471da3e0f83150ab970b1505134bc6d433983b1a8c0b620170537db85d` |
| 19 | `class` | [PreservesLimitOfIsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/preserveslimitofiscosplitpair--03f858bf23f418123538c93e.md) | 242 | `declaration-track:03f858bf23f418123538c93e1d1be8acf1a014c7c69d5825a2fd6a2d0fe9a842` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--55ab53d49d38f817be5f259e.md) | 246 | `declaration-track:55ab53d49d38f817be5f259e5242ac5a2e57430f29cf3e3a6d8d0ad932fef5d7` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--fa5c8d16679796a3f400bbd7.md) | 249 | `declaration-track:fa5c8d16679796a3f400bbd72f898cf31fc9aa6756d147e85bdc0b54e0e0fb73` |
| 22 | `class` | [ReflectsLimitOfIsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/reflectslimitofiscosplitpair--596251e121dd1caef9a36dd6.md) | 255 | `declaration-track:596251e121dd1caef9a36dd63ab667b3d2f514cbfa399242617bec94bc09f088` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--f573bcba8a67b553a93ff1f7.md) | 259 | `declaration-track:f573bcba8a67b553a93ff1f7259a48b51169691ff48280ef60a8b1eac66f4b62` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--a47b9ea6744dc8dddb8a424a.md) | 262 | `declaration-track:a47b9ea6744dc8dddb8a424a6a6d11cb12ee190d6cde86f6db42ef6fbc975912` |
| 25 | `def` | [comonadicOfHasPreservesReflectsFSplitEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comonadicofhaspreservesreflectsfsplitequalizers--0a61297b7edc09799466a91d.md) | 270 | `declaration-track:0a61297b7edc09799466a91d18dcf2c644a600393ecb843d24f5c9efc180f4db` |
| 26 | `class` | [CreatesLimitOfIsCosplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/createslimitofiscosplitpair--e1161260278ddb68fbcbbc23.md) | 300 | `declaration-track:e1161260278ddb68fbcbbc236f35739fad8622006f8ad166b46c4f9273c26760` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--c668db26f09613f44ed2546b.md) | 304 | `declaration-track:c668db26f09613f44ed2546b854646cfbcfaf5ed517a8235ffeafbbec9814735` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--e94a69cc7b6859543282a8af.md) | 307 | `declaration-track:e94a69cc7b6859543282a8af3bbcae5cff585af13c5ebebdc94f039a7cf15401` |
| 29 | `def` | [comonadicOfCreatesFSplitEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comonadicofcreatesfsplitequalizers--73c43155ee78af282f5c6813.md) | 317 | `declaration-track:73c43155ee78af282f5c6813cb5f21170bf9fe3f7d467fc3740bafb52e1dc24b` |
| 30 | `def` | [comonadicOfHasPreservesFSplitEqualizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comonadicofhaspreservesfsplitequalizersofreflectsisomorphisms--1efd654ee65b152de19dfea8.md) | 330 | `declaration-track:1efd654ee65b152de19dfea87404d8820ae1b754e0141cee3bddabe0ccc6cfc6` |
| 31 | `class` | [PreservesLimitOfIsCoreflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/preserveslimitofiscoreflexivepair--b45b9290a728ca2b3bb76f1f.md) | 345 | `declaration-track:b45b9290a728ca2b3bb76f1f746c43bf956325364865b31ab92e4964cd1b874d` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--0e02c045c058ac3b2d2f44f4.md) | 349 | `declaration-track:0e02c045c058ac3b2d2f44f40fedc2bd4e1510ab79be67a403a42d0e7fbe157c` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/instance--cb38c15ec608478d74774e18.md) | 352 | `declaration-track:cb38c15ec608478d74774e18d7a1154c7e48669b033f7081082ccbacdd317085` |
| 34 | `def` | [comonadicOfHasPreservesCoreflexiveEqualizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variante8a565703f6f073b1360a6727f2038bcb31ce603e9191ed90c82b74880d62d4c.lean/declarations/comonadicofhaspreservescoreflexiveequalizersofreflectsisomorphisms--f654262317f875ea5f2b543b.md) | 362 | `declaration-track:f654262317f875ea5f2b543bb10b6294da3816fc2c6b94e82f51e0aa384b5ce8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
