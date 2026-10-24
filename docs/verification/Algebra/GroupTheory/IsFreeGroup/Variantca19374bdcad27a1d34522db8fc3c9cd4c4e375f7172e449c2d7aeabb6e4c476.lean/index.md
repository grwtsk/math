# Verification target: GRWTSK.Algebra.GroupTheory.IsFreeGroup.Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc2711c1936db59e5f80ad2e7d8932b64d2389d7",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc2711c1936db59e5f80ad2e7d8932b64d2389d7`.

Source path: `GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FreeGroup.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FreeGroupBasis](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/freegroupbasis--1536b4eba3db38927735e991.md) | 51 | `declaration-track:1536b4eba3db38927735e99169f1c808d6693a637642cd474c3152d7b0333459` |
| 2 | `class` | [IsFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/isfreegroup--2265a3f30e9b7ea7af8bba8f.md) | 60 | `declaration-track:2265a3f30e9b7ea7af8bba8ff0d24c8efe952f33aaf949f87f44deb3fbbc75b9` |
| 3 | `instance` | [instFunLike](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/instfunlike--e0f2ad078addbdb34ee24e27.md) | 69 | `declaration-track:e0f2ad078addbdb34ee24e276e144eddad18fdd935073a79607ce348d7908974` |
| 4 | `lemma` | [repr_apply_coe](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/repr-apply-coe--b3d10ce480064464f3570650.md) | 78 | `result-track:b3d10ce480064464f357065043e97a17f29c5584902e8f858af946f0c1ced193` |
| 5 | `def` | [ofFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/offreegroup--055d04d4ab9cd6c6f6ba3bbb.md) | 83 | `declaration-track:055d04d4ab9cd6c6f6ba3bbbfe28ce7ad0e27d6d5ed7c1a5913be9647b56243e` |
| 6 | `lemma` | [ofFreeGroup_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/offreegroup-apply--289aee8852b8f5e851c24465.md) | 85 | `result-track:289aee8852b8f5e851c24465e7a503048e23245a7ff13b9631779c24c9873cd7` |
| 7 | `def` | [reindex](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/reindex--5fd61c53ee1b3ba0c3c26033.md) | 90 | `declaration-track:5fd61c53ee1b3ba0c3c26033a465857006168dcb5b6be8cde75a46cc9cec2163` |
| 8 | `lemma` | [reindex_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/reindex-apply--fa5814a168b25ed8a6b2896b.md) | 93 | `result-track:fa5814a168b25ed8a6b2896b9f05820bb053f1a47bd48894bdd3d4b626e6e1e5` |
| 9 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/map--c848d31f1433498b342ca296.md) | 97 | `declaration-track:c848d31f1433498b342ca296ad09b29a86fff623bf56332587cf55bf87812da6` |
| 10 | `lemma` | [map_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/map-apply--58be97a1a22fe69a8f768624.md) | 100 | `result-track:58be97a1a22fe69a8f7686249eef47b9150eff6f2c7081b7260a878265a9c3fe` |
| 11 | `lemma` | [injective](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/injective--908126f0ea33f2d49e3a9abe.md) | 103 | `result-track:908126f0ea33f2d49e3a9abe0b9f1acf73d9dfa0fe059c4879dac4f07e15f2d9` |
| 12 | `lemma` | [isFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/isfreegroup--a25832e075b02c13a662a084.md) | 107 | `result-track:a25832e075b02c13a662a084c6bf5af45522fe0026bee88f12f4cd95b82d6683` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/instance--37a21ee629c34bf06c91bf20.md) | 110 | `declaration-track:37a21ee629c34bf06c91bf2060699c378fa6ba0d6ec0d2edfc3a6c5ff2a18f58` |
| 14 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/lift--01daee0ed5586516af602fa2.md) | 116 | `declaration-track:01daee0ed5586516af602fa23c2b5b0cbf3ce5f8f0dd8dfe9bb10a6dbd5a41eb` |
| 15 | `lemma` | [ext_hom](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/ext-hom--b47bd2e5539beb4d180ee2f3.md) | 128 | `result-track:b47bd2e5539beb4d180ee2f317b76fa11c25dbb01846cc992fe489acaf107b9e` |
| 16 | `def` | [ofLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/oflift--a67d0dffc5a5da5d8a33df5b.md) | 134 | `declaration-track:a67d0dffc5a5da5d8a33df5bbbea0fa4f8a7f720e097dee503c31eea2cc7d756` |
| 17 | `def` | [ofUniqueLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/ofuniquelift--62d379e5d64076e35612a3c3.md) | 153 | `declaration-track:62d379e5d64076e35612a3c3214d310fde668488389f8b0ea589120425bc31c6` |
| 18 | `def` | [Generators](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/generators--9329d5e96fb80a5fef253248.md) | 172 | `declaration-track:9329d5e96fb80a5fef25324873faf260fe7e77e862681abde475dc8ded0cdcfc` |
| 19 | `def` | [basis](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/basis--a219414d1a13cea9473876f7.md) | 179 | `declaration-track:a219414d1a13cea9473876f7319510fdb3e480d700e9d7f1e67f5c968454dba3` |
| 20 | `def` | [toFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/tofreegroup--8e2c6fc39fa4bdcba4f90e15.md) | 183 | `declaration-track:8e2c6fc39fa4bdcba4f90e1525acc2909380f9cf31634e284d39060ea7b892d5` |
| 21 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/of--acd93f72ef8bf829f444a2d6.md) | 189 | `declaration-track:acd93f72ef8bf829f444a2d6970a383d5d09470089d5d4a3cedde73a4e2e66e3` |
| 22 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/lift--28342e335a66547e2e80a0f2.md) | 196 | `declaration-track:28342e335a66547e2e80a0f265db616003832f2994d56cbfa24c6222349ac09f` |
| 23 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/lift-of--0e92b3e2f10f9e71b62a009a.md) | 200 | `result-track:0e92b3e2f10f9e71b62a009a05c6613de464b6b8cb43e649c75dee2af96373f7` |
| 24 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/lift-symm-apply--99a474c9b45b43f36b42bd1f.md) | 204 | `result-track:99a474c9b45b43f36b42bd1f9735cdd15384b912c4f7dc53932f46e8110f3568` |
| 25 | `theorem` | [ext_hom](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/ext-hom--c514b68416c9aa88ea9f4604.md) | 208 | `result-track:c514b68416c9aa88ea9f4604ee8454ea7886fcdc2bd3d94877ec37d079b35b40` |
| 26 | `theorem` | [unique_lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/unique-lift--e5a9cf589e291cf1577e15a7.md) | 216 | `result-track:e5a9cf589e291cf1577e15a76e4ab59f42762f5fe8891862f2a479611b52256d` |
| 27 | `lemma` | [ofLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/oflift--f1e28d4189470c9475e6fd66.md) | 222 | `result-track:f1e28d4189470c9475e6fd665fb8be24555a29ffba458e62bafce00ef6c51137` |
| 28 | `lemma` | [ofUniqueLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/ofuniquelift--c63375a44af5358b81d38a8d.md) | 230 | `result-track:c63375a44af5358b81d38a8d1bc30ca8ee3f21f8270d26ee1ae0843e63f2072f` |
| 29 | `lemma` | [ofMulEquiv](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean/declarations/ofmulequiv--bb35d8b76e4cb76b1b93e5d6.md) | 235 | `result-track:bb35d8b76e4cb76b1b93e5d6f5a284d8fbdecf00f93a5655ae612ca1116d8253` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
