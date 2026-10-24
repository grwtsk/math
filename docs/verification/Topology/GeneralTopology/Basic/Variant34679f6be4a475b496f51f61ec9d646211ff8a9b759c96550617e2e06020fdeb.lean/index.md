# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5679fab1dc08ab37d499cd0526f2d09e1bf09e8c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5679fab1dc08ab37d499cd0526f2d09e1bf09e8c`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean.json)

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
| 1 | `def` | [refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/refl--e6946778f84ded8aef9178d1.md) | 32 | `declaration-track:e6946778f84ded8aef9178d1e29df633853856b44f6ce25d4f945d267e688485` |
| 2 | `theorem` | [refl_partialEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/refl-partialequiv--7783998c9a1bd4aad77ad1a5.md) | 36 | `result-track:7783998c9a1bd4aad77ad1a54622913e36c1023915fbc602c7fe2e224eac9e8f` |
| 3 | `theorem` | [refl_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/refl-symm--cc72432a0b21e0c0f3001635.md) | 40 | `result-track:cc72432a0b21e0c0f3001635095f9801e51eceb8a6bbc7cf901da40eb44662da` |
| 4 | `theorem` | [source_preimage_target](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/source-preimage-target--6776ed8ee95625fe01d73997.md) | 45 | `result-track:6776ed8ee95625fe01d73997c09894a91049fa27a938e809d0914f76687ce2de` |
| 5 | `theorem` | [image_eq_target_inter_inv_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/image-eq-target-inter-inv-preimage--2b070bfd382ddb7f40fdd656.md) | 48 | `result-track:2b070bfd382ddb7f40fdd656f3f1c671cf6ee1c31466e420e81e768e46403519` |
| 6 | `theorem` | [image_source_inter_eq'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/image-source-inter-eq--e7ecfc3bdf09fea66cf5d6a1.md) | 52 | `result-track:e7ecfc3bdf09fea66cf5d6a11dab855722106d34968989ea2e93351473a53429` |
| 7 | `theorem` | [image_source_inter_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/image-source-inter-eq--480d18fa14f746baab7bba5c.md) | 55 | `result-track:480d18fa14f746baab7bba5c573804c09e472d339add707bd662bdb172bd9c37` |
| 8 | `theorem` | [symm_image_eq_source_inter_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/symm-image-eq-source-inter-preimage--f7716acff796de86520cce04.md) | 59 | `result-track:f7716acff796de86520cce048aa2d0273367d3f4db7b02e416129ca8c26baaa9` |
| 9 | `theorem` | [symm_image_target_inter_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/symm-image-target-inter-eq--53deb7da9a6afd78a1ad2159.md) | 63 | `result-track:53deb7da9a6afd78a1ad215971ce80fb3b2a72c09614e0ebbfa4fd1dd1bc83fa` |
| 10 | `theorem` | [source_inter_preimage_inv_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/source-inter-preimage-inv-preimage--c53ee2e38b1d703cfbffd919.md) | 67 | `result-track:c53ee2e38b1d703cfbffd919f8b3470f6d57920a045904a2efc66c93e8bb78fe` |
| 11 | `theorem` | [target_inter_inv_preimage_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/target-inter-inv-preimage-preimage--d59b17e54d34e8b7a61f76ea.md) | 71 | `result-track:d59b17e54d34e8b7a61f76ead47182951992379fa1df122c0ee25e961a4ec6dd` |
| 12 | `theorem` | [source_inter_preimage_target_inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/source-inter-preimage-target-inter--5cdedc3b7a0e9c06b59c1482.md) | 75 | `result-track:5cdedc3b7a0e9c06b59c148253cf197cc351f29e60a83d532b17ea52671b4d28` |
| 13 | `theorem` | [image_source_eq_target](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/image-source-eq-target--8c5de0322a6b41c2c17c5572.md) | 79 | `result-track:8c5de0322a6b41c2c17c5572a4d3f9c46149a9734e40e59e2cf9ff93a4ea2332` |
| 14 | `theorem` | [symm_image_target_eq_source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/symm-image-target-eq-source--18d28cca21a19040425815d2.md) | 82 | `result-track:18d28cca21a19040425815d2a8e75d8ceabe204de5f32aaab0b3050bba463e0e` |
| 15 | `def` | [ofContinuousOpenRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/ofcontinuousopenrestrict--6f1b4e11c111840d9aef628f.md) | 88 | `declaration-track:6f1b4e11c111840d9aef628f94e5d61454c0a9623049c1cf295e8582291971f2` |
| 16 | `theorem` | [coe_ofContinuousOpenRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/coe-ofcontinuousopenrestrict--d77a0ad3b5e681282011987d.md) | 95 | `result-track:d77a0ad3b5e681282011987d3e05ba785f3c7e2b053fd0be8470703340771188` |
| 17 | `theorem` | [coe_ofContinuousOpenRestrict_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/coe-ofcontinuousopenrestrict-symm--eaf85875bb1342bfc67c837d.md) | 100 | `result-track:eaf85875bb1342bfc67c837d0065d961cb673e43748deb50dcc863643cd32fdc` |
| 18 | `def` | [ofContinuousOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/ofcontinuousopen--886eb6c60692285212780d05.md) | 108 | `declaration-track:886eb6c60692285212780d05d577ff96e08c4abc95c077435cf78c3e4e53d1b3` |
| 19 | `theorem` | [coe_ofContinuousOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/coe-ofcontinuousopen--7609ad0b752c43ee30565430.md) | 113 | `result-track:7609ad0b752c43ee30565430e429a5147d162a96573c6df8a9eb6e441a089849` |
| 20 | `theorem` | [coe_ofContinuousOpen_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/coe-ofcontinuousopen-symm--3d5e2935c2274d848d6940ee.md) | 119 | `result-track:3d5e2935c2274d848d6940eeecede12ad2f5fd3c5176d37d9dcd46a13ec6ca3c` |
| 21 | `def` | [homeomorphOfImageSubsetSource](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/homeomorphofimagesubsetsource--85da88b3e8bb1c95f6578789.md) | 127 | `declaration-track:85da88b3e8bb1c95f6578789faa1ec36b649e0cd7e045ceb79d100422d337a28` |
| 22 | `def` | [toHomeomorphSourceTarget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/tohomeomorphsourcetarget--bdef5f8824da3e0a661e2a1f.md) | 142 | `declaration-track:bdef5f8824da3e0a661e2a1fee5a0b80b706fba8a8664187f67abdf0d1700c72` |
| 23 | `theorem` | [secondCountableTopology_source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/secondcountabletopology-source--0b112aef9d153f846bee822c.md) | 145 | `result-track:0b112aef9d153f846bee822c08a4190c529af8e9d51cdf2198af7074104f2ded` |
| 24 | `def` | [toHomeomorphOfSourceEqUnivTargetEqUniv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/tohomeomorphofsourceequnivtargetequniv--8b3a37a2d93364b6cd736904.md) | 153 | `declaration-track:8b3a37a2d93364b6cd736904436275966aa8f364e2330441358eb777cd328318` |
| 25 | `theorem` | [isEmbedding_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/isembedding-restrict--69236d053b7ac8f0481d3c72.md) | 170 | `result-track:69236d053b7ac8f0481d3c72fd959ee4c20f45891bf3e116f3b37c09809e1367` |
| 26 | `theorem` | [isEmbedding](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/isembedding--81b95f7ec9a47c6688d81ec8.md) | 181 | `result-track:81b95f7ec9a47c6688d81ec890aecadd1b86ed86ba1b272d8e03cf343b5ea4b4` |
| 27 | `def` | [ofIsHomeomorphToEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/ofishomeomorphtoequiv--ce599070f353a7045a293e9f.md) | 187 | `declaration-track:ce599070f353a7045a293e9f8c2c3611abeaa5ba43ad9821019d8bec5cd742da` |
| 28 | `def` | [toPartialHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/topartialhomeomorph--31d8971f8003cb79960a69ff.md) | 212 | `declaration-track:31d8971f8003cb79960a69fffe0b5d54299b4beb81decb35f866778ea115156e` |
| 29 | `lemma` | [toPartialHomeomorph_left_inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/topartialhomeomorph-left-inv--643da9711ebec1d11eb192f1.md) | 222 | `result-track:643da9711ebec1d11eb192f11e0465dd58e3f53f883788670af47b10b6b35e47` |
| 30 | `lemma` | [toPartialHomeomorph_right_inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/topartialhomeomorph-right-inv--160192d23f07625d1ab0e3d0.md) | 226 | `result-track:160192d23f07625d1ab0e3d0bfbb49c89af74ecfdac0bc9cbb8b617bda738fbd` |
| 31 | `def` | [partialHomeomorphSubtypeCoe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/partialhomeomorphsubtypecoe--05262dbf6df2f6b04909618d.md) | 243 | `declaration-track:05262dbf6df2f6b04909618d15dabf7b337cd787763f2faffbebd78bcd73884f` |
| 32 | `theorem` | [partialHomeomorphSubtypeCoe_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/partialhomeomorphsubtypecoe-coe--e4d6c9a2eff33ec737fce505.md) | 247 | `result-track:e4d6c9a2eff33ec737fce505ca2668e4fe4336a9c4b7d064340d4f94b951a8a2` |
| 33 | `theorem` | [partialHomeomorphSubtypeCoe_source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/partialhomeomorphsubtypecoe-source--12602a2cfb8c9c198337fc7a.md) | 252 | `result-track:12602a2cfb8c9c198337fc7ad213b88dbd7b49ea447402da9153541f4e718d17` |
| 34 | `theorem` | [partialHomeomorphSubtypeCoe_target](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/declarations/partialhomeomorphsubtypecoe-target--01d110d6b85711df2216d271.md) | 257 | `result-track:01d110d6b85711df2216d2714539c067f9c0d0fab5fb91eea7a4cb1bdaee48f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
