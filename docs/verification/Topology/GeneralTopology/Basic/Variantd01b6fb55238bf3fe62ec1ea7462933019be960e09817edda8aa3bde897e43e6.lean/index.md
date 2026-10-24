# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35166a53e2a147909760583310fedde27addb0ae",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35166a53e2a147909760583310fedde27addb0ae`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Continuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOrderHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/continuousorderhom--06d7290efc4d9643ce0b0351.md) | 42 | `declaration-track:06d7290efc4d9643ce0b03519ed405118f17426dc55c9f467fb6a790448811e7` |
| 2 | `class` | [ContinuousOrderHomClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/continuousorderhomclass--f4bc8acece06b70de6263d40.md) | 53 | `declaration-track:f4bc8acece06b70de6263d40bdd0ff6713552b97d439a930b282cfd0b6e1c06a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/instance--282f69d411c57882a51b2ecc.md) | 64 | `declaration-track:282f69d411c57882a51b2ecc905ecfcc861cd663f7f25b580fd56715cd28265f` |
| 4 | `def` | [toContinuousOrderHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/tocontinuousorderhom--d626d20b1e5fa808469e8184.md) | 72 | `declaration-track:d626d20b1e5fa808469e8184223e2afc7b63f6c26bf90ff2f959b2f4622820ae` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/instance--2a378407e0149626847de7f0.md) | 77 | `declaration-track:2a378407e0149626847de7f00f188b4ce772301c844a54a60f6027d63c9876cb` |
| 6 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/tocontinuousmap--4149447e62935401a16fded6.md) | 93 | `declaration-track:4149447e62935401a16fded6bfc64f74f092ec0728b41535ea315c9fde53ac02` |
| 7 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/instfunlike--5be44a25838ee7a094b00a2e.md) | 96 | `declaration-track:5be44a25838ee7a094b00a2e815b2171704306e707601ea1b0c461d323b1dd68` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/instance--133f7efc6711c1b1729a8e00.md) | 103 | `declaration-track:133f7efc6711c1b1729a8e00c7efeafa2ad4a01d629a80e6fa6872ab9e33002a` |
| 9 | `theorem` | [coe_toOrderHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/coe-toorderhom--282ea6eecd36cf2bd5c9afeb.md) | 107 | `result-track:282ea6eecd36cf2bd5c9afeb0a5704b623b31d7513896fe9868c628b494bdd8f` |
| 10 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/tofun-eq-coe--0d491303311731b4d17b6c3a.md) | 109 | `result-track:0d491303311731b4d17b6c3acf3ce5f6beb9c7a19d3d329c951cf30fc4266705` |
| 11 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/ext--4aefab2c8d32f2f2fd53e1e8.md) | 112 | `result-track:4aefab2c8d32f2f2fd53e1e8b15014f40d25438b116afac4022b7ac36c3c3838` |
| 12 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/copy--de94b47c8d097b49dc4a95bf.md) | 117 | `declaration-track:de94b47c8d097b49dc4a95bfe4e021d239d9f6aa4f8594056d472358411d9088` |
| 13 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/coe-copy--28090dc3d0458ddffda71afe.md) | 121 | `result-track:28090dc3d0458ddffda71afe3adec273ceb3b9d802dd5c35894ff79ddd1b9f25` |
| 14 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/copy-eq--862f69e11e93948b0af0ff3d.md) | 124 | `result-track:862f69e11e93948b0af0ff3d808bc3cb9febf306858f48d10943d433b1ebd201` |
| 15 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/id--e85087fee6c9d9f7c2c400dc.md) | 130 | `declaration-track:e85087fee6c9d9f7c2c400dcc20bd6af305aea590f82dac802d8531885006357` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/instance--9ba780e863f84b4ee9cca15c.md) | 133 | `declaration-track:9ba780e863f84b4ee9cca15ca941c5ba65425f992bcd1612a50d4cb0f791449c` |
| 17 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/coe-id--21af2d5bc707a9a663287e09.md) | 137 | `result-track:21af2d5bc707a9a663287e09b67f6b5ec7ed2ffc081eea611a3c02f992c8ec40` |
| 18 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/id-apply--dcfaee2b884eb2e2fe34d568.md) | 143 | `result-track:dcfaee2b884eb2e2fe34d568912eadeac8bfb5f326b81b89f4f354b4b5dc3124` |
| 19 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/comp--68c9f582be5b6a5171628094.md) | 147 | `declaration-track:68c9f582be5b6a51716280943b55bfc32f4b907da742cd87fd915f6be47afe74` |
| 20 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/coe-comp--f71421a4151fbc712125b77a.md) | 151 | `result-track:f71421a4151fbc712125b77a9a9044e21b8876abbdf9a3a3eecbf756df151cc8` |
| 21 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/comp-apply--c193df0b0b287162bad31c79.md) | 155 | `result-track:c193df0b0b287162bad31c79e8af2d6554bf42118524acd3caa0db2afbfe12f8` |
| 22 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/comp-assoc--186093f110a661164a63d3a5.md) | 159 | `result-track:186093f110a661164a63d3a5071a8e791ded26dc77c65ff7596790d0873d5bd0` |
| 23 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/comp-id--ee1359814bf71280b62f82ee.md) | 164 | `result-track:ee1359814bf71280b62f82ee96dee04dba77bc2cdec3931ef2ce3c53fd696516` |
| 24 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/id-comp--f7e37f741cb72b257ebe3775.md) | 168 | `result-track:f7e37f741cb72b257ebe37752d47ab000aa8a766f1ecaa2d30749f258a2a94ff` |
| 25 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/cancel-right--ae14d4bdddb098239cfb89dc.md) | 172 | `result-track:ae14d4bdddb098239cfb89dc0d6a1035dce37d5ddfb62691c0f8e5462f1783a0` |
| 26 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/cancel-left--9aeb19e5c304c1a2d05624d4.md) | 177 | `result-track:9aeb19e5c304c1a2d05624d49742c590e272ddff65ca209b087d48798aab7b0a` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/instance--65781da29f3e89f5f6103da0.md) | 181 | `declaration-track:65781da29f3e89f5f6103da037140a0ab19f4824a3a930766befe4770a9b8097` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd01b6fb55238bf3fe62ec1ea7462933019be960e09817edda8aa3bde897e43e6.lean/declarations/instance--cf2e6be00d11a9a9639be74a.md) | 186 | `declaration-track:cf2e6be00d11a9a9639be74aff8563e016a9992d078fee798ee530f9c0ec2c2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
