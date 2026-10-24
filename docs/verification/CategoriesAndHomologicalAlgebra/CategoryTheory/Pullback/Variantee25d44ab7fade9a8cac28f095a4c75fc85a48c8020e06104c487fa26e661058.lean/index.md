# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07dd2d119fd2563e0022968b0f406dff2008b2ea",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07dd2d119fd2563e0022968b0f406dff2008b2ea`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.Adjunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PullbackShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshift--eef4d4707d25c8d88d5781d4.md) | 51 | `declaration-track:eef4d4707d25c8d88d5781d4f3846659e3176e1095250fb1dd08d3b436e2f5c4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/instance--136e70e4a3c0ac9e2e1c447d.md) | 53 | `declaration-track:136e70e4a3c0ac9e2e1c447d6a2e70165526c0bd9a46b0dcf1a8bbb94f21026b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/instance--26c4390dde5ce8ae773a3b60.md) | 61 | `declaration-track:26c4390dde5ce8ae773a3b60470960437922a0abee6e8c40f08fbc313b3019de` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/instance--9d89c9890f27b7934468cc3c.md) | 64 | `declaration-track:9d89c9890f27b7934468cc3c7c04a1bd571911d40e0692f0bcbfd939ef53d154` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/instance--1984ff5fbffb00fbc31bcc34.md) | 68 | `declaration-track:1984ff5fbffb00fbc31bcc34d0b23c56759940c99f644a4f36eb49c883bb2e4b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/instance--10db45f25c39c4d386e0fe89.md) | 72 | `declaration-track:10db45f25c39c4d386e0fe89ce23fc0bce37ab6f8aac4d21ea9827fcbde37bed` |
| 7 | `def` | [pullbackShiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshiftiso--863e2ef60cc4ef5eed61327f.md) | 79 | `declaration-track:863e2ef60cc4ef5eed61327fbde2a7b75fc7ffb356da00095a22b4ab3a2e5655` |
| 8 | `lemma` | [pullbackShiftFunctorZero_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshiftfunctorzero-inv-app--1a46b07db10aeee487f463aa.md) | 86 | `result-track:1a46b07db10aeee487f463aa543f8341a99d62fa0a0c3338a67f751fe56b3fae` |
| 9 | `lemma` | [pullbackShiftFunctorZero_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshiftfunctorzero-hom-app--82a41104032c11602527c7ee.md) | 94 | `result-track:82a41104032c11602527c7eeed707bf1d2a357fc48fbf32107c4da97777df282` |
| 10 | `lemma` | [pullbackShiftFunctorZero'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshiftfunctorzero-inv-app--a54916569b524697d6e65a27.md) | 101 | `result-track:a54916569b524697d6e65a2727e55de89e977a1ad8a056aed1d9b0a3b6f8e3d6` |
| 11 | `lemma` | [pullbackShiftFunctorZero'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshiftfunctorzero-hom-app--bd406bf4e8ff78457e109a42.md) | 109 | `result-track:bd406bf4e8ff78457e109a423b39fd42fe5a285f9ab26c056fe243662412e6b5` |
| 12 | `lemma` | [pullbackShiftFunctorAdd'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshiftfunctoradd-inv-app--1aed7e1495376c6069764145.md) | 116 | `result-track:1aed7e1495376c6069764145a5f3a6a612a0c13a980c8c9a9ba4d2dbc890bc9e` |
| 13 | `lemma` | [pullbackShiftFunctorAdd'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshiftfunctoradd-hom-app--746bc9dc4faf94334518cd3b.md) | 134 | `result-track:746bc9dc4faf94334518cd3b07bd454b6b262484f975572586b9bfa2196f0356` |
| 14 | `def` | [PullbackShift.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshift-functor--6c8537410c2dfec6942bc711.md) | 154 | `declaration-track:6c8537410c2dfec6942bc71181355276466daa59ca9b0e71f0bc1269afb75ced` |
| 15 | `def` | [PullbackShift.natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshift-nattrans--4c5d7729f94abc1103b96bee.md) | 163 | `declaration-track:4c5d7729f94abc1103b96bee7f61c02cc2cd8ee9d9e96447ce03f4f602b5844b` |
| 16 | `instance` | [commShiftPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/commshiftpullback--8c33b87ee4711817f22dd1f3.md) | 171 | `declaration-track:8c33b87ee4711817f22dd1f305e073772843ae9326e77f5b2c1c945164d108dc` |
| 17 | `lemma` | [commShiftPullback_iso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/commshiftpullback-iso-eq--2c0ae120429dfcfce1514ec9.md) | 202 | `result-track:2c0ae120429dfcfce1514ec9185b6ff14f1ea725715c6172fb40b7c091c87cc1` |
| 18 | `instance` | [commShiftPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/commshiftpullback--1ddf074eaadee6a05ee896ac.md) | 216 | `declaration-track:1ddf074eaadee6a05ee896ac23618fe1230c6a0765d3932252535428de091e6a` |
| 19 | `def` | [PullbackShift.natIsoId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshift-natisoid--047cc35852d8c493b4534265.md) | 231 | `declaration-track:047cc35852d8c493b4534265e043b10b269441d900d089b3f360ee8c4303d898` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/instance--98d900f1ed021e779936c854.md) | 239 | `declaration-track:98d900f1ed021e779936c854e26cc6b8fb3c431a5923f9881c83651a832e34ef` |
| 21 | `def` | [PullbackShift.natIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshift-natisocomp--6620a944d93e11326e3ebea4.md) | 249 | `declaration-track:6620a944d93e11326e3ebea414b5a8b5dc43f512bbfd48c0e026b030953b52e8` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/instance--a47e4b1e4762ce19eaaa5f3c.md) | 261 | `declaration-track:a47e4b1e4762ce19eaaa5f3c59980dad050fb52ee156e89516c2efa761efab28` |
| 23 | `def` | [PullbackShift.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/pullbackshift-adjunction--cc4bc45becc323b1faa56acd.md) | 279 | `declaration-track:cc4bc45becc323b1faa56acd4c26427c20538ab98aaeb005821fca0526921cab` |
| 24 | `instance` | [commShiftPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantee25d44ab7fade9a8cac28f095a4c75fc85a48c8020e06104c487fa26e661058.lean/declarations/commshiftpullback--292470fc99d0e9455d019e03.md) | 301 | `declaration-track:292470fc99d0e9455d019e03756eb1363d3e91c6759e090a3ce5626146361923` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
