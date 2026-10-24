# Verification target: GRWTSK.Geometry.ConvexGeometry.Rectangle.Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d971531011e9bebf102f5920b76d60d72bdd4f96",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d971531011e9bebf102f5920b76d60d72bdd4f96`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Convex` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Monotone` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [symm](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/symm--8dd57dc82cfcc2300c4d4aa9.md) | 35 | `result-track:8dd57dc82cfcc2300c4d4aa91eefc615fff46dcdd43b7b2825306c87a12db367` |
| 2 | `lemma` | [symm_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/symm-re--93824a4e5c832a0eceef7e96.md) | 38 | `result-track:93824a4e5c832a0eceef7e96fc46eb1ffa3a3d7c80419230b37d7498104f0bde` |
| 3 | `def` | [RectangleBorder](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectangleborder--7269af53fa3923d36c12fca0.md) | 44 | `declaration-track:7269af53fa3923d36c12fca02ca8a7c99b42df3c35564b3b773d9c2960bfe36f` |
| 4 | `def` | [Square](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/square--30b709039b93e1973430157a.md) | 48 | `declaration-track:30b709039b93e1973430157ac4632252ad7d5191cfdde58c1a7dc34dcee3b5a0` |
| 5 | `lemma` | [Square_apply](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/square-apply--773c7a7e41d4abf1bd11cefd.md) | 50 | `result-track:773c7a7e41d4abf1bd11cefd4916e722cd33a7fc1f7503626bd160043481dd55` |
| 6 | `theorem` | [preimage_equivRealProdCLM_reProdIm](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/preimage-equivrealprodclm-reprodim--0c5baa6639ff974a256a1248.md) | 56 | `result-track:0c5baa6639ff974a256a1248f06b835fa593dc7cfc486a74491ca8d9bdc531d2` |
| 7 | `theorem` | [ContinuousLinearEquiv.coe_toLinearEquiv_symm](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/continuouslinearequiv-coe-tolinearequiv-symm--0e139a1e2828e98946191c00.md) | 61 | `result-track:0e139a1e2828e98946191c0092f96892e098ddfce8f7845481064418324d3f4f` |
| 8 | `lemma` | [segment_reProdIm_segment_eq_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/segment-reprodim-segment-eq-convexhull--51dc9aa9857f923c1cc46550.md) | 71 | `result-track:51dc9aa9857f923c1cc465505850075620864e542ab14b1ba1f8bb5df705727f` |
| 9 | `lemma` | [rectangle_in_convex](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectangle-in-convex--827ec2c55949795c67ab1ad5.md) | 79 | `result-track:827ec2c55949795c67ab1ad5ba417a162c06ea9248fdc94b61e5553ca733cabd` |
| 10 | `lemma` | [mem_Rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mem-rect--ecc0d0c71c4a5ff9f05b2082.md) | 85 | `result-track:ecc0d0c71c4a5ff9f05b2082486fe8cdb214f8a5cd9b038c220f59ebe42e8067` |
| 11 | `lemma` | [square_neg](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/square-neg--3b30aea659706da13c2ad278.md) | 91 | `result-track:3b30aea659706da13c2ad278a208efd12136fab4b3613413934570246eb9245d` |
| 12 | `theorem` | [Set.left_not_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/set-left-not-mem-uioo--06a4f538615163f66805fee0.md) | 94 | `result-track:06a4f538615163f66805fee07d9f2a74bfb15fbe9803bef388ce24bac4cb7992` |
| 13 | `theorem` | [Set.right_not_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/set-right-not-mem-uioo--42247cc4779dc1bad712fe30.md) | 97 | `result-track:42247cc4779dc1bad712fe30bbb8d4c21c28384890502423882e3936910ba948` |
| 14 | `theorem` | [Set.ne_left_of_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/set-ne-left-of-mem-uioo--0cd7b536373693affb0852b6.md) | 100 | `result-track:0cd7b536373693affb0852b613675d216ff0cd2a42c7c67360db485b5d996c16` |
| 15 | `theorem` | [Set.ne_right_of_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/set-ne-right-of-mem-uioo--dff4ba9e344456d6bbe56431.md) | 103 | `result-track:dff4ba9e344456d6bbe56431a9ec361838ff0da38c2412491b9943a1c43cb672` |
| 16 | `lemma` | [left_mem_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/left-mem-rect--97f2c34105df590f142109ff.md) | 106 | `result-track:97f2c34105df590f142109ff4ac40bfb5b233e44925afe74399762a16a83c220` |
| 17 | `lemma` | [right_mem_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/right-mem-rect--10bb3c5305b0450313c827d1.md) | 108 | `result-track:10bb3c5305b0450313c827d1f08d7af517fb7b0db750af83df11d5b4e68d7717` |
| 18 | `lemma` | [rect_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rect-subset-iff--dec8b168fd7ab4f1945aca3a.md) | 110 | `result-track:dec8b168fd7ab4f1945aca3ad168875da3855c635d7b91f771fa12f68cb6ccb9` |
| 19 | `lemma` | [RectSubRect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectsubrect--3f60b1fc2bbac344bd7add41.md) | 125 | `result-track:3f60b1fc2bbac344bd7add41391d211f79a5e0c74b09d9d0551caf2bd6c1e736` |
| 20 | `lemma` | [RectSubRect'](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectsubrect--f6556d6f594785132143f31c.md) | 134 | `result-track:f6556d6f594785132143f31cf00c2aa5090068a3f249c8cd6a155a7459851215` |
| 21 | `lemma` | [rectangleBorder_subset_rectangle](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectangleborder-subset-rectangle--1076c3cd6d81908dbb5a1889.md) | 142 | `result-track:1076c3cd6d81908dbb5a1889b89f16f2562427688b9de9f27d9f1f8da694abd7` |
| 22 | `lemma` | [rectangle_disjoint_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectangle-disjoint-singleton--3d205df9ccedf297e2679e3a.md) | 151 | `result-track:3d205df9ccedf297e2679e3ac0e0d8bf8ac2750a89c809b4d49ce3d92ecdbb01` |
| 23 | `lemma` | [rectangleBorder_disjoint_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectangleborder-disjoint-singleton--f555a5a088d6694288e7dd31.md) | 162 | `result-track:f555a5a088d6694288e7dd316f2cd8b38c6c61a156af83660d592f53293805e3` |
| 24 | `lemma` | [rectangle_subset_punctured_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectangle-subset-punctured-rect--e5fd3350cfcd4a8b19e138fe.md) | 170 | `result-track:e5fd3350cfcd4a8b19e138fe4314685b8be5c62463b24fa8e02387c9b606acc1` |
| 25 | `lemma` | [rectangleBorder_subset_punctured_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectangleborder-subset-punctured-rect--d00762743c610b5f3985faf5.md) | 178 | `result-track:d00762743c610b5f3985faf56e82cd463d97676d5d218f94fa0eb4a3845aed21` |
| 26 | `lemma` | [rectangle_mem_nhds_iff](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/rectangle-mem-nhds-iff--a3cbf856ac21c1741d30a4d4.md) | 187 | `result-track:a3cbf856ac21c1741d30a4d46584ae35f9f6af151e736f9ec5328c7491f4f5c6` |
| 27 | `lemma` | [mapsTo_rectangle_left_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangle-left-re--8a5aca0e88f1ba08a3942d88.md) | 192 | `result-track:8a5aca0e88f1ba08a3942d88a7614ac431ae7539338b537116ca3d920671e9ca` |
| 28 | `lemma` | [mapsTo_rectangle_right_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangle-right-re--66d730265e8f8276cca3cbf0.md) | 196 | `result-track:66d730265e8f8276cca3cbf0ce8a7741abfbf44d102e162f7f5ab33c0162a10a` |
| 29 | `lemma` | [mapsTo_rectangle_left_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangle-left-im--759871ff80e5477402998c38.md) | 200 | `result-track:759871ff80e5477402998c38d3bf562aab0c83cdc4a2f2e99bbc027325151930` |
| 30 | `lemma` | [mapsTo_rectangle_right_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangle-right-im--d798f5cea6f4271b40b6c52c.md) | 204 | `result-track:d798f5cea6f4271b40b6c52c7406e561138adecb793c92d88e6cf705f39644cd` |
| 31 | `lemma` | [mapsTo_rectangleBorder_left_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangleborder-left-re--9b9449dd066bcfc7fa2e5126.md) | 208 | `result-track:9b9449dd066bcfc7fa2e51266674a9fe8ceeeeaa7fe65a35b7492ce1ca9bc3f8` |
| 32 | `lemma` | [mapsTo_rectangleBorder_right_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangleborder-right-re--63d385c83547d2c92eb16238.md) | 213 | `result-track:63d385c83547d2c92eb162386d7e4194b3e1ca0367f6e2f1cf687ea0e993be42` |
| 33 | `lemma` | [mapsTo_rectangleBorder_left_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangleborder-left-im--2873fa49c8e135fb7c5008bd.md) | 218 | `result-track:2873fa49c8e135fb7c5008bd5a41232400af1d1b0a4f71a6d9e45579a3a747e0` |
| 34 | `lemma` | [mapsTo_rectangleBorder_right_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangleborder-right-im--35dcb6d7585939756696d107.md) | 223 | `result-track:35dcb6d7585939756696d1077901306d264bd3683bfdab2da4b5d124a4c40d83` |
| 35 | `lemma` | [mapsTo_rectangle_left_re_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangle-left-re-nop--42112079d1751a9c2beac2fc.md) | 228 | `result-track:42112079d1751a9c2beac2fc116a87062ca847f1774215f5f2e08593d2ac1c8a` |
| 36 | `lemma` | [mapsTo_rectangle_right_re_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangle-right-re-nop--7679fdbc0973d87e1a758177.md) | 234 | `result-track:7679fdbc0973d87e1a758177dff24ec64a3b9689889ced25e407fa18910d6d80` |
| 37 | `lemma` | [mapsTo_rectangle_left_im_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangle-left-im-nop--a1307f4a5b282e9c224b855a.md) | 240 | `result-track:a1307f4a5b282e9c224b855a2b7eb89a9c88c0921e33913751aaea791bcad6db` |
| 38 | `lemma` | [mapsTo_rectangle_right_im_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/mapsto-rectangle-right-im-nop--d54a8bd10a06f13e1bb20c6c.md) | 246 | `result-track:d54a8bd10a06f13e1bb20c6cc30b480c36c4b32afc5e2afd8a628b1c9ff0468b` |
| 39 | `theorem` | [not_mem_rectangleBorder_of_rectangle_mem_nhds](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/not-mem-rectangleborder-of-rectangle-mem-nhds--faa48a05a38707871a34cd6c.md) | 252 | `result-track:faa48a05a38707871a34cd6cdd3d07de2617d7148700d96917b7f3f9c4704e37` |
| 40 | `theorem` | [Complex.nhds_hasBasis_square](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/complex-nhds-hasbasis-square--27bfe6c86397ed55858a67ac.md) | 260 | `result-track:27bfe6c86397ed55858a67acebd09ffbd66c59aaeda87a0002b46b9ecc0e17ea` |
| 41 | `lemma` | [square_mem_nhds](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/square-mem-nhds--e65eeb8b9631c5cd8e273cb5.md) | 273 | `result-track:e65eeb8b9631c5cd8e273cb5c6d57d74e87e109f8482d06bf00ca1fd86865ffe` |
| 42 | `lemma` | [square_subset_square](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/square-subset-square--f429a0be2c9b37bd3e29c2fc.md) | 280 | `result-track:f429a0be2c9b37bd3e29c2fc619b912610847e2827594146e523126c492850fa` |
| 43 | `lemma` | [SmallSquareInRectangle](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/declarations/smallsquareinrectangle--8c7c16e58163002e65f39c7e.md) | 284 | `result-track:8c7c16e58163002e65f39c7e9881471830c989fe50c60d94c79ba78c7caa8f90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
