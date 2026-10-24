# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TwoP.Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca57853e80591e9c019dbcbec8c1e98168c5db65",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca57853e80591e9c019dbcbec8c1e98168c5db65`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Bipointed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.TwoPointing` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoP](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/twop--39ead075c3b3e9d82d2439d8.md) | 37 | `declaration-track:39ead075c3b3e9d82d2439d82017ea31d13b03837df566f619b30aa46b3fee70` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/instance--46a3e871f7eb9dd92ee4398f.md) | 45 | `declaration-track:46a3e871f7eb9dd92ee4398fca845a1a1f79c34c79edf64a95d5dfc8a001d168` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/of--44aa15e25cbf448924c9f23c.md) | 49 | `declaration-track:44aa15e25cbf448924c9f23cdd56532b0a86fb6f767dac14fac370d0a9e019ad` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/coe-of--70793b77b31088fdd0cc1231.md) | 52 | `result-track:70793b77b31088fdd0cc12313e93c673239ba56dc314b5bb6ec9db17f12341d0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/instance--6ae27a93b70646a10b04b1be.md) | 57 | `declaration-track:6ae27a93b70646a10b04b1be227c0c9778710a7618e74cab4a6c1939f623efaf` |
| 6 | `def` | [toBipointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/tobipointed--1c10684db12fb3a473d43131.md) | 62 | `declaration-track:1c10684db12fb3a473d43131b08d7f9dc18b2a6eb8e8d592d1ec28bd635d9c1b` |
| 7 | `theorem` | [coe_toBipointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/coe-tobipointed--ef4791a705f5797d9d316c08.md) | 66 | `result-track:ef4791a705f5797d9d316c08d846cf994c9f33f80d137008d90ca09fd7f1feac` |
| 8 | `instance` | [largeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/largecategory--0fde35acdef64d5f2082f88f.md) | 69 | `declaration-track:0fde35acdef64d5f2082f88f510d3552d8754a0bd58e08412254addc1fa240d1` |
| 9 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/concretecategory--ab6294063d5c25be1d70a706.md) | 72 | `declaration-track:ab6294063d5c25be1d70a706624b7447d084bb75e4c69c1dc2aaeddba06dea80` |
| 10 | `instance` | [hasForgetToBipointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/hasforgettobipointed--11088cdc47537dec949a0dfd.md) | 76 | `declaration-track:11088cdc47537dec949a0dfd9c75d1be01745b26763d65a6481f329b970cbcb2` |
| 11 | `def` | [swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/swap--af6ba49b62a1a9977fece135.md) | 82 | `declaration-track:af6ba49b62a1a9977fece135bdce7142b1c74e29f3e9fb582c7c32363c0e7f8f` |
| 12 | `def` | [swapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/swapequiv--d8d81e85c3d758867a987421.md) | 88 | `declaration-track:d8d81e85c3d758867a987421cacb70467ebf5cd3a565cfe79526aadd178cff9f` |
| 13 | `theorem` | [swapEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/swapequiv-symm--85a3757be4dc086828cbd894.md) | 95 | `result-track:85a3757be4dc086828cbd894acb256ccc4302881125635613f4ee61185c9b65e` |
| 14 | `theorem` | [TwoP_swap_comp_forget_to_Bipointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/twop-swap-comp-forget-to-bipointed--2890884b1e777a9a2621c106.md) | 101 | `result-track:2890884b1e777a9a2621c106111aab8725fc90b3ef4525f937dcd5970d08f397` |
| 15 | `def` | [pointedToTwoPFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/pointedtotwopfst--a93e61a8defb0c2249772de8.md) | 107 | `declaration-track:a93e61a8defb0c2249772de88037cb6ab79e7741ec3f2fc2eaeb659805647161` |
| 16 | `def` | [pointedToTwoPSnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/pointedtotwopsnd--149143b3450f48d1404ddc08.md) | 115 | `declaration-track:149143b3450f48d1404ddc0840bf2ef7f9a56903ecb08c55a68282485314aec1` |
| 17 | `theorem` | [pointedToTwoPFst_comp_swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/pointedtotwopfst-comp-swap--ecbb69e6948dce001b2608e8.md) | 122 | `result-track:ecbb69e6948dce001b2608e82806a26e915d0e41d0dc09a3b847a979ccf514e3` |
| 18 | `theorem` | [pointedToTwoPSnd_comp_swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/pointedtotwopsnd-comp-swap--ea669de4bd4d3edda0645e35.md) | 126 | `result-track:ea669de4bd4d3edda0645e35cb46a74895338f287df8c7de7e4961b49f934199` |
| 19 | `theorem` | [pointedToTwoPFst_comp_forget_to_bipointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/pointedtotwopfst-comp-forget-to-bipointed--f5d572bc99207edf26122c34.md) | 130 | `result-track:f5d572bc99207edf26122c3436e4fa8471d198aac8b2813b2d234c4b78d22ae7` |
| 20 | `theorem` | [pointedToTwoPSnd_comp_forget_to_bipointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/pointedtotwopsnd-comp-forget-to-bipointed--f6b0e763b08540aec1da41a1.md) | 135 | `result-track:f6b0e763b08540aec1da41a16d2a1c2fa2409ad1a2fb0cd38cd2774d43b44d25` |
| 21 | `def` | [pointedToTwoPFstForgetCompBipointedToPointedFstAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/pointedtotwopfstforgetcompbipointedtopointedfstadjunction--336140c742c6fab81b8df77f.md) | 140 | `declaration-track:336140c742c6fab81b8df77f70e5a15841b8f46da6077ab4fe7bce02b302db0f` |
| 22 | `def` | [pointedToTwoPSndForgetCompBipointedToPointedSndAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Varianta00216d7d7308ebcfb41712231b857b65b1a740f134813270bbc8f3c4c9c72ee.lean/declarations/pointedtotwopsndforgetcompbipointedtopointedsndadjunction--5881889c43770487b805e029.md) | 159 | `declaration-track:5881889c43770487b805e02920748625e546ea4d0eb056016b4ff64136a407d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
