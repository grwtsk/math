# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WellOrderInductionData.Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "984d997c8385c567436fb5b84c181815c8b38e8c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `984d997c8385c567436fb5b84c181815c8b38e8c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WellOrderInductionData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/wellorderinductiondata--623ee8cff5205e7b35845835.md) | 44 | `declaration-track:623ee8cff5205e7b35845835c55ab0a05f17c457f89cb0db0786855174d9af0b` |
| 2 | `structure` | [Extension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/extension--d83cbcb7dad0147b400a1e89.md) | 68 | `declaration-track:d83cbcb7dad0147b400a1e8993ecac8e0667652b93da3adb4c9e9634fda9dca9` |
| 3 | `def` | [ofLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/ofle--e5ead475d0172038548eb5ee.md) | 90 | `declaration-track:e5ead475d0172038548eb5ee398b79caef874426b9501e268e4c57ad35d44542` |
| 4 | `lemma` | [val_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/val-injective--8bb2b8e75724932c919468cb.md) | 107 | `result-track:8bb2b8e75724932c919468cbb3b44b810ee0bee9565034268670f7246baea6f9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/instance--05dd06466191952a56243c7c.md) | 113 | `declaration-track:05dd06466191952a56243c7c39ef9147898827f116af43395aff66d478f3763e` |
| 6 | `lemma` | [compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/compatibility--7c84b6a9a756b35e9f5f180b.md) | 142 | `result-track:7c84b6a9a756b35e9f5f180bfd3bd439da5daa86e3b0ad94e92426fda4739c78` |
| 7 | `def` | [zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/zero--5e8f8988211ce2b9c461c9ed.md) | 151 | `declaration-track:5e8f8988211ce2b9c461c9edccf75a03f892d4bd771d783e46e24e6ed043e518` |
| 8 | `def` | [succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/succ--0c54e0f855cbd12ff91e5c2a.md) | 161 | `declaration-track:0c54e0f855cbd12ff91e5c2a96e3d4bbac153401e4ab0e302060ed7fb7fc287d` |
| 9 | `def` | [limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/limit--8a54eab006d7180449c7d440.md) | 196 | `declaration-track:8a54eab006d7180449c7d440b6863eecbbe2d72d4e3dfcdbd25c0e47ab283b54` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/instance--5673dfa4ff4b7b9758de8f2a.md) | 237 | `declaration-track:5673dfa4ff4b7b9758de8f2ae694c7d2cc9204626f860a6a1e981377b6708cb4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/instance--a3761c2b4aa0dcedf0e21927.md) | 245 | `declaration-track:a3761c2b4aa0dcedf0e21927117ecac20b4850c81ebd7fca9531d44deeb7dafa` |
| 12 | `def` | [sectionsMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/sectionsmk--9019347dbfc89df0ab659559.md) | 254 | `declaration-track:9019347dbfc89df0ab659559577f79c1eddd460044fcb7c8298c8649f69ef83a` |
| 13 | `lemma` | [sectionsMk_val_op_bot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/sectionsmk-val-op-bot--9c2743e8373a083a839c155c.md) | 258 | `result-track:9c2743e8373a083a839c155cfa5ded000327c04b8f7ac09733141636b1380eaf` |
| 14 | `lemma` | [surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/declarations/surjective--4c28f50e5a3d058e54abc83a.md) | 263 | `result-track:4c28f50e5a3d058e54abc83ae38591ed63752ba318277b8b18394c7df349143b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
