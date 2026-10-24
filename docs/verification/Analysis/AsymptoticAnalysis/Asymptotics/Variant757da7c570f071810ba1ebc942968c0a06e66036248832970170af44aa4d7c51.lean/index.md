# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f86b44b2d25a85ad6df8636d06a0d75bf22c56fd",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f86b44b2d25a85ad6df8636d06a0d75bf22c56fd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-attop--63f9d1fed19d37ea6f10a117.md) | 32 | `result-track:63f9d1fed19d37ea6f10a117443282bcffa909104a36867e7ecacb5816bf55b6` |
| 2 | `theorem` | [tendsto_rpow_neg_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-neg-attop--b7c2eb4a2425047bf511d1ac.md) | 39 | `result-track:b7c2eb4a2425047bf511d1acb97ce795393699c309d713d4452e3556ab618e1c` |
| 3 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-attop-of-base-lt-one--f9b8708792fe0ba6b3a4ebe3.md) | 44 | `result-track:f9b8708792fe0ba6b3a4ebe3d3c2c2138271de6083d2bcea5c4964a0b5bf2ced` |
| 4 | `lemma` | [tendsto_rpow_atTop_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-attop-of-base-gt-one--8dd19586bb7e5f3441f696cb.md) | 69 | `result-track:8dd19586bb7e5f3441f696cb440e3c7285cbd05a1bdf8678e396fdea75d4272f` |
| 5 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-atbot-of-base-lt-one--117093f16271b38ed0dcd175.md) | 75 | `result-track:117093f16271b38ed0dcd175d83d174ef9ad45ba6dd62bf5bb0403225b50e32f` |
| 6 | `lemma` | [tendsto_rpow_atBot_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-atbot-of-base-gt-one--078aabe566e2e2abaa2dc084.md) | 81 | `result-track:078aabe566e2e2abaa2dc08443ee6ef015c81d9229c45b53a4fe00f856514c7f` |
| 7 | `theorem` | [tendsto_rpow_div_mul_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-div-mul-add--68eb066b8ec3466f049fb7b4.md) | 90 | `result-track:68eb066b8ec3466f049fb7b46c7c4e37bdb8fe926551835680f154e2feb88360` |
| 8 | `theorem` | [tendsto_rpow_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-div--3ab720381004fd05ffe81d4b.md) | 107 | `result-track:3ab720381004fd05ffe81d4bd925a5664481cac0c8039d686dd680bec2b67675` |
| 9 | `theorem` | [tendsto_rpow_neg_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-neg-div--f6c53fe831457c826e2e137a.md) | 112 | `result-track:f6c53fe831457c826e2e137ada797f07c35abf147fd639c96ab051397d7ff88a` |
| 10 | `theorem` | [tendsto_exp_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-exp-div-rpow-attop--04566282b91e10aeca89a120.md) | 117 | `result-track:04566282b91e10aeca89a120cb05cabe0554e4a82112be3aa95bdb23413ccdd5` |
| 11 | `theorem` | [tendsto_exp_mul_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-exp-mul-div-rpow-attop--48c4361aa27190b173dda677.md) | 125 | `result-track:48c4361aa27190b173dda6772843e4868a232489a325e21013237d7ea3699536` |
| 12 | `theorem` | [tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-rpow-mul-exp-neg-mul-attop-nhds-zero--64974a46df81a0d101f36df3.md) | 133 | `result-track:64974a46df81a0d101f36df3931604c0e9e7e33b46d0fc702b1a6b24f436212f` |
| 13 | `theorem` | [NNReal.tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/nnreal-tendsto-rpow-attop--2bcca85f4996f234fcc764cc.md) | 138 | `result-track:2bcca85f4996f234fcc764cc180ae28faabd6b9914be1764a4a3dea4811534e8` |
| 14 | `theorem` | [ENNReal.tendsto_rpow_at_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/ennreal-tendsto-rpow-at-top--79be94643262836064885f9d.md) | 147 | `result-track:79be94643262836064885f9dfaf209e2c8e9a516fb0ddee12c7dc88a1181bb24` |
| 15 | `theorem` | [isTheta_exp_arg_mul_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/istheta-exp-arg-mul-im--abddd8e8911967e7f6d85e14.md) | 177 | `result-track:abddd8e8911967e7f6d85e14eaead8a692d20988fdbf3cf110821c95ee4df5ac` |
| 16 | `theorem` | [isBigO_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/isbigo-cpow-rpow--dc957d555cd7b84919cb0b30.md) | 186 | `result-track:dc957d555cd7b84919cb0b30116c3e6aea7961793ba0256c578e12f3e124e3ce` |
| 17 | `theorem` | [isTheta_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/istheta-cpow-rpow--70ccf93f6bba693031b8b23c.md) | 197 | `result-track:70ccf93f6bba693031b8b23c7141322707ca2b953f5666ca7d2572746b86d38f` |
| 18 | `theorem` | [isTheta_cpow_const_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/istheta-cpow-const-rpow--ef7152987170b8e462ad4dff.md) | 209 | `result-track:ef7152987170b8e462ad4dff873db49dba2f18162ecb0742b6b86aca944e4404` |
| 19 | `theorem` | [IsBigOWith.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/isbigowith-rpow--94615f56f06aeefcb32c2b28.md) | 224 | `result-track:94615f56f06aeefcb32c2b283ae78e46076c6f7515569238b426d38928660a0e` |
| 20 | `theorem` | [IsBigO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/isbigo-rpow--27306940f2c81e6194484fd1.md) | 233 | `result-track:27306940f2c81e6194484fd1741f3f84665096e2dbb74ce4c05cd0d763c4c492` |
| 21 | `theorem` | [IsTheta.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/istheta-rpow--725ceb9733b63c987e3ca246.md) | 238 | `result-track:725ceb9733b63c987e3ca2461e2e19c231b95c9b4694a9473e6507134fe8cb78` |
| 22 | `theorem` | [IsLittleO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-rpow--69eeeb5d9ca9fe2195512928.md) | 242 | `result-track:69eeeb5d9ca9fe21955129285724cde72445ffd5c21f4b334481e160fbb53e3d` |
| 23 | `lemma` | [IsBigO.sqrt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/isbigo-sqrt--7f2ebde9d81b9e339e6a703a.md) | 248 | `result-track:7f2ebde9d81b9e339e6a703ae98eabacc1a59c9c7851d43bbd54c34badef8784` |
| 24 | `lemma` | [IsLittleO.sqrt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-sqrt--e66e7b1aa71516e664f08229.md) | 252 | `result-track:e66e7b1aa71516e664f08229f6d7363d133dffd2eb837241d5f8adbb71d5c431` |
| 25 | `lemma` | [IsTheta.sqrt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/istheta-sqrt--1a76d0007fb44bf50f704373.md) | 256 | `result-track:1a76d0007fb44bf50f70437308eac5e46b3f9358b10d88386cb9b7b931c72275` |
| 26 | `theorem` | [isBigO_atTop_natCast_rpow_of_tendsto_div_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/isbigo-attop-natcast-rpow-of-tendsto-div-rpow--0d1745714742e26e31ceaa5c.md) | 260 | `result-track:0d1745714742e26e31ceaa5cf59d2e870e84f5fd15ddd5929175376a3bd45644` |
| 27 | `theorem` | [IsBigO.mul_atTop_rpow_of_isBigO_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/isbigo-mul-attop-rpow-of-isbigo-rpow--144c579df228463459e875c8.md) | 270 | `result-track:144c579df228463459e875c8cb86f8b1b3add1f07539db7a17d7d84d085c21f5` |
| 28 | `theorem` | [IsBigO.mul_atTop_rpow_natCast_of_isBigO_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/isbigo-mul-attop-rpow-natcast-of-isbigo-rpow--b150204063eec5658c5e83be.md) | 280 | `result-track:b150204063eec5658c5e83beb5a1e317e1a7e438a031e4eb3bf2e13745cde37d` |
| 29 | `theorem` | [isLittleO_rpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-rpow-exp-pos-mul-attop--f0ffa09906920505d6a82e20.md) | 296 | `result-track:f0ffa09906920505d6a82e2000b3dcb64a10886d0bcfc3b512feb1ca8e32568e` |
| 30 | `theorem` | [isLittleO_zpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-zpow-exp-pos-mul-attop--e1f17ec7be2a50ad38c835b7.md) | 303 | `result-track:e1f17ec7be2a50ad38c835b781faa9223905be53f52297d41bd1b031979a35cc` |
| 31 | `theorem` | [isLittleO_pow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-pow-exp-pos-mul-attop--0486af640913db9445efeab1.md) | 308 | `result-track:0486af640913db9445efeab1dae2a5dce83181584d5ea2a16f2dbb16db0cd690` |
| 32 | `theorem` | [isLittleO_rpow_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-rpow-exp-attop--e3c303913a3b8b8c42a6275d.md) | 313 | `result-track:e3c303913a3b8b8c42a6275d8e4265af541ef73cdc602b7b4966aa2372e85301` |
| 33 | `theorem` | [isLittleO_exp_neg_mul_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-exp-neg-mul-rpow-attop--daa5cc3307289ad95ba58726.md) | 317 | `result-track:daa5cc3307289ad95ba587263a6c6c1eb11f85fa4065a6dbd9f76ba5afd55c9f` |
| 34 | `theorem` | [isLittleO_log_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-log-rpow-attop--9be91eb1076f422283950ccc.md) | 327 | `result-track:9be91eb1076f422283950ccc6922148bb0d4c983a7a4a7347517b9d2ce33d482` |
| 35 | `theorem` | [isLittleO_log_rpow_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-log-rpow-rpow-attop--ec82e41c1d2c809622a02d7d.md) | 334 | `result-track:ec82e41c1d2c809622a02d7d8858ee057adf9a3a0bac0ba9cf14a9c67853685f` |
| 36 | `theorem` | [isLittleO_abs_log_rpow_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-abs-log-rpow-rpow-nhdsgt-zero--c778aa622b2d0b1c71f34ab6.md) | 352 | `result-track:c778aa622b2d0b1c71f34ab689954de4d7ae6c0ede67fb0cb50548933ed02ac1` |
| 37 | `theorem` | [isLittleO_log_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/islittleo-log-rpow-nhdsgt-zero--a6135b8b0f58f298bbb0f31c.md) | 363 | `result-track:a6135b8b0f58f298bbb0f31cb9a8db4a01189b65af6b6428f504d21b20e953a5` |
| 38 | `theorem` | [tendsto_log_div_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-log-div-rpow-nhdsgt-zero--7cb82821bded1e99734a5f4f.md) | 372 | `result-track:7cb82821bded1e99734a5f4f807f0bdaaca39864c37246c97c4a067fb720681c` |
| 39 | `theorem` | [tendsto_log_mul_rpow_nhdsGT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-log-mul-rpow-nhdsgt-zero--7884e6718a493eb7bbc67275.md) | 379 | `result-track:7884e6718a493eb7bbc67275f0b41337d130a378f6a105aa8f31620e3296b24b` |
| 40 | `lemma` | [tendsto_log_mul_self_nhdsLT_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant757da7c570f071810ba1ebc942968c0a06e66036248832970170af44aa4d7c51.lean/declarations/tendsto-log-mul-self-nhdslt-zero--933b0324b8c21caa61dd232c.md) | 387 | `result-track:933b0324b8c21caa61dd232c246db9897ef7f24a132dd2d2c44356e1644ee1c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
