# Verification target: GRWTSK.Geometry.ConvexGeometry.Altitude.Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c5bc5abfaadb27fc553500d4a200105f0d1d2c3",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c5bc5abfaadb27fc553500d4a200105f0d1d2c3`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean.json)

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
| 1 | `def` | [altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitude--4fb749e94c0c137ad24fc1b2.md) | 50 | `declaration-track:4fb749e94c0c137ad24fc1b21fba9c59654d0341e6ec30ae3496ea211a8e37e0` |
| 2 | `theorem` | [altitude_def](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitude-def--f968a1782be13e1facb69871.md) | 55 | `result-track:f968a1782be13e1facb698718bc52bd598e501ccde1452856bce06e1b2546d77` |
| 3 | `lemma` | [altitude_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitude-reindex--7446bed7b1039ba84cd92ba3.md) | 61 | `result-track:7446bed7b1039ba84cd92ba3915211b26118aabc1966006ae2a94f6ae869bf9e` |
| 4 | `theorem` | [mem_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/mem-altitude--2e95460a33438839ce691d83.md) | 68 | `result-track:2e95460a33438839ce691d83e95cb9cec04776ab0332f3c98eded3eba5e6c396` |
| 5 | `theorem` | [direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/direction-altitude--9d6203418c401ef66756229b.md) | 73 | `result-track:9d6203418c401ef66756229b24a29378a7062275f08127e49dd73c2d27c37bce` |
| 6 | `theorem` | [vectorSpan_isOrtho_altitude_direction](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/vectorspan-isortho-altitude-direction--4dcd49fef892fc7f9626a43e.md) | 82 | `result-track:4dcd49fef892fc7f9626a43e227a8416dee88f12af26671033d76996751e7b6b` |
| 7 | `lemma` | [altitude_map](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitude-map--db9b1b4fee9bd8cb26c096f2.md) | 87 | `result-track:db9b1b4fee9bd8cb26c096f2554dc7f936fd812e8bd1c18c7559e19e54eed6ff` |
| 8 | `lemma` | [map_altitude_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/map-altitude-restrict--d5e3b268c276d64d4bd7a682.md) | 99 | `result-track:d5e3b268c276d64d4bd7a682bea466fe412e72c1b7ff34061629a075788a1a88` |
| 9 | `lemma` | [altitude_restrict_eq_comap_subtype](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitude-restrict-eq-comap-subtype--e712eef75c4cf79183c01b8d.md) | 106 | `result-track:e712eef75c4cf79183c01b8dd95aad92d1d46db8579c527b0efc5227b36c0967` |
| 10 | `instance` | [finiteDimensional_direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/finitedimensional-direction-altitude--6632af3dc7e44a65d7028816.md) | 116 | `declaration-track:6632af3dc7e44a65d70288169b312920f271433ca5c10bda39ee7d602342532c` |
| 11 | `theorem` | [finrank_direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/finrank-direction-altitude--baf5978fc1dbda2a0e56c71a.md) | 123 | `result-track:baf5978fc1dbda2a0e56c71aac227c212dadc7f513a89fa15f599d04460ef60d` |
| 12 | `theorem` | [affineSpan_pair_eq_altitude_iff](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/affinespan-pair-eq-altitude-iff--3d85984f45b8306b8e22d6f4.md) | 141 | `result-track:3d85984f45b8306b8e22d6f4554c7f075085ece34bda1a33452ae9fcc2a2a408` |
| 13 | `def` | [altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitudefoot--83b5348167ce9e2001e8fac2.md) | 175 | `declaration-track:83b5348167ce9e2001e8fac295204175c098d09599e7a64e3940f551f20e3cf7` |
| 14 | `lemma` | [altitudeFoot_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitudefoot-reindex--093d3baf17240c7baf475bb2.md) | 178 | `result-track:093d3baf17240c7baf475bb2df363e0c0210a86858060336373f576fa9b1a8e7` |
| 15 | `lemma` | [altitudeFoot_map](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitudefoot-map--94fceb9b0ce6d5861e1aa63f.md) | 185 | `result-track:94fceb9b0ce6d5861e1aa63ff5f087594cde6c12b2fef9c733df987cb4b17829` |
| 16 | `lemma` | [altitudeFoot_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitudefoot-restrict--3319dd29042751fee8f3ce8d.md) | 190 | `result-track:3319dd29042751fee8f3ce8d4ecb51c6e97b21d01d04c7a081646041c56e937c` |
| 17 | `lemma` | [ne_altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/ne-altitudefoot--9885c4954b951e5d729968a9.md) | 197 | `result-track:9885c4954b951e5d729968a9596f63b4f3a57ea13d41f273f84093715d421422` |
| 18 | `lemma` | [altitudeFoot_mem_affineSpan_image_compl](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitudefoot-mem-affinespan-image-compl--bf3039df233526e3c3a06e1f.md) | 203 | `result-track:bf3039df233526e3c3a06e1fa408b33e893e4a246e6e916b1e5e8df6ef9bd070` |
| 19 | `lemma` | [altitudeFoot_mem_affineSpan_faceOpposite](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitudefoot-mem-affinespan-faceopposite--2993101340b76d97d9dbcb50.md) | 208 | `result-track:2993101340b76d97d9dbcb50ae8ba864ec0ff0e3a4e771a96848e238988c9cb6` |
| 20 | `lemma` | [altitudeFoot_mem_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitudefoot-mem-affinespan--981be3a838f5fc7281243d79.md) | 212 | `result-track:981be3a838f5fc7281243d792fabb395a7d988a938e999818df2947d9d419cbc` |
| 21 | `lemma` | [affineSpan_pair_altitudeFoot_eq_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/affinespan-pair-altitudefoot-eq-altitude--466b1c1b8e141e83fa897765.md) | 217 | `result-track:466b1c1b8e141e83fa8977659fb7bef88b775a12fbc80c1241e6efe20b7ad58b` |
| 22 | `lemma` | [altitudeFoot_mem_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitudefoot-mem-altitude--4b9cded373ec3a72bff5dcb8.md) | 226 | `result-track:4b9cded373ec3a72bff5dcb83febe10814f500acfafa7c0bc2083a717c09b911` |
| 23 | `lemma` | [altitudeFoot_eq_point_rev](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/altitudefoot-eq-point-rev--a4fd451498d7da3799b3de38.md) | 231 | `result-track:a4fd451498d7da3799b3de389017bf961de5e26cb1529e6f65f00181f560eb97` |
| 24 | `theorem` | [affineSubspaceMk'_lineMap_altitudeFoot_eq_shift](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/affinesubspacemk-linemap-altitudefoot-eq-shift--4fead9d9923772096533ea38.md) | 237 | `result-track:4fead9d9923772096533ea38664dfd840d6728118e4245ecbdf9bdf2fecc56ed` |
| 25 | `theorem` | [closedInterior_inter_affineSubspaceMk'_lineMap_altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/closedinterior-inter-affinesubspacemk-linemap-altitudefoot--760a21eaacd29f795e498960.md) | 255 | `result-track:760a21eaacd29f795e4989603beb4b64f3300b515dcb3b01fb6a94959766c56d` |
| 26 | `def` | [height](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/height--27c2dfbd581d81b227b5ca8f.md) | 265 | `declaration-track:27c2dfbd581d81b227b5ca8fd9c0a40062f484ccabf2cd024377cdc583cec539` |
| 27 | `lemma` | [height_reindex](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/height-reindex--d11f5de118a8709c58d230f8.md) | 268 | `result-track:d11f5de118a8709c58d230f8f083919e14a7d8e11c9ab70799e32bfc46ccc791` |
| 28 | `lemma` | [height_map](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/height-map--a298e943ceeef582d6a677f5.md) | 273 | `result-track:a298e943ceeef582d6a677f5a8637697f640ae31364325abd2037a28c3c4c81c` |
| 29 | `lemma` | [height_restrict](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/height-restrict--a4447f8e3cb6664c93ce8174.md) | 278 | `result-track:a4447f8e3cb6664c93ce8174806a071f31a8db299df966a792e67a0d1749a979` |
| 30 | `lemma` | [height_pos](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/height-pos--e03e91821eda84ba4b06e002.md) | 286 | `result-track:e03e91821eda84ba4b06e002ea2587464c7591e3d91d2e9a82dc6535ad197798` |
| 31 | `def` | [evalHeight](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/evalheight--6bcae555a10e13d5befef628.md) | 292 | `declaration-track:6bcae555a10e13d5befef628b8e9824169829554e50647678628d879f41a6012` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/example--df1523eac186fa47864daebc.md) | 300 | `declaration-track:df1523eac186fa47864daebc55aefe18022061e24a7eb10f2059f92a75ce4294` |
| 33 | `lemma` | [height_eq_dist](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/height-eq-dist--69064230083126f8e05115de.md) | 304 | `result-track:69064230083126f8e05115de816b21bae0bb27afb663793b59bdb3399a3547a0` |
| 34 | `lemma` | [inner_vsub_altitudeFoot_vsub_altitudeFoot_eq_zero](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/inner-vsub-altitudefoot-vsub-altitudefoot-eq-zero--f185ea6d0e9908694a92c0bd.md) | 316 | `result-track:f185ea6d0e9908694a92c0bda4a07ccfa4ef0550919b9a82d1d288e50f65a344` |
| 35 | `lemma` | [inner_vsub_vsub_altitudeFoot_eq_height_sq](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/inner-vsub-vsub-altitudefoot-eq-height-sq--f965cd4afc19ee1e311dad6e.md) | 331 | `result-track:f965cd4afc19ee1e311dad6eefae5f106f28f4aecf44547bd3f21d752d086e25` |
| 36 | `lemma` | [abs_inner_vsub_altitudeFoot_lt_mul](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/abs-inner-vsub-altitudefoot-lt-mul--26e819b7e9ff1643407577c3.md) | 344 | `result-track:26e819b7e9ff1643407577c35c0ae82365ca3a16f07a2138aa4ef4bc1fb31197` |
| 37 | `lemma` | [neg_mul_lt_inner_vsub_altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/neg-mul-lt-inner-vsub-altitudefoot--72b5e194c0914ade2939b9a6.md) | 393 | `result-track:72b5e194c0914ade2939b9a696c9dcc7bde602a79e97b395dd3b23f79be0b522` |
| 38 | `lemma` | [abs_inner_vsub_altitudeFoot_div_lt_one](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/abs-inner-vsub-altitudefoot-div-lt-one--d457ecc59230b2d62a2aa11e.md) | 407 | `result-track:d457ecc59230b2d62a2aa11e41167b1419daac97d5be399857e679d6b8423417` |
| 39 | `lemma` | [neg_one_lt_inner_vsub_altitudeFoot_div](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant442b9d0de2ae8ac7548f10784f20e76b091b7d814ee05c16505a2a97892f112b.lean/declarations/neg-one-lt-inner-vsub-altitudefoot-div--2eeb87eecb6751924e3bdcf2.md) | 416 | `result-track:2eeb87eecb6751924e3bdcf267730d98bdec134b47f46125fcb487a43dadd530` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
