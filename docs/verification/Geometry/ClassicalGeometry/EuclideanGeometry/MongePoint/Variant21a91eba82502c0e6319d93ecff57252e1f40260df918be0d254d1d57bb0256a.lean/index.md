# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.MongePoint.Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4d2703969d31a741d3efdaac74017241183473c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4d2703969d31a741d3efdaac74017241183473c`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Altitude` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Circumcenter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mongePoint](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepoint--8c0ccb06fabb4b1b9dc6db5c.md) | 71 | `declaration-track:8c0ccb06fabb4b1b9dc6db5c4e48fb60924ecc0c182494c9c110e0bb738e7488` |
| 2 | `theorem` | [mongePoint_eq_smul_vsub_vadd_circumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepoint-eq-smul-vsub-vadd-circumcenter--8d8e592018ea49920688e83c.md) | 78 | `result-track:8d8e592018ea49920688e83c7eb97f7949e6edc40ff29c15d005a85a3435f3d6` |
| 3 | `theorem` | [mongePoint_mem_affineSpan](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepoint-mem-affinespan--1266969f24c71a02033ac48c.md) | 86 | `result-track:1266969f24c71a02033ac48c83a76e4eae8b27e47073f0acbee366a75d166ecd` |
| 4 | `theorem` | [mongePoint_eq_of_range_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepoint-eq-of-range-eq--3816c241bb6e659caf721dea.md) | 92 | `result-track:3816c241bb6e659caf721dea7e77a10d8f710ae4bbfec964f0cb9fe7b1809f6d` |
| 5 | `def` | [mongePointWeightsWithCircumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepointweightswithcircumcenter--94d0f33ef2527c4e4944d5a4.md) | 99 | `declaration-track:94d0f33ef2527c4e4944d5a4269f0c6e1092ea12edb74ccfb7bef08ce8029679` |
| 6 | `theorem` | [sum_mongePointWeightsWithCircumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/sum-mongepointweightswithcircumcenter--2e5ad38995023d85a1f794a9.md) | 105 | `result-track:2e5ad38995023d85a1f794a9c4d640d009e1023c9d1a6b1b1eb0df8af2defdb1` |
| 7 | `theorem` | [mongePoint_eq_affineCombination_of_pointsWithCircumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepoint-eq-affinecombination-of-pointswithcircumcenter--757b273e968278eaaf3d9ab4.md) | 114 | `result-track:757b273e968278eaaf3d9ab438d541d6a8423d75a4244541368f961075a4896d` |
| 8 | `def` | [mongePointVSubFaceCentroidWeightsWithCircumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepointvsubfacecentroidweightswithcircumcenter--cf7fb58500db9726e92749c9.md) | 143 | `declaration-track:cf7fb58500db9726e92749c9a2660acac514441446c2334e56b6292a431868ac` |
| 9 | `theorem` | [mongePointVSubFaceCentroidWeightsWithCircumcenter_eq_sub](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepointvsubfacecentroidweightswithcircumcenter-eq-sub--baabdfb7f3d50bc312645442.md) | 151 | `result-track:baabdfb7f3d50bc312645442b8de1e8555087be28310a8c5334c3934d0883bc7` |
| 10 | `theorem` | [sum_mongePointVSubFaceCentroidWeightsWithCircumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/sum-mongepointvsubfacecentroidweightswithcircumcenter--51ce7a3711d85e53121ba718.md) | 168 | `result-track:51ce7a3711d85e53121ba7183f83b1f1ba5aff6d9c7fced7f56b6d5385ffa784` |
| 11 | `theorem` | [mongePoint_vsub_face_centroid_eq_weightedVSub_of_pointsWithCircumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepoint-vsub-face-centroid-eq-weightedvsub-of-pointswithcircumcenter--0e3a641d9ef654c1e1519108.md) | 177 | `result-track:0e3a641d9ef654c1e151910872c911cf5acfedf28d0f46a6d78d2d8e77dcd39d` |
| 12 | `theorem` | [inner_mongePoint_vsub_face_centroid_vsub](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/inner-mongepoint-vsub-face-centroid-vsub--417355df6aa7d03159080796.md) | 189 | `result-track:417355df6aa7d03159080796f1a4c6801abdba2648c672bf32ca6e38f0432dfb` |
| 13 | `def` | [mongePlane](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongeplane--ca6338a706f1f4438b620772.md) | 226 | `declaration-track:ca6338a706f1f4438b620772eff286bd6e20becf7bb610cb6d5ead35b35b2a8b` |
| 14 | `theorem` | [mongePlane_def](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongeplane-def--45a8ba363d893ed31892f0e9.md) | 231 | `result-track:45a8ba363d893ed31892f0e9b8b4702319e0d6e1db47397a7633d2eb8c3edaf7` |
| 15 | `theorem` | [mongePlane_comm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongeplane-comm--e044de7e0c71c529507e5ade.md) | 240 | `result-track:e044de7e0c71c529507e5ade3a78b8403eec01a5b257399a87ca424b09665d67` |
| 16 | `theorem` | [mongePoint_mem_mongePlane](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/mongepoint-mem-mongeplane--9af8256f134e95a4f9c2ece0.md) | 252 | `result-track:9af8256f134e95a4f9c2ece0cf75028d95e413bc93b7dd8239b57837b9a98692` |
| 17 | `theorem` | [direction_mongePlane](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/direction-mongeplane--a7d94ff6a3e7422699c398b1.md) | 262 | `result-track:a7d94ff6a3e7422699c398b11c483c35bc87cbb467891e04d53500bc49a8d74c` |
| 18 | `theorem` | [eq_mongePoint_of_forall_mem_mongePlane](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/eq-mongepoint-of-forall-mem-mongeplane--bb02a818cb598dfcd55420d4.md) | 270 | `result-track:bb02a818cb598dfcd55420d4b7ab7075101244601164e670d5ce99c925a0c7dd` |
| 19 | `def` | [orthocenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocenter--594e221a438fbaf0303b1bcc.md) | 313 | `declaration-track:594e221a438fbaf0303b1bcc067ce64282bc1d9deb019a8b88cf168c49a06101` |
| 20 | `theorem` | [orthocenter_eq_mongePoint](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocenter-eq-mongepoint--3484f67083c2a6de0354dc83.md) | 317 | `result-track:3484f67083c2a6de0354dc83e1372ef8be269ad7804b59116effbcf36b51e863` |
| 21 | `theorem` | [orthocenter_eq_smul_vsub_vadd_circumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocenter-eq-smul-vsub-vadd-circumcenter--20f2a561407eac13d6ae04be.md) | 322 | `result-track:20f2a561407eac13d6ae04be432901a9671ff882f507de373cde3d92107a0c22` |
| 22 | `theorem` | [orthocenter_mem_affineSpan](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocenter-mem-affinespan--b6540ad542a9d0b3b0e10d72.md) | 330 | `result-track:b6540ad542a9d0b3b0e10d7277fc5bd30fa5f29a5ee0225c06d8ad2d0587df55` |
| 23 | `theorem` | [orthocenter_eq_of_range_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocenter-eq-of-range-eq--076ca5a491686ccf6bdb21af.md) | 335 | `result-track:076ca5a491686ccf6bdb21afa663d2bc7102f8f18117cfe72cf3d4f597d465fd` |
| 24 | `theorem` | [altitude_eq_mongePlane](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/altitude-eq-mongeplane--a5a2de7d5d279b06058d5b44.md) | 341 | `result-track:a5a2de7d5d279b06058d5b449118e9f91e11d9958b77f8f48a92a0212f367c50` |
| 25 | `theorem` | [orthocenter_mem_altitude](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocenter-mem-altitude--7bfa27567534e300d4ef9f70.md) | 350 | `result-track:7bfa27567534e300d4ef9f700b77f44e4c5f5193ac79be4260a233e4f17639fd` |
| 26 | `theorem` | [eq_orthocenter_of_forall_mem_altitude](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/eq-orthocenter-of-forall-mem-altitude--a5179a7cdb6428c540089420.md) | 359 | `result-track:a5179a7cdb6428c540089420d41efe75aec5056109007998f937386fbe5cd8d5` |
| 27 | `theorem` | [dist_orthocenter_reflection_circumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/dist-orthocenter-reflection-circumcenter--1a676d3ced0574693800b91d.md) | 375 | `result-track:1a676d3ced0574693800b91dc9dd2f37eb2f5bc6b4b5415c64cfeaa429c26c56` |
| 28 | `theorem` | [dist_orthocenter_reflection_circumcenter_finset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/dist-orthocenter-reflection-circumcenter-finset--5181e4591f9975a70112e489.md) | 395 | `result-track:5181e4591f9975a70112e489c6f38515c5af521cdd61c3e93ae6d8d936cf7db7` |
| 29 | `theorem` | [affineSpan_orthocenter_point_le_altitude](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/affinespan-orthocenter-point-le-altitude--f2b039a64dfdbea7bf0da5a5.md) | 405 | `result-track:f2b039a64dfdbea7bf0da5a51a6419fbbb6d1bd63cd9851c7587ec02c3657254` |
| 30 | `theorem` | [altitude_replace_orthocenter_eq_affineSpan](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/altitude-replace-orthocenter-eq-affinespan--f28f67352277747681cdb2ac.md) | 415 | `result-track:f28f67352277747681cdb2ac1bb72a8bf81354f89038e9c68184f41bbc8eded4` |
| 31 | `theorem` | [orthocenter_replace_orthocenter_eq_point](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocenter-replace-orthocenter-eq-point--a7602bd01de9f24f9f8541e9.md) | 462 | `result-track:a7602bd01de9f24f9f8541e9481714b2a87c4e39cca22f908d3466f117c1ce6f` |
| 32 | `def` | [OrthocentricSystem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocentricsystem--d960a2e48a190b8691fe38b9.md) | 485 | `declaration-track:d960a2e48a190b8691fe38b97d34f4a064c6dbd38a7c9487b1f2a797f56a5b1e` |
| 33 | `theorem` | [exists_of_range_subset_orthocentricSystem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/exists-of-range-subset-orthocentricsystem--772f6892cf529490f5e3c612.md) | 497 | `result-track:772f6892cf529490f5e3c6123cd070b60315de1b20b2791f0914b3623629cf4d` |
| 34 | `theorem` | [exists_dist_eq_circumradius_of_subset_insert_orthocenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/exists-dist-eq-circumradius-of-subset-insert-orthocenter--623e0fefc22d2d3fc75cb243.md) | 533 | `result-track:623e0fefc22d2d3fc75cb243e5fba0106f348ae19cae61535d0974a6b416d74f` |
| 35 | `theorem` | [OrthocentricSystem.affineIndependent](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocentricsystem-affineindependent--e55ebe85b3faca040deeca90.md) | 562 | `result-track:e55ebe85b3faca040deeca90ef35b1ba18d0ff57570c239c57bc30a561c4772e` |
| 36 | `theorem` | [affineSpan_of_orthocentricSystem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/affinespan-of-orthocentricsystem--c25b542dbe27fe003b7fee47.md) | 571 | `result-track:c25b542dbe27fe003b7fee477783198b3d3a072cd020fee1279d00797c2de28b` |
| 37 | `theorem` | [OrthocentricSystem.exists_circumradius_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocentricsystem-exists-circumradius-eq--bc26baf7ddfe3c417484895a.md) | 587 | `result-track:bc26baf7ddfe3c417484895a8316864db1e0363972596297192fe3938599a149` |
| 38 | `theorem` | [OrthocentricSystem.eq_insert_orthocenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean/declarations/orthocentricsystem-eq-insert-orthocenter--2e3c24cdf775ce3c15cc04b6.md) | 607 | `result-track:2e3c24cdf775ce3c15cc04b690001f111491e517b3e3c5e42106a14484470e43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
