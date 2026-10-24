# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.PrimeWalkSpatialEncoding.Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "777eeeb047c8c0a05c6c94d811e3a1a7af5dd668",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `777eeeb047c8c0a05c6c94d811e3a1a7af5dd668`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpatialPoint](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/spatialpoint--4b3268537443268ea4c0e968.md) | 53 | `declaration-track:4b3268537443268ea4c0e968865478e4bc5640c745c3277e6bb213326cc02fa9` |
| 2 | `abbrev` | [ErrorTrajectory](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/errortrajectory--da87a5c80bd0524270ea1980.md) | 56 | `declaration-track:da87a5c80bd0524270ea19808a37a1e9c6afc312d25f7727a867ce51c5de14bd` |
| 3 | `abbrev` | [SpatialSignal](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/spatialsignal--02c011440aa5d2e873e6b9b8.md) | 59 | `declaration-track:02c011440aa5d2e873e6b9b8e476de19223de5b337a23b395747214066af92aa` |
| 4 | `structure` | [UnitTube3](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/unittube3--402f7932cba1f54b155ee648.md) | 62 | `declaration-track:402f7932cba1f54b155ee648ca54c27906f849c913fa4a3dabf69c1c33bdde0c` |
| 5 | `def` | [UnitTube3.axisSegment](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/unittube3-axissegment--37e21469c0c8eda50fdbb43a.md) | 71 | `declaration-track:37e21469c0c8eda50fdbb43a572cd1ff9aaa07c1431d438d1a9c10918d38e299` |
| 6 | `def` | [UnitTube3.carrier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/unittube3-carrier--be95c609e21adc7c724fa1e0.md) | 79 | `declaration-track:be95c609e21adc7c724fa1e0de3d9295e883d64dbfd111a6417ff032f6c01ca0` |
| 7 | `def` | [spatialFourierTransform](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/spatialfouriertransform--1ee684b0bae29a816685ad28.md) | 84 | `declaration-track:1ee684b0bae29a816685ad28dc1dcebbce0164b32c28ea69f99f0333d9461baa` |
| 8 | `def` | [packetSum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/packetsum--61870b90cf1792186b24f7b0.md) | 90 | `declaration-track:61870b90cf1792186b24f7b00fb929a6f62d48ab37aedc796568d94b71a40ed0` |
| 9 | `def` | [reconstructionError](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/reconstructionerror--ae2034140cb049b6fd623ff4.md) | 97 | `declaration-track:ae2034140cb049b6fd623ff433608a01991553366ea3f0108a8c9ff60f485a21` |
| 10 | `def` | [packetSquareFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/packetsquarefunction--12f1d186b1c6b8e6455a0d6a.md) | 105 | `declaration-track:12f1d186b1c6b8e6455a0d6a8e8df01189822111c9cf29512c6bc8a9e9d39d15` |
| 11 | `structure` | [L2SpatialReadout](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/l2spatialreadout--3f6e058859182308a39afa36.md) | 121 | `declaration-track:3f6e058859182308a39afa367411b7065ed1d5e161856731064d95487d97bd1e` |
| 12 | `def` | [tubeMultiplicity](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/tubemultiplicity--7dbd3b76aa8c5bbf89f5b56c.md) | 137 | `declaration-track:7dbd3b76aa8c5bbf89f5b56cdfd3f71b677312b9ba2855ba7c6f9a4b3dc2dc59` |
| 13 | `def` | [multiplicitySuperlevelSet](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/multiplicitysuperlevelset--797268d82455f287ed238ae4.md) | 147 | `declaration-track:797268d82455f287ed238ae4189ea863279ab3eb542e0ef80aa707a0eb49cc4c` |
| 14 | `structure` | [AssumedMultiplicityPowerLaw](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/assumedmultiplicitypowerlaw--0f56da5555ac0276bed975ee.md) | 159 | `declaration-track:0f56da5555ac0276bed975ee388483a6645d7e73cfe509fb3047e2d60d8d4e6b` |
| 15 | `constant` | [(anonymous)](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/constant--1b341c38e17460434c46b4e9.md) | 166 | `declaration-track:1b341c38e17460434c46b4e9d90de699e1297d773f05e0e2fee97d55a7451a7d` |
| 16 | `constant` | [*](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/anonymous--b50373d169704320b7071ef2.md) | 173 | `declaration-track:b50373d169704320b7071ef27c2fb5f0b896b3d7f3c490f0161dce1ea85dfa0c` |
| 17 | `structure` | [SpatialEncodedTrajectory](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/spatialencodedtrajectory--601be1c8f93710e037e083e0.md) | 185 | `declaration-track:601be1c8f93710e037e083e04f8c19ecc504893f1ceca5688499a81440dfa2b6` |
| 18 | `structure` | [SomeSpatialEncodedTrajectory](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/somespatialencodedtrajectory--e1e35d381a20f7906192ae0e.md) | 246 | `declaration-track:e1e35d381a20f7906192ae0eef9fbf34c9bbe170f08a440e4b96a166a5ea25db` |
| 19 | `def` | [HasSpatialEncoding](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/hasspatialencoding--a5a1e130e713a92536166fcb.md) | 259 | `declaration-track:a5a1e130e713a92536166fcbc84f22fd8a18a0a938e8704d62d2a7d724200516` |
| 20 | `theorem` | [spatial_reconstruction_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/spatial-reconstruction-apply--2ed5125e3abab79dc1226fbb.md) | 271 | `result-track:2ed5125e3abab79dc1226fbb8fe32ef3fc88d899e8d54f9cd3b253dc1c573a6c` |
| 21 | `theorem` | [temporal_reconstruction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/temporal-reconstruction--54a5f3b0bd4c3c4179a4b189.md) | 282 | `result-track:54a5f3b0bd4c3c4179a4b189f6626c8d3571209de72b5b1560a134b487a682c9` |
| 22 | `theorem` | [temporal_residual_lpNorm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/temporal-residual-lpnorm-le--f3b74330fb34fb6860d3d52d.md) | 304 | `result-track:f3b74330fb34fb6860d3d52d662a918ee68edbf090fee794020176b54c7f7eff` |
| 23 | `theorem` | [squareSuperlevel_eq_grainShadingUnion](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/squaresuperlevel-eq-grainshadingunion--eae7696c7bc802d20395a8e6.md) | 321 | `result-track:eae7696c7bc802d20395a8e6a6dbb24679c4212ac4aa6cf203bd0dd9dbfa07b1` |
| 24 | `theorem` | [squareSuperlevel_subset_grainShadingUnion](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/squaresuperlevel-subset-grainshadingunion--55ff117bbc8de5a20842a8b0.md) | 332 | `result-track:55ff117bbc8de5a20842a8b06102f3d5a75a9a0f0382fb54c312ce4d7a718211` |
| 25 | `theorem` | [measure_squareSuperlevel_le_grain_sum](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/measure-squaresuperlevel-le-grain-sum--ad407d2c55c3efb2a26495af.md) | 343 | `result-track:ad407d2c55c3efb2a26495af78158ac49e5a01f7e674ac1b646a7fac0408d3d2` |
| 26 | `theorem` | [multiplicity_powerLaw_of_assumption](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variant055a6eca2934e7883644d8e649e90b06f279bc9f27b415750f289f276ae6090f.lean/declarations/multiplicity-powerlaw-of-assumption--2e017086bc3b641da2c9d771.md) | 369 | `result-track:2e017086bc3b641da2c9d771030565471b663692e73648cbff5cba1d52cba723` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
