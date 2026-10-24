# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "720a90a06b406f02aed9f1ec7c844cd83efe96f7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `720a90a06b406f02aed9f1ec7c844cd83efe96f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Yoneda` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Abelian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectiveSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/projectiveseparator--90af637ca521669658d6ebf3.md) | 39 | `declaration-track:90af637ca521669658d6ebf31589c942266121c4ea67348c8a374707bc19540f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/instance--6234a47763119771aca137a0.md) | 42 | `declaration-track:6234a47763119771aca137a0249d5eaaf8c038ad7bf292f21996d455d5cbe55d` |
| 3 | `theorem` | [isSeparator_projectiveSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/isseparator-projectiveseparator--ff810e14f621eeec9a14652f.md) | 45 | `result-track:ff810e14f621eeec9a14652ff5c1504525f58f34f68312c7d8267daaf50e3c3e` |
| 4 | `def` | [generator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/generator--2b98d472637d66a72e1cb2e2.md) | 48 | `declaration-track:2b98d472637d66a72e1cb2e2065f6876682bf0879ce776a19e727f11ac27adb4` |
| 5 | `theorem` | [exists_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/exists-epi--360d2bf273c1a65c2328dbb2.md) | 51 | `result-track:360d2bf273c1a65c2328dbb277419b5f471725747fc4ed7ec9613a789c1dd356` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/instance--0274a45c6ec33bd808b9d901.md) | 59 | `declaration-track:0274a45c6ec33bd808b9d9014558db34cf69d023937ccacb826411ee62a97899` |
| 7 | `theorem` | [isSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/isseparator--3b40125bc0e74beac07fbf72.md) | 63 | `result-track:3b40125bc0e74beac07fbf72b0a156c81225ac903844171c17b1ad8bf138efba` |
| 8 | `def` | [EmbeddingRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/embeddingring--45c414007c870eaaad8c8b9e.md) | 71 | `declaration-track:45c414007c870eaaad8c8b9e789852934b4b77ef979f86c1feaf4c21511f7216` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/instance--1e3906c6ceb3c79255954a11.md) | 73 | `declaration-track:1e3906c6ceb3c79255954a110a54466d027e2f5e69a5c87db08e2d4da6910972` |
| 10 | `def` | [embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/embedding--d6be475ed24fd93e54bae5c2.md) | 78 | `declaration-track:d6be475ed24fd93e54bae5c2f5bb75e590ae42144e100dc92a2161aec815fd30` |
| 11 | `instance` | [faithful_embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/faithful-embedding--b01883bd6a1eaa2557acefa5.md) | 81 | `declaration-track:b01883bd6a1eaa2557acefa55a21c6828b1228bbf73131af34a87cc66b0b718c` |
| 12 | `instance` | [full_embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/full-embedding--0c3d6b5f5c960880895136bc.md) | 84 | `declaration-track:0c3d6b5f5c960880895136bc7490b9c801eab7a412876b679315153545144c51` |
| 13 | `instance` | [preservesFiniteLimits_embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/preservesfinitelimits-embedding--d068dacadeb9d3261114ea69.md) | 87 | `declaration-track:d068dacadeb9d3261114ea6960d413a26e8ed2ddd3751db4d94022a46ef17e5a` |
| 14 | `instance` | [preservesFiniteColimits_embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant29de41b84d9537e2b052ae6d6bbf96024e0058cda6a23855486e33cd66d43036.lean/declarations/preservesfinitecolimits-embedding--550c12d125d58c12b33a537c.md) | 92 | `declaration-track:550c12d125d58c12b33a537c1665c7597c97622d269b9e508cfca0aa94a2e319` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
