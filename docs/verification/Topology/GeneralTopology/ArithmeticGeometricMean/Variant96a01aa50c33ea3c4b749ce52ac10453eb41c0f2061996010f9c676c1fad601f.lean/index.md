# Verification target: GRWTSK.Topology.GeneralTopology.ArithmeticGeometricMean.Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e93661e4260b22e72e16969289b4ea6a6e0bb65",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e93661e4260b22e72e16969289b4ea6a6e0bb65`.

Source path: `GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean.json)

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
| 1 | `lemma` | [sqrt_mul_le_half_add](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/sqrt-mul-le-half-add--cefd57ac691993b32f482548.md) | 31 | `result-track:cefd57ac691993b32f4825483b3a86f9740182e7ac60f011319871162da5e822` |
| 2 | `lemma` | [sqrt_mul_lt_half_add_of_ne](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/sqrt-mul-lt-half-add-of-ne--53aff422b3dc719307c56618.md) | 37 | `result-track:53aff422b3dc719307c56618aaa58048b14050a0b7161dab9fae6f5ed6f6c1d7` |
| 3 | `def` | [agmSequences](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences--92f99d12b7a9b05ab5ae3343.md) | 55 | `declaration-track:92f99d12b7a9b05ab5ae3343fc0f5a8cb96c940fafb94ab9f173f49e05a3f47a` |
| 4 | `lemma` | [agmSequences_zero](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-zero--44ae59e2f3153c395ad55a93.md) | 61 | `result-track:44ae59e2f3153c395ad55a93422866d809d1083e037e4fa55dff245158de79cc` |
| 5 | `lemma` | [agmSequences_succ](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-succ--32b27a6ca843a452e1165d25.md) | 63 | `result-track:32b27a6ca843a452e1165d25c59323e3ad8c9b66f6e2c9be1a2db4b4fcbb6052` |
| 6 | `lemma` | [agmSequences_succ'](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-succ--0560345eb8b904fe3bc4d94d.md) | 66 | `result-track:0560345eb8b904fe3bc4d94d0751e8a3f823d81004fd5b6b4d4c2b3a303ffe77` |
| 7 | `lemma` | [agmSequences_comm](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-comm--074619571efd78c44e5eb46f.md) | 72 | `result-track:074619571efd78c44e5eb46ff1fcd315ba863eea5a7672bd3bcd217233370612` |
| 8 | `lemma` | [le_gm_and_am_le](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/le-gm-and-am-le--cf5a45730edae51dbbd1e0ed.md) | 78 | `result-track:cf5a45730edae51dbbd1e0ede47b30cfbed2eca57122eeb9ea7edc342bdc8c2d` |
| 9 | `lemma` | [dist_gm_am_le](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/dist-gm-am-le--892a0dd57370abdc30093576.md) | 86 | `result-track:892a0dd57370abdc30093576fa0d21ee26f0dc572b1770af732cd6f700f8109f` |
| 10 | `lemma` | [agmSequences_monotone_and_antitone](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-monotone-and-antitone--06ec75368c8c1c1c28cc8e54.md) | 100 | `result-track:06ec75368c8c1c1c28cc8e54bce5bf21faa6f5cb9d9084358fc119e6dc3bce22` |
| 11 | `lemma` | [agmSequences_fst_monotone](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-fst-monotone--df40fa72ba24db3910e33861.md) | 110 | `result-track:df40fa72ba24db3910e33861112a6571350d47532422a5b6200987cac4f00ecb` |
| 12 | `lemma` | [agmSequences_snd_antitone](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-snd-antitone--48876ecae0565e9b11d52379.md) | 113 | `result-track:48876ecae0565e9b11d52379a7b811f459ae2e3ec53e310981ac4c2f06834053` |
| 13 | `lemma` | [agmSequences_fst_le_snd](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-fst-le-snd--af2594558e5180187e1bab62.md) | 116 | `result-track:af2594558e5180187e1bab62fa579fc484ab6e7f5dfc86e4ad3f53aa289d75e1` |
| 14 | `lemma` | [agmSequences_fst_lt_snd_of_ne](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-fst-lt-snd-of-ne--8879c1ae1483d4675c75a530.md) | 126 | `result-track:8879c1ae1483d4675c75a53030b133a3287fe76700c1b5381a228127ec64e24c` |
| 15 | `lemma` | [agmSequences_min_max](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-min-max--906fca6f0463bcc29e5702d1.md) | 139 | `result-track:906fca6f0463bcc29e5702d19a2002072b8aae874c62e2381111d9b37a20860a` |
| 16 | `lemma` | [dist_agmSequences_fst_snd](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/dist-agmsequences-fst-snd--ceafa1cf5f46cb6b771c7e86.md) | 144 | `result-track:ceafa1cf5f46cb6b771c7e863334c652bea0748423182a18441063601110aced` |
| 17 | `lemma` | [tendsto_dist_agmSequences_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/tendsto-dist-agmsequences-attop-zero--4e4ce48c01557f90dcbf89cf.md) | 154 | `result-track:4e4ce48c01557f90dcbf89cf675e12a8bd6e5d3d61ac811148387e7662e6c794` |
| 18 | `def` | [agm](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm--7b4ca86b72c1a28d87ca68f9.md) | 164 | `declaration-track:7b4ca86b72c1a28d87ca68f90687ae08d9ca00bcbb6e46667b7de628e63dccd9` |
| 19 | `lemma` | [agm_comm](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-comm--945d59fec3d224332d0da53b.md) | 167 | `result-track:945d59fec3d224332d0da53b3fb03053b1369e9ff4e968f560726a4cb2f9051c` |
| 20 | `lemma` | [agm_eq_ciInf](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-eq-ciinf--ab7f95bdf30640148d3869e2.md) | 173 | `result-track:ab7f95bdf30640148d3869e2fc3e8a4efa9ff5a83784f6721f4690194175ffb3` |
| 21 | `lemma` | [tendsto_agmSequences_snd_agm](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/tendsto-agmsequences-snd-agm--9041fa36363416cf543b41e2.md) | 175 | `result-track:9041fa36363416cf543b41e29576252e8465a7978cfd805aa709dad43f41a746` |
| 22 | `lemma` | [agm_le_agmSequences_snd](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-le-agmsequences-snd--c087cd418f32c6417d40d053.md) | 178 | `result-track:c087cd418f32c6417d40d05381a415c82ff864de3b244efa0636c1fd4fa464d6` |
| 23 | `lemma` | [agm_le_max](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-le-max--123cc6f21c9231697ca916d4.md) | 180 | `result-track:123cc6f21c9231697ca916d4c3c4711ffda5628cbc896cade170417de8131516` |
| 24 | `lemma` | [bddAbove_range_agmSequences_fst](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/bddabove-range-agmsequences-fst--f68b1d9c4d2e4700de25f1db.md) | 188 | `result-track:f68b1d9c4d2e4700de25f1db83656bfa2c9bb877fdb8cb2a99f828c3127b986f` |
| 25 | `lemma` | [agm_eq_ciSup](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-eq-cisup--93c1bd4b4198f1fbdb0bad37.md) | 195 | `result-track:93c1bd4b4198f1fbdb0bad373426c5566fcf8822eaeca80306cf2416a3725b12` |
| 26 | `lemma` | [tendsto_agmSequences_fst_agm](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/tendsto-agmsequences-fst-agm--2f22df1e351c02603960c00f.md) | 203 | `result-track:2f22df1e351c02603960c00f71f82b11c5ab50656e41068a5976041383b008d5` |
| 27 | `lemma` | [agmSequences_fst_le_agm](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-fst-le-agm--135b92043ddb73294883a639.md) | 208 | `result-track:135b92043ddb73294883a63937f6dcaf0047bbf1ac5d3d9fa7aa065127b8f371` |
| 28 | `lemma` | [min_le_agm](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/min-le-agm--94c9ceb34030074a4c77c2ab.md) | 212 | `result-track:94c9ceb34030074a4c77c2ab2c3baff5b51e48e3c24fb1592367733b8ed7b4dd` |
| 29 | `lemma` | [agm_self](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-self--dc07bc91a32b7a8638407a34.md) | 221 | `result-track:dc07bc91a32b7a8638407a340e45f50312e450a834bfc4b5cc0aa8b0dbc428dd` |
| 30 | `lemma` | [agm_zero_left](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-zero-left--7946e978fe8f3bf29f82554c.md) | 229 | `result-track:7946e978fe8f3bf29f82554ca8b9a334664d3823334e78daeaeca1862ba0fd07` |
| 31 | `lemma` | [agm_zero_right](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-zero-right--c81b5f6ac7d0a22d9f128437.md) | 238 | `result-track:c81b5f6ac7d0a22d9f128437b33052488e30458a8dacee2e304baa1a45c16941` |
| 32 | `lemma` | [agm_pos](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-pos--6c45e23eb20ee18694da5ea9.md) | 241 | `result-track:6c45e23eb20ee18694da5ea98e88a5c781e53bd3803e4af9c2be8295afd66b5e` |
| 33 | `lemma` | [agm_eq_agm_agmSequences_fst_agmSequences_snd](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-eq-agm-agmsequences-fst-agmsequences-snd--c4bb5f173db3a2a963631061.md) | 243 | `result-track:c4bb5f173db3a2a963631061ab8cbb3fe505c620579bb2890cb1e2c63c155b6f` |
| 34 | `lemma` | [agm_eq_agm_gm_am](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-eq-agm-gm-am--7a8c60f5699f95dc28e90a0f.md) | 250 | `result-track:7a8c60f5699f95dc28e90a0fb6159bfea4f383d00f212050050b1b1db17e1541` |
| 35 | `lemma` | [agmSequences_fst_lt_agm_of_pos_of_ne](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agmsequences-fst-lt-agm-of-pos-of-ne--c3fb2b806e6885289a747956.md) | 253 | `result-track:c3fb2b806e6885289a7479565092956650e3ba5ea0da6b238c73a868c60df832` |
| 36 | `lemma` | [agm_lt_agmSequences_snd_of_ne](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-lt-agmsequences-snd-of-ne--1002baa3b598512f6e69ac9f.md) | 265 | `result-track:1002baa3b598512f6e69ac9fc95e9d3cb665204b834179607a4ebffd8c98ce55` |
| 37 | `lemma` | [min_lt_agm_of_pos_of_ne](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/min-lt-agm-of-pos-of-ne--affa1c2bbb7dbf89eb63c7c6.md) | 275 | `result-track:affa1c2bbb7dbf89eb63c7c67ee08c3f0550bbb27abee12af60efc21c35b5690` |
| 38 | `lemma` | [agm_lt_max_of_ne](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-lt-max-of-ne--42427fbaed4f49861d842d1f.md) | 283 | `result-track:42427fbaed4f49861d842d1f4f19aa16043cc0b8b9bf007d63d468bdae2e4ccf` |
| 39 | `lemma` | [agm_mul_distrib](../../../../../mathematics/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/declarations/agm-mul-distrib--12919290591d36c40f136358.md) | 292 | `result-track:12919290591d36c40f136358e129217ab50678cc3f148dbb053d9fd995b654e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
