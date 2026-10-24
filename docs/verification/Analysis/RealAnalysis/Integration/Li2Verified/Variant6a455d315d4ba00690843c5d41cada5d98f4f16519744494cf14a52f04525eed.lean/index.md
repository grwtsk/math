# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Li2Verified.Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Examples.Li2Bounds` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.IntegrationDyadic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [li2DyadicConfig](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/li2dyadicconfig--7ef18e86597fcceea36cc132.md) | 65 | `declaration-track:7ef18e86597fcceea36cc13201a4afe2e1a22a444c3d57157cd1496ec45c074e` |
| 2 | `def` | [checkIntegralLowerBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/checkintegrallowerbound--333f14f4cb52e1fce14f68aa.md) | 71 | `declaration-track:333f14f4cb52e1fce14f68aa03a96e1f5ab8369eef3e0fa00cc4b7b41fb985a9` |
| 3 | `def` | [checkIntegralUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/checkintegralupperbound--db96fd2ce542c100e9676fe3.md) | 77 | `declaration-track:db96fd2ce542c100e9676fe3b847e4efaf06beb473f27d31d0a6043363deb604` |
| 4 | `theorem` | [integral_lower_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/integral-lower-of-check--60a4047857bbcb3eda084a63.md) | 83 | `result-track:60a4047857bbcb3eda084a63945ea1ad7254c677983906f5aa2e03bea46d0b0c` |
| 5 | `theorem` | [integral_upper_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/integral-upper-of-check--4cff56784953ba39df10f929.md) | 99 | `result-track:4cff56784953ba39df10f9297cbb3002339ad5e6f31e315dc7373621c193bfcd` |
| 6 | `def` | [g_expr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-expr--9c035e6d3ec2cc07fee4510d.md) | 119 | `declaration-track:9c035e6d3ec2cc07fee4510dff2d5a8b1f209f47341eeb985524f5e120062721` |
| 7 | `theorem` | [g_expr_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-expr-supported--69f4febe0f4a6b2ae90ac4c8.md) | 124 | `result-track:69f4febe0f4a6b2ae90ac4c8801b3b78d51e21586a79cfb3184b9ff9bf5f70b3` |
| 8 | `theorem` | [g_expr_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-expr-eval--b28f87f964db0511f652838b.md) | 139 | `result-track:b28f87f964db0511f652838bfcf6e15f5b2c1a0289f93aae17a657714350124b` |
| 9 | `def` | [g_alt_expr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-expr--432dfb9a6769539a2a75a0cd.md) | 150 | `declaration-track:432dfb9a6769539a2a75a0cd33f7c5125a11d8c17da7765e9ef50943b3c82f16` |
| 10 | `theorem` | [g_alt_expr_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-expr-supported--0a851887ff5fa51e27bae723.md) | 159 | `result-track:0a851887ff5fa51e27bae7234e7875ed210f60bb04e765aa5a60882bca72d3ec` |
| 11 | `theorem` | [g_alt_expr_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-expr-eval--225a28c8d6281bcd12ff25ad.md) | 181 | `result-track:225a28c8d6281bcd12ff25ad9257fe7355d3da40e5dcf26441a79c0fc8400763` |
| 12 | `theorem` | [log_2_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/log-2-lt--eb34068fc4c51c8cd704a138.md) | 197 | `result-track:eb34068fc4c51c8cd704a1381125402bc7ca03f7faf8ce3119193b36471fe80b` |
| 13 | `theorem` | [log_2_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/log-2-gt--98ee6a63315ef6d9031692bd.md) | 208 | `result-track:98ee6a63315ef6d9031692bd528ad647b1ea399c2b00d346f324807bbe12a396` |
| 14 | `theorem` | [log_10_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/log-10-gt--feb13ddcd4a7bdc5e2d1f73e.md) | 219 | `result-track:feb13ddcd4a7bdc5e2d1f73ebd38776a86a1c51125990cfc2714178dd8639a55` |
| 15 | `theorem` | [inv_log_2_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/inv-log-2-gt--6047217ba9ac0a2a925ddb24.md) | 230 | `result-track:6047217ba9ac0a2a925ddb2418377cca46cf8c06d93c74c0e6715b147bd67c5c` |
| 16 | `theorem` | [g_lower_near_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-lower-near-one--39c04939ad9835885311baca.md) | 252 | `result-track:39c04939ad9835885311baca654ee163630ee0597d363e2ded4de92750721149` |
| 17 | `theorem` | [g_integral_tail_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-integral-tail-upper--f865361877b4c24a94283aac.md) | 305 | `result-track:f865361877b4c24a94283aac3946411ca54ba165dcf963919518338d2f8214f9` |
| 18 | `theorem` | [g_integral_right_tail_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-integral-right-tail-upper--46fd8e011ccab3c5025a1474.md) | 344 | `result-track:46fd8e011ccab3c5025a1474791d815445515dfc480a413a8b4f494675fbe5c9` |
| 19 | `theorem` | [li2_decomposition](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/li2-decomposition--855c840df29f28e95ba20ab4.md) | 388 | `result-track:855c840df29f28e95ba20ab497904e6c478236b5b326595d3c3985ab41638bfd` |
| 20 | `theorem` | [integral_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/integral-lower-bound--0fc0add16d49a411f8a34a0f.md) | 452 | `result-track:0fc0add16d49a411f8a34a0f9fe6e12c707ceb1b3f994076e65a69ff2f285725` |
| 21 | `theorem` | [integral_upper_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/integral-upper-bound--88fbc7c2a0402c5f36452729.md) | 464 | `result-track:88fbc7c2a0402c5f3645272924c7e10797efa6d9b9a6a0fcc26e5b61db6d7126` |
| 22 | `def` | [g_mid_interval_main](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-mid-interval-main--97782315bdca70a0148ebfba.md) | 478 | `declaration-track:97782315bdca70a0148ebfba7739f3120b4373d4ceaf47dde2fff4aa3e6ecb24` |
| 23 | `theorem` | [g_intervalIntegrable_main](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-intervalintegrable-main--61db74c9d04e252d014d105c.md) | 480 | `result-track:61db74c9d04e252d014d105c31a221881576d6754136b71255fe47dbd8e10d48` |
| 24 | `theorem` | [g_alt_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-integral-eq--162c03ad29ebf57adea357e4.md) | 490 | `result-track:162c03ad29ebf57adea357e45efa3b64ff3d6467102fa2589b01eff02d413586` |
| 25 | `theorem` | [g_alt_intervalIntegrable_main](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-intervalintegrable-main--36e82954450539ab5f42891c.md) | 503 | `result-track:36e82954450539ab5f42891c14be310201625677ddd78fd0df6dd9dbe9102f93` |
| 26 | `theorem` | [g_mid_integral_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-mid-integral-lower--60c10afb71e6ca75f6483e02.md) | 552 | `result-track:60c10afb71e6ca75f6483e02bc1d3a90c88b066cc78343d3268ce779d3cbbf23` |
| 27 | `theorem` | [g_mid_integral_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-mid-integral-upper--484946544cc1e36ea331ef34.md) | 572 | `result-track:484946544cc1e36ea331ef340fdc1b2bfdac2d22419a6b76fe73e201fc2e90d2` |
| 28 | `theorem` | [g_integral_00_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-integral-00-lower--09a04ccb35f3a376b7f07658.md) | 592 | `result-track:09a04ccb35f3a376b7f076583879f4d8de78525ee10b99416095dd49ff6e5225` |
| 29 | `theorem` | [g_integral_01_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-integral-01-lower--708a5ab7321f0b6c0f9fda9a.md) | 621 | `result-track:708a5ab7321f0b6c0f9fda9a1dbadbe8af8e8cecb8ee954b39b44bb73404f43e` |
| 30 | `def` | [g_interval_12](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-interval-12--1f744730a6034bca25c0cdd9.md) | 630 | `declaration-track:1f744730a6034bca25c0cdd97aef05ddab735a1f6e3f04f503bbdfa83370f400` |
| 31 | `theorem` | [g_alt_integral_eq_12](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-integral-eq-12--52e61af09ef8daa03e6c99d0.md) | 633 | `result-track:52e61af09ef8daa03e6c99d043a9f8228ece423118f1528336bfbb0f889dd5f8` |
| 32 | `theorem` | [g_alt_intervalIntegrable_12](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-intervalintegrable-12--f7d8242f42925e99554be580.md) | 645 | `result-track:f7d8242f42925e99554be5801056baf61ca0dadac0d5efbf305f933ef94c68f5` |
| 33 | `theorem` | [g_integral_12_lower_numerical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-integral-12-lower-numerical--5d8f3d2b9dab23d969a7147b.md) | 661 | `result-track:5d8f3d2b9dab23d969a7147b7b15070918086b5c7606abb46c36872efba6263e` |
| 34 | `def` | [g_interval_45](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-interval-45--12bbb2bc811e9d4511cd78a1.md) | 677 | `declaration-track:12bbb2bc811e9d4511cd78a1f0adcf0664baab97386f377bb8576145981ca5ee` |
| 35 | `theorem` | [g_alt_integral_eq_45](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-integral-eq-45--ab578a765df48f42c6fae110.md) | 680 | `result-track:ab578a765df48f42c6fae1102cf542c787368799a07424a028d78226b2b1d4cd` |
| 36 | `theorem` | [g_alt_intervalIntegrable_45](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-intervalintegrable-45--04a0ff94d6194803b54ef441.md) | 692 | `result-track:04a0ff94d6194803b54ef441f54242a886f3603de64f16b153a20c36d29d251d` |
| 37 | `theorem` | [g_integral_45_lower_numerical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-integral-45-lower-numerical--667a895adab78810596121a0.md) | 708 | `result-track:667a895adab78810596121a04bef1caf375a79fad3f67b2c192077228e60de38` |
| 38 | `def` | [g_interval_56](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-interval-56--ff001bb88fa4e17b1457ddf0.md) | 724 | `declaration-track:ff001bb88fa4e17b1457ddf05687f31d2d18b4f2e666e4889ad18f4489b1aa2b` |
| 39 | `theorem` | [g_alt_integral_eq_56](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-integral-eq-56--9e0d20aeaaf1180c8b772c18.md) | 727 | `result-track:9e0d20aeaaf1180c8b772c18e60e3aa3bcbfd6f0de9539ac0c71fd0a4707b21f` |
| 40 | `theorem` | [g_alt_intervalIntegrable_56](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-intervalintegrable-56--5ff81f7408c08fd84d5cf067.md) | 739 | `result-track:5ff81f7408c08fd84d5cf0672e9a65ebd699afa4682384c820ccb02e681cbdcc` |
| 41 | `theorem` | [g_integral_56_lower_numerical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-integral-56-lower-numerical--baeb60e00b19d1034aa218a8.md) | 755 | `result-track:baeb60e00b19d1034aa218a8db5f76e5ac02adb89df4fcf2f21652aa9ae36588` |
| 42 | `def` | [g_interval_01](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-interval-01--fe49c7728f1f2b91f7af58b1.md) | 771 | `declaration-track:fe49c7728f1f2b91f7af58b1b070d15b5f00395f127890451ab11c9e3782a8cc` |
| 43 | `theorem` | [g_alt_integral_eq_01](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-integral-eq-01--a1041938bbb17615c74960fb.md) | 774 | `result-track:a1041938bbb17615c74960fb08898a818f2e953f1cd4700bdf078f6a867767c7` |
| 44 | `theorem` | [g_alt_intervalIntegrable_01](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-alt-intervalintegrable-01--387af285da377a8276faddda.md) | 786 | `result-track:387af285da377a8276fadddaf5085a44f9e23c8149f1e47320f32ff29caf235a` |
| 45 | `theorem` | [g_integral_01_lower_numerical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-integral-01-lower-numerical--07cdc53fadba65a69a7edd18.md) | 802 | `result-track:07cdc53fadba65a69a7edd184eb566b5b3a9be1b14319cdfc07a556dc856f2aa` |
| 46 | `theorem` | [g_integral_67_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/g-integral-67-lower--e522396702f6a530a331d109.md) | 818 | `result-track:e522396702f6a530a331d109a22dbf1054c7c576ea55c0752a69a66e881907bf` |
| 47 | `theorem` | [li2_bounds_verified](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/li2-bounds-verified--1826ba9f5f2c00847c640e6a.md) | 856 | `result-track:1826ba9f5f2c00847c640e6aa26a10510ed1e1a31564d4dfc4a64a4f8fc8c258` |
| 48 | `theorem` | [li2_lower_verified](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/li2-lower-verified--a636ea054004552f7888d0de.md) | 920 | `result-track:a636ea054004552f7888d0de976ad16d56bcfc519a295abba7027ba7c9a4351a` |
| 49 | `theorem` | [li2_upper_verified](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/li2-upper-verified--fe46e58eba00dfb68fd41d67.md) | 923 | `result-track:fe46e58eba00dfb68fd41d67b8f94862a5490456b52fbde39d1b068a026ff4da` |
| 50 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/example--7bfe8f49083bf40e736a555e.md) | 932 | `declaration-track:7bfe8f49083bf40e736a555e2e74983766fc6d25ad807eaf45064b1660e4e1f8` |
| 51 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/declarations/example--e64d2325cd90b7081e831f4e.md) | 935 | `declaration-track:e64d2325cd90b7081e831f4ea882d53ac44dbac082a2073b68b21763020aa5e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
