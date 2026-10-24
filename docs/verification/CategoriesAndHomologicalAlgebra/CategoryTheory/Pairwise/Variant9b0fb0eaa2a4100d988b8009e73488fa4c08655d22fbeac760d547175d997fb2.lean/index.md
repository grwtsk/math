# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pairwise.Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bada44df39f8291b9207b2ae69e013af1e699bf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bada44df39f8291b9207b2ae69e013af1e699bf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IsLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pairwise](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/pairwise--cacf48995b4a3bc566cfb287.md) | 39 | `declaration-track:cacf48995b4a3bc566cfb287160012aa6d7d2c1c3daa6bbe2cae3455ebbc62ed` |
| 2 | `instance` | [pairwiseInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/pairwiseinhabited--4d602bb91f1a44dadd01b7a0.md) | 47 | `declaration-track:4d602bb91f1a44dadd01b7a002006f08c53e016c6dcfbe45b25ff2da32e05ccc` |
| 3 | `inductive` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/hom--c69df2ba2c3ace70bc2abef8.md) | 53 | `declaration-track:c69df2ba2c3ace70bc2abef83e3570c2cc99807a1bfd9c8bedfac9b721c50e32` |
| 4 | `instance` | [homInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/hominhabited--a8e45e7b172f74b5ca994748.md) | 61 | `declaration-track:a8e45e7b172f74b5ca9947485ae4a627ff19080f745ab7a387baddc257f78b19` |
| 5 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/id--eba703a149257a2131ab8de6.md) | 66 | `declaration-track:eba703a149257a2131ab8de6615262ff79318cb2c54a871558f0bf54a4274439` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/comp--a8dbecaee5b541e7aca11523.md) | 71 | `declaration-track:a8dbecaee5b541e7aca11523097c735f5f97d494bbeee7df51b36790073e3de8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/instance--9e40ddeb031ad249b819f2bd.md) | 77 | `declaration-track:9e40ddeb031ad249b819f2bd836c48cc15dc6c8aa4fa47f24378fbeda971c5c7` |
| 8 | `def` | [pairwiseCases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/pairwisecases--7b91dfe906c3f3dea8b2358f.md) | 86 | `declaration-track:7b91dfe906c3f3dea8b2358f589701e0d6e42dc1848b7a6cb2696fc1ee1e076e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/instance--e202d4a05b17a59401503261.md) | 90 | `declaration-track:e202d4a05b17a59401503261bd3e8f99736db55bc79769f6a2e53660caa725a2` |
| 10 | `def` | [diagramObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/diagramobj--22a0685d12998ca0be6454f2.md) | 102 | `declaration-track:22a0685d12998ca0be6454f23d33cf1ce74d16b0a150e9754ea9435bcf1348e8` |
| 11 | `def` | [diagramMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/diagrammap--f10226d63346b574a9d37bb7.md) | 108 | `declaration-track:f10226d63346b574a9d37bb7fd296991c63a5e943545967312724849b2ae64ef` |
| 12 | `def` | [diagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/diagram--808a7135ef6cb20e6c767f6e.md) | 119 | `declaration-track:808a7135ef6cb20e6c767f6e83e64e66922db6b86221fcaa94109f984a9f1d9a` |
| 13 | `def` | [coconeιApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/cocone-app--d6ace01fd7df33ec88acfd84.md) | 132 | `declaration-track:d6ace01fd7df33ec88acfd84d9a169bd1fc32f8ab9feb7eca3f40a747fb5bed7` |
| 14 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/cocone--7a79ad3683c8682ed8322832.md) | 140 | `declaration-track:7a79ad3683c8682ed8322832676df9f0736209eea1813039646cea7545bdb76e` |
| 15 | `def` | [coconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pairwise/Variant9b0fb0eaa2a4100d988b8009e73488fa4c08655d22fbeac760d547175d997fb2.lean/declarations/coconeiscolimit--205f18496b39047c0fb5e698.md) | 147 | `declaration-track:205f18496b39047c0fb5e69866fc432d8c4c77c55966f1869a7bf2719e76facf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
