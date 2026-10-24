# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretriangulated.Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef5578d83990269448b0d49e7a49e5ae8c76c15d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef5578d83990269448b0d49e7a49e5ae8c76c15d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Opposite.Triangle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.HomologicalFunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [distinguishedTriangles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/distinguishedtriangles--df279af6d0870d9241560961.md) | 59 | `declaration-track:df279af6d0870d92415609618658ad97bad1252d8965539e5b1c350d206dd8a8` |
| 2 | `lemma` | [mem_distinguishedTriangles_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/mem-distinguishedtriangles-iff--03dd14914bc1bc5d4280f17f.md) | 64 | `result-track:03dd14914bc1bc5d4280f17fc45d17ff4a15252143035c6aa5fd4948df73b8dd` |
| 3 | `lemma` | [mem_distinguishedTriangles_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/mem-distinguishedtriangles-iff--79fb5904a8f53d4b11a41f80.md) | 69 | `result-track:79fb5904a8f53d4b11a41f8038f67162814fae687be7b163c239827c43d17922` |
| 4 | `lemma` | [isomorphic_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/isomorphic-distinguished--96d36062e0cd1edabcef362a.md) | 82 | `result-track:96d36062e0cd1edabcef362af1b8b9e6875b57bbcdf7e36a38a64e58c06de785` |
| 5 | `def` | [contractibleTriangleIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/contractibletriangleiso--a314cb67da01c2f5cfab950a.md) | 92 | `declaration-track:a314cb67da01c2f5cfab950a0a2db50b0533b42d8eeab107cea5baf45d086e7f` |
| 6 | `lemma` | [contractible_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/contractible-distinguished--13b9cd58cd60426736b2658f.md) | 103 | `result-track:13b9cd58cd60426736b2658f005113fcf101743a520b3302ea8ea69c487133cf` |
| 7 | `def` | [rotateTriangleOpEquivalenceInverseObjRotateUnopIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/rotatetriangleopequivalenceinverseobjrotateunopiso--92bda742cf8c26d114a3eba2.md) | 111 | `declaration-track:92bda742cf8c26d114a3eba2d208f8722ae02ec892720834dcd40c7c5e646e6f` |
| 8 | `lemma` | [rotate_distinguished_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/rotate-distinguished-triangle--d4157ecb9d22e5536159f8c6.md) | 118 | `result-track:d4157ecb9d22e5536159f8c6a5066caf24418707cf3cd362db651064ff8248ae` |
| 9 | `lemma` | [distinguished_cocone_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/distinguished-cocone-triangle--d40e4a72fb69ca8de29e60da.md) | 124 | `result-track:d40e4a72fb69ca8de29e60da5a6aff86f4af9e625faef24402c35e1817551d69` |
| 10 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/complete-distinguished-triangle-morphism--47038ceb8472338850b278e1.md) | 135 | `result-track:47038ceb8472338850b278e159c579d5595698406e6e210096263b80f5f0a3ae` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/instance--2e7aab99479204224aeabf3d.md) | 161 | `declaration-track:2e7aab99479204224aeabf3d6b807c86a8cbe577e1e7a93833618ec6ce82ad0e` |
| 12 | `lemma` | [mem_distTriang_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/mem-disttriang-op-iff--a5c3cc9f0d0a7bb7f654a5b2.md) | 173 | `result-track:a5c3cc9f0d0a7bb7f654a5b2946a5590befd6f132aa796c39562f90e641594a2` |
| 13 | `lemma` | [mem_distTriang_op_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/mem-disttriang-op-iff--6e416814b0a873ef5fc092a7.md) | 177 | `result-track:6e416814b0a873ef5fc092a7f23eafa6d8be18b0471b889bc38b8eb8db136c84` |
| 14 | `lemma` | [op_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/op-distinguished--cff5ab7b6c9a789508586063.md) | 182 | `result-track:cff5ab7b6c9a789508586063430e942b0b1da08004bd5ec80eb9d63b2731d682` |
| 15 | `lemma` | [unop_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/unop-distinguished--894f268f245d59a6fea27ec3.md) | 187 | `result-track:894f268f245d59a6fea27ec3db52936be96b38ab6fcc0310a1b3f556c65f57d6` |
| 16 | `lemma` | [map_distinguished_op_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Varianta21a9e7c93b2b1c749c6cae720d99f917c89df0944cd5212506303c1aa1254fa.lean/declarations/map-distinguished-op-exact--3df151ac94d59419d1bc5963.md) | 198 | `result-track:3df151ac94d59419d1bc5963766a3bb6c41d3785472df67d8de4643ead19df55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
