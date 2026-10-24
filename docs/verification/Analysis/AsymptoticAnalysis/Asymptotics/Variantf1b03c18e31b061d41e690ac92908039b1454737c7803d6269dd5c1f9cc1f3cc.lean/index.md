# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66fb2601c9d7d572f3950b54fbf9616034ffff6e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66fb2601c9d7d572f3950b54fbf9616034ffff6e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean.json)

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
| 1 | `theorem` | [tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-attop--82e102aca36b2f538afc6337.md) | 38 | `result-track:82e102aca36b2f538afc63377b4e418e72ac2d7acb42376c3f391df7d2689fc4` |
| 2 | `theorem` | [tendsto_rpow_neg_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-neg-nhdsgt-zero--2b08631451cf68aec9717a16.md) | 44 | `result-track:2b08631451cf68aec9717a16237372fba36e57e45cbcc638e644ca6a2811645c` |
| 3 | `theorem` | [tendsto_rpow_neg_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-neg-attop--77b3ae8ea9d0e4ce09d153bf.md) | 50 | `result-track:77b3ae8ea9d0e4ce09d153bf626ebbcd0a0396d80d43b8481468a1a23e20178d` |
| 4 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-attop-of-base-lt-one--7390e03148bb3c014ef5b39a.md) | 55 | `result-track:7390e03148bb3c014ef5b39aa2cfaba933714bc90bf1db83abdde86c45af2541` |
| 5 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-atbot-of-base-lt-one--6cef80b9c8f977f26276a993.md) | 80 | `result-track:6cef80b9c8f977f26276a9939f5822db1b838b4996f758ff833333fcca54d3c3` |
| 6 | `lemma` | [tendsto_rpow_atTop_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-attop-of-base-gt-one--b60968b1177f7a4cff11d04f.md) | 86 | `result-track:b60968b1177f7a4cff11d04ff133161d84884af6542d3ff441c8bb2d089deaf8` |
| 7 | `lemma` | [tendsto_rpow_atBot_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-atbot-of-base-gt-one--2fef853cf4b5feb905085c48.md) | 92 | `result-track:2fef853cf4b5feb905085c48ff8f951fc33429c63cb6800b3ea156a8aa1ce440` |
| 8 | `theorem` | [tendsto_rpow_div_mul_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-div-mul-add--c1e6e2afd629ea1fc5c313c5.md) | 100 | `result-track:c1e6e2afd629ea1fc5c313c5bd7bc7e4fb40107389475b1c84c8f996be21ebf1` |
| 9 | `theorem` | [tendsto_rpow_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-div--8976cd638ac71086c24c3a2c.md) | 117 | `result-track:8976cd638ac71086c24c3a2c6e875a04f21349534c29423ca6e8a3beba2a5cd3` |
| 10 | `theorem` | [tendsto_rpow_neg_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-neg-div--34eb3dec30d631b5c3933be2.md) | 122 | `result-track:34eb3dec30d631b5c3933be2887afccc6a5d4acbff04553ec99424c6faaf55d7` |
| 11 | `theorem` | [tendsto_exp_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-exp-div-rpow-attop--698dbc00e5ba64a16ed1eb63.md) | 127 | `result-track:698dbc00e5ba64a16ed1eb6332b4cd6e61e254038f99ac804adc90e1e30d416d` |
| 12 | `theorem` | [tendsto_exp_mul_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-exp-mul-div-rpow-attop--b0871fda17bdb6b21a9fc2fd.md) | 135 | `result-track:b0871fda17bdb6b21a9fc2fd5ce01da0f60e55d6f14a1c7ce226391bd5eae285` |
| 13 | `theorem` | [tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-rpow-mul-exp-neg-mul-attop-nhds-zero--70493a03557b2d033a36ef3a.md) | 143 | `result-track:70493a03557b2d033a36ef3ac6e1fd95667bddb2db69ab5224ac74445d9aac64` |
| 14 | `theorem` | [NNReal.tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/nnreal-tendsto-rpow-attop--ac9b25f87c8b1d8c28e4d51d.md) | 148 | `result-track:ac9b25f87c8b1d8c28e4d51de0b6c12e00e152394ffecd3c7be1f4d7ad7b823e` |
| 15 | `theorem` | [ENNReal.tendsto_rpow_at_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/ennreal-tendsto-rpow-at-top--e63ebdb292ffbd37149feaea.md) | 157 | `result-track:e63ebdb292ffbd37149feaea89e4e078ae4418a2a850775d7cb1d17026078be9` |
| 16 | `theorem` | [isTheta_exp_arg_mul_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/istheta-exp-arg-mul-im--b300aa455f0078af03a5a22c.md) | 187 | `result-track:b300aa455f0078af03a5a22cb31816beaef39e1065af5c4d50a7ba6d079c3d22` |
| 17 | `theorem` | [isBigO_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigo-cpow-rpow--49d7809f24777eaa640f39e6.md) | 196 | `result-track:49d7809f24777eaa640f39e663bd1e79ce9f87a52a5cf191466dcc1621ac870b` |
| 18 | `theorem` | [isTheta_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/istheta-cpow-rpow--c04774cfcd8fdcc1e0287c04.md) | 207 | `result-track:c04774cfcd8fdcc1e0287c047163127b08ee3cb0307d3af62a3a5de401f08f03` |
| 19 | `theorem` | [isTheta_cpow_const_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/istheta-cpow-const-rpow--676c1b76cdcfecc85add3c7b.md) | 219 | `result-track:676c1b76cdcfecc85add3c7b980790ac3485997f590e0365791522c26e3242b0` |
| 20 | `theorem` | [IsBigOWith.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigowith-rpow--47d58551eb88af147d604508.md) | 234 | `result-track:47d58551eb88af147d6045089f4f3740b09a481a61eda0a602a96181b4a1269a` |
| 21 | `theorem` | [IsBigO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigo-rpow--b6af394bbe7adc6d22b5797d.md) | 243 | `result-track:b6af394bbe7adc6d22b5797d08d3971ff10c7435ce8e8f919cc9809f2c386cd5` |
| 22 | `theorem` | [IsTheta.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/istheta-rpow--501dca17c54e320190005f7f.md) | 248 | `result-track:501dca17c54e320190005f7f0b8c6061042e1051f8d208e170c99e4b4be79a32` |
| 23 | `theorem` | [IsLittleO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-rpow--080b431c81759c76f8f0944f.md) | 257 | `result-track:080b431c81759c76f8f0944f1cf7f0f7971b032228787afa13e5aee20268336f` |
| 24 | `lemma` | [IsBigO.sqrt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigo-sqrt--a4bd5e6409d55b22a407bb90.md) | 263 | `result-track:a4bd5e6409d55b22a407bb9087d03b4c4fe701bbe23ee3311effb5e2e657833f` |
| 25 | `lemma` | [IsLittleO.sqrt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-sqrt--b1370422cd762e36197ce939.md) | 267 | `result-track:b1370422cd762e36197ce93937dd744f9b45b02472115d9cdc8c4d669dae0ec8` |
| 26 | `lemma` | [IsTheta.sqrt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/istheta-sqrt--2b032938fe0a4db92acfc86a.md) | 271 | `result-track:2b032938fe0a4db92acfc86a5b6dbce9cf64ed89b54988226ce7b83140ef88c2` |
| 27 | `theorem` | [isBigO_atTop_natCast_rpow_of_tendsto_div_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigo-attop-natcast-rpow-of-tendsto-div-rpow--b28c4fc5bd61d204f818c2f1.md) | 275 | `result-track:b28c4fc5bd61d204f818c2f1ef5506abf5f3ff2a4bcb5a9a20f4b20d3d9c7fc6` |
| 28 | `theorem` | [IsBigO.mul_atTop_rpow_of_isBigO_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigo-mul-attop-rpow-of-isbigo-rpow--1b387850e6ea2db76f343477.md) | 285 | `result-track:1b387850e6ea2db76f343477bbcde347221574f52c1c51b8de16e43aec0b27c4` |
| 29 | `theorem` | [IsBigO.mul_atTop_rpow_natCast_of_isBigO_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigo-mul-attop-rpow-natcast-of-isbigo-rpow--ef420dc61db01a3b3ea25f26.md) | 295 | `result-track:ef420dc61db01a3b3ea25f261376fcf2ebc1ce8766bbb1e9c971a47212b33a17` |
| 30 | `theorem` | [IsBigO.rpow_rpow_nhdsGE_zero_of_le_of_imp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigo-rpow-rpow-nhdsge-zero-of-le-of-imp--0d83b2197f5d0585b184a958.md) | 307 | `result-track:0d83b2197f5d0585b184a958af776a1003e1502874def61e91a41003c5e94638` |
| 31 | `theorem` | [IsBigO.rpow_rpow_nhdsGE_zero_of_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigo-rpow-rpow-nhdsge-zero-of-le--2621d58c739ea344e1145146.md) | 314 | `result-track:2621d58c739ea344e11451461f394955d951fb2827960d6316dca051eae9b6e5` |
| 32 | `theorem` | [IsBigO.id_rpow_of_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/isbigo-id-rpow-of-le-one--85b83a89af866354c4375128.md) | 319 | `result-track:85b83a89af866354c437512866396c5a391704f0b0abfca4445903457a5127fc` |
| 33 | `theorem` | [isLittleO_rpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-rpow-exp-pos-mul-attop--9f2d8ed95a6215e6056da739.md) | 328 | `result-track:9f2d8ed95a6215e6056da739837a50d86ba4162ca5c9d67e1dd94684624014ef` |
| 34 | `theorem` | [isLittleO_zpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-zpow-exp-pos-mul-attop--a4773fc27e8ff86ba72f4b14.md) | 335 | `result-track:a4773fc27e8ff86ba72f4b14afc01dabdf4411cdf055d25602ae262ce0f8e181` |
| 35 | `theorem` | [isLittleO_pow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-pow-exp-pos-mul-attop--57718b54191569d7f8e02c25.md) | 340 | `result-track:57718b54191569d7f8e02c2560fa504b48f315c3f25425c3da2a3f6804cf7510` |
| 36 | `theorem` | [isLittleO_rpow_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-rpow-exp-attop--43987f6d20db2f487d024355.md) | 345 | `result-track:43987f6d20db2f487d0243557ec328bd4912f925e6e72be6de9cd27ff592ea9c` |
| 37 | `theorem` | [isLittleO_exp_neg_mul_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-exp-neg-mul-rpow-attop--9757cebe92f78ab35fcecb09.md) | 349 | `result-track:9757cebe92f78ab35fcecb095de4cfb5790d935a1bf2892269f1b19f35354c27` |
| 38 | `theorem` | [isLittleO_exp_mul_rpow_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-exp-mul-rpow-of-lt--326f443a6ad69f430b6de91a.md) | 359 | `result-track:326f443a6ad69f430b6de91a4b66235f23f048cde6a17aa5108d8624d8f738be` |
| 39 | `theorem` | [isLittleO_log_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-log-rpow-attop--8e649abfd4e156b321f62a0b.md) | 366 | `result-track:8e649abfd4e156b321f62a0b732befe0502c2be99053ad90812cc1d37bde6e9e` |
| 40 | `theorem` | [isLittleO_log_rpow_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-log-rpow-rpow-attop--e216d18398c95b580b55defd.md) | 373 | `result-track:e216d18398c95b580b55defd3cf1841ea10dd887910939f8fe306101881a4c4d` |
| 41 | `theorem` | [isLittleO_abs_log_rpow_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-abs-log-rpow-rpow-nhdsgt-zero--6845cb565aa783546597e683.md) | 391 | `result-track:6845cb565aa783546597e6838e4a3505000e19b553c1ec75d91023902124982b` |
| 42 | `theorem` | [isLittleO_log_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/islittleo-log-rpow-nhdsgt-zero--e44a6d0230c97a1cb3f53581.md) | 399 | `result-track:e44a6d0230c97a1cb3f53581f16a3c8bcc10b482e4c209187cd1c198d65ac2ec` |
| 43 | `theorem` | [tendsto_log_div_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-log-div-rpow-nhdsgt-zero--11d497e78423947bc6255a55.md) | 405 | `result-track:11d497e78423947bc6255a5535b75afd29926724f3ec74c2ebe07983f53d946f` |
| 44 | `theorem` | [tendsto_log_mul_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-log-mul-rpow-nhdsgt-zero--10d5e3f1a4a069f567b995d5.md) | 409 | `result-track:10d5e3f1a4a069f567b995d524a3382444737a02c82fbb0e84f0d9004626e0bd` |
| 45 | `lemma` | [tendsto_log_mul_self_nhdsLT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/declarations/tendsto-log-mul-self-nhdslt-zero--ff255555e6f21dbde27839ae.md) | 414 | `result-track:ff255555e6f21dbde27839ae54459e73ff74d6c8836369ae38e5e354ef3d0dd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
