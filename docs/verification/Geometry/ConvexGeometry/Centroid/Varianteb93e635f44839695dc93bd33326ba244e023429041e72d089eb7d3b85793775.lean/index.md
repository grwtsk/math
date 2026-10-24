# Verification target: GRWTSK.Geometry.ConvexGeometry.Centroid.Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3f544ddd5b2df9607fde34278c23a9dc64cc9f5",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3f544ddd5b2df9607fde34278c23a9dc64cc9f5`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean.json)

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
| 1 | `abbrev` | [centroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid--3ca152ccc7669c5abc0a81a5.md) | 60 | `declaration-track:3ca152ccc7669c5abc0a81a5b71c323f3c9b4c4c59ea856246d85a5e6f701650` |
| 2 | `theorem` | [univ_centroid_eq](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/univ-centroid-eq--cf751b0c27e03fc61b37a27c.md) | 62 | `result-track:cf751b0c27e03fc61b37a27ce45d415500025c43e2f145fc8b6c021e0ef2ba10` |
| 3 | `theorem` | [centroid_mem_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-mem-affinespan--07d4529b20980999a9f7835c.md) | 66 | `result-track:07d4529b20980999a9f7835ca2361d570b6a5846abd2d34993ed7d118de113d0` |
| 4 | `theorem` | [centroid_eq_affineCombination](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-eq-affinecombination--64575b9d3b827347660acbfe.md) | 71 | `result-track:64575b9d3b827347660acbfe155cdde303e31990ef405d2585bfe4d072b2d084` |
| 5 | `theorem` | [centroid_notMem_affineSpan_of_ne_univ](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-notmem-affinespan-of-ne-univ--a0bc572060ce33fb24c05a76.md) | 76 | `result-track:a0bc572060ce33fb24c05a76b99cfe490f2af2fb16af0b2b5ebe820a8edac250` |
| 6 | `theorem` | [centroid_vsub_eq](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-vsub-eq--3aac397a8d6fa80eadef18cd.md) | 94 | `result-track:3aac397a8d6fa80eadef18cd2af7c55c7ae4625ea95b9cecf935bdd2ae59c16f` |
| 7 | `theorem` | [centroid_eq_smul_sum_vsub_vadd](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-eq-smul-sum-vsub-vadd--23e3bc932d167f4f6409e54e.md) | 100 | `result-track:23e3bc932d167f4f6409e54efa9335ce5cb0da39083cae4e84eb2498876920f0` |
| 8 | `theorem` | [smul_centroid_vsub_point_eq_sum_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/smul-centroid-vsub-point-eq-sum-vsub--3ae204ea9c965aa0888e958e.md) | 104 | `result-track:3ae204ea9c965aa0888e958efbf8dea9e9fd5026f2e677e08d0f5ae22f733463` |
| 9 | `theorem` | [centroid_weighted_vsub_eq_zero](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-weighted-vsub-eq-zero--a67c03371f888cf46748c325.md) | 111 | `result-track:a67c03371f888cf46748c32579cb7c8a338249ed5b74627b2561d62f6f62b081` |
| 10 | `theorem` | [eq_centroid_iff_sum_vsub_eq_zero](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/eq-centroid-iff-sum-vsub-eq-zero--a0a00ef801d3febf99782e99.md) | 120 | `result-track:a0a00ef801d3febf99782e9959a0aafc3f5f855500938c8c5becff489a905b55` |
| 11 | `theorem` | [face_centroid_eq_centroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/face-centroid-eq-centroid--f40d55880371078168bd69ec.md) | 139 | `result-track:f40d55880371078168bd69ec986e2b4e4a25546c38e4c936e70435e126d03322` |
| 12 | `theorem` | [centroid_eq_iff](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-eq-iff--c0fb6a0f839582766b453bce.md) | 149 | `result-track:c0fb6a0f839582766b453bce86335ab14f30a47c63b3975cb2ec533fa11eb1c2` |
| 13 | `theorem` | [face_centroid_eq_iff](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/face-centroid-eq-iff--aff33b1a8c414f6824811d7e.md) | 174 | `result-track:aff33b1a8c414f6824811d7e001b768e25780cb2d12300a03c74ced427f78a25` |
| 14 | `theorem` | [centroid_eq_of_range_eq](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-eq-of-range-eq--5b80a62d88df6cf0788a04b6.md) | 182 | `result-track:5b80a62d88df6cf0788a04b67632472fbd7c2bf16cd374db4f0717470b502dee` |
| 15 | `theorem` | [affineIndependent_points_update_centroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/affineindependent-points-update-centroid--76e28a6be3e727c7691c69ed.md) | 192 | `result-track:76e28a6be3e727c7691c69ed21e8d1a8843b520b6e42e2a719054b4c38fc57a5` |
| 16 | `theorem` | [centroid_map](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-map--b07813fbde206e39970a092f.md) | 199 | `result-track:b07813fbde206e39970a092fab4e8c8134068193029a62fc9f790bb928092209` |
| 17 | `theorem` | [centroid_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-reindex--27e03e17ad24e0b458038713.md) | 208 | `result-track:27e03e17ad24e0b4580387132fa9006299b20e9e9bda253f78fae447e2dfbfab` |
| 18 | `theorem` | [centroid_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-restrict--b69ccb6f5a91a6b7d9a6123f.md) | 218 | `result-track:b69ccb6f5a91a6b7d9a6123fcb2088995773a8859245892f5e26d3db7c0d2adf` |
| 19 | `def` | [faceOppositeCentroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid--e6e2a14b781d2ac980def3a5.md) | 231 | `declaration-track:e6e2a14b781d2ac980def3a57f123e512f9285e3bd5c855a5a6a84ff071ca302` |
| 20 | `theorem` | [faceOppositeCentroid_mem_affineSpan_face](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-mem-affinespan-face--3fb99d9d0f677c63ba512f81.md) | 235 | `result-track:3fb99d9d0f677c63ba512f81428360ad4005167e931c1f8db315dfd472d85f2d` |
| 21 | `theorem` | [faceOppositeCentroid_eq_affineCombination](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-eq-affinecombination--30fcce81208d60209f0e2abd.md) | 242 | `result-track:30fcce81208d60209f0e2abd2d71eef9e3cbf96e73c2a86bd3faf89e0a133992` |
| 22 | `theorem` | [faceOppositeCentroid_vsub_point_eq_smul_sum_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-vsub-point-eq-smul-sum-vsub--c15a8cb5477160ffcfd40ff9.md) | 254 | `result-track:c15a8cb5477160ffcfd40ff9a7530bbe902f6720f979c603b60436be7c6d58a8` |
| 23 | `theorem` | [faceOppositeCentroid_eq_sum_vsub_vadd](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-eq-sum-vsub-vadd--a4ca497165ce51cfb53cd356.md) | 270 | `result-track:a4ca497165ce51cfb53cd35642dd26c5970111a9781f2a9f3e7b73ecd0166f76` |
| 24 | `theorem` | [point_vsub_faceOppositeCentroid_eq_smul_sum_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/point-vsub-faceoppositecentroid-eq-smul-sum-vsub--d8f57296da00a8420d681da6.md) | 277 | `result-track:d8f57296da00a8420d681da63317831072eccd92a9b1ffb9725411f8d6683586` |
| 25 | `theorem` | [smul_faceOppositeCentroid_vsub_point_eq_sum_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/smul-faceoppositecentroid-vsub-point-eq-sum-vsub--58d546a44ace600cac035f91.md) | 284 | `result-track:58d546a44ace600cac035f91c43a2a76f37d3c5315862bfb4486cc7c7d3bff33` |
| 26 | `theorem` | [smul_centroid_vsub_point_eq_smul_faceOppositeCentroid_vsub_point](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/smul-centroid-vsub-point-eq-smul-faceoppositecentroid-vsub-point--9021d0d94fcfbedf9f92eea3.md) | 290 | `result-track:9021d0d94fcfbedf9f92eea35612e8fac08d220b8494e596c5cc76bfdb2da83d` |
| 27 | `theorem` | [faceOppositeCentroid_vsub_faceOppositeCentroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-vsub-faceoppositecentroid--66fc847539b6cfbfefd10d11.md) | 299 | `result-track:66fc847539b6cfbfefd10d11a3c630d3eae289b1d6183d158b95781ee0bca8cd` |
| 28 | `theorem` | [faceOppositeCentroid_vsub_point_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-vsub-point-eq-smul-vsub--0803cf7afaec024aa1500bae.md) | 322 | `result-track:0803cf7afaec024aa1500bae09c04c9e0aa2cc9e11744787daf21bf6071ef004` |
| 29 | `theorem` | [point_vsub_faceOppositeCentroid_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/point-vsub-faceoppositecentroid-eq-smul-vsub--8c55c8ef92b75d088c8c7f91.md) | 334 | `result-track:8c55c8ef92b75d088c8c7f91831ef2ef3f98a979c3ffa216e821ae34f47cc90e` |
| 30 | `theorem` | [point_vsub_centroid_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/point-vsub-centroid-eq-smul-vsub--81aef1d142506355261df28b.md) | 343 | `result-track:81aef1d142506355261df28be58fdfb283aa66779fd333915da2ff50fc85534d` |
| 31 | `theorem` | [centroid_vsub_point_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-vsub-point-eq-smul-vsub--bbd01dd58abf134f5c4086ac.md) | 359 | `result-track:bbd01dd58abf134f5c4086accd1a09cd891de17e0ed9a59610d68db12358255b` |
| 32 | `theorem` | [faceOppositeCentroid_vsub_centroid_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-vsub-centroid-eq-smul-vsub--fc98b072d79cf6905cb549eb.md) | 367 | `result-track:fc98b072d79cf6905cb549eb571bf56836ef9d09377a79619620d32ff1af1c10` |
| 33 | `theorem` | [centroid_vsub_faceOppositeCentroid_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-vsub-faceoppositecentroid-eq-smul-vsub--1b411ab85190628cead454c8.md) | 373 | `result-track:1b411ab85190628cead454c81617e1f6af328b9a2d02e6d08c8f9a1826b69872` |
| 34 | `theorem` | [centroid_eq_smul_vsub_vadd_point](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-eq-smul-vsub-vadd-point--291652f3401e3e19faa5351b.md) | 380 | `result-track:291652f3401e3e19faa5351be15cd54b1732f9caa11a882ea658103fb8317f57` |
| 35 | `theorem` | [faceOppositeCentroid_eq_smul_vsub_vadd_point](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-eq-smul-vsub-vadd-point--efaadbb1202ee591c9e38714.md) | 386 | `result-track:efaadbb1202ee591c9e38714f44651a8552612ed20ffca95e42d69b450d643b6` |
| 36 | `theorem` | [faceOppositeCentroid_map](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-map--e779dcdd601bd764d29636dc.md) | 392 | `result-track:e779dcdd601bd764d29636dc4633dbe02b4a27b06535ee1731d9ed6764a8c6d9` |
| 37 | `theorem` | [faceOppositeCentroid_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-restrict--017c6c637cd9dea286fe6472.md) | 401 | `result-track:017c6c637cd9dea286fe647241321490f720a59b7913bab86079a9559a8bf765` |
| 38 | `theorem` | [faceOppositeCentroid_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-reindex--36ee9898ceec25ff3e108d7a.md) | 411 | `result-track:36ee9898ceec25ff3e108d7a1cc1db91327ecb90a953fac696e913150413404b` |
| 39 | `def` | [median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/median--bc4c8a82331dc856735f33f4.md) | 424 | `declaration-track:bc4c8a82331dc856735f33f48dde0e283917cd50a79d2a63c5daac2717af780e` |
| 40 | `theorem` | [median_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/median-reindex--5eee6eb72f8434ac48508386.md) | 427 | `result-track:5eee6eb72f8434ac485083866b076caddc83f0cc5da16bf367b892034fe9a161` |
| 41 | `theorem` | [median_map](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/median-map--80aea3386864ccef30e0c9af.md) | 434 | `result-track:80aea3386864ccef30e0c9afa83f526ea397af1113094e7839e27ad010fbe70b` |
| 42 | `theorem` | [median_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/median-restrict--276173b48829cd079d01d3e1.md) | 440 | `result-track:276173b48829cd079d01d3e103676fc294872a9da800d2f08c1fbce14a87099c` |
| 43 | `theorem` | [faceOppositeCentroid_mem_median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/faceoppositecentroid-mem-median--07e182534dc99e9a5b1a7f04.md) | 447 | `result-track:07e182534dc99e9a5b1a7f04128aa5aa990cf1cf9aad52c694d7e053a81db1bf` |
| 44 | `theorem` | [point_mem_median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/point-mem-median--a22db95601c035613a08529b.md) | 452 | `result-track:a22db95601c035613a08529bf56a3eaf84c35797bf041b7dd0449f0cd23b54d3` |
| 45 | `theorem` | [centroid_mem_median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/centroid-mem-median--0b5a74e56cf66ce297902b94.md) | 457 | `result-track:0b5a74e56cf66ce297902b94086577024c1c33d6b7b38cf61de4c77458f8671d` |
| 46 | `theorem` | [median_eq_line_point_centroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/median-eq-line-point-centroid--4d46b36e14b777cc3cb14dd8.md) | 469 | `result-track:4d46b36e14b777cc3cb14dd88c14427c19b12dc0a7547c2407a4dbe9c2b7a0e6` |
| 47 | `theorem` | [eq_centroid_of_forall_mem_median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/eq-centroid-of-forall-mem-median--9cf03e7e3d96701696cd2dfe.md) | 491 | `result-track:9cf03e7e3d96701696cd2dfe94bfcadf8c80b5ec8c0ddc784fe5c38a0174a735` |
| 48 | `def` | [medial](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/medial--51b202b9463859e948770179.md) | 536 | `declaration-track:51b202b9463859e9487701798667d1c54bff2036091eb149a6a0dc7676eb70e4` |
| 49 | `theorem` | [medial_points](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/medial-points--38f5fec224351be462ecf688.md) | 545 | `result-track:38f5fec224351be462ecf688d3b5adcf38a106140ec2e05e3ccc9ad1ccf13ce5` |
| 50 | `theorem` | [medial_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/medial-reindex--0cda056621a0a3e2854da53a.md) | 548 | `result-track:0cda056621a0a3e2854da53a891249602ccdb761d5ee58b971c474aca82ac8a8` |
| 51 | `theorem` | [medial_map](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/medial-map--b65af992072e3641f185fc9a.md) | 554 | `result-track:b65af992072e3641f185fc9a4b34db0a9e276a0bf8c3bde450bc656f1303a42c` |
| 52 | `theorem` | [affineSpan_range_medial](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/affinespan-range-medial--11b6878ae9260e8bbd79d49e.md) | 563 | `result-track:11b6878ae9260e8bbd79d49ea449a2c94950c7723b60641e462bf38d0b97294c` |
| 53 | `theorem` | [medial_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/declarations/medial-restrict--b531e7d933b5bec998395913.md) | 584 | `result-track:b531e7d933b5bec9983959137cf859675ce8539eb40a54e4cd1d4c27158cf4b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
