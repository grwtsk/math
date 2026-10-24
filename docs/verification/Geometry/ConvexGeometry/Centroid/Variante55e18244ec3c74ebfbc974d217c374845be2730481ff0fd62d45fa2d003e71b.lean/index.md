# Verification target: GRWTSK.Geometry.ConvexGeometry.Centroid.Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fae929affc7bbe346128209bbbae40d38f8a1aa0",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fae929affc7bbe346128209bbbae40d38f8a1aa0`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean.json)

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
| 1 | `abbrev` | [centroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid--ffb53dd79c98671c5652c637.md) | 68 | `declaration-track:ffb53dd79c98671c5652c6379832884551ad26873169a8d58368acbcf9281a75` |
| 2 | `theorem` | [univ_centroid_eq](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/univ-centroid-eq--86e951aeedee7c6f92560008.md) | 70 | `result-track:86e951aeedee7c6f925600082216e40c1fc4f1d176f1ff86625bc8a2f06932e8` |
| 3 | `theorem` | [centroid_mem_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-mem-affinespan--d78a08f32d0f84a3a836722b.md) | 74 | `result-track:d78a08f32d0f84a3a836722bf4ec5d09791aa76ca0ed4028e3a122c7714daafd` |
| 4 | `theorem` | [centroid_eq_affineCombination](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-eq-affinecombination--59d3cc0fe155736d67ecac0b.md) | 79 | `result-track:59d3cc0fe155736d67ecac0b8f2ebde4e54dc9244ad01ef93add809b2e60123b` |
| 5 | `theorem` | [centroid_notMem_affineSpan_of_ne_univ](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-notmem-affinespan-of-ne-univ--4120f5bfe81ea43a471ca5a8.md) | 84 | `result-track:4120f5bfe81ea43a471ca5a81e2fc7f8bf334de780c0a784faebc22cdb11a921` |
| 6 | `theorem` | [centroid_vsub_eq](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-vsub-eq--e1d18c070d0845c6e8906e5b.md) | 102 | `result-track:e1d18c070d0845c6e8906e5bed557a575df3a08a3615299a6d281ac169be9bd9` |
| 7 | `theorem` | [centroid_eq_smul_sum_vsub_vadd](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-eq-smul-sum-vsub-vadd--9fb2b2b97bab66a143bc4360.md) | 108 | `result-track:9fb2b2b97bab66a143bc436056f0da9ee353b8303c298a1c29b73bce5acf29ab` |
| 8 | `theorem` | [smul_centroid_vsub_point_eq_sum_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/smul-centroid-vsub-point-eq-sum-vsub--1500e82c90a4f8306ac9f373.md) | 112 | `result-track:1500e82c90a4f8306ac9f37349f6fe68d89fbf72d226e06a223cca535ca8ddc8` |
| 9 | `theorem` | [centroid_weighted_vsub_eq_zero](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-weighted-vsub-eq-zero--ac6b17921b9b36baaba53508.md) | 119 | `result-track:ac6b17921b9b36baaba535087c7bf3fe1a5bd6ec063694ab1b8e3bad51bd2a2a` |
| 10 | `theorem` | [eq_centroid_iff_sum_vsub_eq_zero](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/eq-centroid-iff-sum-vsub-eq-zero--fda955de15fb2c6374c71181.md) | 128 | `result-track:fda955de15fb2c6374c71181568615e23b055f02389872f8634c948827971bd7` |
| 11 | `theorem` | [face_centroid_eq_centroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/face-centroid-eq-centroid--3bf9cf5702e76a689923fbf4.md) | 147 | `result-track:3bf9cf5702e76a689923fbf483c7aa37bd9caf841f726d3104cbe1f022612370` |
| 12 | `theorem` | [centroid_eq_iff](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-eq-iff--facdecbb0446267f93e119e4.md) | 157 | `result-track:facdecbb0446267f93e119e4384cc807aa0ae9534d3a6cf7a46c80882dfa49a2` |
| 13 | `theorem` | [face_centroid_eq_iff](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/face-centroid-eq-iff--9712a758b688510807638938.md) | 182 | `result-track:9712a758b6885108076389381edbba8fa6ad19794522a074eb9d8b658180cb2d` |
| 14 | `theorem` | [centroid_eq_of_range_eq](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-eq-of-range-eq--c941865d114f34b7ae9d0dc6.md) | 190 | `result-track:c941865d114f34b7ae9d0dc6adea79cc035fe14eb3d72d7c279d8c64e58eca83` |
| 15 | `theorem` | [affineIndependent_points_update_centroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/affineindependent-points-update-centroid--7ad505e57284e8f44476a596.md) | 200 | `result-track:7ad505e57284e8f44476a5966c5ef52912608307c406a97da8d0f1ac63d6120c` |
| 16 | `theorem` | [centroid_map](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-map--970b4558c8c3c50f5ddc4ca0.md) | 207 | `result-track:970b4558c8c3c50f5ddc4ca00ef088abee6f42e5486f61d900981e2600ce3345` |
| 17 | `theorem` | [centroid_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-reindex--488b559bb47763857163d2e8.md) | 216 | `result-track:488b559bb47763857163d2e8892530d6dc091ca01edce23cc014a3a82354499e` |
| 18 | `theorem` | [centroid_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-restrict--8ebf01b496a3d292230fa6e8.md) | 226 | `result-track:8ebf01b496a3d292230fa6e87e99f0ed67245b0f4ec2708abc9756378c6339d0` |
| 19 | `def` | [faceOppositeCentroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid--35eadf37aa26332cb79077bb.md) | 239 | `declaration-track:35eadf37aa26332cb79077bb6ce9685df990f2a65c846a6455dcb438f3307a19` |
| 20 | `theorem` | [faceOppositeCentroid_mem_affineSpan_face](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-mem-affinespan-face--210b9225d57b37e697b98449.md) | 243 | `result-track:210b9225d57b37e697b98449b121b340524178d38de0328829cf572e92cc180f` |
| 21 | `theorem` | [faceOppositeCentroid_eq_affineCombination](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-eq-affinecombination--abaf5e8dcf7e65b37c949442.md) | 250 | `result-track:abaf5e8dcf7e65b37c9494427d405b378bef39c227f3ddefb2e99b45d070e7f7` |
| 22 | `theorem` | [faceOppositeCentroid_vsub_point_eq_smul_sum_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-vsub-point-eq-smul-sum-vsub--f8d44ba95f1dd11622a02469.md) | 262 | `result-track:f8d44ba95f1dd11622a0246912059017a4122577336d4c19a262992e36ba7956` |
| 23 | `theorem` | [faceOppositeCentroid_eq_sum_vsub_vadd](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-eq-sum-vsub-vadd--48a228aa4b5d9d327b1b327f.md) | 278 | `result-track:48a228aa4b5d9d327b1b327f3f89e350f6db5224b7a2492e6c851997923f8e3d` |
| 24 | `theorem` | [point_vsub_faceOppositeCentroid_eq_smul_sum_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/point-vsub-faceoppositecentroid-eq-smul-sum-vsub--5f540747f87b546e5230bb48.md) | 285 | `result-track:5f540747f87b546e5230bb484114e423796a39ae2c0eba8f890046d238c4822c` |
| 25 | `theorem` | [smul_faceOppositeCentroid_vsub_point_eq_sum_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/smul-faceoppositecentroid-vsub-point-eq-sum-vsub--0342feb5cdbf439d2f9a823f.md) | 292 | `result-track:0342feb5cdbf439d2f9a823f6f84707275f52778220ccb94eb9b568d5ca06252` |
| 26 | `theorem` | [smul_centroid_vsub_point_eq_smul_faceOppositeCentroid_vsub_point](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/smul-centroid-vsub-point-eq-smul-faceoppositecentroid-vsub-point--e5189f317f7dff2d46102512.md) | 298 | `result-track:e5189f317f7dff2d461025121833d0d302b31c51749b5d133ccc19277317038e` |
| 27 | `theorem` | [faceOppositeCentroid_vsub_faceOppositeCentroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-vsub-faceoppositecentroid--1b939258f74a99a876dfdb4a.md) | 307 | `result-track:1b939258f74a99a876dfdb4a09289bba389cd7a98995bc11c986044154d5bcc0` |
| 28 | `theorem` | [faceOppositeCentroid_vsub_point_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-vsub-point-eq-smul-vsub--8b47ce14163c147ced5282f9.md) | 330 | `result-track:8b47ce14163c147ced5282f9ad475250a1cee160b3172969f1ba8b5dbbad72ef` |
| 29 | `theorem` | [point_vsub_faceOppositeCentroid_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/point-vsub-faceoppositecentroid-eq-smul-vsub--db118d1bfa66867c6bf87ede.md) | 342 | `result-track:db118d1bfa66867c6bf87ede0117e847047ce2db23b237cf7de177d20ffa2e24` |
| 30 | `theorem` | [point_vsub_centroid_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/point-vsub-centroid-eq-smul-vsub--704e24f6314efed4198ce442.md) | 351 | `result-track:704e24f6314efed4198ce442da9cb9c02f334534fca051a6f307c6b48227cd67` |
| 31 | `theorem` | [centroid_vsub_point_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-vsub-point-eq-smul-vsub--80820f4e364b82a56c97ebf4.md) | 367 | `result-track:80820f4e364b82a56c97ebf4144a3a9c73a74e6bf7d72aecbea13da2f384c544` |
| 32 | `theorem` | [faceOppositeCentroid_vsub_centroid_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-vsub-centroid-eq-smul-vsub--bdac84117863952da57c74af.md) | 375 | `result-track:bdac84117863952da57c74af8898d6f015b9c9c31852edd1a9814fa5af9988ca` |
| 33 | `theorem` | [centroid_vsub_faceOppositeCentroid_eq_smul_vsub](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-vsub-faceoppositecentroid-eq-smul-vsub--e4d440a6c73cb8081ccf1426.md) | 381 | `result-track:e4d440a6c73cb8081ccf142603c29fe719e238b4ba5f0dacb65c35a32e2fb21c` |
| 34 | `theorem` | [centroid_eq_smul_vsub_vadd_point](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-eq-smul-vsub-vadd-point--7d18f8f05ae257d26003726c.md) | 388 | `result-track:7d18f8f05ae257d26003726cf7796cb5987d45a5dbea5e05bd14e9218a578bee` |
| 35 | `theorem` | [faceOppositeCentroid_eq_smul_vsub_vadd_point](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-eq-smul-vsub-vadd-point--6ec055d5989b73b00f76198b.md) | 394 | `result-track:6ec055d5989b73b00f76198b563febceb9f75d7021e8743a4b16f2578bc0a2ea` |
| 36 | `theorem` | [faceOppositeCentroid_map](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-map--6d45e53b5de0b690e3f77bcb.md) | 400 | `result-track:6d45e53b5de0b690e3f77bcb8af6efb33b9bd139a935eccbc41c2b0deca3aa03` |
| 37 | `theorem` | [faceOppositeCentroid_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-restrict--70d98e7d0a3825aae0e08f89.md) | 409 | `result-track:70d98e7d0a3825aae0e08f897d40507088545aeebaba4348d9f75f87b5be5de2` |
| 38 | `theorem` | [faceOppositeCentroid_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-reindex--7e852f15dae88fcfb5c8c4aa.md) | 419 | `result-track:7e852f15dae88fcfb5c8c4aa550f8d67831bfd81d670596b1c8cf8508f70be00` |
| 39 | `def` | [median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/median--22d7c8afbc64ec40fb44e059.md) | 432 | `declaration-track:22d7c8afbc64ec40fb44e059afbf5601427897fc95532fdc48d86a0f3f27e84e` |
| 40 | `theorem` | [median_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/median-reindex--e60cca60a242a4b7bac20673.md) | 435 | `result-track:e60cca60a242a4b7bac20673eac7d31ce702544508cedc7236130af20017ae87` |
| 41 | `theorem` | [median_map](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/median-map--19846ca014e12078eb5c2e1f.md) | 442 | `result-track:19846ca014e12078eb5c2e1f4c55b73d003e735eb39e4c2fdc9f1a30deab581f` |
| 42 | `theorem` | [median_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/median-restrict--6aa1dac0325172de6cc4b36c.md) | 448 | `result-track:6aa1dac0325172de6cc4b36ca18affd70af9baabddefd252bc81b4faef7d19e8` |
| 43 | `theorem` | [faceOppositeCentroid_mem_median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/faceoppositecentroid-mem-median--c3350c526a1a7267ad2318d6.md) | 455 | `result-track:c3350c526a1a7267ad2318d634f1cc50065379342e28abed62ca1e7267ba4ee1` |
| 44 | `theorem` | [point_mem_median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/point-mem-median--b0330b74acb87baf13c30a6b.md) | 460 | `result-track:b0330b74acb87baf13c30a6b19ad9aba6774cee47681b51b32f3d9fef85cfc95` |
| 45 | `theorem` | [centroid_mem_median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/centroid-mem-median--5e4495972b4ff6dbf12735ba.md) | 465 | `result-track:5e4495972b4ff6dbf12735ba3e7acad4d70a0f18d69b96751f1d2fd118ee6c62` |
| 46 | `theorem` | [median_eq_line_point_centroid](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/median-eq-line-point-centroid--e8d7ab00f5d7c12b603401b2.md) | 477 | `result-track:e8d7ab00f5d7c12b603401b28a5f35b29d9cc873b7cc2953b89a98531dd1d6d7` |
| 47 | `theorem` | [eq_centroid_of_forall_mem_median](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/eq-centroid-of-forall-mem-median--2a2e2bd2eb9a3ce237a6501d.md) | 499 | `result-track:2a2e2bd2eb9a3ce237a6501d7f75bb0971649fbe2e72934509af98247d2a1a85` |
| 48 | `def` | [medial](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/medial--43b271208f84bfa36b8d476f.md) | 544 | `declaration-track:43b271208f84bfa36b8d476f984d06d0f265138c74e665f90f6620908405a75c` |
| 49 | `theorem` | [medial_points](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/medial-points--46c6ade7a281b5ea8f81d9b4.md) | 553 | `result-track:46c6ade7a281b5ea8f81d9b45c5022ec09c9ab7e385270d0ef1cce7277f1e445` |
| 50 | `theorem` | [medial_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/medial-reindex--c685d5f51eee60f35637cbe3.md) | 556 | `result-track:c685d5f51eee60f35637cbe3f34b89486f127cc3718c48572e63cba3ab1f060c` |
| 51 | `theorem` | [medial_map](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/medial-map--6d410974835fbd1403b34557.md) | 562 | `result-track:6d410974835fbd1403b345570bf493218a63b30ffc61d2465627eccc4fa76ea9` |
| 52 | `theorem` | [affineSpan_range_medial](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/affinespan-range-medial--88dd5aee902f4cd496cbdff5.md) | 571 | `result-track:88dd5aee902f4cd496cbdff59b7d50324ac8db5dbb5a5bca4e65140fdefd25bf` |
| 53 | `theorem` | [medial_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Centroid/Variante55e18244ec3c74ebfbc974d217c374845be2730481ff0fd62d45fa2d003e71b.lean/declarations/medial-restrict--a812dd07b39aebf1aae39e09.md) | 592 | `result-track:a812dd07b39aebf1aae39e091cbed84831864e59782e8f32d262a62c6c693327` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
