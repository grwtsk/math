# Verification target: GRWTSK.Geometry.ConvexGeometry.Altitude.Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1aa69771aa82b62f207e19c9fcdc09fd48e6eb0",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1aa69771aa82b62f207e19c9fcdc09fd48e6eb0`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean.json)

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
| 1 | `def` | [altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitude--42a8a901f117c9ff4835f60d.md) | 58 | `declaration-track:42a8a901f117c9ff4835f60d30a8a4312b7a858f0ca8c9e01a664605e8e94b8d` |
| 2 | `theorem` | [altitude_def](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitude-def--ae1b45269f3d4d06502f8e7d.md) | 63 | `result-track:ae1b45269f3d4d06502f8e7d68cdf8e713d0d7000a5ccd4654c73c48bacd327e` |
| 3 | `lemma` | [altitude_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitude-reindex--e76352378714c444ee34486e.md) | 69 | `result-track:e76352378714c444ee34486e9a556e2f74c39a0c9eab3c140f664cea3fd6e4e0` |
| 4 | `theorem` | [mem_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/mem-altitude--7ed979c5301a6dabb93ecde6.md) | 76 | `result-track:7ed979c5301a6dabb93ecde6c419dec9c579942b60c72879f416ec1f0539c721` |
| 5 | `theorem` | [direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/direction-altitude--f9490090a9629ecdde5594f6.md) | 81 | `result-track:f9490090a9629ecdde5594f625f528db9c1c92f7686806eb30cf416d30f81e3a` |
| 6 | `theorem` | [vectorSpan_isOrtho_altitude_direction](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/vectorspan-isortho-altitude-direction--5ce0f53dc95a050e9570520e.md) | 90 | `result-track:5ce0f53dc95a050e9570520e2cecf7d1f607a0274d13e45049b5268c5c5dce96` |
| 7 | `lemma` | [altitude_map](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitude-map--e008639b45277cb754909ab8.md) | 95 | `result-track:e008639b45277cb754909ab8b488c6cb9ab54f95e382b09d503f17b9b1c7782a` |
| 8 | `lemma` | [map_altitude_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/map-altitude-restrict--ebbd1818170ba17bcf5ecfd3.md) | 107 | `result-track:ebbd1818170ba17bcf5ecfd36151349d341dab45a8f8dc78ed291a4f913060a2` |
| 9 | `lemma` | [altitude_restrict_eq_comap_subtype](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitude-restrict-eq-comap-subtype--daa92aee32bab0f76753007f.md) | 114 | `result-track:daa92aee32bab0f76753007fc0e76e66c019c2ec936d0bf0e56e0386fd93cc04` |
| 10 | `instance` | [finiteDimensional_direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/finitedimensional-direction-altitude--1fb89c1267b44ecbf6df8236.md) | 124 | `declaration-track:1fb89c1267b44ecbf6df823612bb7201330be777ae4d28f59842df238426ed47` |
| 11 | `theorem` | [finrank_direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/finrank-direction-altitude--571bc13ba4330210607d16bf.md) | 131 | `result-track:571bc13ba4330210607d16bf8faa166f9a7ea37b249088c1ecf4b11b3e7fc6cd` |
| 12 | `theorem` | [affineSpan_pair_eq_altitude_iff](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/affinespan-pair-eq-altitude-iff--96346c559a127b4851d439d5.md) | 149 | `result-track:96346c559a127b4851d439d5cf264c6b6e74c238e4240d69c5438af164beedc1` |
| 13 | `def` | [altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitudefoot--7324e8497ac2743b772e246d.md) | 183 | `declaration-track:7324e8497ac2743b772e246d7cbb1e58ff7bf19e3d9a68b7503029302fd773b9` |
| 14 | `lemma` | [altitudeFoot_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitudefoot-reindex--9aab995c68e6522213235516.md) | 186 | `result-track:9aab995c68e6522213235516c58e7b5a816f37d1b511c5424ccef5e40d225550` |
| 15 | `lemma` | [altitudeFoot_map](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitudefoot-map--e4b41aa8431757036775bd9b.md) | 193 | `result-track:e4b41aa8431757036775bd9bc3b75f2182f73483687f1d38da9b402171de8b8b` |
| 16 | `lemma` | [altitudeFoot_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitudefoot-restrict--00cdc684b28f334cedec6f80.md) | 198 | `result-track:00cdc684b28f334cedec6f8045ac5418435f0ac9c7d240af064a735a03c2306c` |
| 17 | `lemma` | [ne_altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/ne-altitudefoot--e31ad201b4ccdbfec4da89cc.md) | 205 | `result-track:e31ad201b4ccdbfec4da89ccea4b1f1ae2886b7559ae3df8ac16c23f47f2c7d9` |
| 18 | `lemma` | [altitudeFoot_mem_affineSpan_image_compl](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitudefoot-mem-affinespan-image-compl--caad82aa9da0593978186d1d.md) | 211 | `result-track:caad82aa9da0593978186d1d60f697de476d88673c8a39bb49823649b93e49a3` |
| 19 | `lemma` | [altitudeFoot_mem_affineSpan_faceOpposite](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitudefoot-mem-affinespan-faceopposite--9be4a8700c609791bd002a7f.md) | 216 | `result-track:9be4a8700c609791bd002a7f4f43c01eee7243e35a51c2f5625868f70fb4d990` |
| 20 | `lemma` | [altitudeFoot_mem_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitudefoot-mem-affinespan--fd8b1e67a5f759514e1922f9.md) | 220 | `result-track:fd8b1e67a5f759514e1922f9375a7538ce174ba157bdbe3adadd3ebde50f5ccd` |
| 21 | `lemma` | [affineSpan_pair_altitudeFoot_eq_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/affinespan-pair-altitudefoot-eq-altitude--71b5f31a2b5989aaf0af9d67.md) | 225 | `result-track:71b5f31a2b5989aaf0af9d67dfea6cd80ef99ab9a5c2d1ac0e4d16f50c890cde` |
| 22 | `lemma` | [altitudeFoot_mem_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitudefoot-mem-altitude--53a5e422c037893ff4dd5662.md) | 234 | `result-track:53a5e422c037893ff4dd56624b62131685163b29cd25e56858f6804d64cc8f3f` |
| 23 | `lemma` | [altitudeFoot_eq_point_rev](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/altitudefoot-eq-point-rev--2e3fb617d7905a7e7e1860ab.md) | 239 | `result-track:2e3fb617d7905a7e7e1860abd8dd40ca1b97b4facbd9d0a7b259a2cad376f232` |
| 24 | `theorem` | [affineSubspaceMk'_lineMap_altitudeFoot_eq_shift](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/affinesubspacemk-linemap-altitudefoot-eq-shift--2267c3d5703f8d69a822761e.md) | 245 | `result-track:2267c3d5703f8d69a822761eec41943464f2bdfcc75acdcf8dfa9a2e345f82e4` |
| 25 | `theorem` | [closedInterior_inter_affineSubspaceMk'_lineMap_altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/closedinterior-inter-affinesubspacemk-linemap-altitudefoot--d39f69427e63c1cc1e1819f0.md) | 263 | `result-track:d39f69427e63c1cc1e1819f09b238bb4db8fdad2f405dfdcc3bca265a3d20ae9` |
| 26 | `def` | [height](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/height--595b0387f27c6c272f2d9b5c.md) | 273 | `declaration-track:595b0387f27c6c272f2d9b5c0791e44a512d78e02989dae02a8dd92a2470a0cf` |
| 27 | `lemma` | [height_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/height-reindex--988bd2734c374d557484769e.md) | 276 | `result-track:988bd2734c374d557484769ea75536d5a9a20986bc49f8697f77720f78f48757` |
| 28 | `lemma` | [height_map](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/height-map--37ec2139ff7099130c4f3f77.md) | 281 | `result-track:37ec2139ff7099130c4f3f771efccddaa200b365edb95c64956b0327c1751120` |
| 29 | `lemma` | [height_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/height-restrict--64af18d8085dc9da0f659584.md) | 286 | `result-track:64af18d8085dc9da0f659584d20b875183bb4b615a31fd892ffaf86e20e2bbc1` |
| 30 | `lemma` | [height_pos](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/height-pos--7915865b5581e76cd49ee668.md) | 294 | `result-track:7915865b5581e76cd49ee668c59ed1461e15502a2c520df1b559001bd7a2308f` |
| 31 | `def` | [evalHeight](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/evalheight--9d8da83048626632df4c5848.md) | 300 | `declaration-track:9d8da83048626632df4c5848acda91f90d368c806009fd602af7df80085ab013` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/example--d342a999136511255af5076b.md) | 308 | `declaration-track:d342a999136511255af5076b79b205b439dc009244e8fac0cc2a4d10a5ed27c6` |
| 33 | `lemma` | [height_eq_dist](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/height-eq-dist--b946ba56d5fc5eee37496f20.md) | 312 | `result-track:b946ba56d5fc5eee37496f20eea91d4eb94f5faedecb87eb67da8adf1131c0ca` |
| 34 | `lemma` | [inner_vsub_altitudeFoot_vsub_altitudeFoot_eq_zero](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/inner-vsub-altitudefoot-vsub-altitudefoot-eq-zero--bdcb5e70c0a8c5782b15906d.md) | 324 | `result-track:bdcb5e70c0a8c5782b15906d4b20b9142521b996bae0933d104aa84a35340907` |
| 35 | `lemma` | [inner_vsub_vsub_altitudeFoot_eq_height_sq](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/inner-vsub-vsub-altitudefoot-eq-height-sq--fef7f7a95a7e66b2eb8480fb.md) | 339 | `result-track:fef7f7a95a7e66b2eb8480fbc4aa3ff39aadda33c261ee0041c5cdd4535b52cb` |
| 36 | `lemma` | [abs_inner_vsub_altitudeFoot_lt_mul](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/abs-inner-vsub-altitudefoot-lt-mul--9a2c4e7b0f3d3782f5a6b8a6.md) | 352 | `result-track:9a2c4e7b0f3d3782f5a6b8a6875faf52b8b37296ca6cda9aad898a2a84a720cf` |
| 37 | `lemma` | [neg_mul_lt_inner_vsub_altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/neg-mul-lt-inner-vsub-altitudefoot--2aefa765dca6c8a395eb0e94.md) | 401 | `result-track:2aefa765dca6c8a395eb0e9412d282da91cc72d7ea458506841abc3dc6ad1275` |
| 38 | `lemma` | [abs_inner_vsub_altitudeFoot_div_lt_one](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/abs-inner-vsub-altitudefoot-div-lt-one--4e5651645800a3eec24427aa.md) | 415 | `result-track:4e5651645800a3eec24427aab97c8b1eb5d252a38e5008c6dcf600009358b377` |
| 39 | `lemma` | [neg_one_lt_inner_vsub_altitudeFoot_div](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variantbd2889cf801c21fdd871cfa6c676c03973cb0361af6cf7ad2aab0e336cb5e333.lean/declarations/neg-one-lt-inner-vsub-altitudefoot-div--a5d7db9d64cc0ac2c163253c.md) | 424 | `result-track:a5d7db9d64cc0ac2c163253c76210a584ff6c741ca0cd80fe2fc8004d3579ca7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
