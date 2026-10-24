# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.WeierstrassFactor.Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5527806281caa8d79839085994d1455378e2fef",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5527806281caa8d79839085994d1455378e2fef`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean.json)

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
| 1 | `def` | [weierstrassFactor](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor--a2cd2d92c9c308709e2ec8a3.md) | 60 | `declaration-track:a2cd2d92c9c308709e2ec8a3097ddfb440ef5a7d8017b45141730dca27d27be8` |
| 2 | `lemma` | [weierstrassFactor_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-def--a549aac6d03b19960342ea02.md) | 63 | `result-track:a549aac6d03b19960342ea028d60a2fe62fd236b380cb4f8b8536af541a95178` |
| 3 | `lemma` | [weierstrassFactor_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-zero--ae61523395cd14bea15e5c2e.md) | 68 | `result-track:ae61523395cd14bea15e5c2e894dedec338ddc77f32bd9fa30e3692444783e32` |
| 4 | `lemma` | [weierstrassFactor_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-at-zero--bd9d25736b78fb33568b9f41.md) | 72 | `result-track:bd9d25736b78fb33568b9f417cd0a94e8a23e50c6249a06828ef7b02e6d0708d` |
| 5 | `lemma` | [weierstrassFactor_at_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-at-one--c4a16d0f71bfc4ce8fb2591b.md) | 76 | `result-track:c4a16d0f71bfc4ce8fb2591baea9738510c0bda8517980e159ec5b9317aa2820` |
| 6 | `lemma` | [weierstrassFactor_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-eq-zero-iff--048565b4888a887825b0199c.md) | 79 | `result-track:048565b4888a887825b0199c8b18687e669c7a319e670feb6b46eeb4df6de8b2` |
| 7 | `lemma` | [weierstrassFactor_ne_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-ne-zero-iff--552f437066ea9df623a8dd6a.md) | 90 | `result-track:552f437066ea9df623a8dd6a89d759a5dc83724b89c0817d5b3ce0629f50e659` |
| 8 | `lemma` | [weierstrassFactor_ne_zero_of_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-ne-zero-of-ne-one--fd781ba79630586cee8ba653.md) | 94 | `result-track:fd781ba79630586cee8ba6530f208ad0d7b468bbab6b923b56873d87ef0db138` |
| 9 | `lemma` | [weierstrassFactor_div_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-div-eq-zero-iff--b4b70c1ce1bee46802f94e28.md) | 98 | `result-track:b4b70c1ce1bee46802f94e2858b5678a5da90e635ee36772d6d9c1705636b418` |
| 10 | `lemma` | [weierstrassFactor_div_ne_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-div-ne-zero-iff--444753fe9073ce64d81490ef.md) | 107 | `result-track:444753fe9073ce64d81490ef80ce6e9f1da4a2d5978c8f67ea69703b3ded5e34` |
| 11 | `lemma` | [differentiable_weierstrassFactor](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/differentiable-weierstrassfactor--c24965af40c7967932eba3a2.md) | 112 | `result-track:c24965af40c7967932eba3a29955c8907c9ab1ffd27909767a9e71a4ef33b128` |
| 12 | `lemma` | [hasDerivAt_weierstrassFactor_at_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/hasderivat-weierstrassfactor-at-one--00185f8021593c354e92fdc7.md) | 118 | `result-track:00185f8021593c354e92fdc7fc8ec3d9f499b066c53b0056ddf15bb8a2e9cb89` |
| 13 | `lemma` | [deriv_weierstrassFactor_at_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/deriv-weierstrassfactor-at-one--27bbf5caf87cc33b35b93ebd.md) | 130 | `result-track:27bbf5caf87cc33b35b93ebd5b6ea91f161a4b7c1374ccd61ed7e735e73d5371` |
| 14 | `lemma` | [deriv_weierstrassFactor_at_one_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/deriv-weierstrassfactor-at-one-ne-zero--ae98933433cabe436f2fae3f.md) | 134 | `result-track:ae98933433cabe436f2fae3fe366a169307057e8127517a61915052ff7337ba1` |
| 15 | `lemma` | [hasDerivAt_weierstrassFactor_div_at_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/hasderivat-weierstrassfactor-div-at-self--a3e5ea07f557f1e6288f3e24.md) | 138 | `result-track:a3e5ea07f557f1e6288f3e24e74f38d6a2dfa95c48ecfeddf776e668a6d3f33c` |
| 16 | `lemma` | [deriv_weierstrassFactor_div_at_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/deriv-weierstrassfactor-div-at-self--5a65d623eab56765bfbfcf60.md) | 150 | `result-track:5a65d623eab56765bfbfcf604ebd2aeb978839a6e62a67c03bf6633cbf249832` |
| 17 | `lemma` | [deriv_weierstrassFactor_div_at_self_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/deriv-weierstrassfactor-div-at-self-ne-zero--123500a60ba9cc3380ef0ed8.md) | 155 | `result-track:123500a60ba9cc3380ef0ed8fbeef4e9dcf4f4a8052f6f987dfb2d4970be0260` |
| 18 | `theorem` | [analyticOrderAt_weierstrassFactor_div_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/analyticorderat-weierstrassfactor-div-self--4ef354b3286e45ba4e454d98.md) | 160 | `result-track:4ef354b3286e45ba4e454d9899a506713acc748374da601bcc9f60d27b8d6bb2` |
| 19 | `theorem` | [analyticOrderNatAt_weierstrassFactor_div_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/analyticordernatat-weierstrassfactor-div-self--edaad511360d31631dd5996b.md) | 197 | `result-track:edaad511360d31631dd5996b13382e6d9e9b30dad3a6fa47489259d8ac9b160c` |
| 20 | `lemma` | [weierstrassFactor_eq_exp_neg_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-eq-exp-neg-tail--ca0d8850eb0ace307d929556.md) | 202 | `result-track:ca0d8850eb0ace307d9295561fd6b691e36cba9b84904a91d57627aa26b5cff8` |
| 21 | `theorem` | [weierstrassFactor_sub_one_pow_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/weierstrassfactor-sub-one-pow-bound--3973cce53e93dfdeae1d06a8.md) | 219 | `result-track:3973cce53e93dfdeae1d06a8253908709e211e8ac821e0a026d665cb815cceed` |
| 22 | `lemma` | [log_norm_weierstrassFactor_ge_log_norm_one_sub_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/log-norm-weierstrassfactor-ge-log-norm-one-sub-sub--44520ca7cdef5448c8d1ba1c.md) | 269 | `result-track:44520ca7cdef5448c8d1ba1c41b8b37e81e71b9b9ad7098ad1dcaac871cf30f6` |
| 23 | `lemma` | [log_norm_weierstrassFactor_ge_neg_two_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/log-norm-weierstrassfactor-ge-neg-two-pow--161a6809a793fcd7ad835944.md) | 296 | `result-track:161a6809a793fcd7ad8359446aa4d3096633a4ca3a7673842c01cfecf14285ac` |
| 24 | `lemma` | [log_norm_weierstrassFactor_ge_log_norm_one_sub_nat_mul_max_one_norm_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/log-norm-weierstrassfactor-ge-log-norm-one-sub-nat-mul-max-one-norm-pow--a169457ff4c18395aeaa1497.md) | 319 | `result-track:a169457ff4c18395aeaa14977e570503030313b3eec811ce79208970872852a3` |
| 25 | `lemma` | [eventually_le_norm_div_two_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/eventually-le-norm-div-two-of-summable-inv-pow--b19e64ea3e50f7286cb99789.md) | 332 | `result-track:b19e64ea3e50f7286cb99789a13d486dcb4c9d2b315d5d588525beac528705a4` |
| 26 | `lemma` | [summable_scaled_bound_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/summable-scaled-bound-of-summable-inv-pow--bb1895475457b1092dd03d12.md) | 359 | `result-track:bb1895475457b1092dd03d12b174749d9197766dcb4d0f87d5eeddb4f415f7ce` |
| 27 | `lemma` | [continuousOn_weierstrassFactor_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/continuouson-weierstrassfactor-div--c947dfa98090fad3f244f06b.md) | 366 | `result-track:c947dfa98090fad3f244f06b0f37ad0c60c1960f12de56e0bf1efa0e10320661` |
| 28 | `lemma` | [norm_weierstrassFactor_div_sub_one_le_pow_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/norm-weierstrassfactor-div-sub-one-le-pow-div--788ebadf47c449c73fedc307.md) | 371 | `result-track:788ebadf47c449c73fedc307c8bb699c22ea7e33c6668b1b32b6aec57816e756` |
| 29 | `lemma` | [summable_norm_weierstrassFactor_div_sub_one_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/summable-norm-weierstrassfactor-div-sub-one-of-summable-inv-pow--e935c79b5d5d27694a23815c.md) | 391 | `result-track:e935c79b5d5d27694a23815c23c0ae0700589eaaabe84abd87b36ded61eb6c84` |
| 30 | `lemma` | [hasProdUniformlyOn_weierstrassFactor_div_of_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/hasproduniformlyon-weierstrassfactor-div-of-bound--9c2fa9b332990701287527d5.md) | 402 | `result-track:9c2fa9b332990701287527d513eb5ec5e341cf22fa077cbbf7bb1e1bd84e8e7d` |
| 31 | `lemma` | [hasProdLocallyUniformlyOn_weierstrassFactor_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/hasprodlocallyuniformlyon-weierstrassfactor-div--bb87d899646b4683d7ea3e62.md) | 426 | `result-track:bb87d899646b4683d7ea3e62f870df74a9199ee6559648690f32c8604a4922ba` |
| 32 | `lemma` | [hasProdLocallyUniformlyOn_weierstrassFactor_div_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/hasprodlocallyuniformlyon-weierstrassfactor-div-of-summable-inv-pow--8661a589f2ee1cb72fce5cc8.md) | 447 | `result-track:8661a589f2ee1cb72fce5cc843850ef7fc9de96abe11cef22ff9896da6a4343f` |
| 33 | `lemma` | [multipliableLocallyUniformlyOn_weierstrassFactor_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/multipliablelocallyuniformlyon-weierstrassfactor-div--884d3fb0a73bbb9cbae819d3.md) | 457 | `result-track:884d3fb0a73bbb9cbae819d34d51da2faa0649ecd01fd2ed5822376267a0a20b` |
| 34 | `lemma` | [multipliableLocallyUniformlyOn_weierstrassFactor_div_of_summable_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/WeierstrassFactor/Variante0d881b6c32aecf9f40f17249b401818c80507264d40268f8ca5d4d65af68f11.lean/declarations/multipliablelocallyuniformlyon-weierstrassfactor-div-of-summable-inv-pow--b583774fc298a96d1939ea55.md) | 464 | `result-track:b583774fc298a96d1939ea55ddc85117219d214c4c4f5e2e87273be27b7665a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
