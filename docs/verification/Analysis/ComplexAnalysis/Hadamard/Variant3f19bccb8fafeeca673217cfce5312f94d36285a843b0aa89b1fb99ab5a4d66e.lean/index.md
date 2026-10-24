# Verification target: GRWTSK.Analysis.ComplexAnalysis.Hadamard.Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "374ba20fd7fa61465130ea23d60d0cfbf2b56112",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `374ba20fd7fa61465130ea23d60d0cfbf2b56112`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.PhragmenLindelof` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verticalStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/verticalstrip--437559907893485e69e8ebc9.md) | 75 | `declaration-track:437559907893485e69e8ebc90d0fba521624d82aad7cdb0bdce04f485a75e52a` |
| 2 | `def` | [verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/verticalclosedstrip--7baf5de27133c869dda2af75.md) | 78 | `declaration-track:7baf5de27133c869dda2af7591dbc7d60cf76ebafb39e63b5c08fad5ca939815` |
| 3 | `def` | [sSupNormIm](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/ssupnormim--00f7793690f6b0468c253abf.md) | 82 | `declaration-track:00f7793690f6b0468c253abf22b7df23993c2345a3e0b52f4716e8269e1f2b27` |
| 4 | `def` | [invInterpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/invinterpstrip--c7ef8fe9493800173d5bb79b.md) | 97 | `declaration-track:c7ef8fe9493800173d5bb79b90a1d00aac732ac45a5f420beab8b3e2bf697ae4` |
| 5 | `def` | [F](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/f--ef5c809682af6bbfd24ffcc3.md) | 101 | `declaration-track:ef5c809682af6bbfd24ffcc3edae8832bc5a5c78c33b966626254b4fd5d5e0a0` |
| 6 | `lemma` | [sSupNormIm_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/ssupnormim-nonneg--e7f70a7a80c7224a560687b5.md) | 104 | `result-track:e7f70a7a80c7224a560687b5011ff6c0c41d29ee4ad5c8669ddd3ae4abce9f61` |
| 7 | `lemma` | [sSupNormIm_eps_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/ssupnormim-eps-pos--51ecf14053c9ffe9cdbdaf50.md) | 111 | `result-track:51ecf14053c9ffe9cdbdaf50b17dff9e2d4e6dac888c06d40871c253e4faf4ae` |
| 8 | `lemma` | [norm_invInterpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-invinterpstrip--35365d6a91d2f124cb442abb.md) | 115 | `result-track:35365d6a91d2f124cb442abb3c2a44be17bb3bfd6e7d4ef1f04e706948dadd55` |
| 9 | `lemma` | [diffContOnCl_invInterpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/diffcontoncl-invinterpstrip--959a3e8202339006168c0a84.md) | 126 | `result-track:959a3e8202339006168c0a84b265ca8ac09c2deea8932ed19f2a41a0cd6c40f9` |
| 10 | `lemma` | [norm_le_sSupNormIm](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-le-ssupnormim--b151758b51c8568eddbde23d.md) | 140 | `result-track:b151758b51c8568eddbde23db1799b22ab78f1060b3210d1155ae58cf4a15636` |
| 11 | `lemma` | [norm_lt_sSupNormIm_eps](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-lt-ssupnormim-eps--5338c5867e8d36b0b5568e10.md) | 150 | `result-track:5338c5867e8d36b0b5568e1077d5607a8e96697c0df9d121a020a2a48454a52e` |
| 12 | `lemma` | [F_BddAbove](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/f-bddabove--d1f21091eb450807e6d8dbaf.md) | 158 | `result-track:d1f21091eb450807e6d8dbaf22816051f8377e7ca1cb60395e7099ef3bc64c4b` |
| 13 | `lemma` | [F_edge_le_one](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/f-edge-le-one--d025ef553a3899e203e12560.md) | 198 | `result-track:d025ef553a3899e203e125601f609f9673907e8ccbae844d01ae9904a9f23008` |
| 14 | `theorem` | [norm_mul_invInterpStrip_le_one_of_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-mul-invinterpstrip-le-one-of-mem-verticalclosedstrip--37e70ac698dedb6cea0c090b.md) | 218 | `result-track:37e70ac698dedb6cea0c090b9b8eab9bddcd52d9a55a0ee4e51fd4e71a8b2efa` |
| 15 | `def` | [interpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/interpstrip--fd12bba7fbabfb8ee8a72158.md) | 255 | `declaration-track:fd12bba7fbabfb8ee8a721589845dd808ae94d255a2f2fef961207eea436992b` |
| 16 | `lemma` | [interpStrip_eq_of_pos](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/interpstrip-eq-of-pos--7ed1c4346f368ffc40625aa0.md) | 261 | `result-track:7ed1c4346f368ffc40625aa09881b76ffe56bc0c80d33ad3e93c528c8ed2e52e` |
| 17 | `lemma` | [interpStrip_eq_of_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/interpstrip-eq-of-zero--a9d0bfacb4ff7dfcc95183bb.md) | 266 | `result-track:a9d0bfacb4ff7dfcc95183bb6a8d634dc8574bec2d443e45f6cb317257f91863` |
| 18 | `lemma` | [interpStrip_eq_of_mem_verticalStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/interpstrip-eq-of-mem-verticalstrip--0feea69e28827e2553c78585.md) | 271 | `result-track:0feea69e28827e2553c7858514ae0ea667521edae2f2af3673706a5f1b3b18e7` |
| 19 | `lemma` | [diffContOnCl_interpStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/diffcontoncl-interpstrip--9fb68b97d8585bb3c8055951.md) | 292 | `result-track:9fb68b97d8585bb3c805595127b7d21beb26aec33dff1dd6b75ad27243f4b76a` |
| 20 | `def` | [interpStrip'](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/interpstrip--b62fad34b506d09b5ac268d6.md) | 314 | `declaration-track:b62fad34b506d09b5ac268d69796309c53dace2e00ee5d1abd88a54530d2ca7a` |
| 21 | `def` | [scale](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/scale--7b150f879e1cf734c1d5ccb0.md) | 320 | `declaration-track:7b150f879e1cf734c1d5ccb0a005ae132c5834b9580015ba61ebcff67f08d378` |
| 22 | `lemma` | [scale_id_mem_verticalClosedStrip_of_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/scale-id-mem-verticalclosedstrip-of-mem-verticalclosedstrip--fdb37e3445733f9c515a4942.md) | 324 | `result-track:fdb37e3445733f9c515a49423fd6bf3e5a4c150f0a75dddc1cafa17f36e35365` |
| 23 | `lemma` | [scale_bddAbove](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/scale-bddabove--47020a6e430fe0d9716265f5.md) | 337 | `result-track:47020a6e430fe0d9716265f51a29622346f48739f79bac6e320c09b5123cdb80` |
| 24 | `lemma` | [scale_bound_left](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/scale-bound-left--288249c376cea129c258d3fe.md) | 355 | `result-track:288249c376cea129c258d3fec68e51b75cd55f67b8c35ce4a2ffdd871c719a70` |
| 25 | `lemma` | [scale_bound_right](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/scale-bound-right--b2eb50f050e743d024952047.md) | 363 | `result-track:b2eb50f050e743d02495204737d564512e48a31e14b4f1130dcb0b035e725d03` |
| 26 | `lemma` | [sSupNormIm_scale_left](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/ssupnormim-scale-left--1cf037784dcaf76064818b18.md) | 371 | `result-track:1cf037784dcaf76064818b187cbdbd46f6dbff4c4ebcc6a214d327366cc0ba74` |
| 27 | `lemma` | [sSupNormIm_scale_right](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/ssupnormim-scale-right--068c3d1f25a281a98edec54c.md) | 395 | `result-track:068c3d1f25a281a98edec54c04037709bce102dbe863b05a62f1606c6d9f8759` |
| 28 | `lemma` | [interpStrip_scale](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/interpstrip-scale--b8a2b083c7ee80ebcf40d59e.md) | 424 | `result-track:b8a2b083c7ee80ebcf40d59e8586b439788f2c2fc0b1e21a23a0eb7e6dafc1e4` |
| 29 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip_eps](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip-eps--57b6256e1d1bd6a091d979fd.md) | 431 | `result-track:57b6256e1d1bd6a091d979fdb605b7f5c454f8a340aee1204277a824545ec07b` |
| 30 | `lemma` | [eventuallyle](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/eventuallyle--2581fceed99c5897f3c9f06c.md) | 446 | `result-track:2581fceed99c5897f3c9f06c87be5cf37e498e4405f53f4c0bc2e0e2eb854e17` |
| 31 | `lemma` | [norm_le_interpStrip_of_mem_verticalStrip_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-le-interpstrip-of-mem-verticalstrip-zero--622e13066b29df4dc0711a25.md) | 454 | `result-track:622e13066b29df4dc0711a25334ab60cec39a31a669d29adad925412724b09c9` |
| 32 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip₀₁](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip--ccef9fcb02b548bf8c593d3f.md) | 497 | `result-track:ccef9fcb02b548bf8c593d3f4c250e5a897b17dddd7a87d514030f211d52df4b` |
| 33 | `lemma` | [norm_le_interp_of_mem_verticalClosedStrip₀₁'](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-le-interp-of-mem-verticalclosedstrip--7f1110ddb9132424b41880ad.md) | 511 | `result-track:7f1110ddb9132424b41880ad3567c467da9f7533abdc8ad11965c2df9c6ffeed` |
| 34 | `lemma` | [scale_id_mem_verticalStrip_of_mem_verticalStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/scale-id-mem-verticalstrip-of-mem-verticalstrip--3c8b3a281535e9d8b53b7e00.md) | 556 | `result-track:3c8b3a281535e9d8b53b7e00afcfbeb6384b1c2aa6365f4e995b120eed2fc1e4` |
| 35 | `lemma` | [mem_verticalClosedStrip_of_scale_id_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/mem-verticalclosedstrip-of-scale-id-mem-verticalclosedstrip--ab8ece65587f7146553139d4.md) | 571 | `result-track:ab8ece65587f7146553139d4208157bf63d6d28d62b21b6c4912ba1f54e5ef07` |
| 36 | `lemma` | [scale_diffContOnCl](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/scale-diffcontoncl--23c155e10ccf824cad2cc949.md) | 589 | `result-track:23c155e10ccf824cad2cc949d5b6f37169abeb59c0f0311941480611694b8f19` |
| 37 | `lemma` | [fun_arg_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/fun-arg-eq--02b7f662589db865ff023807.md) | 602 | `result-track:02b7f662589db865ff023807e8061de5f1e7d278fef610abe25ad6e6cdfa5209` |
| 38 | `lemma` | [bound_exp_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/bound-exp-eq--b0648aaec949f8a597000f5d.md) | 609 | `result-track:b0648aaec949f8a597000f5d5488033e687f61e6087935de56c90038c410fa23` |
| 39 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip--f0926eb83150894740491fee.md) | 625 | `result-track:f0926eb83150894740491feeab9f2c863f9610683120c677f98dbcdeed20f1ca` |
| 40 | `lemma` | [norm_le_interp_of_mem_verticalClosedStrip'](../../../../../mathematics/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/declarations/norm-le-interp-of-mem-verticalclosedstrip--1f01e62699eebf81fd1904e3.md) | 644 | `result-track:1f01e62699eebf81fd1904e39b7d33c13d0b67741bad5b721e730b3f630b925e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
