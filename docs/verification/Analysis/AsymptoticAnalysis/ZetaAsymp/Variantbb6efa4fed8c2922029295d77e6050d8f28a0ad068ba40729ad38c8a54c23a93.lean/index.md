# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaAsymp.Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ff24a8a04888a98f63f34e0acca92e27e8843b4",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ff24a8a04888a98f63f34e0acca92e27e8843b4`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/term--b6aad5ca5a61fe4052c0d7da.md) | 64 | `declaration-track:b6aad5ca5a61fe4052c0d7da9e9544599ac375a6599c797225a3347a873fd93e` |
| 2 | `def` | [termSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/termsum--6f7ac82fe142851bd7721fb9.md) | 67 | `declaration-track:6f7ac82fe142851bd7721fb91ecc409d3b925d26dec687cdd8bf4c97f4ffec66` |
| 3 | `def` | [termTSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/termtsum--a0a311a20623cfa06fc8d270.md) | 70 | `declaration-track:a0a311a20623cfa06fc8d2704b44bec6109e3f9b40b5730d5dca792523418361` |
| 4 | `lemma` | [term_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/term-nonneg--1411fe567538e51c9662a558.md) | 75 | `result-track:1411fe567538e51c9662a5583900facc5dcb6700dbc108b15545de5046752d6d` |
| 5 | `lemma` | [term_welldef](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/term-welldef--2ae1866101a675e573fe52e4.md) | 81 | `result-track:2ae1866101a675e573fe52e429fad0518558a47f37f183634765b4014cb20b2c` |
| 6 | `lemma` | [term_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/term-one--e141c28e31976e7be5c5ef04.md) | 95 | `result-track:e141c28e31976e7be5c5ef04dcbd62566afedb33b02b57ff580e7d0be8f03f9c` |
| 7 | `lemma` | [termSum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/termsum-one--cd03107c9c04a2bcf6a06269.md) | 132 | `result-track:cd03107c9c04a2bcf6a06269a2879a0b356d1d2d1e83cf652d80529c714d8e06` |
| 8 | `lemma` | [term_tsum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/term-tsum-one--3ffb753b9a4be20290f0352c.md) | 149 | `result-track:3ffb753b9a4be20290f0352c6bdf3e164d10c7a67929869c7cdd9a7a45e6abf8` |
| 9 | `lemma` | [term_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/term-of-lt--0c648f9b8253909c02cdb55c.md) | 168 | `result-track:0c648f9b8253909c02cdb55cc5f2d837addd2012f8b5fc6af507150c57ffb3e2` |
| 10 | `lemma` | [termSum_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/termsum-of-lt--d94132554da278c00870b0e6.md) | 198 | `result-track:d94132554da278c00870b0e673ac5f2a89c5b6901ab4692572b356b1f60fbdd5` |
| 11 | `lemma` | [termTSum_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/termtsum-of-lt--6e2d445179e37725d609bc07.md) | 224 | `result-track:6e2d445179e37725d609bc07557f921dac4ff9fad38fdc300124e4454458883d` |
| 12 | `lemma` | [zeta_limit_aux1](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/zeta-limit-aux1--c5d4b42f9d20409143bb2bd0.md) | 260 | `result-track:c5d4b42f9d20409143bb2bd05631ee100604d36a7335c44e99c1c0aad136feea` |
| 13 | `lemma` | [continuousOn_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/continuouson-term--d6ea56f9e50b60d2d432977a.md) | 274 | `result-track:d6ea56f9e50b60d2d432977a55d17589f980b0bd052737b93dc5909a203e140b` |
| 14 | `lemma` | [continuousOn_termTSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/continuouson-termtsum--258fc08ee344fd99d85d3035.md) | 298 | `result-track:258fc08ee344fd99d85d3035855edccd69b8d5d5a77f04b2dab1b8df8af9398c` |
| 15 | `lemma` | [tendsto_riemannZeta_sub_one_div_nhds_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/tendsto-riemannzeta-sub-one-div-nhds-right--3494cf8bd63b5453267fcbf2.md) | 318 | `result-track:3494cf8bd63b5453267fcbf2bfbe9e9d7f996155c640b7594ce89b686bc304f2` |
| 16 | `theorem` | [_root_.tendsto_riemannZeta_sub_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/root-tendsto-riemannzeta-sub-one-div--e0130f89206a687572c1792b.md) | 344 | `result-track:e0130f89206a687572c1792b9bff78f2749fd5478dab8a4af2e895d62cfcdf89` |
| 17 | `lemma` | [_root_.isBigO_riemannZeta_sub_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/root-isbigo-riemannzeta-sub-one-div--ea1f6f7e3fbd99ac4cfb74b0.md) | 377 | `result-track:ea1f6f7e3fbd99ac4cfb74b0893f161033e0eab68b89fe82eba6117c50589d59` |
| 18 | `lemma` | [tendsto_Gamma_term_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/tendsto-gamma-term-aux--028cde4ece565cab933c5900.md) | 388 | `result-track:028cde4ece565cab933c5900a20cfd94b355328ef8db4dafeedc3c67f07c69f4` |
| 19 | `lemma` | [tendsto_riemannZeta_sub_one_div_Gammaℝ](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/tendsto-riemannzeta-sub-one-div-gamma--ad1effeca4258be43b4b58a7.md) | 403 | `result-track:ad1effeca4258be43b4b58a78fabbd0043b8c5492a89847f263f42f5f3636d25` |
| 20 | `lemma` | [riemannZeta_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta-one--c6657363dfd3cba05268e590.md) | 421 | `result-track:c6657363dfd3cba05268e59036589e009b082a46f2d6dacfeaa9c2cbb16f3ac8` |
| 21 | `lemma` | [completedRiemannZeta_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/completedriemannzeta-one--9ffd74a8c92de0e084479919.md) | 429 | `result-track:9ffd74a8c92de0e084479919dda42b6cda98a60eeb65842ff7d574c8a137632c` |
| 22 | `lemma` | [completedRiemannZeta₀_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/completedriemannzeta-one--816b31cc49bf458693793607.md) | 438 | `result-track:816b31cc49bf45869379360739448a15a3e5e173333d2500c9f729e9593362d1` |
| 23 | `lemma` | [riemannZeta_one_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta-one-ne-zero--77423aae9d27b7b8e3ef8b87.md) | 444 | `result-track:77423aae9d27b7b8e3ef8b873bca94ce6a8f25471d22cdd029f2d91f8872ca23` |
| 24 | `theorem` | [riemannZeta_conj](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta-conj--8142886632d0171bfde873e3.md) | 461 | `result-track:8142886632d0171bfde873e332a5f44b196a70c127f50f445818f7aa6080d6a6` |
| 25 | `lemma` | [riemannZeta_eventually_ne_zero_nhds_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta-eventually-ne-zero-nhds-one--ad97c0616161698a132e57b7.md) | 487 | `result-track:ad97c0616161698a132e57b7ef0cd259cccd31218292056c0484addb758fa2ba` |
| 26 | `lemma` | [completedRiemannZeta₀_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/completedriemannzeta-zero--71f42816aa79dfda0223d8c9.md) | 491 | `result-track:71f42816aa79dfda0223d8c9f2c6b61d834b09f5a9f434372968af4ad740e1f1` |
| 27 | `theorem` | [deriv_riemannZeta_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/deriv-riemannzeta-zero--3a89158cc9d6083c07427347.md) | 496 | `result-track:3a89158cc9d6083c07427347f5c05e3b7a71f65631e21415185a44ed4dfa28ae` |
| 28 | `def` | [riemannZeta₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta--43eceb32ffaafecca569e562.md) | 535 | `declaration-track:43eceb32ffaafecca569e5627660278db4be4c054fcdbe92aaa1ac8ff2d8ca46` |
| 29 | `def` | [riemannZeta₁](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta--3562acc2751f01442f29a560.md) | 539 | `declaration-track:3562acc2751f01442f29a5600f606a8820742824149619e955f5959e15d6bb9e` |
| 30 | `lemma` | [riemannZeta₀_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta-one--08c501869917e28e20651ae0.md) | 542 | `result-track:08c501869917e28e20651ae00eb9d61f874dc042905a8f895e3d308ad14e7d9c` |
| 31 | `lemma` | [riemannZeta₁_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta-one--e3f78b4557acc3a56561b608.md) | 545 | `result-track:e3f78b4557acc3a56561b6083abda133cff4844afec91ff222ecf31e620de419` |
| 32 | `lemma` | [riemannZeta_eq_inv_sub_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta-eq-inv-sub-add--3888c395f7a04b0438788d46.md) | 547 | `result-track:3888c395f7a04b0438788d46203b5d4aeea31acd5950aa3339596c3f98a8b3f2` |
| 33 | `lemma` | [riemannZeta_eq_inv_sub_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta-eq-inv-sub-mul--b871d544f1e83c998a96335a.md) | 550 | `result-track:b871d544f1e83c998a96335acffab439a374623aa9ed4f5308ffc985afa8b90b` |
| 34 | `lemma` | [differentiable_riemannZeta₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/differentiable-riemannzeta--609fa9dd2c1a6faeaa8b6434.md) | 554 | `result-track:609fa9dd2c1a6faeaa8b6434cb4ca9d783a793bf0f4692d9fdbc4923b3c53a04` |
| 35 | `lemma` | [differentiable_riemannZeta₁](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/differentiable-riemannzeta--cd2217c51a76125bd12dc109.md) | 564 | `result-track:cd2217c51a76125bd12dc109328d6104698fb1e85d639ca441b076ddffc8f1f0` |
| 36 | `lemma` | [riemannZeta₁_ne_zero_of_near_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/riemannzeta-ne-zero-of-near-one--b82b8987fe8c8ebc5c37e79a.md) | 567 | `result-track:b82b8987fe8c8ebc5c37e79a121affa6aabdcee386c75a36e0f164700304cb6b` |
| 37 | `lemma` | [deriv_riemannZeta₁_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/deriv-riemannzeta-one--872c10c7b421767e1d38d05c.md) | 572 | `result-track:872c10c7b421767e1d38d05c43b6698d4d5cac2865cbe4c3bad9b6d7f3ddfd9c` |
| 38 | `lemma` | [deriv_riemannZeta_eq_neg_inv_sub_sq_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/deriv-riemannzeta-eq-neg-inv-sub-sq-add--89b6220d69ae5ab8b3512c10.md) | 577 | `result-track:89b6220d69ae5ab8b3512c1071df4fb1d56761edf33f5f4d92bca81a548f67c1` |
| 39 | `lemma` | [deriv_riemannZeta_eq_neg_inv_sub_sq_mul_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/deriv-riemannzeta-eq-neg-inv-sub-sq-mul-add--bebed5b7f0cb6998cee62aa5.md) | 585 | `result-track:bebed5b7f0cb6998cee62aa578bc871d307dcae52849ea9487e4016c93e3910e` |
| 40 | `lemma` | [deriv_riemannZeta_add_inv_sub_sq_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/deriv-riemannzeta-add-inv-sub-sq-bounded--5e133074e7625be2080a880c.md) | 594 | `result-track:5e133074e7625be2080a880c4a3cedb74ae8fddd030eb8134030e4c734707301` |
| 41 | `lemma` | [log_riemannZeta_eq_neg_log_sub_add_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/log-riemannzeta-eq-neg-log-sub-add-ofreal--fa414c9370e1ce413dceb80f.md) | 600 | `result-track:fa414c9370e1ce413dceb80f82d91fbdff020ccb80b2f25875e0e2f52038c1d9` |
| 42 | `lemma` | [log_riemannZeta_add_log_sub_isBigO_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/log-riemannzeta-add-log-sub-isbigo-ofreal--0c819d0971815bdcda6a21e7.md) | 607 | `result-track:0c819d0971815bdcda6a21e78f23d2656fd6fc10ea97f4b509721c3a44a42e92` |
| 43 | `lemma` | [log_riemannZeta_add_log_sub_isLittleO_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/log-riemannzeta-add-log-sub-islittleo-ofreal--0cd95b70dcb194ff2f476728.md) | 618 | `result-track:0cd95b70dcb194ff2f476728933f1ea7e8e3e20215ca7dd1085503206f0b111e` |
| 44 | `lemma` | [log_deriv_riemannZeta_eq_neg_inv_sub_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/log-deriv-riemannzeta-eq-neg-inv-sub-add--fc7c8d78b3750c452f1e04f5.md) | 623 | `result-track:fc7c8d78b3750c452f1e04f5ea59f7118603c029097652b4366daa00a191387f` |
| 45 | `lemma` | [log_deriv_riemannZeta_add_inv_sub_sub_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/log-deriv-riemannzeta-add-inv-sub-sub-isbigo--04fb89ea23c94674a7685365.md) | 630 | `result-track:04fb89ea23c94674a76853650513a78a7e305eed40c1ee83bb02b708ce0c1c29` |
| 46 | `lemma` | [log_deriv_riemannZeta_add_inv_sub_sub_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/log-deriv-riemannzeta-add-inv-sub-sub-islittleo--9d22c19d8b0f0a9b13c7836a.md) | 641 | `result-track:9d22c19d8b0f0a9b13c7836a4b145ce25731363481acb5b3a1201bace5a494b3` |
| 47 | `lemma` | [log_deriv_riemannZeta_add_inv_sub_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/log-deriv-riemannzeta-add-inv-sub-bounded--a815bfb84eb6a233f05a7b25.md) | 647 | `result-track:a815bfb84eb6a233f05a7b2554c1418dfd0355a1edc3c54641ccf83f34600121` |
| 48 | `lemma` | [inv_riemannZeta_eq_sub_mul_of_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/inv-riemannzeta-eq-sub-mul-of-ne-one--b6cba65f2f174c4f3b0fa12d.md) | 652 | `result-track:b6cba65f2f174c4f3b0fa12dbe275034f2306932d1821b7c6822949fd43504b3` |
| 49 | `lemma` | [inv_riemannZeta_eq_sub_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/inv-riemannzeta-eq-sub-mul--9be59d3cb56957cb30b4eee9.md) | 656 | `result-track:9be59d3cb56957cb30b4eee96180fd9fac9f8b62f3f94dddb38ba412eda727d5` |
| 50 | `lemma` | [inv_riemannZeta_sub_sub_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/inv-riemannzeta-sub-sub-isbigo--554fdf00af288541a9449e05.md) | 661 | `result-track:554fdf00af288541a9449e059821c489ba35ebb920cab549fd28def3dea8097f` |
| 51 | `lemma` | [inv_riemannZeta_sub_sub_isLittleO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/inv-riemannzeta-sub-sub-islittleo--56c0516cedbb96b3460590db.md) | 671 | `result-track:56c0516cedbb96b3460590dbed0deb0dd294c209777ef661694902f067c3d818` |
| 52 | `lemma` | [inv_riemannZeta_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/declarations/inv-riemannzeta-isbigo--2e75056620e0fb4696005d95.md) | 678 | `result-track:2e75056620e0fb4696005d95f6861dc22c3045fee3f3f0c6d78229a33eac308f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
