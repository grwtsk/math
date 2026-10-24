# Verification target: GRWTSK.Topology.GeneralTopology.CountableInter.Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "424619ce91905de4b5cc4db86a61e4605b0b040b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `424619ce91905de4b5cc4db86a61e4605b0b040b`.

Source path: `GRWTSK/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean.json)

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
| 1 | `class` | [CountableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countableinterfilter--da38d6df48a0f947a87fae1a.md) | 50 | `declaration-track:da38d6df48a0f947a87fae1a3233dd90e8bdae7a7e5cb95b6c8fbbfc5bc6c4e1` |
| 2 | `theorem` | [countable_sInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countable-sinter-mem--20234c668380cc8a0dd8bbf7.md) | 56 | `result-track:20234c668380cc8a0dd8bbf7d39cdda23a9e4383d0b53eb58c7f8d018070b102` |
| 3 | `theorem` | [countable_iInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countable-iinter-mem--833df8499f33bdc19e5f641a.md) | 60 | `result-track:833df8499f33bdc19e5f641ae7370d887ecf76cda3d00695998fa833702792a9` |
| 4 | `theorem` | [countable_bInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countable-binter-mem--7b953169a195e77c2f9da758.md) | 63 | `result-track:7b953169a195e77c2f9da7581547a8c21ffced7c25788b3ed9dfae77888814a4` |
| 5 | `theorem` | [eventually_countable_forall](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventually-countable-forall--eeb294a3bd069238d5adf1e7.md) | 69 | `result-track:eeb294a3bd069238d5adf1e7375fedc460693d3e5481988b5acdf26b27897744` |
| 6 | `theorem` | [eventually_countable_ball](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventually-countable-ball--1f2b1d43ca0728593b1ce9be.md) | 74 | `result-track:1f2b1d43ca0728593b1ce9be899d134b7d6063ee89245b979fe0082fd6f34af6` |
| 7 | `theorem` | [eventually_finset_ball](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventually-finset-ball--4f6a9efeeb1bed6da7fc33be.md) | 80 | `result-track:4f6a9efeeb1bed6da7fc33bef7af40c19357cba1dbcaa3c1497cc79d04f31086` |
| 8 | `theorem` | [EventuallySubset.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventuallysubset-countable-iunion--8de0d5f791050d66a62c6da1.md) | 86 | `result-track:8de0d5f791050d66a62c6da1f5238b838398f885a1a0e7d7ff913c8e3acb8cfc` |
| 9 | `theorem` | [EventuallyEqSet.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventuallyeqset-countable-iunion--442290a97b70c9661c24b8a1.md) | 93 | `result-track:442290a97b70c9661c24b8a15c00f1590b8028cbf8dcb7a590d8b9fd52eab2a7` |
| 10 | `theorem` | [EventuallySubset.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventuallysubset-countable-bunion--3c5d7a1758c235f0a54f0287.md) | 101 | `result-track:3c5d7a1758c235f0a54f02878073753cad1b111ef0a7840e7fb7d95ba11f596c` |
| 11 | `theorem` | [EventuallyEqSet.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventuallyeqset-countable-bunion--3593f2e573374463a85a1c0d.md) | 111 | `result-track:3593f2e573374463a85a1c0d2d8cd3c774e3822529380ba8e335e76adebc7478` |
| 12 | `theorem` | [EventuallySubset.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventuallysubset-countable-iinter--6038de21b382308ca5ea0a54.md) | 120 | `result-track:6038de21b382308ca5ea0a5403bd59a2bd61cad49716950787e5baadb793546c` |
| 13 | `theorem` | [EventuallyEqSet.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventuallyeqset-countable-iinter--81d068a453c474fabd8f7608.md) | 128 | `result-track:81d068a453c474fabd8f7608257711f7c03adeb40baa539390b611bf76011377` |
| 14 | `theorem` | [EventuallySubset.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventuallysubset-countable-binter--2b87992067eea7abe30b413a.md) | 136 | `result-track:2b87992067eea7abe30b413a3b637d6a3d48b176f9ff0a17cfc19b5e4db8b32f` |
| 15 | `theorem` | [EventuallyEqSet.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/eventuallyeqset-countable-binter--dd6b6c8643b8527f6f82f278.md) | 146 | `result-track:dd6b6c8643b8527f6f82f278964c83110041650dba400b0f1d0e1d2b775e9ab9` |
| 16 | `def` | [ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/ofcountableinter--1568513e714255f9820ee661.md) | 174 | `declaration-track:1568513e714255f9820ee6611eb19e07740473db7bd2e80f8d7e5b4d4ec576d0` |
| 17 | `instance` | [countableInter_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countableinter-ofcountableinter--18332c9b370284ae6b849f12.md) | 183 | `declaration-track:18332c9b370284ae6b849f12109e05475cf46e9881f5d3641d05c4971506ba38` |
| 18 | `theorem` | [mem_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/mem-ofcountableinter--d4807627e3e323d05a57da1a.md) | 190 | `result-track:d4807627e3e323d05a57da1afade7ab13d7165b61bb20ffd5ac064b5061c1536` |
| 19 | `def` | [ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/ofcountableunion--7fb518498a0c855fea4a61a0.md) | 200 | `declaration-track:7fb518498a0c855fea4a61a021198f95d82e477a0bb7c53eed55405184a39a46` |
| 20 | `instance` | [countableInter_ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countableinter-ofcountableunion--2e66159df89aaa9a8920476f.md) | 214 | `declaration-track:2e66159df89aaa9a8920476ff4edf848cc78a4761c3136a70074654f5cee29ad` |
| 21 | `theorem` | [mem_ofCountableUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/mem-ofcountableunion--0f89a04a876ef28797d9f877.md) | 219 | `result-track:0f89a04a876ef28797d9f8772fade991d7970ad8ec16ab445a7bd2e8830759cc` |
| 22 | `instance` | [countableInterFilter_principal](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countableinterfilter-principal--4ea2ebb82204269d54c4f353.md) | 225 | `declaration-track:4ea2ebb82204269d54c4f3538a80389cc4311c946c3ef73e5d97ea32761e4f16` |
| 23 | `instance` | [countableInterFilter_bot](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countableinterfilter-bot--3e6b5a6058e5bc55837a678c.md) | 228 | `declaration-track:3e6b5a6058e5bc55837a678c72016933ff0d9ca03494a65b931c81e537165042` |
| 24 | `instance` | [countableInterFilter_top](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countableinterfilter-top--d5b8505cc5b3045997c6bfdc.md) | 232 | `declaration-track:d5b8505cc5b3045997c6bfdcc9815c7d5430f3956cac1bd5d71e1f711a2e1fde` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/instance--fd16658d6a4878bd7f4f9e59.md) | 236 | `declaration-track:fd16658d6a4878bd7f4f9e594705ffe80e3917f1fd9c67d70db80d425a2cf8de` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/instance--2db79f27e0e31f9118b07916.md) | 244 | `declaration-track:2db79f27e0e31f9118b079160e20d568a16f5cc87400e4e33b83d64823e2ddb7` |
| 27 | `instance` | [countableInterFilter_inf](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countableinterfilter-inf--7ceb07a62673ab4927405df9.md) | 251 | `declaration-track:7ceb07a62673ab4927405df93197d31a10a2ff52029842dd319ebcc1a26e241d` |
| 28 | `instance` | [countableInterFilter_sup](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countableinterfilter-sup--1b08acd251ad79ca0b325c09.md) | 262 | `declaration-track:1b08acd251ad79ca0b325c098e98a6cebc3866252faa8227a1ac34ecfdc2bec2` |
| 29 | `instance` | [CountableInterFilter.curry](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countableinterfilter-curry--0556357be328a8bbaea9daf2.md) | 267 | `declaration-track:0556357be328a8bbaea9daf21ca8b22679f2c080af7f6ed57d91d99b7adb9961` |
| 30 | `inductive` | [CountableGenerateSets](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countablegeneratesets--540ce015fef36a774de67d94.md) | 280 | `declaration-track:540ce015fef36a774de67d945fda62ec3bb1fd259e219de5b1acd1dea8016346` |
| 31 | `def` | [countableGenerate](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countablegenerate--aa62c94574e8e45d39c7c8e5.md) | 289 | `declaration-track:aa62c94574e8e45d39c7c8e5a6a4a921b64fb11c62fbe3106f17432f2ba114b7` |
| 32 | `theorem` | [mem_countableGenerate_iff](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/mem-countablegenerate-iff--ec1fc2126648054b911b0b9f.md) | 297 | `result-track:ec1fc2126648054b911b0b9fe286019111e76e39e197346fb8317178221dea14` |
| 33 | `theorem` | [le_countableGenerate_iff_of_countableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/le-countablegenerate-iff-of-countableinterfilter--95998f7ac0a0b27b2990f72b.md) | 315 | `result-track:95998f7ac0a0b27b2990f72b79cc68485f0c08e48247d63a646e030281a45048` |
| 34 | `theorem` | [countableGenerate_isGreatest](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/declarations/countablegenerate-isgreatest--d281c768e435f01786ad798d.md) | 329 | `result-track:d281c768e435f01786ad798dd517807911daa4145f7b4bf3b2360f1d87541a6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
