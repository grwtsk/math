# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableEquiv.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "569b8be41f36e98dcbbe83cc2edfc932b0dcbe57",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `569b8be41f36e98dcbbe83cc2edfc932b0dcbe57`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/smul--e5eac2cccf85da59adabc571.md) | 49 | `declaration-track:e5eac2cccf85da59adabc5711393d782eac984473bacb28d5d8728603c9ab4a6` |
| 2 | `theorem` | [_root_.measurableEmbedding_const_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/root-measurableembedding-const-smul--2caab14740f72fd8191a4598.md) | 57 | `result-track:2caab14740f72fd8191a459869c5505fde32df607ce9fb1946a051d7827e4463` |
| 3 | `theorem` | [symm_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/symm-smul--b8aae7383efbfee08498b922.md) | 63 | `result-track:b8aae7383efbfee08498b92288e5b58bf015d44add8e10a7228bb37bf966281f` |
| 4 | `def` | [smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/smul--fa31112e6065fb03a7f250f8.md) | 70 | `declaration-track:fa31112e6065fb03a7f250f8eeaefb2017891f719276cba141eb2c69062adfc7` |
| 5 | `theorem` | [coe_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/coe-smul--a364e6f1bb7416655e3fd652.md) | 75 | `result-track:a364e6f1bb7416655e3fd652f6c68aed874918cac8f6a8fe0512f3fbef85e62c` |
| 6 | `theorem` | [symm_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/symm-smul--000c3b4656825ea5ee20b3fb.md) | 80 | `result-track:000c3b4656825ea5ee20b3fbc0137f6c35c954236127da467c751cfdbe11eded` |
| 7 | `theorem` | [_root_.measurableEmbedding_const_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/root-measurableembedding-const-smul--83d73b03b264bc3abea9a43d.md) | 85 | `result-track:83d73b03b264bc3abea9a43da70a6bea797c5119bda2048919538efdb38e9a86` |
| 8 | `def` | [mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/mulleft--ad74227bfc29b60052e71adf.md) | 99 | `declaration-track:ad74227bfc29b60052e71adff5a9e21b2026690179a73d4903deaf8fa00571bf` |
| 9 | `theorem` | [coe_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/coe-mulleft--6b42c8acdbf95854a222b1ac.md) | 105 | `result-track:6b42c8acdbf95854a222b1ac0514b7acb97284f3c537b879edf52948e8fef15e` |
| 10 | `theorem` | [symm_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/symm-mulleft--3d9374140d0d7964f093cc69.md) | 111 | `result-track:3d9374140d0d7964f093cc6971f4a4fc6a8bd1d3dff4e1155032b6169b96f291` |
| 11 | `theorem` | [toEquiv_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/toequiv-mulleft--30eb763157064fa3f07cbf88.md) | 117 | `result-track:30eb763157064fa3f07cbf88feacb265c00db1ba8629caa143887bfe51c06806` |
| 12 | `theorem` | [_root_.measurableEmbedding_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/root-measurableembedding-mulleft--59d51588a28f40205c276f27.md) | 123 | `result-track:59d51588a28f40205c276f2710aa2e7712a8394a0353654ea6cb48f38da59f1d` |
| 13 | `def` | [mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/mulright--8d6566040536492a4d2264ec.md) | 133 | `declaration-track:8d6566040536492a4d2264ec5bad89d3036d41b57706195ea1f354cedc0afe10` |
| 14 | `theorem` | [_root_.measurableEmbedding_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/root-measurableembedding-mulright--cba532bf5f660865a01f5a16.md) | 141 | `result-track:cba532bf5f660865a01f5a1608ded5d46b0443d85bdc299354c48db588457eb2` |
| 15 | `theorem` | [coe_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/coe-mulright--6e5f69dc3365a9389a30fffa.md) | 147 | `result-track:6e5f69dc3365a9389a30fffa6f0c083531d39e3dc706293afebb9570d9e380a6` |
| 16 | `theorem` | [symm_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/symm-mulright--134c50845f8ce42d2f7457aa.md) | 153 | `result-track:134c50845f8ce42d2f7457aa9ddf047e39ff766e287621450f58762b09da45de` |
| 17 | `theorem` | [toEquiv_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/toequiv-mulright--9af55a74b72254c215e7a4e7.md) | 159 | `result-track:9af55a74b72254c215e7a4e712a859fcc90ce00e36922b39ffe70ec416a3cbf7` |
| 18 | `def` | [mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/mulleft--7fbdac44f9e2598a25a1b30e.md) | 166 | `declaration-track:7fbdac44f9e2598a25a1b30ee13351bffbd18552629888b27a2a90ad01d2a6ee` |
| 19 | `theorem` | [_root_.measurableEmbedding_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/root-measurableembedding-mulleft--71b7f6f61592928b5c270f1d.md) | 170 | `result-track:71b7f6f61592928b5c270f1dbce631f4adf785b16f13c9a79e304e1ab46057b9` |
| 20 | `theorem` | [coe_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/coe-mulleft--e290e03d4209810c2c806b24.md) | 176 | `result-track:e290e03d4209810c2c806b247ab652845455fc98057b0f1b57f6b8bd7af73f53` |
| 21 | `theorem` | [symm_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/symm-mulleft--a735baec32df33ee55efe737.md) | 181 | `result-track:a735baec32df33ee55efe737c91ada75612ed752902c226189f232590ba06f7d` |
| 22 | `theorem` | [toEquiv_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/toequiv-mulleft--cbee7ce75402baa314d7ba06.md) | 187 | `result-track:cbee7ce75402baa314d7ba0662dc822ff5d5f5fb7cc219c0c181eac8a76c108c` |
| 23 | `def` | [mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/mulright--c750903fd7e4e5349000e3d5.md) | 193 | `declaration-track:c750903fd7e4e5349000e3d5d00e646691def2781d804d5c85f54ad2d1e2edf0` |
| 24 | `theorem` | [_root_.measurableEmbedding_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/root-measurableembedding-mulright--186e9d256f4126e78e1c393d.md) | 199 | `result-track:186e9d256f4126e78e1c393d97659cce370c3638c28b8a89bd57556ac06f383d` |
| 25 | `theorem` | [coe_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/coe-mulright--32a3f1f887d238b6d6d87570.md) | 205 | `result-track:32a3f1f887d238b6d6d87570605eafc42f0bd48494464f0c4e23550c8127ecc2` |
| 26 | `theorem` | [symm_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/symm-mulright--ba6ab05ca159991e58b1632d.md) | 210 | `result-track:ba6ab05ca159991e58b1632df35081475ab800cde571606914c8d184b795c337` |
| 27 | `theorem` | [toEquiv_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/toequiv-mulright--0212b07d9d4ac694ada753e7.md) | 216 | `result-track:0212b07d9d4ac694ada753e7b378bca64d59ab7ad067b75d6a63843c493cce24` |
| 28 | `def` | [inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/inv--5e44218bc5a7bfbe054bc640.md) | 225 | `declaration-track:5e44218bc5a7bfbe054bc6402afb4f16470db515c89a94569ea9dc6262dc21a4` |
| 29 | `theorem` | [symm_inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/symm-inv--e17152c8a2bd6766b347de90.md) | 233 | `result-track:e17152c8a2bd6766b347de909f8a5eb7c346421f26e4ef3cbde237984b989ccc` |
| 30 | `def` | [divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/divright--bc2d0c13e61a998fe3d111cc.md) | 241 | `declaration-track:bc2d0c13e61a998fe3d111cc30fda7b170165a04ed83ddb05e526f1d7f17cf71` |
| 31 | `def` | [divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.lean/declarations/divleft--cb4a1471eec9e7caeac74997.md) | 250 | `declaration-track:cb4a1471eec9e7caeac7499763ecfc66b8a862a001d8b59497ccfd4c6e1f9a85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
