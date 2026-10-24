# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fiber.Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba144c954cae772a78f9e0b8e5c860d5e3f31b98",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba144c954cae772a78f9e0b8e5c860d5e3f31b98`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.HomLift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Const` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Fiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/fiber--8db6051f3d0adbff2b36fe9f.md) | 42 | `declaration-track:8db6051f3d0adbff2b36fe9fe2a21b206784cae41f3523a9d8a122e381289870` |
| 2 | `instance` | [fiberCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/fibercategory--4da455a5ffa0b00dab3850b3.md) | 49 | `declaration-track:4da455a5ffa0b00dab3850b3b12d77e599160e2c3c95e9ace83143eda2af9656` |
| 3 | `def` | [fiberInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/fiberinclusion--6b1915119e58ebc02f3ef32d.md) | 55 | `declaration-track:6b1915119e58ebc02f3ef32dd95293477f2cba10d109a171ee236b8171e5dc6d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/instance--055878639b40c0a2371da2aa.md) | 59 | `declaration-track:055878639b40c0a2371da2aa1c286339e3ab35bb822577130ea9acfef13ea37c` |
| 5 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/hom-ext--37310e81801af0ba5ed253e3.md) | 62 | `result-track:37310e81801af0ba5ed253e34b46c080d72ae91fb8a3e0953d1602f64b377006` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/instance--6b57d017602506e855b22039.md) | 66 | `declaration-track:6b57d017602506e855b22039182c3a554fcadf91ff1f8462a3f76961e17784a0` |
| 7 | `def` | [fiberInclusionCompIsoConst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/fiberinclusioncompisoconst--a2c4ae9f9ec6ab1d699f1feb.md) | 71 | `declaration-track:a2c4ae9f9ec6ab1d699f1feb4b506e8102de445a7a05befb68ddc7c8b5aad81b` |
| 8 | `lemma` | [fiberInclusion_comp_eq_const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/fiberinclusion-comp-eq-const--6b575aa96b8669552eada492.md) | 75 | `result-track:6b575aa96b8669552eada492166b9a3089ba4dad79285d235ed0094f1a7b207a` |
| 9 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/mk--3bed42295af29a3b01a6ea72.md) | 79 | `declaration-track:3bed42295af29a3b01a6ea72f807754ef6c7096f1616a712db7ed78e1cfebec4` |
| 10 | `lemma` | [fiberInclusion_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/fiberinclusion-mk--eb7ed7c11b13cbc8eb004a77.md) | 82 | `result-track:eb7ed7c11b13cbc8eb004a778b393626c1548ab68e20a2f0dec2caafa9c5e5d9` |
| 11 | `def` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/hommk--1cadcafcb5c2725aca5bdd84.md) | 87 | `declaration-track:1cadcafcb5c2725aca5bdd846ac4d1e759fd4e707676f9b290b99644d0ae389d` |
| 12 | `lemma` | [fiberInclusion_homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/fiberinclusion-hommk--38a2305f9ad734f56eaacead.md) | 92 | `result-track:38a2305f9ad734f56eaaceade5e4510be99dfa53d84562d9f9dd1a68668e3eb5` |
| 13 | `lemma` | [homMk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/hommk-id--2d1eaa230544674a3f806cb2.md) | 97 | `result-track:2d1eaa230544674a3f806cb2df83d455ea68bb75ebb8329b45adc263adf010c0` |
| 14 | `lemma` | [homMk_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/hommk-comp--e55885dba5e48d624e09e840.md) | 102 | `result-track:e55885dba5e48d624e09e84041658a16086c02959918f7aa41871c854a3ddcdb` |
| 15 | `def` | [inducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/inducedfunctor--42748c857377ac6c7c01625d.md) | 113 | `declaration-track:42748c857377ac6c7c01625df835c7e365150b5f9a56f04f2ae2166fc941dd98` |
| 16 | `lemma` | [inducedFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/inducedfunctor-map--27840d8c495654c68b21c57c.md) | 119 | `result-track:27840d8c495654c68b21c57c10c9bda8070026e7bf08b8f973cc479900a683f6` |
| 17 | `def` | [inducedFunctorCompIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/inducedfunctorcompisoself--26e905cb3d5633ead84462d3.md) | 125 | `declaration-track:26e905cb3d5633ead84462d3324dcefc2bdcc373a2c7f0c13428a877046f26cd` |
| 18 | `lemma` | [inducedFunctor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fiber/Variant920073eb571ca5c0e9b3a6c5a58b730b31a0ab2fddb865e580abe311b5989c88.lean/declarations/inducedfunctor-comp--175bdc3330c0b099b2cae95b.md) | 127 | `result-track:175bdc3330c0b099b2cae95bc2cf42c34aaa4c83a9139c5e3d57c0a60aca68b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
