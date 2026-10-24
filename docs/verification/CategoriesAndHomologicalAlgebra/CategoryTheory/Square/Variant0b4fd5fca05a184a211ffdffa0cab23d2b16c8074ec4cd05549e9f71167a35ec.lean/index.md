# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Square.Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "274289d0a3fe09b7fedba52af8af4f3628ebed79",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `274289d0a3fe09b7fedba52af8af4f3628ebed79`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Arrow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CommSq` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/square--7a2988afc82a6b2150108b36.md) | 43 | `declaration-track:7a2988afc82a6b2150108b3642b7807298c3f7f4a18ea9ec874e9b41edc568a6` |
| 2 | `lemma` | [commSq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/commsq--8278acb8ee8c42ec04ded1f6.md) | 66 | `result-track:8278acb8ee8c42ec04ded1f642dbe14eb2adef6aea235e4a7fbd5686a45b429d` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/hom--95ea9135a1604fa1581c07c5.md) | 72 | `declaration-track:95ea9135a1604fa1581c07c51fbd792203a3fc33f994c9206d258e56f21e7e8f` |
| 4 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/id--5259efe5b1615772fd50587f.md) | 92 | `declaration-track:5259efe5b1615772fd50587f3ba18fc57d8bb7cf126bc929d4b71ec006016363` |
| 5 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/comp--559e59a7349310d3dc53168f.md) | 100 | `declaration-track:559e59a7349310d3dc53168fc79454e86528587133e5968ca51337325fd40aa2` |
| 6 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/category--a2a2e448add772f08d43c9ff.md) | 109 | `declaration-track:a2a2e448add772f08d43c9ffafc1a34631f49203e9f857f37e47010f47a1e0af` |
| 7 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/hom-ext--99485a0d1e347e31372ea524.md) | 115 | `result-track:99485a0d1e347e31372ea524f4f53924c5bfb2860164eee4b801df2f6a442e11` |
| 8 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/isomk--d039f2850a08ca7efc529235.md) | 121 | `declaration-track:d039f2850a08ca7efc52923505492227e329800de374ccfdf806036143e89e21` |
| 9 | `def` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/flip--8b2e8c922971a338db25d701.md) | 149 | `declaration-track:8b2e8c922971a338db25d7016b3c97ad7fdd41ffc719f244fac8ca2c05c1b834` |
| 10 | `def` | [flipFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/flipfunctor--31b6efc51f50e65559c52d47.md) | 158 | `declaration-track:31b6efc51f50e65559c52d4771d371c21cf303e97a1d0b5d3ffab9291b17d669` |
| 11 | `def` | [flipEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/flipequivalence--976cd667170514be982acd4b.md) | 168 | `declaration-track:976cd667170514be982acd4bb9fec251f6e7712abbb9e85c9c9a7a7d08c109a5` |
| 12 | `def` | [toArrowArrowFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/toarrowarrowfunctor--99baf0a5be7f1bc91eb411fb.md) | 178 | `declaration-track:99baf0a5be7f1bc91eb411fb87e9a45e4f3a3f9f55c1b6e857ba4f7f8d0b1568` |
| 13 | `def` | [fromArrowArrowFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/fromarrowarrowfunctor--150fce3ae012adefc1d3ee8f.md) | 187 | `declaration-track:150fce3ae012adefc1d3ee8f0a81c9e6de356513dbc25faf8bf42357f1315b23` |
| 14 | `def` | [arrowArrowEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/arrowarrowequivalence--02341eb68c40670b08916b58.md) | 203 | `declaration-track:02341eb68c40670b08916b580d5ffb266e916b419d3655ee5cceccb26c0a0ad7` |
| 15 | `def` | [toArrowArrowFunctor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/toarrowarrowfunctor--a8451934eeca53f1e6d0469b.md) | 213 | `declaration-track:a8451934eeca53f1e6d0469bcfa05e2642fbaa48c892cce2d29a3b379025c609` |
| 16 | `def` | [fromArrowArrowFunctor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/fromarrowarrowfunctor--cc02d4ca1eb2f3b4ac975ad2.md) | 222 | `declaration-track:cc02d4ca1eb2f3b4ac975ad23093342dbdabab297c03f7fcf3411fb355ce2263` |
| 17 | `def` | [arrowArrowEquivalence'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/arrowarrowequivalence--a38eafb4aba5b34a3852f2e0.md) | 238 | `declaration-track:a38eafb4aba5b34a3852f2e01ca91da63932b027ac2d6708a8de4e75e2ec3040` |
| 18 | `def` | [evaluation₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/evaluation--e5c9b6adbdd24969d0592137.md) | 246 | `declaration-track:e5c9b6adbdd24969d0592137754690c053d34d839991e2ccc12cb478bf0161e0` |
| 19 | `def` | [evaluation₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/evaluation--a3c0fa2ee5969959b4633194.md) | 252 | `declaration-track:a3c0fa2ee5969959b463319465db552ac586e6c8a5597749acd9e8480a16a313` |
| 20 | `def` | [evaluation₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/evaluation--f225ff2a2b1751e941916349.md) | 258 | `declaration-track:f225ff2a2b1751e941916349fd4d9710d365e9dbc1a2eafeedf9c89590c2fae7` |
| 21 | `def` | [evaluation₄](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/evaluation--48c4f348844a9f6c560520c7.md) | 264 | `declaration-track:48c4f348844a9f6c560520c730e6e3638da43e593a42335dce6ef3ef70def3a5` |
| 22 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/op--c24cb4136354f181d30bb0d3.md) | 271 | `declaration-track:c24cb4136354f181d30bb0d3017b0e1b2b494551c9c708001b670996d0185c4a` |
| 23 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/unop--e201ed94802317a60d35ecee.md) | 281 | `declaration-track:e201ed94802317a60d35ecee98c2de3831ab6f686c795bd36a282958e094e8bd` |
| 24 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/opfunctor--487140dbc0311acf1a306244.md) | 290 | `declaration-track:487140dbc0311acf1a306244f65b44ffc47587228dcffa1603fe47dbcc17b272` |
| 25 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/unopfunctor--96baefa90f6079502f159b68.md) | 303 | `declaration-track:96baefa90f6079502f159b680e9fcc7b16a81ab37a4c4a69bd4ba82018a40d9f` |
| 26 | `def` | [opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/opequivalence--d96d6285d27cd0d680ecdca3.md) | 316 | `declaration-track:d96d6285d27cd0d680ecdca3d341ad819959f95ec6cff37fd104b6c2846f6d13` |
| 27 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/map--0414c99be5f26c84bd964195.md) | 324 | `declaration-track:0414c99be5f26c84bd964195029103f95b937ac73ba09d7392543bcabecfd1ef` |
| 28 | `def` | [mapSquare](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/mapsquare--ad9d3defef3dc37384b1c4a8.md) | 339 | `declaration-track:ad9d3defef3dc37384b1c4a838797fc97dcf8856fb7e373f7ea6b6257289f220` |
| 29 | `def` | [NatTrans.mapSquare](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/nattrans-mapsquare--ab76369905e698c0fa502a5d.md) | 356 | `declaration-track:ab76369905e698c0fa502a5dda137ab9348c7cdbe3010a154e40ce681e5d94e7` |
| 30 | `def` | [Square.mapFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/declarations/square-mapfunctor--f18a7d8ae2aa8ed775a31015.md) | 366 | `declaration-track:f18a7d8ae2aa8ed775a31015c2ab1cac00fa06219cb8ae492fac9963e05e815d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
