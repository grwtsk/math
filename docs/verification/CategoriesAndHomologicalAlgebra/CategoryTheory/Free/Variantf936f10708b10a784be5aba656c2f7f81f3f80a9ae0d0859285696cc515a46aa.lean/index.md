# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Free.Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "467b3b70715d48178fe161c1b283ae8dd57b0cdc",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `467b3b70715d48178fe161c1b283ae8dd57b0cdc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeBicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/freebicategory--86be6a790435afd45d37312d.md) | 43 | `declaration-track:86be6a790435afd45d37312d3767350de96ee19ac5e0e3f7cf0e7a485d113b9f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/instance--0c9a41b0479fd89e3be0934b.md) | 47 | `declaration-track:0c9a41b0479fd89e3be0934b645db8f8a01d0ea9654d117dcdcb85b2812650ff` |
| 3 | `inductive` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/hom--81def9fce84a27a1e7bc75b0.md) | 58 | `declaration-track:81def9fce84a27a1e7bc75b0c4101981f243e7a4a088dfec3fc86b6b091d9e8c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/instance--f68d4d945763187adda99560.md) | 64 | `declaration-track:f68d4d945763187adda9956007ac8d8a69069d2c3fdd9891878a4af051b14fc9` |
| 5 | `instance` | [quiver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/quiver--97e8aeff43fa01d6e1d51a62.md) | 67 | `declaration-track:97e8aeff43fa01d6e1d51a620e43f88b0fc697789f3be65874ee31ed6d4784c1` |
| 6 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/categorystruct--6dd3bbd892ab786131806b92.md) | 70 | `declaration-track:6dd3bbd892ab786131806b92aadc6c4b8d7af00bf3da3f1a68c799b962479b1f` |
| 7 | `inductive` | [Hom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/hom--6773eeb4452ebc23547706cf.md) | 77 | `declaration-track:6773eeb4452ebc23547706cfcb3fae89e1f220c4211521864f10e75593bb70f7` |
| 8 | `inductive` | [Rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/rel--1233537a2523b383a9cac30e.md) | 130 | `declaration-track:1233537a2523b383a9cac30efb3fe1741473bce1643dfae82f9c7a30ec211ce5` |
| 9 | `instance` | [homCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/homcategory--b60c827621987fbf34e93bdb.md) | 178 | `declaration-track:b60c827621987fbf34e93bdbace5b33744e992ec30ece8449b3f4b67c2607ab4` |
| 10 | `instance` | [bicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/bicategory--9cd5723ff989d1960eae0440.md) | 194 | `declaration-track:9cd5723ff989d1960eae0440c16e3b7e7da6d3903753c186f85fe7bee109b756` |
| 11 | `abbrev` | [Hom₂.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/hom-mk--db4f5e8a8b7dbb196912f80a.md) | 245 | `declaration-track:db4f5e8a8b7dbb196912f80ad89e2daa60af3538aa9126a7e1d425e735d15245` |
| 12 | `theorem` | [mk_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-vcomp--8f0ddbed6df204107e2e9d56.md) | 249 | `result-track:8f0ddbed6df204107e2e9d5638ac7266509013a5f384bccb276d2f68dadc4bba` |
| 13 | `theorem` | [mk_whisker_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-whisker-left--b809d04eead09741f28559ad.md) | 255 | `result-track:b809d04eead09741f28559adcecfef5c89ab1c927b8e03417c094bc8d31203db` |
| 14 | `theorem` | [mk_whisker_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-whisker-right--5e7b3d6d38e6617695a1d66f.md) | 261 | `result-track:5e7b3d6d38e6617695a1d66fa74595ac420db33d6e934c493a017a95aca8ca74` |
| 15 | `theorem` | [comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/comp-def--646b6b2ccfcf9f98b2f35e34.md) | 274 | `result-track:646b6b2ccfcf9f98b2f35e3411b929f81bf8db96e64e09b04e5b4247de88a0a4` |
| 16 | `theorem` | [mk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-id--3a98f633c564437473bee016.md) | 279 | `result-track:3a98f633c564437473bee016848e36a5ed78e85ce02e851443bba9ca722aa98f` |
| 17 | `theorem` | [mk_associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-associator-hom--c4639cfe5823e3cf5934e423.md) | 284 | `result-track:c4639cfe5823e3cf5934e4232f869cfcefa861c17ffb508777d45d3e2909e7b3` |
| 18 | `theorem` | [mk_associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-associator-inv--7b07f8a8628aab207148be54.md) | 289 | `result-track:7b07f8a8628aab207148be5489b2e1eca5e40f2a2c66d771670aea73dc101523` |
| 19 | `theorem` | [mk_left_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-left-unitor-hom--5e26ba17396f8a8f5efd134c.md) | 294 | `result-track:5e26ba17396f8a8f5efd134cb76bf6aca12def7d4b0ec8ea848e9ae4ef381e3f` |
| 20 | `theorem` | [mk_left_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-left-unitor-inv--9bf5f0294a544d0651d06db4.md) | 299 | `result-track:9bf5f0294a544d0651d06db486158e23bf38f2805cd042df79d4c464c073e493` |
| 21 | `theorem` | [mk_right_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-right-unitor-hom--79f56be3992bd5555d913ef1.md) | 304 | `result-track:79f56be3992bd5555d913ef193e6cf3d67dd69bf8da98686cf9c1cfcdb69867f` |
| 22 | `theorem` | [mk_right_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/mk-right-unitor-inv--f1fd90eeeb202a56cc73c0ac.md) | 309 | `result-track:f1fd90eeeb202a56cc73c0ac35af16a125e9ba866e2c53a87288d8c7bfce1aab` |
| 23 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/of--45bf761e154167d326031d25.md) | 315 | `declaration-track:45bf761e154167d326031d259fca3a900bf7f9cbbc26867bf18814e00fd94885` |
| 24 | `def` | [liftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/lifthom--51790a3e07ec91c0796f13e9.md) | 330 | `declaration-track:51790a3e07ec91c0796f13e955ced90dc1a84773c8a96105fe06d1dc2012b0fd` |
| 25 | `theorem` | [liftHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/lifthom-id--b9e57b71908c7c572fa90485.md) | 337 | `result-track:b9e57b71908c7c572fa90485ff1d45353390dc8dcc5e2d2cbd182dddbad368f3` |
| 26 | `theorem` | [liftHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/lifthom-comp--4e80904fe2e7f377f234fd28.md) | 342 | `result-track:4e80904fe2e7f377f234fd2831c341384f368cd526002b7fc7e63cac986134cd` |
| 27 | `def` | [liftHom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/lifthom--05a72edf9633360581232270.md) | 357 | `declaration-track:05a72edf9633360581232270e86fdf965968eb9e82df10e889564f46d0826962` |
| 28 | `theorem` | [liftHom₂_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/lifthom-congr--340a5ce6cd6726a44c164126.md) | 372 | `result-track:340a5ce6cd6726a44c164126cd5767534c4b7c96cf35a967a7b2b17eb5404197` |
| 29 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantf936f10708b10a784be5aba656c2f7f81f3f80a9ae0d0859285696cc515a46aa.lean/declarations/lift--6bfc6261185658c1e35a5e0c.md) | 380 | `declaration-track:6bfc6261185658c1e35a5e0c0ccb532cef483e9d024ccab4216a4aa05193a3ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
