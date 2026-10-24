# Verification target: GRWTSK.Topology.GeneralTopology.Cadlag.Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3f552481ca7c08013ce820c3ebc34d035d705e2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3f552481ca7c08013ce820c3ebc34d035d705e2`.

Source path: `GRWTSK/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean.json)

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
| 1 | `def` | [IsRightContinuous](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous--335b3dcfbe5b79f0bf6226a9.md) | 36 | `declaration-track:335b3dcfbe5b79f0bf6226a91c87b5672a9b98b61e70ca0f56ecf961c36ebefb` |
| 2 | `lemma` | [Continuous.isRightContinuous](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/continuous-isrightcontinuous--8379895ff9909faa251fc829.md) | 40 | `result-track:8379895ff9909faa251fc8299743b974dcd6e85908fe7edbaf64e053f0a3f25b` |
| 3 | `lemma` | [IsRightContinuous.continuous_comp](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous-continuous-comp--cdc458f8b81ea0c39499853a.md) | 45 | `result-track:cdc458f8b81ea0c39499853ae02d349b6e78f777d664d1000fbe07ee4e1e352e` |
| 4 | `lemma` | [IsRightContinuous.continuous_comp₂](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous-continuous-comp--17662f950e2b1c3056001eca.md) | 51 | `result-track:17662f950e2b1c3056001ecaf5141d9fa26a52c347cd01ec239c356de60e7379` |
| 5 | `lemma` | [IsRightContinuous.const](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous-const--6f708908e2766734021408c6.md) | 58 | `result-track:6f708908e2766734021408c67d53c66537ff1f9d020d0027a8f850ab27d58e46` |
| 6 | `lemma` | [IsRightContinuous.mul](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous-mul--45ddbd28c542c08805c93c9a.md) | 63 | `result-track:45ddbd28c542c08805c93c9ad00de6e13be22f2a2f9de4e41ea9f517b4be6725` |
| 7 | `lemma` | [IsRightContinuous.div'](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous-div--8b330cb8d3392b6079c10bea.md) | 69 | `result-track:8b330cb8d3392b6079c10bea519412f1a388dcb8f3327368e5ede807569e9206` |
| 8 | `lemma` | [IsRightContinuous.div](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous-div--50d2ccb223f985a86d5b79c9.md) | 75 | `result-track:50d2ccb223f985a86d5b79c9ace130633a12f8f4a2bad8d676a303167443573a` |
| 9 | `lemma` | [IsRightContinuous.inv](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous-inv--3a6871eb7e68078a5c4b0eca.md) | 81 | `result-track:3a6871eb7e68078a5c4b0ecaf46f6dc82007432f07e16235e6c1dcc11810847c` |
| 10 | `lemma` | [IsRightContinuous.inv₀](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous-inv--f0c655f0f35294b2ea37c3c8.md) | 86 | `result-track:f0c655f0f35294b2ea37c3c8ec4676723b7b4874586156be14d4883f6bc18fb5` |
| 11 | `lemma` | [IsRightContinuous.const_smul](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isrightcontinuous-const-smul--3e8fb7676aef170a7d20c882.md) | 92 | `result-track:3e8fb7676aef170a7d20c882ba887b7ea659502e5504f9cdea3a7bc330fbf62c` |
| 12 | `structure` | [IsCaglad](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscaglad--a0db2dfbab8d68d0b806e41d.md) | 98 | `declaration-track:a0db2dfbab8d68d0b806e41d383adc01f4309e1615051f40c50013a852e564aa` |
| 13 | `structure` | [IsCadlag](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscadlag--36b7213552b377ebfb689dba.md) | 104 | `declaration-track:36b7213552b377ebfb689dbaabe486381c2517383bbcbce6a698a4cb8ad4a80e` |
| 14 | `lemma` | [Continuous.isCadlag](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/continuous-iscadlag--da9bab0ba5653592cecd3b4f.md) | 109 | `result-track:da9bab0ba5653592cecd3b4f5cfdfc50f6b97b81aad8e8455df5fcfed48602a7` |
| 15 | `lemma` | [IsCadlag.const](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscadlag-const--4be6f0490abbfad416fa9bde.md) | 115 | `result-track:4be6f0490abbfad416fa9bdeb9ab8f83ad9e1d5a8f1a10e7c0c5e5771fcb1734` |
| 16 | `lemma` | [IsCadlag.continuous_comp](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscadlag-continuous-comp--bf38ada081b54016a8b4a576.md) | 119 | `result-track:bf38ada081b54016a8b4a5762583d332d4d566cc002d9008427fb8e72825f135` |
| 17 | `lemma` | [IsCadlag.continuous_comp₂](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscadlag-continuous-comp--b408247b6ecf4692bbf8c0fe.md) | 128 | `result-track:b408247b6ecf4692bbf8c0fe9719d83c0b244223c4bf110088e1cf85caff0302` |
| 18 | `lemma` | [IsCadlag.mul](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscadlag-mul--6674476f6be80d9e8bcd82bc.md) | 139 | `result-track:6674476f6be80d9e8bcd82bc2248e89e03ef81f48682eaa75914bcff2b0e4ea8` |
| 19 | `lemma` | [IsCadlag.div'](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscadlag-div--c49de5c70abbdb88b12ae90c.md) | 144 | `result-track:c49de5c70abbdb88b12ae90c8d9e5dd05d210d3ae1dc367b6f8d946f5d75064e` |
| 20 | `lemma` | [IsCadlag.const_smul](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscadlag-const-smul--f18d1b92e0c3c6058d2fde13.md) | 149 | `result-track:f18d1b92e0c3c6058d2fde134228ee408b6441d4d746807b1b359906335df71e` |
| 21 | `lemma` | [IsCaglad.tendsto_nhdsGT_rightLim](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscaglad-tendsto-nhdsgt-rightlim--755197d4ff7c921a4aa1d753.md) | 160 | `result-track:755197d4ff7c921a4aa1d753ebc0f80a992e2e9ead760e5a823377d5cf19e8d0` |
| 22 | `lemma` | [IsCadlag.tendsto_nhdsLT_leftLim](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscadlag-tendsto-nhdslt-leftlim--99a4dc50fdf9d2416efe4df4.md) | 165 | `result-track:99a4dc50fdf9d2416efe4df497278e36ec246823b23d7de9f185351511c653c6` |
| 23 | `lemma` | [IsCadlag.isLocallyBounded](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/iscadlag-islocallybounded--be196c1e181c0d8488b7ab06.md) | 177 | `result-track:be196c1e181c0d8488b7ab0635b6c899e18555e2b8e6fcd650cb2d462cd6ef5e` |
| 24 | `lemma` | [isBounded_image_of_isCadlag_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Cadlag/Variant3d3a6f749b469d3b72f5cfe4b72731bb399d1de539fb697a946ae755d24f8cb9.lean/declarations/isbounded-image-of-iscadlag-of-iscompact--fd7b72b1dcc86957bd0e6aba.md) | 192 | `result-track:fd7b72b1dcc86957bd0e6aba6fbc15d7de29515a36f103634b0be5f0ba7da147` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
