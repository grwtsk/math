# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.WeierstrassFactor.Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c490084d40450ccffa6d94e8ad3e2e1451e69a5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c490084d40450ccffa6d94e8ad3e2e1451e69a5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean.json)

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
| 1 | `def` | [weierstrassFactor](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor--01952c39e9e60ad3da355e6c.md) | 52 | `declaration-track:01952c39e9e60ad3da355e6c0b04114c430d6c32ddba3f556c91e6c10d423f0a` |
| 2 | `lemma` | [weierstrassFactor_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-def--025bf4a8acdaec9b70287f3d.md) | 55 | `result-track:025bf4a8acdaec9b70287f3d9c126046c367f8a73c5f548af2a1b072883a34b3` |
| 3 | `lemma` | [weierstrassFactor_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-zero--ba6bbcce96b947c66f67d428.md) | 60 | `result-track:ba6bbcce96b947c66f67d428825528445ad1d912bda5e2e42b2b8053d683662b` |
| 4 | `lemma` | [weierstrassFactor_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-at-zero--d3addc07a2d05caeae9e74ff.md) | 64 | `result-track:d3addc07a2d05caeae9e74ff80793cd6a6b4733bfac523af4a17b192e1f508cb` |
| 5 | `lemma` | [weierstrassFactor_at_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-at-one--c1b1e0a4f8ee4eabf3d62ca8.md) | 68 | `result-track:c1b1e0a4f8ee4eabf3d62ca8f3b3857ca6c560319ea0ad105dab823821e3535b` |
| 6 | `lemma` | [weierstrassFactor_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-eq-zero-iff--d3a43aee31c97eb56ed22573.md) | 71 | `result-track:d3a43aee31c97eb56ed2257384f4e34c9e1466a0f02e79e41b724d3090ba7531` |
| 7 | `lemma` | [weierstrassFactor_ne_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-ne-zero-iff--f02a86e29b228225e23e4d14.md) | 82 | `result-track:f02a86e29b228225e23e4d14f8a6178fb5d9a37a11322eead255cb3ce021cd47` |
| 8 | `lemma` | [weierstrassFactor_ne_zero_of_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-ne-zero-of-ne-one--c159ca0447e808e928c16482.md) | 86 | `result-track:c159ca0447e808e928c16482934beaa16ea9205e5a50931d98887fd62899404f` |
| 9 | `lemma` | [weierstrassFactor_div_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-div-eq-zero-iff--b5f5062a0b3e24bab0ad947e.md) | 90 | `result-track:b5f5062a0b3e24bab0ad947e2b930e6ffd360c0b5ae27105a5b2ed1d28fb21a5` |
| 10 | `lemma` | [weierstrassFactor_div_ne_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-div-ne-zero-iff--dc258c3413f57ab5fec31f9f.md) | 99 | `result-track:dc258c3413f57ab5fec31f9f50dcb0e92be3ae4c3457416b63cc1b56ca046c96` |
| 11 | `lemma` | [differentiable_weierstrassFactor](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/differentiable-weierstrassfactor--7ba5cdf5718249b948147f55.md) | 104 | `result-track:7ba5cdf5718249b948147f55c4f36db096ef28ac45f650e4f7285202c7f0ab09` |
| 12 | `lemma` | [hasDerivAt_weierstrassFactor_at_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/hasderivat-weierstrassfactor-at-one--a2a6166d0ff84b7156153c3a.md) | 110 | `result-track:a2a6166d0ff84b7156153c3a1aedcebe8b1260fb556db6867e460ab811c99cd0` |
| 13 | `lemma` | [deriv_weierstrassFactor_at_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/deriv-weierstrassfactor-at-one--625af6c9f6cd34f0e18dd0da.md) | 122 | `result-track:625af6c9f6cd34f0e18dd0da3f19b4c3c8bdde01d674e931dce488d27237ca4e` |
| 14 | `lemma` | [deriv_weierstrassFactor_at_one_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/deriv-weierstrassfactor-at-one-ne-zero--7ba98fbb90219bf44d49976e.md) | 126 | `result-track:7ba98fbb90219bf44d49976e5f1cd773c9e84a85ff1d68da52a73a6dd33d8bed` |
| 15 | `lemma` | [hasDerivAt_weierstrassFactor_div_at_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/hasderivat-weierstrassfactor-div-at-self--76a13d55dea5d2707ed2a113.md) | 130 | `result-track:76a13d55dea5d2707ed2a11306fdd0e3d4341f3a2148e6fa2fa0b95e1dfe35d0` |
| 16 | `lemma` | [deriv_weierstrassFactor_div_at_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/deriv-weierstrassfactor-div-at-self--4bbae4c4e338ab5f7de0c320.md) | 142 | `result-track:4bbae4c4e338ab5f7de0c320ead4a9c023b6c6af456aa03163eb7410f2cd843d` |
| 17 | `lemma` | [deriv_weierstrassFactor_div_at_self_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/deriv-weierstrassfactor-div-at-self-ne-zero--10182b1d89b3f3486ca185e2.md) | 147 | `result-track:10182b1d89b3f3486ca185e2f897b3c41aaa847a563d2426d6ae3418bef45e76` |
| 18 | `theorem` | [analyticOrderAt_weierstrassFactor_div_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/analyticorderat-weierstrassfactor-div-self--a4cdde578810a22e36af639e.md) | 152 | `result-track:a4cdde578810a22e36af639e845ea0fcf23a26d742e503b22ad5f662287b161d` |
| 19 | `theorem` | [analyticOrderNatAt_weierstrassFactor_div_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/analyticordernatat-weierstrassfactor-div-self--edd00abad51d38d40d302e65.md) | 189 | `result-track:edd00abad51d38d40d302e6561ada0ce8e12ef1b94f0428c77c63f98b29742a2` |
| 20 | `lemma` | [weierstrassFactor_eq_exp_neg_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-eq-exp-neg-tail--defa0505c5ce0ecc402473d2.md) | 194 | `result-track:defa0505c5ce0ecc402473d2060f07e0539dc3754a227315c2eb210a43b0990e` |
| 21 | `theorem` | [weierstrassFactor_sub_one_pow_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/weierstrassfactor-sub-one-pow-bound--b89bc3d50a067d45aef7e711.md) | 211 | `result-track:b89bc3d50a067d45aef7e711b3d594f4f4d1c5d666eee6daf222393785397f39` |
| 22 | `lemma` | [log_norm_weierstrassFactor_ge_log_norm_one_sub_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/log-norm-weierstrassfactor-ge-log-norm-one-sub-sub--afcc92aa768b3802ac6c7491.md) | 261 | `result-track:afcc92aa768b3802ac6c74915af07dd975fd301b818a94dddb691ce6bc0ec61e` |
| 23 | `lemma` | [log_norm_weierstrassFactor_ge_neg_two_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/log-norm-weierstrassfactor-ge-neg-two-pow--97162808a4e3976a8a61c599.md) | 288 | `result-track:97162808a4e3976a8a61c599f8481de5c479973bd9b9c938142192ee0f3f3b6e` |
| 24 | `lemma` | [log_norm_weierstrassFactor_ge_log_norm_one_sub_nat_mul_max_one_norm_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/log-norm-weierstrassfactor-ge-log-norm-one-sub-nat-mul-max-one-norm-pow--b323c5318388aab70cf23319.md) | 311 | `result-track:b323c5318388aab70cf23319a9e148d07e218addaa370327c7dd7f67e53c037f` |
| 25 | `lemma` | [eventually_le_norm_div_two_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/eventually-le-norm-div-two-of-summable-inv-pow--92d1ab709bacbf605c39e773.md) | 324 | `result-track:92d1ab709bacbf605c39e77338c2aa71be3b89d29b88ef41b9d3c59684d6dbc5` |
| 26 | `lemma` | [summable_scaled_bound_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/summable-scaled-bound-of-summable-inv-pow--9108180304d0951b48c03db2.md) | 351 | `result-track:9108180304d0951b48c03db2f36091e6452e445a84300500d39e5d1999a2d1bf` |
| 27 | `lemma` | [continuousOn_weierstrassFactor_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/continuouson-weierstrassfactor-div--19f119c3e4bdbfa20b0bb46b.md) | 358 | `result-track:19f119c3e4bdbfa20b0bb46b7abd9806d48637be38c674c2e880f100b74f1163` |
| 28 | `lemma` | [norm_weierstrassFactor_div_sub_one_le_pow_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/norm-weierstrassfactor-div-sub-one-le-pow-div--137d5f2da541a408865523a5.md) | 363 | `result-track:137d5f2da541a408865523a58336b85c0f8bd59a2b2254e1ebb8adb7080e788d` |
| 29 | `lemma` | [summable_norm_weierstrassFactor_div_sub_one_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/summable-norm-weierstrassfactor-div-sub-one-of-summable-inv-pow--1ea194972abfbb21f648da76.md) | 383 | `result-track:1ea194972abfbb21f648da76a5e59295372b2feeda663b1bd68803500795e2b0` |
| 30 | `lemma` | [hasProdUniformlyOn_weierstrassFactor_div_of_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/hasproduniformlyon-weierstrassfactor-div-of-bound--7e264d55755ea2e13671938d.md) | 394 | `result-track:7e264d55755ea2e13671938d9730f9cb3c057c8790621d573f50d86a81253a6e` |
| 31 | `lemma` | [hasProdLocallyUniformlyOn_weierstrassFactor_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/hasprodlocallyuniformlyon-weierstrassfactor-div--e774cb12f45756885524c12b.md) | 418 | `result-track:e774cb12f45756885524c12b6cf112a58bd7f296d39095dd2af08c2151eeb78c` |
| 32 | `lemma` | [hasProdLocallyUniformlyOn_weierstrassFactor_div_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/hasprodlocallyuniformlyon-weierstrassfactor-div-of-summable-inv-pow--2013079c1620d9bc127a284c.md) | 439 | `result-track:2013079c1620d9bc127a284cf491155b3964e63ee3491bfd050d24ac4f6448ca` |
| 33 | `lemma` | [multipliableLocallyUniformlyOn_weierstrassFactor_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/multipliablelocallyuniformlyon-weierstrassfactor-div--74c8f3a2be3ee17b544d8763.md) | 449 | `result-track:74c8f3a2be3ee17b544d8763f7575250912560f8368f2b6dc347671d439a10bb` |
| 34 | `lemma` | [multipliableLocallyUniformlyOn_weierstrassFactor_div_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variant97379338fe7b3c265899a12db7bc369297da84eb24605a00277e04a6dabfc9f0.lean/declarations/multipliablelocallyuniformlyon-weierstrassfactor-div-of-summable-inv-pow--539047c0c453e4ca3332d9e7.md) | 456 | `result-track:539047c0c453e4ca3332d9e7721dc272ed35d89f405a739e934580701229550f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
