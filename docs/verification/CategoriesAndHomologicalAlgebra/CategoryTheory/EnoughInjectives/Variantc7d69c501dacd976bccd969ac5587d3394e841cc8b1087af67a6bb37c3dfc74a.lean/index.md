# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnoughInjectives.Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e03ced67305858cd0ae71a5a1b78ce98b5d91986",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e03ced67305858cd0ae71a5a1b78ce98b5d91986`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.CommSq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.ColimCoyoneda` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Monomorphisms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Monomorphisms` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.LiftingProperties` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SmallObject.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.HasCardinalLT` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.TransfiniteIteration` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [generatingMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/generatingmonomorphisms--494132239910f14563c54012.md) | 77 | `declaration-track:494132239910f14563c540122d85ef2b8b53d4083a3d86155be675bb3a4979be` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/instance--b96e165a78f783dfbf3ff41b.md) | 80 | `declaration-track:b96e165a78f783dfbf3ff41b85d50e8e911f233994cb90ec46fed13fcdd65331` |
| 3 | `lemma` | [generatingMonomorphisms_le_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/generatingmonomorphisms-le-monomorphisms--6e03e628ddc2182226900d7e.md) | 85 | `result-track:6e03e628ddc2182226900d7e7fb594fb36463ad4d0df774c4b37fc78b7521cf4` |
| 4 | `lemma` | [isomorphisms_le_pushouts_generatingMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/isomorphisms-le-pushouts-generatingmonomorphisms--5ae2228692baa73ec985251c.md) | 92 | `result-track:5ae2228692baa73ec985251cc8d2be21790ed5aa16f8cfbe6690b81d8e6fdc14` |
| 5 | `lemma` | [exists_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/exists-pushouts--16e0d0fdd558086d526c94ea.md) | 109 | `result-track:16e0d0fdd558086d526c94ea8c60a968ec5e57e728058fceecdf977d1757e8d9` |
| 6 | `lemma` | [exists_larger_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/exists-larger-subobject--07efe73478553a0fd91c2c52.md) | 134 | `result-track:07efe73478553a0fd91c2c52146e1dfb9cb419487bf91a2566f0eda238420fe0` |
| 7 | `def` | [largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/largersubobject--ec42bcedc801284a7ae1f575.md) | 156 | `declaration-track:ec42bcedc801284a7ae1f575f2a4d69a2bdd9ca16a2f79a40601bef2f4c0145b` |
| 8 | `lemma` | [largerSubobject_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/largersubobject-top--a450d85e6a0332495c8d97a3.md) | 161 | `result-track:a450d85e6a0332495c8d97a3447904c8cbae60f945f0c995fa9973392be5fb3b` |
| 9 | `lemma` | [lt_largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/lt-largersubobject--1dcb7d34345d0e7e9f5efc01.md) | 163 | `result-track:1dcb7d34345d0e7e9f5efc0164b8331b8bbddda10a4bdad08fe53fb853826b3f` |
| 10 | `lemma` | [le_largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/le-largersubobject--f79713a72433d736da658532.md) | 169 | `result-track:f79713a72433d736da658532257cc3ed590f433535347243836d67ccff658c65` |
| 11 | `lemma` | [pushouts_ofLE_le_largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/pushouts-ofle-le-largersubobject--99cbd0829208e8a40eba07f1.md) | 176 | `result-track:99cbd0829208e8a40eba07f1023d8fc415c59451c7dbd9f5cf3a6f70acab3d7e` |
| 12 | `lemma` | [top_mem_range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/top-mem-range--affa04cc2cb2cbf5e56c1622.md) | 193 | `result-track:affa04cc2cb2cbf5e56c162254a6dcdee95ef9abd800fce5667ea17ed76eaff1` |
| 13 | `lemma` | [exists_ordinal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/exists-ordinal--c9c99a43897a46fc14822f0b.md) | 199 | `result-track:c9c99a43897a46fc14822f0ba914dd19dbb428b73e0fa7809e51ca1a3426d733` |
| 14 | `def` | [functorToMonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/functortomonoover--4be9d7b39a2819b26659dbe6.md) | 218 | `declaration-track:4be9d7b39a2819b26659dbe68e2dba13ca9d8f8de1d939a7ac9df59e9daf9578` |
| 15 | `abbrev` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/functor--f7bcc00fd0063c1314a3a081.md) | 224 | `declaration-track:f7bcc00fd0063c1314a3a081e2abcb0002d849b34405483938f427e5d1526430` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/instance--f4f4fea738b41e8005a010fc.md) | 227 | `declaration-track:f4f4fea738b41e8005a010fc4f3ea64a2525988772f3eca7856f979c3e0f8437` |
| 17 | `def` | [transfiniteCompositionOfShapeMapFromBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/transfinitecompositionofshapemapfrombot--820470481b48aee39ba7537f.md) | 242 | `declaration-track:820470481b48aee39ba7537ff4946733df097ea3fd1e077bb17b9f3f56ceb786` |
| 18 | `def` | [transfiniteCompositionOfShapeOfEqTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/transfinitecompositionofshapeofeqtop--0511c54a063e9d8ad7e3fa9b.md) | 266 | `declaration-track:0511c54a063e9d8ad7e3fa9b77a7091e9e343b3962e5a8f0d34e0ddab8a00574` |
| 19 | `lemma` | [exists_transfiniteCompositionOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/exists-transfinitecompositionofshape--40bef9f977691c5137521e7d.md) | 285 | `result-track:40bef9f977691c5137521e7d612d2c0f3d2d37e2663ad8e2a793c8015851b8fd` |
| 20 | `lemma` | [generatingMonomorphisms_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/generatingmonomorphisms-rlp--5a0c1f46728c7497143501ad.md) | 300 | `result-track:5a0c1f46728c7497143501adf8b9ceedc4608267d93cc3a0701b8850018f92b2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/instance--2b135cdb4b19e0994fe4a908.md) | 313 | `declaration-track:2b135cdb4b19e0994fe4a9087ce500d098d5f1c7ee1b4db11aff3d0add777672` |
| 22 | `lemma` | [llp_rlp_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/llp-rlp-monomorphisms--88070f81a98fe2c12eb7d955.md) | 332 | `result-track:88070f81a98fe2c12eb7d9557dbb1b7040c64df04410c8e47bee83f351367daa` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/instance--6c49771ffd3473e17a187975.md) | 344 | `declaration-track:6c49771ffd3473e17a187975af3a4370b0f4efb0076c75bb7807934289e7ae97` |
| 24 | `abbrev` | [monoMapFactorizationDataRlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/monomapfactorizationdatarlp--493bb9661da97ee0ce66b44c.md) | 353 | `declaration-track:493bb9661da97ee0ce66b44c86d6666f586ff4df01b05f0318cfceb7e0355c65` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/instance--f05d5568aa0bb1895ae46a52.md) | 357 | `declaration-track:f05d5568aa0bb1895ae46a52c67c8a5d0171910d1e518bfb9aac2f13a28cbd3c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/instance--033993b5e7fca8be071c4b8d.md) | 361 | `declaration-track:033993b5e7fca8be071c4b8dd54f78b4e555b9999672f4eb1e860defe031011c` |
| 27 | `instance` | [enoughInjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/declarations/enoughinjectives--b8251f8aa079077d0fd3fca1.md) | 368 | `declaration-track:b8251f8aa079077d0fd3fca199335db106ff2deb5d631304305e380fdf95184d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
