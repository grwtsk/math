# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteComposition.Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a431c71f9762c88849569123d172f5fa6231abb0",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a431c71f9762c88849569123d172f5fa6231abb0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.EventuallyConstant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.TransfiniteCompositionOfShape` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Shrink` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.SuccOrder` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.UnivLE` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransfiniteCompositionOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositionofshape--6cfa87d96d7e49e2e63c61cc.md) | 58 | `declaration-track:6cfa87d96d7e49e2e63c61ccc6b39cdae94703fadb872e712e6e7bee3a601e11` |
| 2 | `def` | [ofArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/ofarrowiso--a471e7d0c31f9a1f2d8dd665.md) | 71 | `declaration-track:a471e7d0c31f9a1f2d8dd6653f28f0e16b03a1c889f8e93e3567e84723941083` |
| 3 | `def` | [ofLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/ofle--c07ef9f051e631ff5026821a.md) | 80 | `declaration-track:c07ef9f051e631ff5026821a1afbebe76c7ddfab8b58eef166078b4a0c0fd06e` |
| 4 | `def` | [ofOrderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/oforderiso--23a46635019bbc4b204856ca.md) | 87 | `declaration-track:23a46635019bbc4b204856ca9ebce63e9c80acf1a4bb35fea5b4119dd0ffb2c9` |
| 5 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/map--e961b99c5f5e643582e51ad6.md) | 104 | `declaration-track:e961b99c5f5e643582e51ad6c5072122dea6034a4bf4b39f8297b7167b0eb848` |
| 6 | `def` | [iic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/iic--f1e7b3311921747e999fa5d3.md) | 114 | `declaration-track:f1e7b3311921747e999fa5d3b8ac94091fae980a5774829810246ea65e17fcf8` |
| 7 | `def` | [ici](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/ici--1016adafc937556708aefb33.md) | 131 | `declaration-track:1016adafc937556708aefb331f6e0368e86d58ab328ffba32ce94e70d0d299d3` |
| 8 | `def` | [ofComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/ofcomposablearrows--5303b7511e9657910fe5f4ef.md) | 149 | `declaration-track:5303b7511e9657910fe5f4ef1eeb17e997d1f57840a455df2269e4799ba73115` |
| 9 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/id--72ab900d689c6aa1bcd2f178.md) | 166 | `declaration-track:72ab900d689c6aa1bcd2f178a5286834e9e5c39f876ceb8339e6e53793b1c239` |
| 10 | `def` | [ofMem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/ofmem--e232d4c12a218ee1f2677a3e.md) | 173 | `declaration-track:e232d4c12a218ee1f2677a3e77c313ac8e923c5ebffb6d3438646a59c2d16d24` |
| 11 | `def` | [ofComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/ofcomp--3f71ad7aa08246d3619bc4dd.md) | 179 | `declaration-track:3f71ad7aa08246d3619bc4dd2d7ef4e697be7d3781aa5c00dd59a266e216ff6b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/instance--10cdc810ffc5029fd06c8f63.md) | 189 | `declaration-track:10cdc810ffc5029fd06c8f632c5bdeda9798aafdf9916df8bfc5f6d7bc239310` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/instance--d1fe5e9c2e33901ad94aa415.md) | 207 | `declaration-track:d1fe5e9c2e33901ad94aa41559fbe6833988d40673b39c87bd863f4eba6f5a30` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/instance--935d1b8a1731e5011bc68d23.md) | 210 | `declaration-track:935d1b8a1731e5011bc68d2358031a5bb7ba884000a277fd9f49b8fce49a5973` |
| 15 | `lemma` | [isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/isiso--7a70302f1876018a70d3fcd4.md) | 216 | `result-track:7a70302f1876018a70d3fcd4b2ac14941a7034d8c475b6fd88d4309ec20fdd91` |
| 16 | `def` | [transfiniteCompositionsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositionsofshape--02231447f12826b28867ec88.md) | 227 | `declaration-track:02231447f12826b28867ec88bd55c35cb414c3d1cd60efab6952e78738c17f6f` |
| 17 | `lemma` | [transfiniteCompositionsOfShape_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositionsofshape-monotone--8a027ce24a62f63362ff5adf.md) | 230 | `result-track:8a027ce24a62f63362ff5adf5c32ced4d8150cd6ced8fd35ae367a5f090563d3` |
| 18 | `lemma` | [transfiniteCompositionsOfShape_eq_of_orderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositionsofshape-eq-of-orderiso--22469445576bc236bced1d61.md) | 236 | `result-track:22469445576bc236bced1d61657c58392edc0f95349cfe20a3fad3ff672239c9` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/instance--0a08cec91d01cb34823b8446.md) | 242 | `declaration-track:0a08cec91d01cb34823b8446cb7ba7b372aadfc674f0f54bebfa6acb7076c19d` |
| 20 | `lemma` | [TransfiniteCompositionOfShape.mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositionofshape-mem--880ce98d17bb4ad58d969a72.md) | 246 | `result-track:880ce98d17bb4ad58d969a72eb1298f1fc43203340de5e1c7ed43ac335ed963e` |
| 21 | `lemma` | [transfiniteCompositionsOfShape_map_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositionsofshape-map-of-preserves--8733dcd9bf182e2bf26d30e1.md) | 250 | `result-track:8733dcd9bf182e2bf26d30e1890aba1abd69e3f9eae6bc17d6dee5a54016dbd5` |
| 22 | `class` | [IsStableUnderTransfiniteCompositionOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/isstableundertransfinitecompositionofshape--601a0f3d7986bb56ca8ffe2a.md) | 263 | `declaration-track:601a0f3d7986bb56ca8ffe2a992ea1034da8dbd013e02f67ada518e7085d945e` |
| 23 | `lemma` | [transfiniteCompositionsOfShape_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositionsofshape-le--ce8892bb91797ca76e0398bf.md) | 266 | `result-track:ce8892bb91797ca76e0398bf7f5959ca375c4f72a55fe3425a1ea3bff2ca6c6d` |
| 24 | `lemma` | [isStableUnderTransfiniteCompositionOfShape_iff_of_orderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/isstableundertransfinitecompositionofshape-iff-of-orderiso--d08ca7b3bac809a7cf9bcc63.md) | 272 | `result-track:d08ca7b3bac809a7cf9bcc63f5f8871345ca13c22595e0e6791466b69dc5b05f` |
| 25 | `abbrev` | [IsStableUnderInfiniteComposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/isstableunderinfinitecomposition--5bceaea62751aba2c5114e5e.md) | 283 | `declaration-track:5bceaea62751aba2c5114e5e8ce4f37935b2fd910890913e375ed4c221f01539` |
| 26 | `class` | [IsStableUnderTransfiniteComposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/isstableundertransfinitecomposition--0e0b4beb827756f6e3dba5e0.md) | 289 | `declaration-track:0e0b4beb827756f6e3dba5e0b39408e1090c1cb1afe4b47b96aecb8724e1beb7` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/instance--8ad319a1d6b446c6ad4450fb.md) | 298 | `declaration-track:8ad319a1d6b446c6ad4450fb34889470a0c6ae723b969b6e0fb6b758128b939e` |
| 28 | `lemma` | [shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/shrink--69462353c48adb9c24686981.md) | 305 | `result-track:69462353c48adb9c2468698180f04dafcaa5404d325b87b27d94709a7fe1c851` |
| 29 | `lemma` | [shrink₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/shrink--7f13fb151804829d527f2dc6.md) | 312 | `result-track:7f13fb151804829d527f2dc652427d719ba6ed17310870f64c8c610eb4f1a1cc` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/instance--0d5490c5b7ea491200385f51.md) | 316 | `declaration-track:0d5490c5b7ea491200385f514a4b12ba436d1bd8c478cddb970a38e5d524fbb8` |
| 31 | `def` | [transfiniteCompositions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositions--49791000c2bc2e82684dff38.md) | 329 | `declaration-track:49791000c2bc2e82684dff38799b03ef265d0e32fc799390e56b4d58d4b07eb2` |
| 32 | `lemma` | [transfiniteCompositions_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositions-iff--f3b9649f64e64b174c595264.md) | 333 | `result-track:f3b9649f64e64b174c595264ec4d01abf0ff2499dad01e67b17c333bb48e56dc` |
| 33 | `lemma` | [transfiniteCompositionsOfShape_le_transfiniteCompositions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositionsofshape-le-transfinitecompositions--51fc2a3e9cbb1fb423250368.md) | 339 | `result-track:51fc2a3e9cbb1fb423250368a31e3a0485e4550eb9441b61ce42908fe0fbcc81` |
| 34 | `lemma` | [transfiniteCompositions_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositions-monotone--0c113c5490eca1014b7d5ad8.md) | 346 | `result-track:0c113c5490eca1014b7d5ad88f0fb07bf7903a214a81502095bdab49ac3d8ea5` |
| 35 | `lemma` | [le_transfiniteCompositions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/le-transfinitecompositions--2da1b94759c946b69838326f.md) | 354 | `result-track:2da1b94759c946b69838326fb593feb3c493409156f3dba492addbd59a0af662` |
| 36 | `lemma` | [transfiniteCompositions_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositions-le--6a6d99716b852b6008f8b684.md) | 361 | `result-track:6a6d99716b852b6008f8b6842f6039da4ad4114febee7d443c6d6329700ece81` |
| 37 | `lemma` | [transfiniteCompositions_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteComposition/Variant213b68198461910691a6fc8c72b91996fce16e8f29eb3d390ab6fc108a4159e4.lean/declarations/transfinitecompositions-le-iff--6c63baf35cb8529fd8faf000.md) | 369 | `result-track:6c63baf35cb8529fd8faf0001c6ebe0b9f6f39b4170357b9fa0914f616c6134e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
