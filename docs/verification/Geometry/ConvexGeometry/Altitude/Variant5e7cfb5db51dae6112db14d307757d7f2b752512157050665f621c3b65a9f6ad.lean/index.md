# Verification target: GRWTSK.Geometry.ConvexGeometry.Altitude.Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db4483900b05cc74ab4ca26fa2ec9d0285ccdd36",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db4483900b05cc74ab4ca26fa2ec9d0285ccdd36`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Projection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/altitude--7f836bb0435dcc4dcd273990.md) | 41 | `declaration-track:7f836bb0435dcc4dcd273990fa2e10f3c8582eb3dd636a4bc75a37138db7de11` |
| 2 | `theorem` | [altitude_def](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/altitude-def--d0fb95bba3ee85a157d6db35.md) | 46 | `result-track:d0fb95bba3ee85a157d6db3508e256f90763b20f16537e2e0465dfcaa141f525` |
| 3 | `theorem` | [mem_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/mem-altitude--5a59ee0341b009f5478bb3a1.md) | 53 | `result-track:5a59ee0341b009f5478bb3a1dd83f70dc2a3bcc64ce816bd23b7e8eb509b6f1b` |
| 4 | `theorem` | [direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/direction-altitude--08ac84fc3c6b7a2b09dc698b.md) | 58 | `result-track:08ac84fc3c6b7a2b09dc698b76627272ef597053a0b1f4c86abcdb98777ff061` |
| 5 | `theorem` | [vectorSpan_isOrtho_altitude_direction](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/vectorspan-isortho-altitude-direction--19711fcb66e42a0eae996de0.md) | 67 | `result-track:19711fcb66e42a0eae996de026d68a31f69fd01d6f21247cf6feb6319cb33e2b` |
| 6 | `instance` | [finiteDimensional_direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/finitedimensional-direction-altitude--8073c826ee4ae5b1fcd06135.md) | 75 | `declaration-track:8073c826ee4ae5b1fcd06135929042b6a532ad513ef105d8c113e17d06d96cb6` |
| 7 | `theorem` | [finrank_direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/finrank-direction-altitude--70c2aeaa6a16598c75b23f8b.md) | 82 | `result-track:70c2aeaa6a16598c75b23f8bc8e8aa43bec7e21a342d3b1daeab70d4aadfc537` |
| 8 | `theorem` | [affineSpan_pair_eq_altitude_iff](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/affinespan-pair-eq-altitude-iff--570a2fbd9d6b9b6399091eec.md) | 100 | `result-track:570a2fbd9d6b9b6399091eec17746ac5eb3444aadd61e64d4d8cc26a55dc65ab` |
| 9 | `def` | [altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/altitudefoot--7ec54af48df14fbb5fff9794.md) | 134 | `declaration-track:7ec54af48df14fbb5fff9794b4376f2b086e64ef0be2edd3f50854ecdab0d465` |
| 10 | `lemma` | [ne_altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/ne-altitudefoot--5f691745c37bbf72073b4bd1.md) | 137 | `result-track:5f691745c37bbf72073b4bd1610020a9271b819bba29d725a2fa1111fc4b6342` |
| 11 | `lemma` | [altitudeFoot_mem_affineSpan_faceOpposite](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/altitudefoot-mem-affinespan-faceopposite--866796db8466178bfddd776b.md) | 143 | `result-track:866796db8466178bfddd776b9d6cc645702560d672854b1a491a3de65f135c2e` |
| 12 | `lemma` | [altitudeFoot_mem_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/altitudefoot-mem-affinespan--c30208b88754662c96351c7d.md) | 147 | `result-track:c30208b88754662c96351c7df42183486be40ed882104a8a22eb56d10fce6647` |
| 13 | `lemma` | [affineSpan_pair_altitudeFoot_eq_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/affinespan-pair-altitudefoot-eq-altitude--3d2560de5f8c54664c8390c7.md) | 152 | `result-track:3d2560de5f8c54664c8390c733352a9d83bfc5dbe837bfedf2c16b8991e5069e` |
| 14 | `lemma` | [altitudeFoot_mem_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/altitudefoot-mem-altitude--f49f27a658043c47d245b510.md) | 161 | `result-track:f49f27a658043c47d245b5101c6b79772f5f78ec960d0d1dbe5111fdf540be3e` |
| 15 | `def` | [height](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/height--fc64ff6f1e22e49321d89bff.md) | 168 | `declaration-track:fc64ff6f1e22e49321d89bff11bdc3c34218ed330a0a597cf814e6b46e3079d7` |
| 16 | `lemma` | [height_pos](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/height-pos--3ad61ad1a84a2dfff6daf7ac.md) | 171 | `result-track:3ad61ad1a84a2dfff6daf7ac393791f357d0bf6fd5250e23a4c59b9f0423e085` |
| 17 | `def` | [evalHeight](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/evalheight--61c64d206c55e8ff6311de43.md) | 177 | `declaration-track:61c64d206c55e8ff6311de43b7cf9e90a095b8a35ae6c05e5a5c75303c3350fa` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Variant5e7cfb5db51dae6112db14d307757d7f2b752512157050665f621c3b65a9f6ad.lean/declarations/example--eeeead21c79104944d3300a1.md) | 184 | `declaration-track:eeeead21c79104944d3300a1046e96f19554cc7c2de99f871704d35fa97c01b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
