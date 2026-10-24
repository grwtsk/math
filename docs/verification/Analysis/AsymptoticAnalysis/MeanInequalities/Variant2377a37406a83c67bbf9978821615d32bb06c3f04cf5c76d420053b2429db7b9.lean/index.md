# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.MeanInequalities.Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcc82cc37a97b11af0da6a5d4aebbcd8c8939b6b",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcc82cc37a97b11af0da6a5d4aebbcd8c8939b6b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.ConjugateExponents` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/macro-rules--b3da388e410a9d1c02aeb963.md) | 109 | `declaration-track:b3da388e410a9d1c02aeb9636483808dd784f24209c4ba2f22358ce3b67cba8b` |
| 2 | `theorem` | [geom_mean_le_arith_mean_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-le-arith-mean-weighted--e5a0f31959cf36ddf9e31753.md) | 122 | `result-track:e5a0f31959cf36ddf9e31753ebf6dcc38b41807453486dc4dce531b3fe3841c5` |
| 3 | `theorem` | [geom_mean_weighted_of_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-weighted-of-constant--2728f188c731820335900825.md) | 146 | `result-track:2728f188c731820335900825761fb2ae60dfa9dcca897fdbbb9b058c6eeab855` |
| 4 | `theorem` | [arith_mean_weighted_of_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/arith-mean-weighted-of-constant--584c4455764ff6f2f63306d7.md) | 165 | `result-track:584c4455764ff6f2f63306d7ab3259a9010110bf3aa070e6fccf2e5d93260ac6` |
| 5 | `theorem` | [geom_mean_eq_arith_mean_weighted_of_constant](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-eq-arith-mean-weighted-of-constant--79bf78f6f0853b0a9e3a8a4a.md) | 176 | `result-track:79bf78f6f0853b0a9e3a8a4a23615640a9051325e515aaef8b59b13d969e98b3` |
| 6 | `theorem` | [geom_mean_le_arith_mean_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-le-arith-mean-weighted--7755d747aff513825931de10.md) | 188 | `result-track:7755d747aff513825931de10119b625315e549d76aa1882aa780026b33b443c0` |
| 7 | `theorem` | [geom_mean_le_arith_mean2_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-le-arith-mean2-weighted--5fada0b24c4669e39b116f4d.md) | 197 | `result-track:5fada0b24c4669e39b116f4dca8ab68c40e6625fff1341900ba775d96a912252` |
| 8 | `theorem` | [geom_mean_le_arith_mean3_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-le-arith-mean3-weighted--aa88767b15448d56719a7cf7.md) | 204 | `result-track:aa88767b15448d56719a7cf7a3fc25485927fd667ee43831c71978eafbc1ea41` |
| 9 | `theorem` | [geom_mean_le_arith_mean4_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-le-arith-mean4-weighted--68880e945e216962112c7135.md) | 212 | `result-track:68880e945e216962112c7135d4c370ede7c2a79b42dcae2c298bf9de3ded28c2` |
| 10 | `theorem` | [geom_mean_le_arith_mean2_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-le-arith-mean2-weighted--70b9a8d3bbd5b49a1dffc151.md) | 225 | `result-track:70b9a8d3bbd5b49a1dffc15116677203f9345573ce5a058189fb2d585ddb131b` |
| 11 | `theorem` | [geom_mean_le_arith_mean3_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-le-arith-mean3-weighted--802eb669a2445f9d9404b2b8.md) | 231 | `result-track:802eb669a2445f9d9404b2b807a79dd76803fd978a7087e5c6b785ef5944c416` |
| 12 | `theorem` | [geom_mean_le_arith_mean4_weighted](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/geom-mean-le-arith-mean4-weighted--89e8b77ff3676a4698bc8634.md) | 239 | `result-track:89e8b77ff3676a4698bc863464665e2bb0e30778f9757501e9998d8331772365` |
| 13 | `theorem` | [young_inequality_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/young-inequality-of-nonneg--a5f4bb79c1e67e76ac1178ed.md) | 260 | `result-track:a5f4bb79c1e67e76ac1178ed5abf5a7dde4e3bf252cc50aef0e365eff373d3f3` |
| 14 | `theorem` | [young_inequality](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/young-inequality--2181a12de0256194c5575e28.md) | 268 | `result-track:2181a12de0256194c5575e28dd72af12220bbeb8bdbbf7aa62584f623387b14a` |
| 15 | `theorem` | [young_inequality](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/young-inequality--fcd993087a980194ac8a4f08.md) | 283 | `result-track:fcd993087a980194ac8a4f0864c39d7a88cd0237ee833b24c6b024b478d1df62` |
| 16 | `theorem` | [young_inequality_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/young-inequality-real--a085590c85b228be02aab935.md) | 289 | `result-track:a085590c85b228be02aab9351c2a1dbc70d109db75c50c9a5312fef157e343f9` |
| 17 | `theorem` | [young_inequality](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/young-inequality--f25bb7c8a46b158ea5606263.md) | 301 | `result-track:f25bb7c8a46b158ea5606263d79afdd937bb477fbb98200d7959c93cf4371b73` |
| 18 | `theorem` | [inner_le_Lp_mul_Lp_of_norm_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lp-of-norm-le-one--71604c8c6774dacf685a95fc.md) | 327 | `result-track:71604c8c6774dacf685a95fc839325c9f77eb7dd2894910721153927ab8243d9` |
| 19 | `theorem` | [inner_le_Lp_mul_Lp_of_norm_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lp-of-norm-eq-zero--25d9a88e46f4a70a5416bb1f.md) | 343 | `result-track:25d9a88e46f4a70a5416bb1fbe8cbbcdee52d699991871e1e062604bdf67cd19` |
| 20 | `theorem` | [inner_le_Lp_mul_Lq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq--b65e7d899bd16295ff4d1cd7.md) | 356 | `result-track:b65e7d899bd16295ff4d1cd7c4d8e66e1a56f2aba003a6cb566dbe1aded830f5` |
| 21 | `theorem` | [inner_le_Lp_mul_Lq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq-tsum--e8142a8fe776e55a6851943e.md) | 389 | `result-track:e8142a8fe776e55a6851943eb16ed93168200d31e98f1cefcf1babd854fa8ed8` |
| 22 | `theorem` | [summable_mul_of_Lp_Lq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/summable-mul-of-lp-lq--affccebc717ac918becf4522.md) | 409 | `result-track:affccebc717ac918becf4522055deb92fea79150f76550522a464de143a13482` |
| 23 | `theorem` | [inner_le_Lp_mul_Lq_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq-tsum--5a48c9250c7f8cff22377e7e.md) | 415 | `result-track:5a48c9250c7f8cff22377e7ed178e7fe79aa63dec137d4005010a9021190dd24` |
| 24 | `theorem` | [inner_le_Lp_mul_Lq_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq-hassum--84f844a0ebfce1ffc332b035.md) | 425 | `result-track:84f844a0ebfce1ffc332b035008989ca640c90ecbfb6edd9e57831a7077d4cd2` |
| 25 | `theorem` | [rpow_sum_le_const_mul_sum_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/rpow-sum-le-const-mul-sum-rpow--e803e912d1c33403f1e3322f.md) | 440 | `result-track:e803e912d1c33403f1e3322fb7847fa793cc759f09c1df5e224258fa570a3eb8` |
| 26 | `theorem` | [isGreatest_Lp](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/isgreatest-lp--31ef032420e844a6df0a0af1.md) | 457 | `result-track:31ef032420e844a6df0a0af186357edf5312f839ced9cc369e77722826b93f6a` |
| 27 | `theorem` | [Lp_add_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le--26b7bfd00062c0b931572d97.md) | 481 | `result-track:26b7bfd00062c0b931572d97bd3a3dcc81370c8dd944fb7c30ffdfdb351df2ad` |
| 28 | `theorem` | [Lp_add_le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le-tsum--9155e9b81d2e515dbdfbc873.md) | 500 | `result-track:9155e9b81d2e515dbdfbc873317405e6b09e626658c9725f8c496f6170359e96` |
| 29 | `theorem` | [summable_Lp_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/summable-lp-add--2f3dfbed766b65e8cdd6d71a.md) | 525 | `result-track:2f3dfbed766b65e8cdd6d71a099ec0579469b2617674f717250529c796228648` |
| 30 | `theorem` | [Lp_add_le_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le-tsum--765b55204c142bea985116e1.md) | 530 | `result-track:765b55204c142bea985116e156effa1815e9bb8359cd40714084681194447800` |
| 31 | `theorem` | [Lp_add_le_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le-hassum--91b531ba812115316d93e2d5.md) | 540 | `result-track:91b531ba812115316d93e2d5e079a42eab02434d85775a501dfd03a731287651` |
| 32 | `theorem` | [inner_le_Lp_mul_Lq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq--13210f36b2db877b204dd2b6.md) | 561 | `result-track:13210f36b2db877b204dd2b6e72e5f3d225fd0b263246fcdbe1091695178eb22` |
| 33 | `theorem` | [rpow_sum_le_const_mul_sum_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/rpow-sum-le-const-mul-sum-rpow--976b585c678145b9eabcbde2.md) | 574 | `result-track:976b585c678145b9eabcbde2c60fd273a5f7365dca9184f7c200b50aaf3243a7` |
| 34 | `theorem` | [Lp_add_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le--051759b0fcf57889b312bc10.md) | 586 | `result-track:051759b0fcf57889b312bc10fe0686818a08c937f54fb1a0053deba798c91398` |
| 35 | `theorem` | [inner_le_Lp_mul_Lq_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq-of-nonneg--14130f0ef69b31cdb4d05560.md) | 603 | `result-track:14130f0ef69b31cdb4d055603907ec223e652d489befd1b75a2b628e6571477a` |
| 36 | `theorem` | [inner_le_Lp_mul_Lq_tsum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq-tsum-of-nonneg--65681e393c5cf931aa5665fe.md) | 614 | `result-track:65681e393c5cf931aa5665fef8d7b637de7f50821dcb3609a990a571819c08fb` |
| 37 | `theorem` | [summable_mul_of_Lp_Lq_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/summable-mul-of-lp-lq-of-nonneg--483ba650dad91a3a6e3f78b4.md) | 624 | `result-track:483ba650dad91a3a6e3f78b4906f8a0f97c68da71b39da4848a003aeb37e514c` |
| 38 | `theorem` | [inner_le_Lp_mul_Lq_tsum_of_nonneg'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq-tsum-of-nonneg--d9e671a9801254d47854766a.md) | 630 | `result-track:d9e671a9801254d47854766ab2e238d9d72c419634f43f3d0003628cf5ea80da` |
| 39 | `theorem` | [inner_le_Lp_mul_Lq_hasSum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq-hassum-of-nonneg--f730c860c3f07f44f3206a36.md) | 640 | `result-track:f730c860c3f07f44f3206a3672f1970bc815f97645c58f9b5a36ef7ebee2a0ce` |
| 40 | `theorem` | [rpow_sum_le_const_mul_sum_rpow_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/rpow-sum-le-const-mul-sum-rpow-of-nonneg--2b6e39f6ae969f346ed3776d.md) | 657 | `result-track:2b6e39f6ae969f346ed3776d86c6dc9ac230e5c45b2695fbe44ccf7d8e04d5ef` |
| 41 | `theorem` | [Lp_add_le_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le-of-nonneg--1122f8d088892122635fec0b.md) | 666 | `result-track:1122f8d088892122635fec0b759511b4aca0a6867b6bd7375931e156b97fc082` |
| 42 | `theorem` | [Lp_add_le_tsum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le-tsum-of-nonneg--f31ef054feaf88c2d3a30b4e.md) | 678 | `result-track:f31ef054feaf88c2d3a30b4e8a00320a38f41802f63619f96fa7b1ca4f27577f` |
| 43 | `theorem` | [summable_Lp_add_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/summable-lp-add-of-nonneg--44f8f6981423697b21f83294.md) | 689 | `result-track:44f8f6981423697b21f83294744f81bfc0b590aa6867726db1a3cdd810d23935` |
| 44 | `theorem` | [Lp_add_le_tsum_of_nonneg'](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le-tsum-of-nonneg--29904a84c4c15dceccce329d.md) | 695 | `result-track:29904a84c4c15dceccce329d94e00906552302264421aa8f038e9e59fbc022c2` |
| 45 | `theorem` | [Lp_add_le_hasSum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le-hassum-of-nonneg--b12d6f4e7b4242510432d5f4.md) | 705 | `result-track:b12d6f4e7b4242510432d5f4349177c79d70499fcbe4a919aeb83f5fe01806c2` |
| 46 | `theorem` | [inner_le_Lp_mul_Lq](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/inner-le-lp-mul-lq--25dde0915f5d3bb5230c9354.md) | 729 | `result-track:25dde0915f5d3bb5230c93546f9572d98f68203e5a86c9b632848ec23938394c` |
| 47 | `theorem` | [rpow_sum_le_const_mul_sum_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/rpow-sum-le-const-mul-sum-rpow--69afe62031c88d3e5f2e3597.md) | 758 | `result-track:69afe62031c88d3e5f2e3597cdf1830f051349b1e86fe7740184d6f54749e827` |
| 48 | `theorem` | [Lp_add_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/declarations/lp-add-le--234ae306269907df091f40fe.md) | 776 | `result-track:234ae306269907df091f40fe9a900dc9ad59ada5b83eb79a50984a52a87c235e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
