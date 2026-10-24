# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31ac077d6bce5702b956e1896e5c43914c070cfc",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31ac077d6bce5702b956e1896e5c43914c070cfc`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commutator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [commutatorElement_eq_one_iff_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutatorelement-eq-one-iff-mul-comm--2e4011b95ccd52def65c8280.md) | 27 | `result-track:2e4011b95ccd52def65c8280a35f2120bd511daf52fa6415ac547ce08119cb50` |
| 2 | `theorem` | [commutatorElement_eq_one_iff_commute](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutatorelement-eq-one-iff-commute--79391087d8f32ea52084e631.md) | 30 | `result-track:79391087d8f32ea52084e631d2ba9823090672e650158c00fa1e28aed35eaa59` |
| 3 | `theorem` | [Commute.commutator_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commute-commutator-eq--207fbd53a0663030cdb2b797.md) | 33 | `result-track:207fbd53a0663030cdb2b797975af1fdcf2732597bde6398867ca3c88725ad27` |
| 4 | `theorem` | [commutatorElement_one_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutatorelement-one-right--819a90fd73f9bb4eb53c4240.md) | 39 | `result-track:819a90fd73f9bb4eb53c42403e1a74dfde69d2f5d3da5bdc7197fe1f83192a84` |
| 5 | `theorem` | [commutatorElement_one_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutatorelement-one-left--856c40601d651493853da530.md) | 43 | `result-track:856c40601d651493853da530e11f230eb40f3585414f872e876acdac5fbc3755` |
| 6 | `theorem` | [commutatorElement_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutatorelement-self--bc714aa7ba4d7eff639bea86.md) | 47 | `result-track:bc714aa7ba4d7eff639bea866ef651f54253512a4ebddb95af93b7396710c532` |
| 7 | `theorem` | [commutatorElement_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutatorelement-inv--d09be173743c16c905933a31.md) | 51 | `result-track:d09be173743c16c905933a314d9b39e0a9fe00abfadb155e11ad5b509ae2a377` |
| 8 | `theorem` | [map_commutatorElement](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/map-commutatorelement--7ddbca6f43e0428289f3651e.md) | 54 | `result-track:7ddbca6f43e0428289f3651e893a6d49d28df7d5b2d0672fc28cbe420fbd8d07` |
| 9 | `theorem` | [conjugate_commutatorElement](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/conjugate-commutatorelement--2049e19e470db833bf77bc3e.md) | 57 | `result-track:2049e19e470db833bf77bc3ec30f28b041e7d633beb413dd270fa7f2bc185f36` |
| 10 | `instance` | [commutator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator--d3c74a23ae208490cc7ea0d4.md) | 63 | `declaration-track:d3c74a23ae208490cc7ea0d48315d0fa11c97486e2329293328d050222190cbd` |
| 11 | `theorem` | [commutator_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-def--886f9b76ea06b865baea38aa.md) | 66 | `result-track:886f9b76ea06b865baea38aa5b9b389c12d371ad91db1bd30c2d2f68faf4b281` |
| 12 | `theorem` | [commutator_mem_commutator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-mem-commutator--477951826169f7855ceb0365.md) | 72 | `result-track:477951826169f7855ceb0365cf5e12dd463110acb0ed8f1f80c33a1c96167b21` |
| 13 | `theorem` | [commutator_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-le--5b29e2d0b0992273e90880f1.md) | 75 | `result-track:5b29e2d0b0992273e90880f12c4708e5b92cbfac71bfca5d96e11798110bc770` |
| 14 | `theorem` | [commutator_mono](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-mono--dbe88c5b0c75fbea047269f4.md) | 79 | `result-track:dbe88c5b0c75fbea047269f4725238ce62555ff11601231ebb74755fb0e6535e` |
| 15 | `theorem` | [commutator_eq_bot_iff_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-eq-bot-iff-le-centralizer--412478b847f9c1e2f1535180.md) | 82 | `result-track:412478b847f9c1e2f1535180e82d70ed6be36d05950ab92d9bc68045f92912ef` |
| 16 | `theorem` | [commutator_commutator_eq_bot_of_rotate](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-commutator-eq-bot-of-rotate--8332270ebecfeb60042d9915.md) | 89 | `result-track:8332270ebecfeb60042d99155ecc731ccd6f46eb1df642df232dfd6f1ebf5403` |
| 17 | `theorem` | [commutator_comm_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-comm-le--0bd384b16f4e2bd51fde4641.md) | 103 | `result-track:0bd384b16f4e2bd51fde46412fbf56f960eb71e9f315f82bf9a3b43566a4fd34` |
| 18 | `theorem` | [commutator_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-comm--8c559f49f74879536358fd80.md) | 107 | `result-track:8c559f49f74879536358fd80b734026c2cc27409d201b948a7eb3808363f4cb3` |
| 19 | `instance` | [commutator_normal](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-normal--91ab1091a28bd7dac3701455.md) | 112 | `declaration-track:91ab1091a28bd7dac37014552240ea600da67b96acd958fd160caaacfeb8c75e` |
| 20 | `theorem` | [commutator_def'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-def--85a0dea4616c603eca723bf9.md) | 123 | `result-track:85a0dea4616c603eca723bf915e239b09c0e0221156628f1406b6c78bc14ec06` |
| 21 | `theorem` | [commutator_le_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-le-right--b3a822909e9fbe87dff15e7b.md) | 127 | `result-track:b3a822909e9fbe87dff15e7b7a204863b68968856614a75f3cb88e9a9192dff0` |
| 22 | `theorem` | [commutator_le_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-le-left--4f060b760e80fbeee153fb13.md) | 130 | `result-track:4f060b760e80fbeee153fb1319bd6cf21f6a3bd3a793799737a69625bcc556f8` |
| 23 | `theorem` | [commutator_bot_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-bot-left--f958f5eed7a68bc40d0a46bd.md) | 134 | `result-track:f958f5eed7a68bc40d0a46bd9f99a86aa963aaf7b0cd4268800cdab2ffdf52ed` |
| 24 | `theorem` | [commutator_bot_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-bot-right--0f1a18213168b91ab51d2741.md) | 138 | `result-track:0f1a18213168b91ab51d2741336f11780c788670c453f375addd2b3515bc3888` |
| 25 | `theorem` | [commutator_le_inf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-le-inf--4aecb3489eb3412ac5707249.md) | 141 | `result-track:4aecb3489eb3412ac57072497810b676a6b8e4eefd4a8c570b0e90a3a407472d` |
| 26 | `theorem` | [map_commutator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/map-commutator--aa5ce4585f1eb13909bd1764.md) | 146 | `result-track:aa5ce4585f1eb13909bd1764146e74cb90854df636d7055ab792347099d7859b` |
| 27 | `theorem` | [commutator_le_map_commutator](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-le-map-commutator--88e7318be494770ad593aaf3.md) | 157 | `result-track:88e7318be494770ad593aaf326d0824c63adc0ce63a949b6053bcd96c37933ae` |
| 28 | `instance` | [commutator_characteristic](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-characteristic--35708e4782b04ac80779dc51.md) | 163 | `declaration-track:35708e4782b04ac80779dc5123e9e25daf8e1f39b02e1b96585c5986ca211542` |
| 29 | `theorem` | [commutator_prod_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-prod-prod--9c3d266551cc43b3346ccf8f.md) | 169 | `result-track:9c3d266551cc43b3346ccf8fce58970712f64d0ddbb93572fd9c57de2acc90d8` |
| 30 | `theorem` | [commutator_pi_pi_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-pi-pi-le--d8cfedcada6d001ce88ea6c4.md) | 186 | `result-track:d8cfedcada6d001ce88ea6c4c0624c3a1dba63321d78b83c838a461bf9eb8246` |
| 31 | `def` | [commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutatorset--de2736e0127e443ecf59d214.md) | 196 | `declaration-track:de2736e0127e443ecf59d214429f043c1a8f901d41747707dbf650a13748cd22` |
| 32 | `theorem` | [commutatorSet_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutatorset-def--e48bb7e45d92e0cb0d46a690.md) | 199 | `result-track:e48bb7e45d92e0cb0d46a69051bd1a80eb5dcae3fe7dbab75c7d21441a157b1c` |
| 33 | `theorem` | [one_mem_commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/one-mem-commutatorset--38963faf7df6312c8a8e2947.md) | 202 | `result-track:38963faf7df6312c8a8e2947467c6284567d8d997450074f04ad01948810b4da` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/instance--2aece30b476c5913ccae3c73.md) | 205 | `declaration-track:2aece30b476c5913ccae3c73386b302d8fa647985a1d24b1d8ad62cd2a501a77` |
| 35 | `theorem` | [mem_commutatorSet_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/mem-commutatorset-iff--644c926170e230ccefa02dd8.md) | 210 | `result-track:644c926170e230ccefa02dd82bb24fd4bba6a23ecb3e02018300873e407ed4fe` |
| 36 | `theorem` | [commutator_mem_commutatorSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantd89032fcc700a4fa61e49e6fc363ac96201d8ac279b1b5cce9a6f139c8aeb853.lean/declarations/commutator-mem-commutatorset--8add641d24dbd13de1b6e32c.md) | 213 | `result-track:8add641d24dbd13de1b6e32cbedd050dfb591e12a79a677d9e26ea4b4e1f1a90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
