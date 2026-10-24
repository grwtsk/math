# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5224cb71859263fd2b8db95e7d108395d5adfe2a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5224cb71859263fd2b8db95e7d108395d5adfe2a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.Adjunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkShiftCoreOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/mkshiftcoreop--7b615ba3fc10988f71120c0e.md) | 61 | `declaration-track:7b615ba3fc10988f71120c0efca5e9083b26d80a55452792e3a528dbff4946cb` |
| 2 | `def` | [OppositeShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshift--dea87a4dc065b0d09e6feda5.md) | 78 | `declaration-track:dea87a4dc065b0d09e6feda5ec460e6929a900f333d5fc3a456eb099575ee86a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/instance--6aa09b91c7c175f74bb32700.md) | 80 | `declaration-track:6aa09b91c7c175f74bb3270000430fe7826cbb71de7f60eb7e5661251852ea58` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/instance--be65e606bb5a6cb97fc9f778.md) | 84 | `declaration-track:be65e606bb5a6cb97fc9f7780b003905dd224ff482cf93c4f3fd50264490c55f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/instance--b5d8e48f0d70d352e5a073b6.md) | 87 | `declaration-track:b5d8e48f0d70d352e5a073b60a7ffdb3cd06221fe841aebf172ed5583cfde885` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/instance--d928bc606079e0aa23783e25.md) | 91 | `declaration-track:d928bc606079e0aa23783e2549de877778be562f84f496c57f570c6d9a7155bf` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/instance--5ca247a0a047728ef7d5bd1e.md) | 95 | `declaration-track:5ca247a0a047728ef7d5bd1e607ffb048340e8315c4108fcf6d7cbd787ab5782` |
| 8 | `lemma` | [oppositeShiftFunctorZero_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshiftfunctorzero-inv-app--2756949dbcf54dcf14c1b22a.md) | 100 | `result-track:2756949dbcf54dcf14c1b22a61555ccf2949ad9de11c0015893a8e46306d758e` |
| 9 | `lemma` | [oppositeShiftFunctorZero_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshiftfunctorzero-hom-app--580564d9e62b3a23449cf54f.md) | 104 | `result-track:580564d9e62b3a23449cf54fb215d92484f97f552ae6afaa2e98a5938ff9fc8e` |
| 10 | `lemma` | [oppositeShiftFunctorAdd_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshiftfunctoradd-inv-app--8e9ed200673bc2f93a3b1ccc.md) | 115 | `result-track:8e9ed200673bc2f93a3b1cccb6fb4b03a07123d401c8fda72af2a87a1a9549ca` |
| 11 | `lemma` | [oppositeShiftFunctorAdd_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshiftfunctoradd-hom-app--be662f22156710555bec2166.md) | 119 | `result-track:be662f22156710555bec2166ea47d65ee8af565648ae41f3fdad19352fedce89` |
| 12 | `lemma` | [oppositeShiftFunctorAdd'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshiftfunctoradd-inv-app--ea961926d532abca776db1f0.md) | 127 | `result-track:ea961926d532abca776db1f084fef875ee231832393bf61b61a0fef8b481cabc` |
| 13 | `lemma` | [oppositeShiftFunctorAdd'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshiftfunctoradd-hom-app--e7b583479cd290249cc6547f.md) | 133 | `result-track:e7b583479cd290249cc6547f703f2f06635d736a688991c86a4e0262e55c4a2e` |
| 14 | `def` | [OppositeShift.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshift-functor--ca7d67aa7ddccb6e38788484.md) | 150 | `declaration-track:ca7d67aa7ddccb6e38788484f3f25ea876cc69af2d27b84684f45d85c7abf253` |
| 15 | `def` | [OppositeShift.natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshift-nattrans--b7e2add316f13f53e9f31ea8.md) | 157 | `declaration-track:b7e2add316f13f53e9f31ea891e8e8815b7a9f6aa3545678fd4f5bdd047f6a95` |
| 16 | `instance` | [commShiftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/commshiftop--daffef4eed2f5abff6c8731f.md) | 167 | `declaration-track:daffef4eed2f5abff6c8731f826826b75b5571a861c12446a545d2d8171c99b9` |
| 17 | `lemma` | [commShiftOp_iso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/commshiftop-iso-eq--2ad2c7f9d243b0c264701c47.md) | 185 | `result-track:2ad2c7f9d243b0c264701c479981418261aa5ca92139249f168b0bd05ff6a434` |
| 18 | `def` | [commShiftUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/commshiftunop--0e596778f771ce0990e1eddb.md) | 193 | `declaration-track:0e596778f771ce0990e1eddb0ecb1edd9a9a1dc84968148934191c7bfe1f023e` |
| 19 | `instance` | [commShift_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/commshift-op--04d3d978ed7be41472aceaae.md) | 219 | `declaration-track:04d3d978ed7be41472aceaae81132c252b717757d668e9d77c37f5fec5275234` |
| 20 | `def` | [OppositeShift.natIsoId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshift-natisoid--33cb38c13f1ba8a3f4f1115d.md) | 238 | `declaration-track:33cb38c13f1ba8a3f4f1115d7a1de241a7c34ec84e907134cb515e1a86edd865` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/instance--e3fbdd07aa3b7435ff6fc4a2.md) | 243 | `declaration-track:e3fbdd07aa3b7435ff6fc4a28f655e19f4b679c7f8044ded6ca1b959dc4a4b94` |
| 22 | `def` | [OppositeShift.natIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshift-natisocomp--1229015b846c8964aac1444a.md) | 256 | `declaration-track:1229015b846c8964aac1444a16dff4c6e868cb656a6ba8b55aee1e029a48eea6` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/instance--4b6e3ea728e137658d5716b5.md) | 259 | `declaration-track:4b6e3ea728e137658d5716b5d2408bc61258745bc42c9c0577b63447f94eed8c` |
| 24 | `def` | [OppositeShift.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/oppositeshift-adjunction--53e1a0aa3188bad766f9cafb.md) | 274 | `declaration-track:53e1a0aa3188bad766f9cafb158639f975707ebd00ffbd238abe68e2b9538cc9` |
| 25 | `instance` | [commShift_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant30d98292c5782892ab435acbbba0dbfef0edec91b2a6f09548ffb09589759fcc.lean/declarations/commshift-op--6d63358010bf1e4b81186e49.md) | 302 | `declaration-track:6d63358010bf1e4b81186e491a7b323053b4292e0a14b6fa06d9aff1f160263d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
