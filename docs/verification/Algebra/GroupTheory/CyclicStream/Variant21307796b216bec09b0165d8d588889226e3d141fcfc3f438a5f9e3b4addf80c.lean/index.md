# Verification target: GRWTSK.Algebra.GroupTheory.CyclicStream.Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db172ba8ff9f236064ae3188283fda119bbd2522",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db172ba8ff9f236064ae3188283fda119bbd2522`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phaseStepStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestepstream--46a1bc92f05e7244cfad8881.md) | 44 | `declaration-track:46a1bc92f05e7244cfad8881924259e06799a82b0be7d55838c93a45287eb616` |
| 2 | `def` | [indexedStepStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/indexedstepstream--3a2694769410774398d5cd46.md) | 55 | `declaration-track:3a2694769410774398d5cd46d4c903bd8f50b8b0857ba2a71b052e1517eebf42` |
| 3 | `abbrev` | [braidedStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/braidedstream--ed846bf9e164492992a7dcae.md) | 68 | `declaration-track:ed846bf9e164492992a7dcae304942eda7229e1703433e198afd3a7c53795901` |
| 4 | `theorem` | [braidedStream_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/braidedstream-apply--6d81aca421d93a4ab3b97bb8.md) | 76 | `result-track:6d81aca421d93a4ab3b97bb83d7cfc6ed84bdf4b34430a91d7f1701c7c36cc72` |
| 5 | `theorem` | [braidedStream_mod_cycle_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/braidedstream-mod-cycle-apply--ad8865ed8cb6a7d50ac47d07.md) | 86 | `result-track:ad8865ed8cb6a7d50ac47d07c995f2b86c6960b9befc475e965006682880bf57` |
| 6 | `def` | [shiftPhaseStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/shiftphasestream--32c62ef77d76e40bd015c422.md) | 98 | `declaration-track:32c62ef77d76e40bd015c422b817d9a07ae503339cf4e6a28f50fb066018a2f7` |
| 7 | `def` | [shiftInput](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/shiftinput--13a8ef640b980bef904654fe.md) | 104 | `declaration-track:13a8ef640b980bef904654fe95bc7b0ad048eb3f1f731b8df579c9d8886afaa2` |
| 8 | `def` | [phaseStreamTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestreamtransport--6b58864a3215eec8b011cb72.md) | 113 | `declaration-track:6b58864a3215eec8b011cb72e79449c11badd996708bc2db32212a5f9883a6e1` |
| 9 | `def` | [streamTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransport--1099c385310ed812e282b868.md) | 127 | `declaration-track:1099c385310ed812e282b86843a815b582573402d410b3cb01d53203e55818f9` |
| 10 | `theorem` | [phaseStreamTransport_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestreamtransport-zero--5675c52049c35cc5a8077603.md) | 133 | `result-track:5675c52049c35cc5a8077603dfdfba5e7508b4b876e629b359bf3a97a3e5be47` |
| 11 | `theorem` | [phaseStreamTransport_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestreamtransport-succ--0703cd832356712f8a8828dd.md) | 139 | `result-track:0703cd832356712f8a8828dd1eee04eae1fad6a6eaa1970b55495cb03157ccf7` |
| 12 | `theorem` | [streamTransport_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransport-zero--132acddf2aa321aa80e17fa4.md) | 147 | `result-track:132acddf2aa321aa80e17fa404578c2058bc916caaaf2cf4e920bc8bea3bf466` |
| 13 | `theorem` | [streamTransport_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransport-succ--842fbfab0ac1e37fd0afbfe0.md) | 153 | `result-track:842fbfab0ac1e37fd0afbfe031dc3d4e0a4a5ab5c21a68d8bf6d413241da0476` |
| 14 | `theorem` | [streamTransport_two_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransport-two-apply--d0407416840a2d627d97843e.md) | 165 | `result-track:d0407416840a2d627d97843e4d25c8e151fb51e374f1b10309217cea43cf7f00` |
| 15 | `def` | [reverseStreamTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/reversestreamtransport--db08872cdf1cd2bd7823a577.md) | 180 | `declaration-track:db08872cdf1cd2bd7823a577b9301b0449eb324a37791535891a7503d7c36d8c` |
| 16 | `theorem` | [reverseStreamTransport_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/reversestreamtransport-zero--d8bfae70db784e66bac4af94.md) | 189 | `result-track:d8bfae70db784e66bac4af94f3695bb6f924ebf36cfac19b85223bd3bae98a2c` |
| 17 | `theorem` | [reverseStreamTransport_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/reversestreamtransport-succ--b4332ed0881b86f8768bc982.md) | 196 | `result-track:b4332ed0881b86f8768bc98271daab58845852d26817c24c0303c5426f278ffc` |
| 18 | `theorem` | [reverseStreamTransport_two_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/reversestreamtransport-two-apply--4a14cd65715d9544fc0a3e0d.md) | 208 | `result-track:4a14cd65715d9544fc0a3e0d5121df863de02010370ae3e6a01c9e68eae57821` |
| 19 | `theorem` | [shiftPhaseStream_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/shiftphasestream-zero--8c001db8dbc63dc8eb94d111.md) | 216 | `result-track:8c001db8dbc63dc8eb94d111b7201077806d3d412cf25a0d676e46f5754f61d8` |
| 20 | `theorem` | [shiftPhaseStream_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/shiftphasestream-add--8886f5280da8f48ed9046ad7.md) | 222 | `result-track:8886f5280da8f48ed9046ad74355dc6fc847de2504f633e848e21fb1914abc46` |
| 21 | `theorem` | [shiftInput_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/shiftinput-zero--a585f39963ba587392e5dbc9.md) | 229 | `result-track:a585f39963ba587392e5dbc9a37d881da3c6c327c8811729fb2f27be677a0905` |
| 22 | `theorem` | [shiftInput_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/shiftinput-add--3e75249f3a481b9fb9bc943b.md) | 235 | `result-track:3e75249f3a481b9fb9bc943b09180f50ccefea3ae8ee649a77a6ac6500a958af` |
| 23 | `theorem` | [phaseStreamTransport_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestreamtransport-add--6468303fb720ab47efad88e1.md) | 242 | `result-track:6468303fb720ab47efad88e14b1f0fcd4bfaf3bada9781574e4e63542aa38799` |
| 24 | `theorem` | [streamTransport_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransport-add--54cf8953b4f4424d87b213f6.md) | 260 | `result-track:54cf8953b4f4424d87b213f68e247909872b9c79a4d02be36f6a65545fce8f8b` |
| 25 | `def` | [successorPhaseStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/successorphasestream--8c1c1e3ce71b8b8d849f78f7.md) | 278 | `declaration-track:8c1c1e3ce71b8b8d849f78f78960e539c87d4a8908c2c51b4f2cc35d0dca743e` |
| 26 | `theorem` | [phaseStreamTransport_successor_eq_forwardProduct](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestreamtransport-successor-eq-forwardproduct--2e3c097d43eb91488ad54ca1.md) | 288 | `result-track:2e3c097d43eb91488ad54ca1f02dddec553e03d263e2032bf19f1595049e5ceb` |
| 27 | `theorem` | [phaseStreamTransport_successor_cycle_eq_monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestreamtransport-successor-cycle-eq-monodromy--20ea47def6634f1b2fb6a325.md) | 311 | `result-track:20ea47def6634f1b2fb6a325d8ac38fc888898bc10a9774bda4f29472e8b3a43` |
| 28 | `theorem` | [streamTransport_bijective](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransport-bijective--164ac54569740e0c7d9afaf9.md) | 321 | `result-track:164ac54569740e0c7d9afaf9269274f123017d7a7887eeb1af0568c097323bcc` |
| 29 | `theorem` | [phaseStreamTransport_bijective](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestreamtransport-bijective--fbac5a3b31fc46974c557472.md) | 328 | `result-track:fbac5a3b31fc46974c5574723cbe6cdb79c3349f09a49100bbc8c77530b5df2a` |
| 30 | `def` | [StreamInSubgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streaminsubgroup--d6a098246011f4b666ec928f.md) | 335 | `declaration-track:d6a098246011f4b666ec928febd05029e837cf8a3607beafccda086c29c0b87f` |
| 31 | `theorem` | [streamTransport_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransport-mem-subgroup--89d5d7ede18cab44da7a8b70.md) | 342 | `result-track:89d5d7ede18cab44da7a8b70588184d9d16d20f76de69fe0ddd4d0b3f1b28dbd` |
| 32 | `theorem` | [streamTransport_mem_subgroup_of_phasewise](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransport-mem-subgroup-of-phasewise--4df164a4f6aa6e25a2e63d31.md) | 359 | `result-track:4df164a4f6aa6e25a2e63d31a4d84a0f7bc716811dd0ebcd95e0dd3dda9e0cf3` |
| 33 | `def` | [phaseStreamTransportWithPayload](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestreamtransportwithpayload--174936f2dd67682fcb9d415d.md) | 378 | `declaration-track:174936f2dd67682fcb9d415d92519c83266316ad5b9c5e5e87fa8f308801bf29` |
| 34 | `def` | [streamTransportWithPayload](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransportwithpayload--50d133bd11e11f17e30e32a2.md) | 387 | `declaration-track:50d133bd11e11f17e30e32a21c9e44aa108875a202b60a1468ae302516d966c7` |
| 35 | `theorem` | [phaseStreamTransportWithPayload_preserves_payload](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/phasestreamtransportwithpayload-preserves-payload--4e9e2137f5610a96431c1e35.md) | 395 | `result-track:4e9e2137f5610a96431c1e3546daa46cbddd303cba82d8f29126dedf6bbb3fb2` |
| 36 | `theorem` | [streamTransportWithPayload_preserves_payload](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean/declarations/streamtransportwithpayload-preserves-payload--cd04eb0255dd92ca488b18e5.md) | 403 | `result-track:cd04eb0255dd92ca488b18e5ca25a923b0719c653b01ff8119e1e02b0b7bfc73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
