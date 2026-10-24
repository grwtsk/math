# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivFunctor.Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a20050c12a4d8297cde9e335faadd079f690b29",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a20050c12a4d8297cde9e335faadd079f690b29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/declarations/equivfunctor--5ca927e4c635b214c0be2ae0.md) | 38 | `declaration-track:5ca927e4c635b214c0be2ae0fa8936e9d7eaf1c242c8890cab30a74b0f166168` |
| 2 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/declarations/mapequiv--1d94a077578780b8d70dfc3b.md) | 56 | `declaration-track:1d94a077578780b8d70dfc3b05a8aaa2f64c786f227d7d488ad7421537ec1429` |
| 3 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/declarations/mapequiv-apply--301a45deefb0a93927c9ec95.md) | 68 | `result-track:301a45deefb0a93927c9ec953c46e0c91c7183e5717b5b1965834d6fd3a881be` |
| 4 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/declarations/mapequiv-symm-apply--0dac93353cebf4b65e401e8f.md) | 72 | `result-track:0dac93353cebf4b65e401e8f43cf0eb74dcdab621ce1001c5e491f3d68cdca70` |
| 5 | `theorem` | [mapEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/declarations/mapequiv-refl--3b6187e72df83c1424ebe7ff.md) | 77 | `result-track:3b6187e72df83c1424ebe7ffd1fb197877b83131bec1a709947e68c73c49614d` |
| 6 | `theorem` | [mapEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/declarations/mapequiv-symm--61ccfdc432dc74e3f0e7e091.md) | 82 | `result-track:61ccfdc432dc74e3f0e7e0912ee5f5ce91d0db70e3b0dc8bd96c7f38c6287ee2` |
| 7 | `theorem` | [mapEquiv_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/declarations/mapequiv-trans--eb09b081a884d781c8bb56ba.md) | 91 | `result-track:eb09b081a884d781c8bb56ba1a4d7d2d7b0fcf2df0c2661356963b8dd2294610` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/declarations/instance--624426906558235cc76bf1e9.md) | 98 | `declaration-track:624426906558235cc76bf1e9ac8c7ad493176693322c56604eb31bd3ee4a8501` |
| 9 | `theorem` | [mapEquiv.injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variantd58bca4a7028a7c4538c3ea259ead0f420d15a1088bd823e99cf99d7639e1f2e.lean/declarations/mapequiv-injective--19834d7d91a6efc1b40c4f78.md) | 109 | `result-track:19834d7d91a6efc1b40c4f78a861d627e929457b4189ea3cc704044b1786dd50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
