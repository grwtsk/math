# Verification target: GRWTSK.Geometry.ConvexGeometry.StdSimplex.Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80a743ee6440d4b3e08ce22f3a84194fedda4cb6",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80a743ee6440d4b3e08ce22f3a84194fedda4cb6`.

Source path: `GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplex--370d446bc00e42be74ad25e1.md) | 47 | `declaration-track:370d446bc00e42be74ad25e1f6e299b5bc8c02584031632ef189c267396d57db` |
| 2 | `theorem` | [stdSimplex_eq_inter](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplex-eq-inter--6a6f1b8fea0d355ec53f46a6.md) | 51 | `result-track:6a6f1b8fea0d355ec53f46a63c5c79fcca6c35a5e0a2baf8d633880d156c3410` |
| 3 | `theorem` | [convex_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/convex-stdsimplex--6da094100ba49f7986c9e0cf.md) | 56 | `result-track:6da094100ba49f7986c9e0cf45a9c3a3ca2bc930b39fed5ba1f0c1d402a9a9ef` |
| 4 | `lemma` | [stdSimplex_of_subsingleton](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplex-of-subsingleton--8534648d5860e2379588f8e9.md) | 64 | `result-track:8534648d5860e2379588f8e9801bfa830353f93ac9936e430b46aa75dc70b475` |
| 5 | `lemma` | [stdSimplex_of_isEmpty_index](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplex-of-isempty-index--ad9153a706cbf7f856cdbd0c.md) | 69 | `result-track:ad9153a706cbf7f856cdbd0cd90ea3b7d1ab718a4bfffd243bb9cd9be8121657` |
| 6 | `lemma` | [stdSimplex_unique](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplex-unique--a623543af310abae60c4ec2b.md) | 73 | `result-track:a623543af310abae60c4ec2b457b5e6f2905b3ed569fcd6e902b7c11e6f25507` |
| 7 | `theorem` | [mem_Icc_of_mem_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/mem-icc-of-mem-stdsimplex--47164dbaed0e35983ee6f2ad.md) | 86 | `result-track:47164dbaed0e35983ee6f2ade691058e0900b52235360915074d546c8bd3fee6` |
| 8 | `theorem` | [stdSimplex_subset_Icc](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplex-subset-icc--95c05402c785290ed2795270.md) | 93 | `result-track:95c05402c785290ed279527086b9e3f06c1d392c1369efe6bb9bb795c4a3cf2b` |
| 9 | `theorem` | [single_mem_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/single-mem-stdsimplex--9103c37c9a931132e4559e21.md) | 101 | `result-track:9103c37c9a931132e4559e21a6627c4ddaaa48e1cc12dad1ef87f3a9df731f35` |
| 10 | `theorem` | [ite_eq_mem_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/ite-eq-mem-stdsimplex--b01b0094835b12eaf5440d2c.md) | 105 | `result-track:b01b0094835b12eaf5440d2cadfaf1c9e4f96734f04d88e638f3431e91d8ec32` |
| 11 | `lemma` | [segment_single_subset_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/segment-single-subset-stdsimplex--b76fa01c6112414502850984.md) | 113 | `result-track:b76fa01c61124145028509848be9339f9aade66b538d8d13d17d44337e392dbb` |
| 12 | `lemma` | [stdSimplex_fin_two](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplex-fin-two--f0dd315da306a75485866618.md) | 118 | `result-track:f0dd315da306a754858666189d8b4a99604372f07cb76fc7f464d8a4dd3381a6` |
| 13 | `def` | [stdSimplexEquivIcc](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplexequivicc--f3dd691cd93b87d481d3f113.md) | 136 | `declaration-track:f3dd691cd93b87d481d3f113567bf69e14957ad7f03291602cd994560dc83a45` |
| 14 | `lemma` | [stdSimplexEquivIcc_zero](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplexequivicc-zero--8db843b5d851261d231c02cf.md) | 144 | `result-track:8db843b5d851261d231c02cf28cf706d74ea7b09e835546b5251b61a6b3eaf0a` |
| 15 | `lemma` | [stdSimplexEquivIcc_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplexequivicc-one--1eb2a8efa879a2552d4780f6.md) | 148 | `result-track:1eb2a8efa879a2552d4780f6de9eee7a8877534af13299edd112d3fecbbe5000` |
| 16 | `theorem` | [convexHull_basis_eq_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/convexhull-basis-eq-stdsimplex--6f9e8561f5a5f42c17105dfa.md) | 159 | `result-track:6f9e8561f5a5f42c17105dfac343b7159986485da62de402aa837d9d60d4a756` |
| 17 | `theorem` | [convexHull_rangle_single_eq_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/convexhull-rangle-single-eq-stdsimplex--c67938486596728e81c75dfc.md) | 172 | `result-track:c67938486596728e81c75dfc8a70ddd25a287f3c0d88db62e5106d4f6018d944` |
| 18 | `lemma` | [Convexity.ConvexSpace.AffineMap.convex_range](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/convexity-convexspace-affinemap-convex-range--f7c91e8ea36423e01b1b9cbd.md) | 179 | `result-track:f7c91e8ea36423e01b1b9cbd9213b42a1067408dfb422f672f975d4654dac42d` |
| 19 | `theorem` | [Set.convexHull_eq_range_iConvexComb](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/set-convexhull-eq-range-iconvexcomb--560d7d23b3eb13269fd01366.md) | 188 | `result-track:560d7d23b3eb13269fd01366d9e53331317508a60fd0142067ccf830a4721253` |
| 20 | `theorem` | [isClosed_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/isclosed-stdsimplex--e2d23bb342018146827057bd.md) | 216 | `result-track:e2d23bb342018146827057bdba57cd21dfa813995488e85f55451d4e196c0e6b` |
| 21 | `theorem` | [isCompact_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/iscompact-stdsimplex--80d71da7f5113b7af760bf28.md) | 225 | `result-track:80d71da7f5113b7af760bf284eb491e6dd6e9191c224c578e4ba82a6bfb1cc2e` |
| 22 | `instance` | [stdSimplex.instCompactSpace_coe](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplex-instcompactspace-coe--3cc43f634de5fc3c523cfe5f.md) | 230 | `declaration-track:3cc43f634de5fc3c523cfe5f545b1d376ad5bc951cfcb1a03b55eb5f27383fa6` |
| 23 | `theorem` | [stdSimplex_subset_closedBall](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplex-subset-closedball--61783219563e93e40a79d413.md) | 242 | `result-track:61783219563e93e40a79d4139b44ea32a0f928e8da567d6c1144e565a105b6ac` |
| 24 | `theorem` | [bounded_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/bounded-stdsimplex--445cb849044219bd384e2b9b.md) | 252 | `result-track:445cb849044219bd384e2b9b7030b33db1f76dc4b999f6b020f3099e4eab12ed` |
| 25 | `theorem` | [isPathConnected_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/ispathconnected-stdsimplex--50c31c88426472e9c415452d.md) | 257 | `result-track:50c31c88426472e9c415452d229a416990b706dbd45eddc1be47e77c655ac131` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/instance--dc2698ddd89a008c6f2ea9e6.md) | 264 | `declaration-track:dc2698ddd89a008c6f2ea9e6732ea8e007dbb957d69f911251b683f73afa74a3` |
| 27 | `def` | [stdSimplexHomeomorphUnitInterval](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplexhomeomorphunitinterval--3ea6a90655993aab527b8e10.md) | 270 | `declaration-track:3ea6a90655993aab527b8e103d09eb04a779b42ab9b19d8a1933923b498ffa25` |
| 28 | `lemma` | [stdSimplexHomeomorphUnitInterval_zero](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplexhomeomorphunitinterval-zero--2270f84ad5c1c5b1671046d8.md) | 279 | `result-track:2270f84ad5c1c5b1671046d8e5263cb6f794e500b736400fc5b2b8a7afef0128` |
| 29 | `lemma` | [stdSimplexHomeomorphUnitInterval_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/stdsimplexhomeomorphunitinterval-one--665d9ef7c7f9293ab74be6a6.md) | 283 | `result-track:665d9ef7c7f9293ab74be6a61b9181a3e770d22cb60413a6f24ecd039fcc70eb` |
| 30 | `theorem` | [diam_stdSimplex_le](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/diam-stdsimplex-le--bd0d490216e349e76fd7e8b4.md) | 292 | `result-track:bd0d490216e349e76fd7e8b4cfca9fd12142e14e81188e749619087015743364` |
| 31 | `theorem` | [diam_stdSimplex_of_subsingleton](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/diam-stdsimplex-of-subsingleton--b7a076d48548c3c07d468ce0.md) | 302 | `result-track:b7a076d48548c3c07d468ce0b9797d08dc0d7605d3734c6b901722fc736457a8` |
| 32 | `theorem` | [diam_stdSimplex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/diam-stdsimplex--fdec24cedca9b82d9b0dca77.md) | 310 | `result-track:fdec24cedca9b82d9b0dca775b739c0e5a977be48e5f3c3868cf92430d178398` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/instance--b3c06be512968a27fc61f73a.md) | 327 | `declaration-track:b3c06be512968a27fc61f73a59408a316c36e0b1ba64438ba646d2bc2c333ca1` |
| 34 | `lemma` | [ext](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/ext--958378bdee0ada8643766f25.md) | 332 | `result-track:958378bdee0ada8643766f254392ba017062cc7cb6d1327f4bb3c18d175fd36a` |
| 35 | `lemma` | [zero_le](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/zero-le--d4f84bde814dfca16329f00e.md) | 337 | `result-track:d4f84bde814dfca16329f00ed67b3978de23f592082e64371be29f3936c6f375` |
| 36 | `lemma` | [sum_eq_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/sum-eq-one--63584ff461542361a605381e.md) | 340 | `result-track:63584ff461542361a605381e8c6aa6365185ec43505ca8806ae385d887017099` |
| 37 | `lemma` | [add_eq_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/add-eq-one--19ccf6a63fd45e025267b39c.md) | 343 | `result-track:19ccf6a63fd45e025267b39c40c31b9d52eee2693ebcb153d3092ca24bd560fe` |
| 38 | `lemma` | [le_one](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/le-one--9f7d679e12db54b78f1459e7.md) | 352 | `result-track:9f7d679e12db54b78f1459e7c4ba79c3babe2bf01da424610fa1b349bfab7a58` |
| 39 | `lemma` | [image_linearMap](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/image-linearmap--90c0fed5aabb366a9480e537.md) | 357 | `result-track:90c0fed5aabb366a9480e53745571b4c45a67c29bf4e2a25229cf37b7d81f9dd` |
| 40 | `def` | [map](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/map--53c98fa437e3b7d946f0d72b.md) | 369 | `declaration-track:53c98fa437e3b7d946f0d72be651dd364e52a7b293dde723f33cd90f564fb9ca` |
| 41 | `lemma` | [map_coe](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/map-coe--932c8d46ba3ac3a5f3636d62.md) | 373 | `result-track:932c8d46ba3ac3a5f3636d62be311eaee1c30833b2cb7069ed7623239827fe4e` |
| 42 | `lemma` | [map_id_apply](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/map-id-apply--34520c9ceb6e1502c91bc863.md) | 377 | `result-track:34520c9ceb6e1502c91bc863b73e174f5b8baf55f27721715aa64fa80d2ade61` |
| 43 | `lemma` | [map_comp_apply](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/map-comp-apply--5a14710b465178250c18f4a7.md) | 381 | `result-track:5a14710b465178250c18f4a7153ed86f76795329003ebaefa8bbcab566705bb8` |
| 44 | `abbrev` | [vertex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/vertex--1c77ce5dd64dcfb85d904280.md) | 388 | `declaration-track:1c77ce5dd64dcfb85d90428024da01897746327294748fc1f1ddf082528f4985` |
| 45 | `lemma` | [vertex_coe](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/vertex-coe--a6df267ce65ff8453da5bb7b.md) | 392 | `result-track:a6df267ce65ff8453da5bb7bb742ba9bc49b1cddf3cd0650b902ffc5bd89459d` |
| 46 | `lemma` | [map_vertex](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/map-vertex--96bc9e28b1b9ef018418c5ca.md) | 396 | `result-track:96bc9e28b1b9ef018418c5ca81c54444ee031dc9435ec8513420e245791ee9f9` |
| 47 | `lemma` | [continuous_map](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/continuous-map--c8b5ba11676f2075c3bb24d0.md) | 401 | `result-track:c8b5ba11676f2075c3bb24d020e0b28bf9fbd026b5caca74f5e9a2513749bcb2` |
| 48 | `lemma` | [vertex_injective](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/vertex-injective--4c8520cb7ecd36811cf65eb7.md) | 406 | `result-track:4c8520cb7ecd36811cf65eb751124f7caf6e442dd378448f98c2298bb904e89d` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/instance--0481119d8441443e235cd862.md) | 414 | `declaration-track:0481119d8441443e235cd8628599dc200acce15250f1338fa8f0e0dcbcf033fd` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/instance--b0f5066e6b75aad25a9a3872.md) | 419 | `declaration-track:b0f5066e6b75aad25a9a3872269599e3222730fc0567833d792f150b1b681d15` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/instance--577e52934d114e16122712fc.md) | 426 | `declaration-track:577e52934d114e16122712fc0f5911a29c85131e1026712affdcd371b19b6e75` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/instance--62f3b7665246a7bf954e2a4f.md) | 436 | `declaration-track:62f3b7665246a7bf954e2a4f4a859713ae7919e9d4dcdc08a95c46e0dbd590d9` |
| 53 | `lemma` | [eq_one_of_unique](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/eq-one-of-unique--bb9072d9c5a9f55a97f7a95f.md) | 441 | `result-track:bb9072d9c5a9f55a97f7a95fd94e37ed1df6137c35566a2efc4fb9d15e72f365` |
| 54 | `def` | [barycenter](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/barycenter--0c4f17f2f1017e8697f75a95.md) | 457 | `declaration-track:0c4f17f2f1017e8697f75a95a3b77109363ff28f85bb9e77709d45580e4f2c23` |
| 55 | `theorem` | [barycenter_apply](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/barycenter-apply--f2d24e4b6c3974dca4008f56.md) | 462 | `result-track:f2d24e4b6c3974dca4008f56fb0a1aac2d31cc5cc3483a5a1c37cc42ee203e5e` |
| 56 | `theorem` | [barycenter_eq_centerMass](../../../../../mathematics/Geometry/ConvexGeometry/StdSimplex/Variantf23c7840d663e652cba4edd86aababf65351c7aca75b73de6e977292c1782fff.lean/declarations/barycenter-eq-centermass--677257cf546ff278af7de090.md) | 467 | `result-track:677257cf546ff278af7de090541843c0fe2c7404e764520bca97c19859d6fa32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
