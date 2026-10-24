# Verification target: GRWTSK.Geometry.ConvexGeometry.Rectangle.Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f65f49a20ac44552649f2ff841ae44dea7b25e63",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f65f49a20ac44552649f2ff841ae44dea7b25e63`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Monotone` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [symm](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/symm--6029ab92289edaeceedc2d87.md) | 19 | `result-track:6029ab92289edaeceedc2d87c7fc32b8c43f398a1a436e46a779d61b6689c345` |
| 2 | `lemma` | [symm_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/symm-re--57f7d58e01621ffc580bfbf3.md) | 22 | `result-track:57f7d58e01621ffc580bfbf324d1cb95064b812e72f6b7c2a524a6079c61eff6` |
| 3 | `def` | [RectangleBorder](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectangleborder--52b6f6e82a3013128ff0276e.md) | 35 | `declaration-track:52b6f6e82a3013128ff0276e34e9582cddbbf8450c75339458a1e4e34d9a2885` |
| 4 | `def` | [Square](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/square--1862a48ec0c68c8d7d32c7ae.md) | 39 | `declaration-track:1862a48ec0c68c8d7d32c7ae9674d295e358b197d8bbf9e8f822b6c0f427d65f` |
| 5 | `lemma` | [Square_apply](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/square-apply--a99d1a1fce6ecb56859256d1.md) | 41 | `result-track:a99d1a1fce6ecb56859256d18dacaa0d59ce5932158a9308cd6d5650486c89ac` |
| 6 | `theorem` | [preimage_equivRealProdCLM_reProdIm](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/preimage-equivrealprodclm-reprodim--ea114bddc536d5b3960a54c8.md) | 48 | `result-track:ea114bddc536d5b3960a54c8c74e2f5913f96d85e53c039b5197decee7fc68f4` |
| 7 | `theorem` | [ContinuousLinearEquiv.coe_toLinearEquiv_symm](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/continuouslinearequiv-coe-tolinearequiv-symm--442030c4648d50d9cc44958c.md) | 53 | `result-track:442030c4648d50d9cc44958cd8d6c9df3d77acbb1131858ee32dc271b0bd7b5a` |
| 8 | `lemma` | [segment_reProdIm_segment_eq_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/segment-reprodim-segment-eq-convexhull--a0d79c9ef8bee8130f3b6fdc.md) | 63 | `result-track:a0d79c9ef8bee8130f3b6fdc46505b184e341b1cfcfb2e40177d1781de37779f` |
| 9 | `lemma` | [rectangle_in_convex](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectangle-in-convex--3436c7dea6d72bde921ea684.md) | 71 | `result-track:3436c7dea6d72bde921ea6840fe127d4a7629550ba228cf2848003970dc63acc` |
| 10 | `lemma` | [mem_Rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mem-rect--9544150c0334bb57a56ed2ac.md) | 77 | `result-track:9544150c0334bb57a56ed2ac00a4021c5c10c3fccc9cf0b23d51b8808a4659e3` |
| 11 | `lemma` | [square_neg](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/square-neg--90613cbccce45d7b56b0cee0.md) | 83 | `result-track:90613cbccce45d7b56b0cee08f4a192b39e3136a55ed0fa7cb5ca2d8bbba5548` |
| 12 | `theorem` | [Set.left_not_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/set-left-not-mem-uioo--eec3442aa51013fe36ed2232.md) | 87 | `result-track:eec3442aa51013fe36ed2232b10e79e9b19e5fdb5cbcacf49a7320826e003a1d` |
| 13 | `theorem` | [Set.right_not_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/set-right-not-mem-uioo--64c996312be6023d06678e1f.md) | 90 | `result-track:64c996312be6023d06678e1f8e57150d25c5fa8dec716205af54175964a5a687` |
| 14 | `theorem` | [Set.ne_left_of_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/set-ne-left-of-mem-uioo--72fc70cdaffa4d60f490eae1.md) | 93 | `result-track:72fc70cdaffa4d60f490eae1a42808ad61cd7b00713e1dbdd8911edfbb57a88e` |
| 15 | `theorem` | [Set.ne_right_of_mem_uIoo](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/set-ne-right-of-mem-uioo--95e576ee86c7f42cb35279a0.md) | 96 | `result-track:95e576ee86c7f42cb35279a0cab0b4a46f37a572d90eb2bbc25b4c10eb238f79` |
| 16 | `lemma` | [left_mem_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/left-mem-rect--7d1b8d1f7e8498925305f433.md) | 99 | `result-track:7d1b8d1f7e8498925305f433bf78817a069ad6ffd9c53ac706abcd3b3730736d` |
| 17 | `lemma` | [right_mem_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/right-mem-rect--6e187abe2bdd920d83f73b8d.md) | 101 | `result-track:6e187abe2bdd920d83f73b8d188afc2a852147354db560df3df4b136f0521fd7` |
| 18 | `lemma` | [rect_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rect-subset-iff--ee9f2a46e79e825fa1285aa5.md) | 103 | `result-track:ee9f2a46e79e825fa1285aa58c27415d080296026a5d304d3bdb8880db7bd28d` |
| 19 | `lemma` | [RectSubRect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectsubrect--fb6d1a7bbaeef8f967606a26.md) | 118 | `result-track:fb6d1a7bbaeef8f967606a269b346d09f4776d194e4f84742dd495e3430b855d` |
| 20 | `lemma` | [RectSubRect'](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectsubrect--8fb9425d1b7435ba3f535ded.md) | 127 | `result-track:8fb9425d1b7435ba3f535ded6a7269b80c097e95f80915a33312d072632745df` |
| 21 | `lemma` | [rectangleBorder_subset_rectangle](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectangleborder-subset-rectangle--55f97de72fd85adf657c7bfb.md) | 135 | `result-track:55f97de72fd85adf657c7bfbd469f50c3dc34e49b796553ae09b265d631b9807` |
| 22 | `lemma` | [rectangle_disjoint_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectangle-disjoint-singleton--2205030046800ec75c369a77.md) | 144 | `result-track:2205030046800ec75c369a7701ec2e506a0e2937e1bbbb51c91ef19d05063cff` |
| 23 | `lemma` | [rectangleBorder_disjoint_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectangleborder-disjoint-singleton--d8d21e2340da14eaaf46232d.md) | 155 | `result-track:d8d21e2340da14eaaf46232d2917a5cd2d4782f6085be2393f63e74349e0a61c` |
| 24 | `lemma` | [rectangle_subset_punctured_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectangle-subset-punctured-rect--b419c626c29bc3edbd5754fa.md) | 163 | `result-track:b419c626c29bc3edbd5754fa4548dbc9cecc1e64ad5038ef54717c1faf7ad619` |
| 25 | `lemma` | [rectangleBorder_subset_punctured_rect](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectangleborder-subset-punctured-rect--3dbcda46d4ff3dfc0c6a5cef.md) | 171 | `result-track:3dbcda46d4ff3dfc0c6a5cef8da53057c45caa0956f55755469352570c84df4f` |
| 26 | `lemma` | [rectangle_mem_nhds_iff](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/rectangle-mem-nhds-iff--e51425dd5f75f7ce4ec5fc8a.md) | 180 | `result-track:e51425dd5f75f7ce4ec5fc8a8d5f2c38acfa21786eb98c4af5293a346711b263` |
| 27 | `lemma` | [mapsTo_rectangle_left_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangle-left-re--7dd5b746378c5abc01f64336.md) | 185 | `result-track:7dd5b746378c5abc01f6433629cab32f301c35822f9b7212b188123ae3408f86` |
| 28 | `lemma` | [mapsTo_rectangle_right_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangle-right-re--664fae362eb4481911b3aafa.md) | 189 | `result-track:664fae362eb4481911b3aafa4b443daa75dedd810b5058404b47a9d201a3994e` |
| 29 | `lemma` | [mapsTo_rectangle_left_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangle-left-im--e8afe6348c9b74bbead168d7.md) | 193 | `result-track:e8afe6348c9b74bbead168d7fcc343de5be4498ee0d433600ea249b47180fb75` |
| 30 | `lemma` | [mapsTo_rectangle_right_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangle-right-im--2165746fa6ad333435e0d7d7.md) | 197 | `result-track:2165746fa6ad333435e0d7d7f74c072af3145b048fbf157859870a98ab088fd7` |
| 31 | `lemma` | [mapsTo_rectangleBorder_left_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangleborder-left-re--63987fa8c33fd00ddca10855.md) | 201 | `result-track:63987fa8c33fd00ddca10855ef11cbdc1d44c6c064ce713a6aa61e9d0a703b29` |
| 32 | `lemma` | [mapsTo_rectangleBorder_right_re](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangleborder-right-re--0986435a5288ec63c876c81c.md) | 206 | `result-track:0986435a5288ec63c876c81c57c3a078049ca48c4e53d61d2ea93dc0cf21d4cd` |
| 33 | `lemma` | [mapsTo_rectangleBorder_left_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangleborder-left-im--8eb03850d4b21d77d2e3d8d1.md) | 211 | `result-track:8eb03850d4b21d77d2e3d8d1f86eddb02e0f53c24ea6f15f074f0c5ed0b3c550` |
| 34 | `lemma` | [mapsTo_rectangleBorder_right_im](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangleborder-right-im--29b979c94d658b064a717d48.md) | 216 | `result-track:29b979c94d658b064a717d48c0bfff842d5039a36ee9ca3b35f4fe6aff0cdce6` |
| 35 | `lemma` | [mapsTo_rectangle_left_re_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangle-left-re-nop--6aacaebcb0f7f6f85a3b42e7.md) | 221 | `result-track:6aacaebcb0f7f6f85a3b42e7e277815470f497f8cce37b83637b054b261be1cc` |
| 36 | `lemma` | [mapsTo_rectangle_right_re_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangle-right-re-nop--a77fe29c0f0f5318bf808179.md) | 227 | `result-track:a77fe29c0f0f5318bf8081798f216845e53816f66fdc389be1d6c2f9860c4681` |
| 37 | `lemma` | [mapsTo_rectangle_left_im_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangle-left-im-nop--292647384b0add88d0e4ff4c.md) | 233 | `result-track:292647384b0add88d0e4ff4cb9553f5646659924647ee07b495b99ee53bd7543` |
| 38 | `lemma` | [mapsTo_rectangle_right_im_NoP](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/mapsto-rectangle-right-im-nop--58b8e484e2cd46eb0e4832d9.md) | 239 | `result-track:58b8e484e2cd46eb0e4832d92f462fe6c47c878e9c5f298fa1a448f86d49f750` |
| 39 | `theorem` | [not_mem_rectangleBorder_of_rectangle_mem_nhds](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/not-mem-rectangleborder-of-rectangle-mem-nhds--0897bc5fb5f59ac942b622ea.md) | 245 | `result-track:0897bc5fb5f59ac942b622ea0fda7cd935103f57629fad5d379e2496fbf8cd8a` |
| 40 | `theorem` | [Complex.nhds_hasBasis_square](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/complex-nhds-hasbasis-square--c18a33d6f3cba70263811e2d.md) | 253 | `result-track:c18a33d6f3cba70263811e2dbefa08bc75f1da67e5b881ba4a864e3fde4cb5e0` |
| 41 | `lemma` | [square_mem_nhds](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/square-mem-nhds--63841910612fc593011a669d.md) | 266 | `result-track:63841910612fc593011a669ddd4c8a2ab4153b014b10c250b484b610223c7e07` |
| 42 | `lemma` | [square_subset_square](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/square-subset-square--91ca8de45d57a51ef2e24214.md) | 273 | `result-track:91ca8de45d57a51ef2e24214a8775b38d383c8424deb7ccc4de6f80fd2284ffc` |
| 43 | `lemma` | [SmallSquareInRectangle](../../../../../mathematics/Geometry/ConvexGeometry/Rectangle/Variantd768e8c147d685ef260aad92fb3c55d9f3467a9badef71cde34909846e3f7cbf.lean/declarations/smallsquareinrectangle--7c652a3d2377d1c8f8fa6226.md) | 277 | `result-track:7c652a3d2377d1c8f8fa622633c3800829a1d5b56f9db92b3f12e066642b6bbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
