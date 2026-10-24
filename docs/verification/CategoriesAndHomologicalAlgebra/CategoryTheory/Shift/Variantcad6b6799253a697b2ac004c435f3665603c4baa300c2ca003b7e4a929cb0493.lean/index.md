# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shift.Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59aec95e1b315740c0dd2c7fbc826601cc276df9",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59aec95e1b315740c0dd2c7fbc826601cc276df9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Quotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctor--1fe162652fc3eac6bee4b4a4.md) | 50 | `declaration-track:1fe162652fc3eac6bee4b4a4962ad9fe633c51f77e4e604719a492f5eac8764f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/instance--08ac53a2945cbd139a127fb9.md) | 72 | `declaration-track:08ac53a2945cbd139a127fb90328c87338babaad49f27fe945bd124c68ee25b1` |
| 3 | `def` | [shiftFunctorObjXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctorobjxiso--a5e9b603ad0e330dce086dd6.md) | 78 | `declaration-track:a5e9b603ad0e330dce086dd6d7d5b17efc474c325e27c9e45d12fe44b936abf9` |
| 4 | `def` | [shiftFunctorZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctorzero--6748159e0a90050d88f76d79.md) | 90 | `declaration-track:6748159e0a90050d88f76d79b324a98cf6339a2494977e4343fd92b8c83f58ad` |
| 5 | `def` | [shiftFunctorAdd'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctoradd--b8c0e9ec51a41bbb76e5cd67.md) | 99 | `declaration-track:b8c0e9ec51a41bbb76e5cd67e142c536f8ec84363184a1ce8fdf26bba36eac41` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/instance--740aa6233eb89296bb3ece72.md) | 112 | `declaration-track:740aa6233eb89296bb3ece720087636d89cac671091283187b794f0697b4ccda` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/instance--e4c5ef7209dcad6d5c37e0f8.md) | 117 | `declaration-track:e4c5ef7209dcad6d5c37e0f8818988fca7cd08999159cbfb5be8bc2959cebaf9` |
| 8 | `lemma` | [shiftFunctor_obj_X'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctor-obj-x--9b584e7055c7aee7b0dda5ab.md) | 124 | `result-track:9b584e7055c7aee7b0dda5ab8db7d0dcd07337f802e33c7446b298e0d28b4d70` |
| 9 | `lemma` | [shiftFunctor_map_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctor-map-f--bfc08d7950a5500211f410c7.md) | 128 | `result-track:bfc08d7950a5500211f410c789c6cec8f00ab960f1a8156564f371a060d347b1` |
| 10 | `lemma` | [shiftFunctor_obj_d'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctor-obj-d--225e13e135f03d11465164fa.md) | 132 | `result-track:225e13e135f03d11465164fa0dc97dd6a2237a38a92d589900774103f227908a` |
| 11 | `lemma` | [shiftFunctorAdd_inv_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctoradd-inv-app-f--76effc9498b45887678fb953.md) | 136 | `result-track:76effc9498b45887678fb9535924f183bf091e0d4dbfa29c60edd42a8d2b3252` |
| 12 | `lemma` | [shiftFunctorAdd_hom_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctoradd-hom-app-f--8cc8f990a92e1cd421b0e688.md) | 140 | `result-track:8cc8f990a92e1cd421b0e68872adffd21e268f3e38eb8d7aab57491f87ff4aa6` |
| 13 | `lemma` | [shiftFunctorAdd'_inv_app_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctoradd-inv-app-f--f1f145aaa002d9d8ddae2c1e.md) | 150 | `result-track:f1f145aaa002d9d8ddae2c1e04db48706b008a33f7feec3288f4d9402f869230` |
| 14 | `lemma` | [shiftFunctorAdd'_hom_app_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctoradd-hom-app-f--e595b9f4f095668e3f309de4.md) | 156 | `result-track:e595b9f4f095668e3f309de43fef6cf24a2e9a4d0a2e089173163a426ae37df5` |
| 15 | `lemma` | [shiftFunctorZero_inv_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctorzero-inv-app-f--53a3b0aeed6eaa7ef7b66bf0.md) | 162 | `result-track:53a3b0aeed6eaa7ef7b66bf0b279731b6bdcb5814432ff1b8b75a05134d9f28b` |
| 16 | `lemma` | [shiftFunctorZero_hom_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctorzero-hom-app-f--a78bc9650296f548ad9eabb5.md) | 166 | `result-track:a78bc9650296f548ad9eabb580ac9dfa92986471bc1abf6035bc5fb77309e3d9` |
| 17 | `lemma` | [XIsoOfEq_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/xisoofeq-shift--73c7f2ab4e39d141a4f8998d.md) | 176 | `result-track:73c7f2ab4e39d141a4f8998dc5d75e53ffe1af406d78920f7fa80e7d951c1c40` |
| 18 | `lemma` | [shiftFunctorAdd'_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctoradd-eq--ada725a868688e8fe80a7f54.md) | 181 | `result-track:ada725a868688e8fe80a7f54dde6a402c402860ef58f983255cfe13c7cdb9ea3` |
| 19 | `lemma` | [shiftFunctorAdd_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctoradd-eq--cac20b405b6b84e9fef0317a.md) | 187 | `result-track:cac20b405b6b84e9fef0317ad229dbe4d2288a0401b5a309c896b420ad521146` |
| 20 | `lemma` | [shiftFunctorZero_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctorzero-eq--1277906eb7293b27a38513c9.md) | 191 | `result-track:1277906eb7293b27a38513c94fd2f0b76ec2c96ba0748efa599097226795816a` |
| 21 | `lemma` | [shiftFunctorComm_hom_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shiftfunctorcomm-hom-app-f--ffbdb6a4017c2b9ec9b880d5.md) | 198 | `result-track:ffbdb6a4017c2b9ec9b880d55449748682499415a53b6d51b0096e62bf3520cd` |
| 22 | `def` | [shiftEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shifteval--fc111957b2e81515da9e8012.md) | 214 | `declaration-track:fc111957b2e81515da9e80128878ca8704c4987043d7fdbb9b59d924fa5a0f46` |
| 23 | `def` | [mapCochainComplexShiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/mapcochaincomplexshiftiso--a63724c344d70150e0c78df6.md) | 237 | `declaration-track:a63724c344d70150e0c78df6cfde38e299dfa2e847b2f77aa330d5cb5edbd78d` |
| 24 | `instance` | [commShiftMapCochainComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/commshiftmapcochaincomplex--5178e061ace0544631dbd322.md) | 243 | `declaration-track:5178e061ace0544631dbd32233a90d15c90840dd7fe7f6cc4ca7e3a7c6d6e5dc` |
| 25 | `lemma` | [mapHomologicalComplex_commShiftIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/maphomologicalcomplex-commshiftiso-eq--5f2fd9d9bf3a5bedb88bcf1a.md) | 262 | `result-track:5f2fd9d9bf3a5bedb88bcf1ad367dcefcd4b33c8b8b17055b9f8f529adbdbfd5` |
| 26 | `lemma` | [mapHomologicalComplex_commShiftIso_hom_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/maphomologicalcomplex-commshiftiso-hom-app-f--62b4ee12a287bbbbad5e8db9.md) | 267 | `result-track:62b4ee12a287bbbbad5e8db9bff9d37fb5ce1ce5933d4e6e788cfab580aff97b` |
| 27 | `lemma` | [mapHomologicalComplex_commShiftIso_inv_app_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/maphomologicalcomplex-commshiftiso-inv-app-f--c60b98cb019f29f139dfc466.md) | 271 | `result-track:c60b98cb019f29f139dfc466eb1ef8478bd93d6523546a56d9ac0b0bd379913e` |
| 28 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/shift--6bcebd73c32759e951e68aa9.md) | 284 | `declaration-track:6bcebd73c32759e951e68aa99eab0bcc65a94140900eacd2ab00b1f65acdef99` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/instance--4e3f6a872bbd34fc44d29e11.md) | 307 | `declaration-track:4e3f6a872bbd34fc44d29e118fbe0294fff289aa51d43042d08b1026ac44d73f` |
| 30 | `instance` | [hasShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/hasshift--6363b5484c60be25a829934e.md) | 310 | `declaration-track:6363b5484c60be25a829934ed2ae309276854b649703557d7d4d5603468207c0` |
| 31 | `instance` | [commShiftQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/commshiftquotient--3ad0068bef96fb3cf5e6bd9c.md) | 315 | `declaration-track:3ad0068bef96fb3cf5e6bd9cfdae122e66ac0ee8234b388bdca9827035b9942a` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/instance--68e6dcc83101bdae672db49c.md) | 319 | `declaration-track:68e6dcc83101bdae672db49cf0a73400d03329ec7af6f55de784e2140cb6470b` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/instance--2756a4b1a602dbe4a37bc760.md) | 329 | `declaration-track:2756a4b1a602dbe4a37bc760117200b4e655ac38b660af09d2ae1e013b02ac27` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantcad6b6799253a697b2ac004c435f3665603c4baa300c2ca003b7e4a929cb0493.lean/declarations/instance--26cd677c04678769a3f5320f.md) | 332 | `declaration-track:26cd677c04678769a3f5320f6e3cf5db2e280654c48420a7f0f3d70f372f26a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
