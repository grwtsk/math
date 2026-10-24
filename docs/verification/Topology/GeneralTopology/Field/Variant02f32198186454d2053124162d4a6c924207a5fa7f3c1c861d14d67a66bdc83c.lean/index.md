# Verification target: GRWTSK.Topology.GeneralTopology.Field.Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60ab5abb8dd93a16e1a6aaec717a1b452e14d83c",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60ab5abb8dd93a16e1a6aaec717a1b452e14d83c`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_const_mul_atTop_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-attop-of-pos--049d46b0937b20fe964bf637.md) | 36 | `result-track:049d46b0937b20fe964bf6376434eb8c2617350c5f55985e3f605c2ce7c6b8fa` |
| 2 | `theorem` | [tendsto_mul_const_atTop_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-attop-of-pos--9fcfbc6628a78e1f11f76590.md) | 43 | `result-track:9fcfbc6628a78e1f11f76590e777a268e2f6a5c490d528544b03aa4cadbbeb89` |
| 3 | `lemma` | [tendsto_div_const_atTop_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-attop-of-pos--f55581612bcfd880dbc9a0c7.md) | 49 | `result-track:f55581612bcfd880dbc9a0c78158b71800e098bd9cd4a23b01d1b091e2e02ee6` |
| 4 | `theorem` | [tendsto_const_mul_atTop_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-attop-iff-pos--778f2c92ec4a19766b472381.md) | 55 | `result-track:778f2c92ec4a19766b472381f066823d9539715b49bd23096a615867877b2adf` |
| 5 | `theorem` | [tendsto_mul_const_atTop_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-attop-iff-pos--68844133d62927d26faa1edb.md) | 63 | `result-track:68844133d62927d26faa1edb9ce893112931e6199a193fea326c8c4b4d1eb37b` |
| 6 | `lemma` | [tendsto_div_const_atTop_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-attop-iff-pos--3e6770f37e8b89dc46392450.md) | 69 | `result-track:3e6770f37e8b89dc463924508dfa227c42291948b38f4c1100e0b89aa2c6351e` |
| 7 | `theorem` | [Tendsto.const_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-attop--9190a7177980557fc5532fde.md) | 76 | `result-track:9190a7177980557fc5532fde1ae7fcfdd6b51dee681b3ab6e7df0485038fe894` |
| 8 | `theorem` | [Tendsto.atTop_mul_const](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-attop-mul-const--091005be3529e0c521698f1d.md) | 83 | `result-track:091005be3529e0c521698f1d6f132b6327f230bb1081771c76f4957c3aea5bd7` |
| 9 | `theorem` | [Tendsto.atTop_div_const](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-attop-div-const--9ff1d9c411c6897e30bf2bf2.md) | 89 | `result-track:9ff1d9c411c6897e30bf2bf2c38c3838c7812293f27931a606dea77da1bd27de` |
| 10 | `theorem` | [tendsto_const_mul_pow_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-pow-attop--f556db41420dea0e58169f0f.md) | 93 | `result-track:f556db41420dea0e58169f0fd381d3b2b3314867dc8b9b87947c5313adf41d1e` |
| 11 | `theorem` | [tendsto_const_mul_pow_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-pow-attop-iff--ad352a4381570bd76d6cc4b6.md) | 97 | `result-track:ad352a4381570bd76d6cc4b6d9b0cafe9674171f460d804375fef4ad9ecd948f` |
| 12 | `lemma` | [tendsto_zpow_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-zpow-attop-attop--a3a6dee41614cebff0201358.md) | 105 | `result-track:a3a6dee41614cebff0201358d64d59193bc82492631ca7f81d9876c5aaa86cc5` |
| 13 | `theorem` | [tendsto_const_mul_atBot_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-atbot-of-pos--8201215779034d15a00a3290.md) | 118 | `result-track:8201215779034d15a00a329005239137ddd9aeb5327548bc5c4f17d2315ec8eb` |
| 14 | `theorem` | [tendsto_mul_const_atBot_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-atbot-of-pos--2f599e43e6d5502322c44b4a.md) | 124 | `result-track:2f599e43e6d5502322c44b4ae012f974144bae17742db3c5240e35e64a8c8e7e` |
| 15 | `lemma` | [tendsto_div_const_atBot_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-atbot-of-pos--03d1621d5440e55575e9964d.md) | 130 | `result-track:03d1621d5440e55575e9964d57e19345697c84f3cdc4cc755d71673617aa5e47` |
| 16 | `theorem` | [tendsto_const_mul_atTop_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-attop-of-neg--697f5704705fae6590c8c5b5.md) | 136 | `result-track:697f5704705fae6590c8c5b5616fe5a801b33a01bc27fcb97c905877e17f2765` |
| 17 | `theorem` | [tendsto_mul_const_atTop_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-attop-of-neg--5e94a98b278b548797b2dbfd.md) | 142 | `result-track:5e94a98b278b548797b2dbfd3d2d359ac688f0eeb2a26f9051f538f5fd5825cc` |
| 18 | `lemma` | [tendsto_div_const_atTop_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-attop-of-neg--41e956f59bae592e74877e47.md) | 148 | `result-track:41e956f59bae592e74877e47ebd69c9b9cc8091cf960822de82d6e4c366c8764` |
| 19 | `theorem` | [tendsto_const_mul_atBot_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-atbot-of-neg--ed7aad914df2f3e1d5a9dffb.md) | 154 | `result-track:ed7aad914df2f3e1d5a9dffbe57764080b3acbeaf9e640437b016b237fbb261c` |
| 20 | `theorem` | [tendsto_mul_const_atBot_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-atbot-of-neg--a4d9459df9d0da8fb70bb801.md) | 160 | `result-track:a4d9459df9d0da8fb70bb801be0c764216053d337df0b736a0530d78dde459f6` |
| 21 | `lemma` | [tendsto_div_const_atBot_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-atbot-of-neg--9afbf3991d77b13585bf447f.md) | 166 | `result-track:9afbf3991d77b13585bf447f5d6654c9af9b8afd4e53d109d58d436abf1f2f06` |
| 22 | `theorem` | [tendsto_const_mul_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-attop-iff--938dc788e3c7b09b6f362527.md) | 172 | `result-track:938dc788e3c7b09b6f362527b48c8b3ed041283a174eafa6de2d609d4701cae7` |
| 23 | `theorem` | [tendsto_mul_const_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-attop-iff--1deee1b3e1363ba787e0128f.md) | 181 | `result-track:1deee1b3e1363ba787e0128fcdbb2976866e44dc6c2a2233811816bef3f3fc1d` |
| 24 | `lemma` | [tendsto_div_const_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-attop-iff--22666c5894b310251468289e.md) | 187 | `result-track:22666c5894b310251468289e1ac35bb2e07fa614c063829fd03170181a6163b0` |
| 25 | `theorem` | [tendsto_const_mul_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-atbot-iff--55309c9d26f01e1e73f32749.md) | 193 | `result-track:55309c9d26f01e1e73f32749af3d1c194ce52b5ed103bb401fa1bee8164e8125` |
| 26 | `theorem` | [tendsto_mul_const_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-atbot-iff--8128e241ba356b74dbe92feb.md) | 199 | `result-track:8128e241ba356b74dbe92febbac3b803ac61e957904524f77ece1cb345f91843` |
| 27 | `lemma` | [tendsto_div_const_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-atbot-iff--536e01828f851a17993b9dc5.md) | 205 | `result-track:536e01828f851a17993b9dc59ada20b3b5e0dcf2f0c048c83bd66431c2570ff5` |
| 28 | `theorem` | [tendsto_const_mul_atTop_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-attop-iff-neg--2133f94a074a1ec3c0c13e30.md) | 211 | `result-track:2133f94a074a1ec3c0c13e30a4e054414ec481d6a79a17989f83f4f00bf26bff` |
| 29 | `theorem` | [tendsto_mul_const_atTop_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-attop-iff-neg--aa497f3a9835f10792befea0.md) | 217 | `result-track:aa497f3a9835f10792befea048f15bae1f8f02e1b9920f7cf58ebcbb53d63b88` |
| 30 | `lemma` | [tendsto_div_const_atTop_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-attop-iff-neg--131ba44d6f98f7b1bb438e3c.md) | 223 | `result-track:131ba44d6f98f7b1bb438e3cd05aeeef61dad17af927b8be5adc97f920a593f7` |
| 31 | `theorem` | [tendsto_const_mul_atBot_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-atbot-iff-pos--867d7a508bb3e9aa3bc3338f.md) | 229 | `result-track:867d7a508bb3e9aa3bc3338f0e10d63c95ca327ac91ec13a8e1fccd0931f8787` |
| 32 | `theorem` | [tendsto_mul_const_atBot_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-atbot-iff-pos--217d02b5f27e2bce315e65f9.md) | 235 | `result-track:217d02b5f27e2bce315e65f9a15ad7ae2afefa8842579834eb7d68c8ae87f94a` |
| 33 | `lemma` | [tendsto_div_const_atBot_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-atbot-iff-pos--393c2d9d8a8e150610eeb29e.md) | 241 | `result-track:393c2d9d8a8e150610eeb29ee267e9121d36d40f6f1839498db6f4b148536289` |
| 34 | `theorem` | [tendsto_const_mul_atBot_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-atbot-iff-neg--70d7a845407ff4cc641df7bc.md) | 247 | `result-track:70d7a845407ff4cc641df7bcbd05154aad550fd9b33ebdc03ab56eb789abc54d` |
| 35 | `theorem` | [tendsto_mul_const_atBot_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-mul-const-atbot-iff-neg--d48e26cf7b321dbd0cd84aa7.md) | 253 | `result-track:d48e26cf7b321dbd0cd84aa7bad38cf9fc9ff3d7a3f4f8ba28b76b12a1d18bbc` |
| 36 | `lemma` | [tendsto_div_const_atBot_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-div-const-atbot-iff-neg--51b2cd578f38fb334cfd9093.md) | 259 | `result-track:51b2cd578f38fb334cfd909319a0f83af6d7944ef96dddfaf796a288246b7349` |
| 37 | `theorem` | [Tendsto.const_mul_atTop_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-attop-of-neg--9778dfbf8096e1d9535a0d76.md) | 265 | `result-track:9778dfbf8096e1d9535a0d762c4d1f0006288f94cf403138ed067cfe92a720a6` |
| 38 | `theorem` | [Tendsto.atTop_mul_const_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-attop-mul-const-of-neg--9e4f16d5d8136de38da19203.md) | 271 | `result-track:9e4f16d5d8136de38da19203add0193e5543cc14bffce3cdd40f8e3cc138ef55` |
| 39 | `lemma` | [Tendsto.atTop_div_const_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-attop-div-const-of-neg--0c148937233d3bba49c86144.md) | 277 | `result-track:0c148937233d3bba49c8614453bb8db181f81d7ea2a1144c320e0f8bcf7d10e6` |
| 40 | `theorem` | [Tendsto.const_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-atbot--188c52968f40f53bb922f56d.md) | 282 | `result-track:188c52968f40f53bb922f56d3dd6dc34f8d2ca2eb6bfcc05177bceda8f48ded3` |
| 41 | `theorem` | [Tendsto.atBot_mul_const](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-atbot-mul-const--689eed978abacd036242333d.md) | 288 | `result-track:689eed978abacd036242333d1cab3777b3ee3875a21912b09fe651535840aeeb` |
| 42 | `theorem` | [Tendsto.atBot_div_const](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-atbot-div-const--e58248a2233126cf2ca176da.md) | 294 | `result-track:e58248a2233126cf2ca176daf527f36454922ebffa250f26d426fb55f0dade1d` |
| 43 | `theorem` | [Tendsto.const_mul_atBot_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-atbot-of-neg--74703f6437179baee8c29bb4.md) | 299 | `result-track:74703f6437179baee8c29bb49fa7390232ffcf6a7738eef4aa6a2f29711dcd8f` |
| 44 | `theorem` | [Tendsto.atBot_mul_const_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-atbot-mul-const-of-neg--59de8bf5f65ed3d8c077888a.md) | 305 | `result-track:59de8bf5f65ed3d8c077888af5e1080fa72ec49ce2c38f82d29bbef7a7ba9e05` |
| 45 | `theorem` | [tendsto_neg_const_mul_pow_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-neg-const-mul-pow-attop--b4fd091d46e60f79cc42a9e2.md) | 309 | `result-track:b4fd091d46e60f79cc42a9e2dfe62fb8c25360caa93377de300ed2991bf726a2` |
| 46 | `theorem` | [tendsto_const_mul_pow_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant02f32198186454d2053124162d4a6c924207a5fa7f3c1c861d14d67a66bdc83c.lean/declarations/tendsto-const-mul-pow-atbot-iff--7d593b779381e8b77f1f1aa8.md) | 313 | `result-track:7d593b779381e8b77f1f1aa8ebd2a19847cbf62e5f36aeb039bceafa6b0207a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
