# Verification target: GRWTSK.Geometry.ConvexGeometry.Rectangle.Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbb1fb510c9ec1697495975294055607e5d38d9b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbb1fb510c9ec1697495975294055607e5d38d9b`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Convex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Monotone` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [symm](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/symm--a89bb965d3521b9679b0577e.md) | 27 | `result-track:a89bb965d3521b9679b0577e4b88dc152d9cb85267954a9a6f07ec07936ef7a8` |
| 2 | `lemma` | [symm_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/symm-re--226b5d545b2a4bb2fed37883.md) | 30 | `result-track:226b5d545b2a4bb2fed37883fca554bd86e92d4d72eec99d0ed02d8b49735443` |
| 3 | `def` | [RectangleBorder](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectangleborder--b540cc3905b512e110b23c63.md) | 36 | `declaration-track:b540cc3905b512e110b23c63c94fe25a969dc8782ff68842930bf9fb969cf382` |
| 4 | `def` | [Square](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/square--8d74fa31ca9d6b3dae6168d6.md) | 40 | `declaration-track:8d74fa31ca9d6b3dae6168d632dc1f3c271794ac533519f40942f8f304006ee4` |
| 5 | `lemma` | [Square_apply](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/square-apply--bf5caed8c227239f5e9db810.md) | 42 | `result-track:bf5caed8c227239f5e9db81069193fa52570310bc2316377d5436981b2e82309` |
| 6 | `theorem` | [preimage_equivRealProdCLM_reProdIm](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/preimage-equivrealprodclm-reprodim--127cef4759769aa1e81feb12.md) | 48 | `result-track:127cef4759769aa1e81feb12efd04cf8f515afaec7ffc48d3cc5352ecd4b3c0b` |
| 7 | `theorem` | [ContinuousLinearEquiv.coe_toLinearEquiv_symm](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/continuouslinearequiv-coe-tolinearequiv-symm--3da63def35f2f303407781ca.md) | 53 | `result-track:3da63def35f2f303407781cafcc2b46447cc55e06c13845d7f3489ab8ab7493f` |
| 8 | `lemma` | [segment_reProdIm_segment_eq_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/segment-reprodim-segment-eq-convexhull--c0b92b262fe8714a33dcc5ec.md) | 63 | `result-track:c0b92b262fe8714a33dcc5ecf756e19b13ea6b75d7bc16d7cb2a37d66b4b8ef1` |
| 9 | `lemma` | [rectangle_in_convex](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectangle-in-convex--afbdf7c2e33a680cfb827d56.md) | 71 | `result-track:afbdf7c2e33a680cfb827d56e58da6c8801f68df167eaf0369c7d51abba75dee` |
| 10 | `lemma` | [mem_Rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mem-rect--b7b371b9b43596e677477340.md) | 77 | `result-track:b7b371b9b43596e677477340cf83a4f312484caa1113cc80b058c4b321d754b7` |
| 11 | `lemma` | [square_neg](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/square-neg--8f8b6b307f0bd5bb3afba627.md) | 83 | `result-track:8f8b6b307f0bd5bb3afba627934561857381709a5f1389f27868a8f396351f86` |
| 12 | `theorem` | [Set.left_not_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/set-left-not-mem-uioo--e6a5ef755977488a96e785af.md) | 86 | `result-track:e6a5ef755977488a96e785af194d3b5eb66b2630e7f87e04a23f9fc983d1bcbb` |
| 13 | `theorem` | [Set.right_not_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/set-right-not-mem-uioo--6ef6fee95d4af59a5b1a8b40.md) | 89 | `result-track:6ef6fee95d4af59a5b1a8b40c9a210314639a25822e86aa7847cae6ded2c83f8` |
| 14 | `theorem` | [Set.ne_left_of_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/set-ne-left-of-mem-uioo--37974012ec56efbfc0e7f1f5.md) | 92 | `result-track:37974012ec56efbfc0e7f1f51e23dd0a7e518fd2bff4f6d4d074fe9421e6bf48` |
| 15 | `theorem` | [Set.ne_right_of_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/set-ne-right-of-mem-uioo--91a4bf8f8aa4ab5e0f61c108.md) | 95 | `result-track:91a4bf8f8aa4ab5e0f61c108253c1113ca44b63c2fea42f3195771e414b31bf1` |
| 16 | `lemma` | [left_mem_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/left-mem-rect--1402820078964dd6e4be4606.md) | 98 | `result-track:1402820078964dd6e4be4606218bc5275343b35819a13a65129ada9c2e975e5c` |
| 17 | `lemma` | [right_mem_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/right-mem-rect--3119e788e9b111a1f22eb421.md) | 100 | `result-track:3119e788e9b111a1f22eb421d13b9d530b8326cf3d8613dc78bf8a23a89af1a9` |
| 18 | `lemma` | [rect_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rect-subset-iff--32799b6f7d8a72133a1a742c.md) | 102 | `result-track:32799b6f7d8a72133a1a742c5c856cfdeef896f81f08a3561ef84904b2c3f46c` |
| 19 | `lemma` | [RectSubRect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectsubrect--494ae2abff3ea8a8a6443817.md) | 117 | `result-track:494ae2abff3ea8a8a644381711ecc05f1d72bc1574f5b3613b62cbbd881cc2fb` |
| 20 | `lemma` | [RectSubRect'](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectsubrect--74c5fba38515ad6ec3a26b05.md) | 126 | `result-track:74c5fba38515ad6ec3a26b0599ee35c0c1f388bbf015eb51ecc8bd5ec8766f37` |
| 21 | `lemma` | [rectangleBorder_subset_rectangle](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectangleborder-subset-rectangle--7823d3f652633797ad147985.md) | 134 | `result-track:7823d3f652633797ad147985ca6c6adc321a1e9e1f92012b76a025c246aae44f` |
| 22 | `lemma` | [rectangle_disjoint_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectangle-disjoint-singleton--19ce42f226c366c78d93c382.md) | 143 | `result-track:19ce42f226c366c78d93c382faa8a5b652bbf297e7fc8313a0aeb5fb80e8afe4` |
| 23 | `lemma` | [rectangleBorder_disjoint_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectangleborder-disjoint-singleton--8b1ad1aaf340e0c7fc4cd835.md) | 154 | `result-track:8b1ad1aaf340e0c7fc4cd835794466eb244e6aafe86787f9ec0373f063353549` |
| 24 | `lemma` | [rectangle_subset_punctured_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectangle-subset-punctured-rect--876fc7bf3ae6c3e1a3c9e9c8.md) | 162 | `result-track:876fc7bf3ae6c3e1a3c9e9c865a4c422766819715f9a2d4741cf2bfd65db5825` |
| 25 | `lemma` | [rectangleBorder_subset_punctured_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectangleborder-subset-punctured-rect--efd995aa5fe6f484e36e3715.md) | 170 | `result-track:efd995aa5fe6f484e36e3715fa52a859b55a3d5c98e5ba0a7bfbc9313ad87888` |
| 26 | `lemma` | [rectangle_mem_nhds_iff](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/rectangle-mem-nhds-iff--0acc47ac507edccf638d47f0.md) | 179 | `result-track:0acc47ac507edccf638d47f0898fba2342c771d8248fdd263e6b8f68c0b8ce43` |
| 27 | `lemma` | [mapsTo_rectangle_left_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangle-left-re--f3d084574718927483f709db.md) | 184 | `result-track:f3d084574718927483f709db5506def6eebb932e076d5c85f5a8c681435acec1` |
| 28 | `lemma` | [mapsTo_rectangle_right_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangle-right-re--174f96b2318fc5413447e32c.md) | 188 | `result-track:174f96b2318fc5413447e32c3b11d225a826060afdde92624ac018d0f215007a` |
| 29 | `lemma` | [mapsTo_rectangle_left_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangle-left-im--878f9e9c3875c768be0a10ba.md) | 192 | `result-track:878f9e9c3875c768be0a10baf30cc63c3302bdb57499b6b3a8d0d10cf269c580` |
| 30 | `lemma` | [mapsTo_rectangle_right_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangle-right-im--cc5d4a5094b3bd543db80772.md) | 196 | `result-track:cc5d4a5094b3bd543db80772cd3e8d92be5acd3d2353e71ad44f761549f3b6de` |
| 31 | `lemma` | [mapsTo_rectangleBorder_left_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangleborder-left-re--2a4956be7d6b04a3f096fb95.md) | 200 | `result-track:2a4956be7d6b04a3f096fb95687c2168ba78dfc77b0098e86e0e7924dbd0b6df` |
| 32 | `lemma` | [mapsTo_rectangleBorder_right_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangleborder-right-re--d591bbcf63afbd8e22b7eee7.md) | 205 | `result-track:d591bbcf63afbd8e22b7eee792f1e0590b74f0b67329bf1eae8dd77cf8e6ebe7` |
| 33 | `lemma` | [mapsTo_rectangleBorder_left_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangleborder-left-im--c07caa36fba407bfb5f72711.md) | 210 | `result-track:c07caa36fba407bfb5f72711752e4eaa4b5c131b806ca740ae341cec1367d767` |
| 34 | `lemma` | [mapsTo_rectangleBorder_right_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangleborder-right-im--7724fde7a1962eadd90ac191.md) | 215 | `result-track:7724fde7a1962eadd90ac1919692d2058bf692ca0ea0a79c32e380dc9b50c039` |
| 35 | `lemma` | [mapsTo_rectangle_left_re_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangle-left-re-nop--6cea92bb20258525e7083b38.md) | 220 | `result-track:6cea92bb20258525e7083b38670edd8793dbe483d243185f117d88fb3aaa4e69` |
| 36 | `lemma` | [mapsTo_rectangle_right_re_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangle-right-re-nop--d4e7080c1c158a49283e0d90.md) | 226 | `result-track:d4e7080c1c158a49283e0d90b41bb2ba85cb9e0bbf23dc303d79736fab874dd6` |
| 37 | `lemma` | [mapsTo_rectangle_left_im_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangle-left-im-nop--58b7020e3e0e5de8a77838f7.md) | 232 | `result-track:58b7020e3e0e5de8a77838f74a5d3fa3ca06891fda1f3eadb552c493a9a44441` |
| 38 | `lemma` | [mapsTo_rectangle_right_im_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/mapsto-rectangle-right-im-nop--5d853bd283f8235a0ca08698.md) | 238 | `result-track:5d853bd283f8235a0ca0869805e01611a1f7ae38fe4a7564103523c7570e7f79` |
| 39 | `theorem` | [not_mem_rectangleBorder_of_rectangle_mem_nhds](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/not-mem-rectangleborder-of-rectangle-mem-nhds--34e0eecb25154689f648104b.md) | 244 | `result-track:34e0eecb25154689f648104bcfa8b604b72e95e48ad6aee23695e028ce0b3a27` |
| 40 | `theorem` | [Complex.nhds_hasBasis_square](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/complex-nhds-hasbasis-square--d7a9171f136d60fd6928c3d6.md) | 252 | `result-track:d7a9171f136d60fd6928c3d67b58cb2bda8f68342552e98727dc99b2c6a61737` |
| 41 | `lemma` | [square_mem_nhds](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/square-mem-nhds--628c3f2878f72cee2b80def0.md) | 265 | `result-track:628c3f2878f72cee2b80def05ec15552bc224c670c187c12931939d6f9ba0472` |
| 42 | `lemma` | [square_subset_square](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/square-subset-square--ec75d1ea00fd8999da4163c5.md) | 272 | `result-track:ec75d1ea00fd8999da4163c5123d92781bc354d81009901f78123c1b42ea1b25` |
| 43 | `lemma` | [SmallSquareInRectangle](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/declarations/smallsquareinrectangle--fbe4cae108a59d6fbf12efaf.md) | 276 | `result-track:fbe4cae108a59d6fbf12efaf3241d886635357ce02a065b77c2193b3b9962d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
