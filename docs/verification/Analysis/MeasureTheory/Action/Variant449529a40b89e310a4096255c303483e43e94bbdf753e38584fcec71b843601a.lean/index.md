# Verification target: GRWTSK.Analysis.MeasureTheory.Action.Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5747e3941b04d464062cd1a57324a0db6586715f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5747e3941b04d464062cd1a57324a0db6586715f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean.json)

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
| 1 | `instance` | [zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/zero--fdbbe983866e0a7b69444624.md) | 37 | `declaration-track:fdbbe983866e0a7b694446245b49835322aa31dc0183e2dc8a8485c5b61033d5` |
| 2 | `instance` | [add](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/add--05898b70067804958b4b0a9c.md) | 43 | `declaration-track:05898b70067804958b4b0a9c1428478061612a22b89c13a5a712c2903f89d868` |
| 3 | `instance` | [smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smul--45867e4edcc0031d9d066b56.md) | 50 | `declaration-track:45867e4edcc0031d9d066b56dddbda115b96366019804148fae7b1eecb1f95a3` |
| 4 | `instance` | [smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smul-nnreal--5e0f62e0fd557d57565933ae.md) | 54 | `declaration-track:5e0f62e0fd557d57565933aed52ea7bc9b1a6965e3bf756c0fa16205ec769e78` |
| 5 | `theorem` | [measure_preimage_smul_le](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-preimage-smul-le--2a3cdf2f110374dd333c89e6.md) | 67 | `result-track:2a3cdf2f110374dd333c89e6cc3f801c9fc9aaeaa683ff666ef6da5f7c32a443` |
| 6 | `theorem` | [tendsto_smul_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/tendsto-smul-ae--49eccfb784b68c5f24c73297.md) | 73 | `result-track:49eccfb784b68c5f24c732973972aa355d9c8e8e07642e1697c406bb11e6fe30` |
| 7 | `theorem` | [measure_preimage_smul_null](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-preimage-smul-null--cb69b7d6e33702a8ace73cee.md) | 79 | `result-track:cb69b7d6e33702a8ace73ceee7d4fefaf3c113d9e33c5edbb0e07c866e40d0a1` |
| 8 | `theorem` | [measure_preimage_smul_of_nullMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-preimage-smul-of-nullmeasurableset--800fcd899579a3697637dffa.md) | 83 | `result-track:800fcd899579a3697637dffaef992924c3b1c58b011d69f99beb61d865662ab5` |
| 9 | `theorem` | [measure_preimage_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-preimage-smul--e8656928b15525fae647cf7d.md) | 97 | `result-track:e8656928b15525fae647cf7d7f2e05d3c221c3ac4d99a82f6427f6277402b14d` |
| 10 | `theorem` | [measure_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-smul--95f5d785dacb101b9c3f2cc7.md) | 102 | `result-track:95f5d785dacb101b9c3f2cc7bccd6b51add28cfa7a6d4bc9239fee9dd252b1c6` |
| 11 | `theorem` | [measure_inter_inv_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-inter-inv-smul--2d1a04a53574943c1e7b66f5.md) | 106 | `result-track:2d1a04a53574943c1e7b66f533f0712a66065db0291f3421a69e12163ec9ac0a` |
| 12 | `theorem` | [measure_inv_smul_inter](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-inv-smul-inter--fb54a0aac9aa625bbdbb3efc.md) | 110 | `result-track:fb54a0aac9aa625bbdbb3efc2a452342d7cb73895fd915629b2616c35baaebd4` |
| 13 | `theorem` | [measure_union_inv_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-union-inv-smul--d0a5b17e48431025eb9a297b.md) | 114 | `result-track:d0a5b17e48431025eb9a297bf6efa4ef7910e090a0c0ecfbdc7dc10e4e246305` |
| 14 | `theorem` | [measure_inv_smul_union](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-inv-smul-union--d7ee695ed2502331dd747052.md) | 118 | `result-track:d7ee695ed2502331dd74705249c969f2f3f5f8287960328bdab4313198ac68d3` |
| 15 | `theorem` | [measure_sdiff_inv_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-sdiff-inv-smul--1eacb8318dbbe32ae948b4e3.md) | 122 | `result-track:1eacb8318dbbe32ae948b4e38e1bf8415379a0cb61346b0b80a7c4893cacd5a7` |
| 16 | `theorem` | [measure_inv_smul_sdiff](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-inv-smul-sdiff--49edab670d37bf36ebc6483d.md) | 126 | `result-track:49edab670d37bf36ebc6483dc2c9f5f3be6ea33bbf8d04452b29025a0ff484d7` |
| 17 | `theorem` | [measure_symmDiff_inv_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-symmdiff-inv-smul--a099105d575f066f3a128840.md) | 130 | `result-track:a099105d575f066f3a128840f3ff662e9c619a839a69846cb57b33963f016c02` |
| 18 | `theorem` | [measure_inv_smul_symmDiff](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-inv-smul-symmdiff--b74d0614d8fb8036c7c9ada3.md) | 134 | `result-track:b74d0614d8fb8036c7c9ada3a8b211e477c3e9afafc80313fa0f7abca526671c` |
| 19 | `theorem` | [measure_smul_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-smul-eq-zero-iff--d1db3c348a63b3a4d0ab6c14.md) | 140 | `result-track:d1db3c348a63b3a4d0ab6c143e341ee23c2222ec1ebc5752ebab76f60fc29c0a` |
| 20 | `theorem` | [measure_smul_null](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-smul-null--b9cb0e4a96793202176b4435.md) | 144 | `result-track:b9cb0e4a96793202176b44354ae23a3d5532bb1a4df7c8b5e9460d370fce2d43` |
| 21 | `theorem` | [smul_mem_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smul-mem-ae--344755b8cd0340b67cb1c2ff.md) | 148 | `result-track:344755b8cd0340b67cb1c2ffa3b8a6f7c73e97b961538f2a59f1aa3f93e15d55` |
| 22 | `theorem` | [smul_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smul-ae--b38bf22bd8e2022f682c0d9d.md) | 152 | `result-track:b38bf22bd8e2022f682c0d9d57bdf88fd13a7a1083f15e6241561cf7b0c90200` |
| 23 | `theorem` | [eventuallyEmptyOrUniv_smul_set_ae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/eventuallyemptyoruniv-smul-set-ae--afed4fb093123bcc7c8d20e1.md) | 157 | `result-track:afed4fb093123bcc7c8d20e11d3acd853144ce9f4369fd2bdd2ed24c76cdb79c` |
| 24 | `theorem` | [smul_set_ae_le](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smul-set-ae-le--5321d31355f17c10d76d6932.md) | 162 | `result-track:5321d31355f17c10d76d693236d0beec43635a0bc11e388e23f47017a4f8c13c` |
| 25 | `theorem` | [smul_set_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smul-set-ae-eq--82554ae119747d7e2dcd92bb.md) | 166 | `result-track:82554ae119747d7e2dcd92bb631dae1695674cab6a53f40848a111decf10c1ad` |
| 26 | `theorem` | [measurePreserving_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measurepreserving-smul--c92a6cc40b24b71e4307f633.md) | 177 | `result-track:c92a6cc40b24b71e4307f6339ddb29a5a452a1805f07ff0399de7e49c68cc2fb` |
| 27 | `theorem` | [map_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/map-smul--0750f714a4270f09023255b0.md) | 185 | `result-track:0750f714a4270f09023255b0799c894f2ba18195787c89491e91db0b0aeb9ab9` |
| 28 | `theorem` | [MeasurePreserving.smulInvariantMeasure_iterateMulAct](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measurepreserving-smulinvariantmeasure-iteratemulact--7fd3d1cc80ceb050ced00bbb.md) | 191 | `result-track:7fd3d1cc80ceb050ced00bbb986a10a5173a7b4313be1a2ed4732fd0f00ed034` |
| 29 | `theorem` | [smulInvariantMeasure_iterateMulAct](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smulinvariantmeasure-iteratemulact--1b75b7b165e86b7e468a83ce.md) | 197 | `result-track:1b75b7b165e86b7e468a83ce7b061b5d732c70eb902406837e66047292cb5a12` |
| 30 | `theorem` | [smulInvariantMeasure_map](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smulinvariantmeasure-map--5271f95e4e46b930e8872514.md) | 212 | `result-track:5271f95e4e46b930e8872514e25dfa6f6c008b14a97d274a1c13c1495176e56b` |
| 31 | `instance` | [smulInvariantMeasure_map_smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smulinvariantmeasure-map-smul--12b2bf8a00a2f30dea991439.md) | 227 | `declaration-track:12b2bf8a00a2f30dea9914392025a89a3aeac77a7931350435f3fa7f2c9b0c56` |
| 32 | `theorem` | [smulInvariantMeasure_tfae](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/smulinvariantmeasure-tfae--0660edf1bf9d90396f147961.md) | 255 | `result-track:0660edf1bf9d90396f147961e2dd3a9da727a6fbcf3f56140d5d84549ee3939a` |
| 33 | `theorem` | [NullMeasurableSet.smul](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/nullmeasurableset-smul--02a9b056a46831dcbf77a02f.md) | 302 | `result-track:02a9b056a46831dcbf77a02f302e56cc718e776975eb44776fe621c9b00f1d64` |
| 34 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_compact_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-isopen-pos-of-smulinvariant-of-compact-ne-zero--d6f46460b5de348be168365f.md) | 317 | `result-track:d6f46460b5de348be168365f218aa9a82fb6e7aa21d3e3d0918ba33ad4193103` |
| 35 | `theorem` | [isLocallyFiniteMeasure_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/islocallyfinitemeasure-of-smulinvariant--d65a3e85388f9a7cb855d9ca.md) | 333 | `result-track:d65a3e85388f9a7cb855d9ca4c2ea4d250c839bd740ed58e4ba63bf07c7a5e90` |
| 36 | `theorem` | [measure_isOpen_pos_of_smulInvariant_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-isopen-pos-of-smulinvariant-of-ne-zero--14646d2e48282d5fd0350436.md) | 343 | `result-track:14646d2e48282d5fd0350436c6f7f5cf5c120c19fda8cb5b4a8083afd7f0a6e3` |
| 37 | `theorem` | [measure_pos_iff_nonempty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-pos-iff-nonempty-of-smulinvariant--9e35451c0581c0c65323df4b.md) | 349 | `result-track:9e35451c0581c0c65323df4b5d0cc6bc4e6af31011b2a5f3da01e0a6e40da648` |
| 38 | `theorem` | [measure_eq_zero_iff_eq_empty_of_smulInvariant](../../../../../mathematics/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/declarations/measure-eq-zero-iff-eq-empty-of-smulinvariant--fbff71340f48490e17c7d5ca.md) | 355 | `result-track:fbff71340f48490e17c7d5ca62613f9233cddc00c9d758c6c8ecdaa4743b1abf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
