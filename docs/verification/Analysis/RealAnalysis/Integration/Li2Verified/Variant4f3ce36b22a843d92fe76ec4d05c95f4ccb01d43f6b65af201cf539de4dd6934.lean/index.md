# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Li2Verified.Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8eb251967f2b49e0bad95e0d200c55fb0536be4",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8eb251967f2b49e0bad95e0d200c55fb0536be4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Examples.Li2Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.IntegrationDyadic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [li2DyadicConfig](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/li2dyadicconfig--291335576d23f0ab7c8ce7eb.md) | 57 | `declaration-track:291335576d23f0ab7c8ce7eb80997a50386de829a2bcd1e2645ab43362d968ed` |
| 2 | `def` | [checkIntegralLowerBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/checkintegrallowerbound--28afe2d6517a7a10340634e4.md) | 63 | `declaration-track:28afe2d6517a7a10340634e4fd62200b9bb614171c618bf9c78dca7f0c3523af` |
| 3 | `def` | [checkIntegralUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/checkintegralupperbound--16ced5c33e012c7c1b884b78.md) | 69 | `declaration-track:16ced5c33e012c7c1b884b789f120ed6e76726c05c27c1baec0338764fa4eccc` |
| 4 | `theorem` | [integral_lower_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/integral-lower-of-check--7dadb759c28b48367bab7346.md) | 75 | `result-track:7dadb759c28b48367bab7346461676b8bded2f991d20e576e495346a0781a6a0` |
| 5 | `theorem` | [integral_upper_of_check](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/integral-upper-of-check--cbcbb6678d1784ebc803de56.md) | 91 | `result-track:cbcbb6678d1784ebc803de5694ae40c66e702a092782aa218b9a03e44c28af36` |
| 6 | `def` | [g_expr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-expr--601da638e7f2537d1c1b92e5.md) | 111 | `declaration-track:601da638e7f2537d1c1b92e5a7a578464dd283a5df832ec77b1c4e9f23bd6303` |
| 7 | `theorem` | [g_expr_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-expr-supported--d621086e6d491987c62bc461.md) | 116 | `result-track:d621086e6d491987c62bc46151efb2e3cdd50f0109fba5fa8de9663eefa16e93` |
| 8 | `theorem` | [g_expr_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-expr-eval--d5763e4eabd66e82a5768c85.md) | 131 | `result-track:d5763e4eabd66e82a5768c850aaf65faab9ddd86f2dc70696dd2b40ca654a393` |
| 9 | `def` | [g_alt_expr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-expr--665da5b12af2e1f3f423ea33.md) | 142 | `declaration-track:665da5b12af2e1f3f423ea330596d9ba28d908163556697d8afac9922ec998d6` |
| 10 | `theorem` | [g_alt_expr_supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-expr-supported--984a7c203a5a935974d720f9.md) | 151 | `result-track:984a7c203a5a935974d720f973aa7a27c136bee33b184f31e8689f94bb182840` |
| 11 | `theorem` | [g_alt_expr_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-expr-eval--4c1336e041d7b5b809a291b7.md) | 173 | `result-track:4c1336e041d7b5b809a291b710c0da37ce1aee326c553a66509c2e062846bbf6` |
| 12 | `theorem` | [log_2_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/log-2-lt--e952d65a624f83ef47c3116f.md) | 189 | `result-track:e952d65a624f83ef47c3116f2116479775b33974eb029570cad08e66c9315b3b` |
| 13 | `theorem` | [log_2_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/log-2-gt--fa3f1afc6ce4d4f49837d83d.md) | 200 | `result-track:fa3f1afc6ce4d4f49837d83dfd92ef6afd16eaced6648e391bfde5c3140205cd` |
| 14 | `theorem` | [log_10_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/log-10-gt--33e1748217f74345ad1f4b72.md) | 211 | `result-track:33e1748217f74345ad1f4b72282a643dff062c3d02b31bf01e52ef82d8cf5ebb` |
| 15 | `theorem` | [inv_log_2_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/inv-log-2-gt--52b78da2499896ac72bf4483.md) | 222 | `result-track:52b78da2499896ac72bf4483fb2807ded18e305f24c99b809d019a03f6864f14` |
| 16 | `theorem` | [g_lower_near_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-lower-near-one--05c57c1a0ea282bbdc8b61e8.md) | 244 | `result-track:05c57c1a0ea282bbdc8b61e8d40977449ce971d92d6e6d7ae6e80b5cd7ea1194` |
| 17 | `theorem` | [g_integral_tail_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-integral-tail-upper--9fc9374b175a56ae7a5455d4.md) | 297 | `result-track:9fc9374b175a56ae7a5455d43a6e89027b5099726e67dea461a75a05679bac86` |
| 18 | `theorem` | [g_integral_right_tail_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-integral-right-tail-upper--36df102f6afa7a22c600bec2.md) | 336 | `result-track:36df102f6afa7a22c600bec2f2fd98ca916d23f55a09e05a43eb1ee37d370238` |
| 19 | `theorem` | [li2_decomposition](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/li2-decomposition--0ab3d592f97ee5cb23cd891b.md) | 380 | `result-track:0ab3d592f97ee5cb23cd891bad2eb3f4f4b689c94886d23aaa059f9820d112eb` |
| 20 | `theorem` | [integral_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/integral-lower-bound--4c8a94ff72de68372960ff00.md) | 444 | `result-track:4c8a94ff72de68372960ff00fd9eda0c8138b291c38fe20854c5711ab3490c6a` |
| 21 | `theorem` | [integral_upper_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/integral-upper-bound--3f6675380ffef60249296226.md) | 456 | `result-track:3f6675380ffef60249296226fb8b8b5e7b3c2af04d6dfb68716a2fd49f431178` |
| 22 | `def` | [g_mid_interval_main](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-mid-interval-main--96f21f561ed14b9f249f3fcc.md) | 470 | `declaration-track:96f21f561ed14b9f249f3fcc2c7cf44fe6dfb70b27ea21f1be1f3d2c378295e1` |
| 23 | `theorem` | [g_intervalIntegrable_main](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-intervalintegrable-main--83be28db02c3392e2ee9faf5.md) | 472 | `result-track:83be28db02c3392e2ee9faf508b03588087c11e8777c105d45882b4181140653` |
| 24 | `theorem` | [g_alt_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-integral-eq--13ff5d9e2704f7791f8081f0.md) | 482 | `result-track:13ff5d9e2704f7791f8081f069337023d9d07f1dbc3feb3d1a53e4e7aea99d60` |
| 25 | `theorem` | [g_alt_intervalIntegrable_main](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-intervalintegrable-main--fe87ad959d209747527868f1.md) | 495 | `result-track:fe87ad959d209747527868f12e17a756b1c443287f3619235806a409a445c322` |
| 26 | `theorem` | [g_mid_integral_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-mid-integral-lower--f3d27897029fa956507bd4db.md) | 544 | `result-track:f3d27897029fa956507bd4db1eceb7133e972d2262cef173c89a2f49ff29e862` |
| 27 | `theorem` | [g_mid_integral_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-mid-integral-upper--5f450dd91c41c9ac50cabaea.md) | 564 | `result-track:5f450dd91c41c9ac50cabaea457966d2c38ed9dce209970e12f3cdf6473eba2d` |
| 28 | `theorem` | [g_integral_00_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-integral-00-lower--8682ff8ba7190badc259b972.md) | 584 | `result-track:8682ff8ba7190badc259b9721d110d74c3e8f2d09369938e453de13a19a74e9d` |
| 29 | `theorem` | [g_integral_01_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-integral-01-lower--db1ef6b33e52ca98c3898922.md) | 613 | `result-track:db1ef6b33e52ca98c389892281e9194082e7563a162992d17103e14772ae7c48` |
| 30 | `def` | [g_interval_12](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-interval-12--b3e249df4dc1becaa4a47b1e.md) | 622 | `declaration-track:b3e249df4dc1becaa4a47b1ea4de2879464d17334568e6b4ebd6aef089dbc6c5` |
| 31 | `theorem` | [g_alt_integral_eq_12](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-integral-eq-12--e79cb3b2beff6563d97d510d.md) | 625 | `result-track:e79cb3b2beff6563d97d510d65739ebe1d9f7d72c726c8fcc02e56a297f48873` |
| 32 | `theorem` | [g_alt_intervalIntegrable_12](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-intervalintegrable-12--f543359da1d919488b58947b.md) | 637 | `result-track:f543359da1d919488b58947bdb30e5bf27e0dbcc705a2066107bf858026a7521` |
| 33 | `theorem` | [g_integral_12_lower_numerical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-integral-12-lower-numerical--71d91d2b891c42a7111f1930.md) | 653 | `result-track:71d91d2b891c42a7111f19306d28a3e98d194a15082ad775fb7274603331e2d0` |
| 34 | `def` | [g_interval_45](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-interval-45--b6a118178f8d4e1100e243ec.md) | 669 | `declaration-track:b6a118178f8d4e1100e243ec04b1d133f3be88ac90150a814cb5cf9cffbc282d` |
| 35 | `theorem` | [g_alt_integral_eq_45](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-integral-eq-45--e7baf54b2c0245863a7859ed.md) | 672 | `result-track:e7baf54b2c0245863a7859edce135a89c1dd7f1f56ff65e7be8bf11cd0a80664` |
| 36 | `theorem` | [g_alt_intervalIntegrable_45](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-intervalintegrable-45--5fa662b0f7e535ee8ec29877.md) | 684 | `result-track:5fa662b0f7e535ee8ec2987792ead814657fddfe08dd38f606c510f39a4c1411` |
| 37 | `theorem` | [g_integral_45_lower_numerical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-integral-45-lower-numerical--2869cebfcd44677c90ba5d6e.md) | 700 | `result-track:2869cebfcd44677c90ba5d6e5f0c626eec8b162d083f6ca89b926796ae2e91c3` |
| 38 | `def` | [g_interval_56](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-interval-56--e68b34ce5ef60b20fd32685f.md) | 716 | `declaration-track:e68b34ce5ef60b20fd32685f996ee6a5e27d174e8d3152300e9339ee1fd4eb0f` |
| 39 | `theorem` | [g_alt_integral_eq_56](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-integral-eq-56--6551e4b418cb862e936f4e9b.md) | 719 | `result-track:6551e4b418cb862e936f4e9bd0d3ccf2bfdd84690fab0e553a51d477db4aae77` |
| 40 | `theorem` | [g_alt_intervalIntegrable_56](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-intervalintegrable-56--9e3f6ddb1b49defa17117631.md) | 731 | `result-track:9e3f6ddb1b49defa17117631c06007765ce76bbe72a432c490d69a9e7f3f314f` |
| 41 | `theorem` | [g_integral_56_lower_numerical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-integral-56-lower-numerical--a4bd2c0df8ea607f9464330b.md) | 747 | `result-track:a4bd2c0df8ea607f9464330bd14417968b5bce7ab17bc760866b0394663e7efd` |
| 42 | `def` | [g_interval_01](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-interval-01--ea3f6d9807d407914d5bdec8.md) | 763 | `declaration-track:ea3f6d9807d407914d5bdec8a7318aeed02bf8eb0932bda9786452a49c11532d` |
| 43 | `theorem` | [g_alt_integral_eq_01](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-integral-eq-01--bebc05c5a89c7f729405235f.md) | 766 | `result-track:bebc05c5a89c7f729405235f5bb15f8c195a74552bfc76b75112f38c9d20a37e` |
| 44 | `theorem` | [g_alt_intervalIntegrable_01](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-alt-intervalintegrable-01--88f17b0f67cd47e4c6337574.md) | 778 | `result-track:88f17b0f67cd47e4c6337574bded2e5957cd84ecc844f2f220bb2f4aec3c98fb` |
| 45 | `theorem` | [g_integral_01_lower_numerical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-integral-01-lower-numerical--90aced47d91a5b716c566dc6.md) | 794 | `result-track:90aced47d91a5b716c566dc6c145d7d85b279877ceb80cca56ea847407a35ce4` |
| 46 | `theorem` | [g_integral_67_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/g-integral-67-lower--c740dc9906d9cbcc5a2040b1.md) | 810 | `result-track:c740dc9906d9cbcc5a2040b10b69ebc3ab0015bd0f2c4585e017006c33b49b9d` |
| 47 | `theorem` | [li2_bounds_verified](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/li2-bounds-verified--aa3fde624d8f13f4d7a78cad.md) | 848 | `result-track:aa3fde624d8f13f4d7a78cad31392a273e32ac55a38f9c827c1f8bec11cc14fe` |
| 48 | `theorem` | [li2_lower_verified](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/li2-lower-verified--964d5fc8cbd8663c5b26e83e.md) | 912 | `result-track:964d5fc8cbd8663c5b26e83e49766a5c86cb9ffc1d4e441a01a23d903d5740ee` |
| 49 | `theorem` | [li2_upper_verified](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/li2-upper-verified--f759a427c3f6893c1b668fb8.md) | 915 | `result-track:f759a427c3f6893c1b668fb886618082d480ff412535c77b420a78cd0ea5cbdc` |
| 50 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/example--56fb1d433fe1f948d6652a9e.md) | 924 | `declaration-track:56fb1d433fe1f948d6652a9e9d66eae45e636244c3a42ba9e2459b07f15922b0` |
| 51 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/declarations/example--6c9c4304a3aefeddcd351f4d.md) | 927 | `declaration-track:6c9c4304a3aefeddcd351f4d2fa8ef2f623ee8bb050380f552adf6f513baadea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
