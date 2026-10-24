# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaAsymp.Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b48e76570fde4bd3040098013184e9afc81887a",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b48e76570fde4bd3040098013184e9afc81887a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/term--3b049e124fcf2702ec22d829.md) | 72 | `declaration-track:3b049e124fcf2702ec22d829832df652b15a35a35fd1c878e8c764c5b60d34b2` |
| 2 | `def` | [termSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/termsum--7e4785828c2ffa5e2b336e98.md) | 75 | `declaration-track:7e4785828c2ffa5e2b336e982930f924770bc975c752d0825af8c877311279f9` |
| 3 | `def` | [termTSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/termtsum--c4bb2e5a5d336bf9564b28f0.md) | 78 | `declaration-track:c4bb2e5a5d336bf9564b28f0ccf3dc613b1477c0a74c95859867847dd0436ecf` |
| 4 | `lemma` | [term_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/term-nonneg--e9778b41842c85139bbbae42.md) | 83 | `result-track:e9778b41842c85139bbbae42e5299b913ff2aba31fedeb7ee91a3a4a17134f84` |
| 5 | `lemma` | [term_welldef](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/term-welldef--845a39dac0fb9a98034badc5.md) | 89 | `result-track:845a39dac0fb9a98034badc5db1436b2d0ace0df60d081b42e6bfdab48f5d94c` |
| 6 | `lemma` | [term_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/term-one--3b50da9de5a2520d4345a579.md) | 103 | `result-track:3b50da9de5a2520d4345a5796f44036c60f9565346b541409f7966f5b9775354` |
| 7 | `lemma` | [termSum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/termsum-one--a1de0adb00cadd4a7cf751d5.md) | 140 | `result-track:a1de0adb00cadd4a7cf751d5216b9eaab74e0b4c7395f7de1477d96ce6db4ed5` |
| 8 | `lemma` | [term_tsum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/term-tsum-one--b27030bc98643f68401cd047.md) | 157 | `result-track:b27030bc98643f68401cd04783b4c1e68042c892a75236a4bbcffe4f13370f4f` |
| 9 | `lemma` | [term_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/term-of-lt--2d2d55039438e15e53541017.md) | 176 | `result-track:2d2d55039438e15e53541017cc33cc2cb3a2e326364a36972e8861f6a3b798cc` |
| 10 | `lemma` | [termSum_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/termsum-of-lt--a43fe4e26d35a74002a8ff96.md) | 206 | `result-track:a43fe4e26d35a74002a8ff966dc5e56cf77b2dad3a2f9117e5b607cc1bc1b865` |
| 11 | `lemma` | [termTSum_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/termtsum-of-lt--2bce30b58347251c348e402b.md) | 232 | `result-track:2bce30b58347251c348e402bbdaad009334e4d51566e9c0241498906746eb5db` |
| 12 | `lemma` | [zeta_limit_aux1](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/zeta-limit-aux1--1efa831b5254b4bf898cf271.md) | 268 | `result-track:1efa831b5254b4bf898cf271121e980d8659b15e64812ffb92df0235015509af` |
| 13 | `lemma` | [continuousOn_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/continuouson-term--3e86a31c9a66ef91737df148.md) | 282 | `result-track:3e86a31c9a66ef91737df1482a362fddba2669cefbaf75dd2f6b2f9204c7719e` |
| 14 | `lemma` | [continuousOn_termTSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/continuouson-termtsum--6851b07abc1b04eab69c13b1.md) | 306 | `result-track:6851b07abc1b04eab69c13b1e8518ac921ae85c07ba178b14e2ca251e0b225f4` |
| 15 | `lemma` | [tendsto_riemannZeta_sub_one_div_nhds_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/tendsto-riemannzeta-sub-one-div-nhds-right--325b4209882253fa6f091ffe.md) | 326 | `result-track:325b4209882253fa6f091ffe67f88113db69886202b4975a5423c42dacad9813` |
| 16 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.Term.Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.tendsto_riemannZeta_sub_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-term-variantbb6efa4fed8c29220292--ce956460fb3c03facc8d9202.md) | 352 | `result-track:ce956460fb3c03facc8d9202f6437ca54399a41950b32f835d979afb65d86cda` |
| 17 | `lemma` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.Term.Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.isBigO_riemannZeta_sub_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-term-variantbb6efa4fed8c29220292--f8e141c6daa814898f126aff.md) | 385 | `result-track:f8e141c6daa814898f126aff4f40d7cef3454f073609508d475ccbeb2f9323b1` |
| 18 | `lemma` | [tendsto_Gamma_term_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/tendsto-gamma-term-aux--b8b77f26e62f909d667a6d15.md) | 396 | `result-track:b8b77f26e62f909d667a6d151fdde09d35ea3952d55232e2c4d362cfb3a6760b` |
| 19 | `lemma` | [tendsto_riemannZeta_sub_one_div_Gammaℝ](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/tendsto-riemannzeta-sub-one-div-gamma--b43a65092ca62a5213a7d367.md) | 411 | `result-track:b43a65092ca62a5213a7d367e2b0a25e96d3df6f7c707fbea220ea6d875f494d` |
| 20 | `lemma` | [riemannZeta_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta-one--4f590fd94b1dc7655b61916b.md) | 429 | `result-track:4f590fd94b1dc7655b61916b4c72887e6d8e39e896f76d0e1631bd3d907e6ce0` |
| 21 | `lemma` | [completedRiemannZeta_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/completedriemannzeta-one--290e80d02fbf18368839da80.md) | 437 | `result-track:290e80d02fbf18368839da800720e328262f9331e2b2445bd2787ff6c3372450` |
| 22 | `lemma` | [completedRiemannZeta₀_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/completedriemannzeta-one--ca9a6a5fa84d3d788cba2037.md) | 446 | `result-track:ca9a6a5fa84d3d788cba2037491654477d7b16ff06f26486b73a2a8866421f3d` |
| 23 | `lemma` | [riemannZeta_one_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta-one-ne-zero--a380f7eccd5820afba749740.md) | 452 | `result-track:a380f7eccd5820afba749740c76b2238f9bd049016eef59e474bb7c08e6142b1` |
| 24 | `theorem` | [riemannZeta_conj](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta-conj--6777a9e1dc136ddcd54c3c11.md) | 469 | `result-track:6777a9e1dc136ddcd54c3c1145d877e72b0d9f8173d08ea18353a5d8629edb11` |
| 25 | `lemma` | [riemannZeta_eventually_ne_zero_nhds_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta-eventually-ne-zero-nhds-one--9448a88da05c2a29818c0cfd.md) | 495 | `result-track:9448a88da05c2a29818c0cfd287b423ebf8a695b7f145a0ba4f31830e5e51176` |
| 26 | `lemma` | [completedRiemannZeta₀_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/completedriemannzeta-zero--ad8da5772cba6b86e5651319.md) | 499 | `result-track:ad8da5772cba6b86e56513195bc984348d3b1b191828454d431175d78400d00e` |
| 27 | `theorem` | [deriv_riemannZeta_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/deriv-riemannzeta-zero--be2de0919663a024a83e9266.md) | 504 | `result-track:be2de0919663a024a83e92662d78ea5bd95d847e1651ef25656656b92bff87c8` |
| 28 | `def` | [riemannZeta₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta--a794a888a2ffc5953844a4a5.md) | 543 | `declaration-track:a794a888a2ffc5953844a4a5588e23709b8b808c412c946d257a3cd66c8a20fb` |
| 29 | `def` | [riemannZeta₁](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta--4555b76634a3d9771fb47f5c.md) | 547 | `declaration-track:4555b76634a3d9771fb47f5ca065aa8e5a05a1602a802f562069cf0949374dac` |
| 30 | `lemma` | [riemannZeta₀_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta-one--cd9436c114c159749713263b.md) | 550 | `result-track:cd9436c114c159749713263bea44be92c5b674329e523fa9b19b44b57bfeb525` |
| 31 | `lemma` | [riemannZeta₁_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta-one--ad49e6a40be754bb69fc551c.md) | 553 | `result-track:ad49e6a40be754bb69fc551c1f61bc7dddf9033479647c3040be6fa5d7dc3198` |
| 32 | `lemma` | [riemannZeta_eq_inv_sub_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta-eq-inv-sub-add--811378dc7b4a71a59c0920d0.md) | 555 | `result-track:811378dc7b4a71a59c0920d05bc5ca020c85de06a745885af0259f446afd5259` |
| 33 | `lemma` | [riemannZeta_eq_inv_sub_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta-eq-inv-sub-mul--f578e2efb2fa86c8b545d0a0.md) | 558 | `result-track:f578e2efb2fa86c8b545d0a0b9500fe2532f6368acbf5bf1ebacb372076634da` |
| 34 | `lemma` | [differentiable_riemannZeta₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/differentiable-riemannzeta--eadc9dc83709e6aecb10bd94.md) | 562 | `result-track:eadc9dc83709e6aecb10bd9487c647a8fd420716d3fc0cc730eab57cd3a45500` |
| 35 | `lemma` | [differentiable_riemannZeta₁](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/differentiable-riemannzeta--8729a95f800a25f41bcee6fa.md) | 572 | `result-track:8729a95f800a25f41bcee6fa3feacb1def2bb101d1222e0e457724ece5682719` |
| 36 | `lemma` | [riemannZeta₁_ne_zero_of_near_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/riemannzeta-ne-zero-of-near-one--159c0c154def0923a3bbfc7c.md) | 575 | `result-track:159c0c154def0923a3bbfc7c0fd18380c1f1d33e9ef03eb9e66846e74d1ede9d` |
| 37 | `lemma` | [deriv_riemannZeta₁_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/deriv-riemannzeta-one--edfc9d037d3db7c34ee09fac.md) | 580 | `result-track:edfc9d037d3db7c34ee09fac55b64920f589463edc9c103245f4fd9e864e4e93` |
| 38 | `lemma` | [deriv_riemannZeta_eq_neg_inv_sub_sq_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/deriv-riemannzeta-eq-neg-inv-sub-sq-add--f5d9a6da76cfe412765bf089.md) | 585 | `result-track:f5d9a6da76cfe412765bf0892e0120d5bf6a9cb6c2434fc0bcc8ac08b62e4cec` |
| 39 | `lemma` | [deriv_riemannZeta_eq_neg_inv_sub_sq_mul_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/deriv-riemannzeta-eq-neg-inv-sub-sq-mul-add--da456139358276628ac84820.md) | 593 | `result-track:da456139358276628ac848207af2da8817a56c14149e144602cf6ad53eceea47` |
| 40 | `lemma` | [deriv_riemannZeta_add_inv_sub_sq_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/deriv-riemannzeta-add-inv-sub-sq-bounded--b01187ecd89d59553e5e3490.md) | 602 | `result-track:b01187ecd89d59553e5e3490a03ec9e6105b591df5c0257721366adf71480692` |
| 41 | `lemma` | [log_riemannZeta_eq_neg_log_sub_add_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/log-riemannzeta-eq-neg-log-sub-add-ofreal--942c49b49e3cbf778cbc225d.md) | 608 | `result-track:942c49b49e3cbf778cbc225d1f786869f9d62259cbf670bef46f1b2906dc050f` |
| 42 | `lemma` | [log_riemannZeta_add_log_sub_isBigO_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/log-riemannzeta-add-log-sub-isbigo-ofreal--d3a638f037cbff43b8f8904b.md) | 615 | `result-track:d3a638f037cbff43b8f8904b853610cd5001c7424a2adda5546f81cb86557798` |
| 43 | `lemma` | [log_riemannZeta_add_log_sub_isLittleO_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/log-riemannzeta-add-log-sub-islittleo-ofreal--d478add1291906a32b0bbb2a.md) | 626 | `result-track:d478add1291906a32b0bbb2a62f4c4a3f69e8061283dd08141d2a6ddfd6f99b3` |
| 44 | `lemma` | [log_deriv_riemannZeta_eq_neg_inv_sub_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/log-deriv-riemannzeta-eq-neg-inv-sub-add--c12f4295a08d62dafa9a40b1.md) | 631 | `result-track:c12f4295a08d62dafa9a40b15209cabd7d3d1dc7bbe96e98b43d8cf20305170d` |
| 45 | `lemma` | [log_deriv_riemannZeta_add_inv_sub_sub_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/log-deriv-riemannzeta-add-inv-sub-sub-isbigo--eea2a5c05cdd308e6583b5a7.md) | 638 | `result-track:eea2a5c05cdd308e6583b5a72bf4cd40c757e26b12925152a61517f62b32df6c` |
| 46 | `lemma` | [log_deriv_riemannZeta_add_inv_sub_sub_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/log-deriv-riemannzeta-add-inv-sub-sub-islittleo--238815a3a39917f51d19133e.md) | 649 | `result-track:238815a3a39917f51d19133eb89669e8064073caeb5fcc01d57a038b99c0b5c5` |
| 47 | `lemma` | [log_deriv_riemannZeta_add_inv_sub_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/log-deriv-riemannzeta-add-inv-sub-bounded--a6d6c0c5f07b394cbc89ee08.md) | 655 | `result-track:a6d6c0c5f07b394cbc89ee08ba38cfa402083478a7a802d5b63ac1e2414ad900` |
| 48 | `lemma` | [inv_riemannZeta_eq_sub_mul_of_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/inv-riemannzeta-eq-sub-mul-of-ne-one--a29f50078e01542ea71ddb16.md) | 660 | `result-track:a29f50078e01542ea71ddb16b78e00214977aa430d626e047d83d198478be1db` |
| 49 | `lemma` | [inv_riemannZeta_eq_sub_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/inv-riemannzeta-eq-sub-mul--25b5c6cb928de70180395c9d.md) | 664 | `result-track:25b5c6cb928de70180395c9d4d48ae5d0af2a2dbf0afbdcef03b4996edcd576c` |
| 50 | `lemma` | [inv_riemannZeta_sub_sub_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/inv-riemannzeta-sub-sub-isbigo--b18ace4694b8b008d020d75b.md) | 669 | `result-track:b18ace4694b8b008d020d75b860eca35cb1d74f7780b1f1c2e2c8f8e373a0ccf` |
| 51 | `lemma` | [inv_riemannZeta_sub_sub_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/inv-riemannzeta-sub-sub-islittleo--36fd69eb67343c313f658807.md) | 679 | `result-track:36fd69eb67343c313f6588071b0b43a1165a8d9099f130d8ef8dbc3071a1464c` |
| 52 | `lemma` | [inv_riemannZeta_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant83191e9b74f4103e49412fa7d9567cb404f0e7a4fb13059b8b2987242f20b7e5.lean/declarations/inv-riemannzeta-isbigo--2beda4294b6a29d73a4c7be2.md) | 686 | `result-track:2beda4294b6a29d73a4c7be25f87b3b41a9626b807e08267ab66404043c739bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
