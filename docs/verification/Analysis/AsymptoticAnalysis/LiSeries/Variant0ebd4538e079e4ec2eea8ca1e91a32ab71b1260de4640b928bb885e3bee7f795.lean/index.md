# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.LiSeries.Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89ef6f525685569b90716827903f2340987df587",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89ef6f525685569b90716827903f2340987df587`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PVIdentity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_exp_sub_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/hassum-exp-sub-one--b746b11422d64d5272bd65d0.md) | 57 | `result-track:b746b11422d64d5272bd65d036b7e5b380d591c6f3f20d6e8e4222b39c3c7158` |
| 2 | `theorem` | [hasSum_exp_sub_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/hassum-exp-sub-one-div--c6a02179d88811744c706fff.md) | 66 | `result-track:c6a02179d88811744c706fff2bc4ae451ad5cc1259e9a05defd38de8f8486a35` |
| 3 | `def` | [termFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/termfun--46ea62d6a1997fee54752099.md) | 78 | `declaration-track:46ea62d6a1997fee547520997ec0384c5255ea75bfe5f8e43cf5fd2caaa33625` |
| 4 | `lemma` | [abs_le_max_abs_of_mem_uIcc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/abs-le-max-abs-of-mem-uicc--141b12dd8a761eeff948aa1a.md) | 81 | `result-track:141b12dd8a761eeff948aa1a62de8c7ea4355b493a8aa3710e6144c1eeac7171` |
| 5 | `lemma` | [summable_pow_div_succ_factorial](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/summable-pow-div-succ-factorial--9457eec260deed6c15de2faf.md) | 91 | `result-track:9457eec260deed6c15de2fafbb9d3a7853290bcba20abd4ec77bc17153ff0f78` |
| 6 | `lemma` | [summable_termFun_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/summable-termfun-norm--c7a34fe1d91d8f174c3b6117.md) | 106 | `result-track:c7a34fe1d91d8f174c3b61175c78d9f1f8e150c464bbc4d3e2dc7f22e79376fd` |
| 7 | `lemma` | [integral_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/integral-term--1fef0ed6bb1323890c9edaa2.md) | 119 | `result-track:1fef0ed6bb1323890c9edaa271eb56c720e1db2652b1f97b02e0c24271ce76cb` |
| 8 | `theorem` | [integral_exp_sub_one_div_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/integral-exp-sub-one-div-eq-tsum--339a07097685a20638a05176.md) | 130 | `result-track:339a07097685a20638a051765c7019bdc95a42ad3cb7d812c8b32be8b79edd75` |
| 9 | `theorem` | [eulerMascheroni_eq_neg_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/eulermascheroni-eq-neg-integral--c36e95696839162af7d9134c.md) | 154 | `result-track:c36e95696839162af7d9134c07ef06f6c73980c070fdb86cde5edd3ef6c38365` |
| 10 | `lemma` | [integrableOn_log_Ioc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/integrableon-log-ioc--12714536265f7c8a2dc1f1d2.md) | 193 | `result-track:12714536265f7c8a2dc1f1d209afa9b05b1801cc43349c684903c6723a2c2e0c` |
| 11 | `lemma` | [integrableOn_log_mul_exp_neg_Ioc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/integrableon-log-mul-exp-neg-ioc--bea700849ff8503d05b46892.md) | 196 | `result-track:bea700849ff8503d05b46892c810cd8a6235eaa7481a24cd5f56b2e51a57b43c` |
| 12 | `lemma` | [integrableOn_log_mul_exp_neg_Ioi_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/integrableon-log-mul-exp-neg-ioi-one--260c874954a83000ed8cc476.md) | 202 | `result-track:260c874954a83000ed8cc4768a25fc093f3a6a2c7285716651ec577f108fce15` |
| 13 | `lemma` | [integrableOn_exp_neg_div_Ioi_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/integrableon-exp-neg-div-ioi-one--af22e1578c75729934745b55.md) | 222 | `result-track:af22e1578c75729934745b5572e28b7e47d807864afc42cc6dd778184fee50c0` |
| 14 | `lemma` | [ibp_Ioi_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/ibp-ioi-one--6cbd27e0039990073fc3576d.md) | 242 | `result-track:6cbd27e0039990073fc3576d44fbbb773967d0128d53a698ef7ae789c955eaa0` |
| 15 | `lemma` | [intervalIntegrable_expm1_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/intervalintegrable-expm1-div--4cc69d01e961aeeb2708ec74.md) | 284 | `result-track:4cc69d01e961aeeb2708ec7438a2d86b9f5ba886307904cca085b2680dce5eed` |
| 16 | `lemma` | [ibp_eps](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/ibp-eps--dd0671a60623db476ec8b6db.md) | 297 | `result-track:dd0671a60623db476ec8b6dbdd40a40a20bb1889092d57b95d735983eb81f256` |
| 17 | `lemma` | [nhdsWithin_Ioi_le_nhdsWithin_uIcc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/nhdswithin-ioi-le-nhdswithin-uicc--4488d2b784a24b803a515efc.md) | 333 | `result-track:4488d2b784a24b803a515efc084bea20cc5046bf5e2d9fd07ba24a8b5caad7ae` |
| 18 | `lemma` | [ibp_Ioc_zero_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/ibp-ioc-zero-one--868447f2e9554feba0dc16a3.md) | 342 | `result-track:868447f2e9554feba0dc16a377b8c7538903adb6e90e3b4aa329e3420737bace` |
| 19 | `theorem` | [fubini_log_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/fubini-log-exp-neg--6be04211e3c3460c0ea532c0.md) | 386 | `result-track:6be04211e3c3460c0ea532c0c595bb339cffe534d48f2c8a1bc6a16e73e55f67` |
| 20 | `theorem` | [eulerMascheroni_eq_split_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/eulermascheroni-eq-split-integral--b6b991013c2c34b6b129a9f3.md) | 401 | `result-track:b6b991013c2c34b6b129a9f3708ec26c3b39edde7d685776c6cc77485f2cc3c3` |
| 21 | `theorem` | [integral_log_inv_eq_integral_exp_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/integral-log-inv-eq-integral-exp-div--478d5e3062b8c4a150be960d.md) | 415 | `result-track:478d5e3062b8c4a150be960d5ab53f4813b139d0be21a8e0f83eb4904c207970` |
| 22 | `theorem` | [pv_exp_div_eq_gamma_add_log_add_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/pv-exp-div-eq-gamma-add-log-add-integral--f987fa3f042f210a5e480d3f.md) | 458 | `result-track:f987fa3f042f210a5e480d3f7012286e2d13243721119a703124603348b18cf5` |
| 23 | `theorem` | [integral_log_inv_eq_integral_exp_div_of_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/integral-log-inv-eq-integral-exp-div-of-lt-one--2adf642d6d10fddf675211ff.md) | 468 | `result-track:2adf642d6d10fddf675211ff1f3aff8f4b3cf53594905c9303350d23abc2c2fd` |
| 24 | `lemma` | [li_setDiff_eq_split](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/li-setdiff-eq-split--069f01d7a5df006c8ab7cd3e.md) | 500 | `result-track:069f01d7a5df006c8ab7cd3ed1c36ab8f437fd4b8b8f93adf137e2b4cc972d0c` |
| 25 | `lemma` | [intervalIntegrable_exp_div_of_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/intervalintegrable-exp-div-of-pos--99607194d1da5e424dea7c4f.md) | 551 | `result-track:99607194d1da5e424dea7c4f8993ef7387f165194f3ed0390ad6ba4a513b4b8e` |
| 26 | `lemma` | [intervalIntegrable_exp_div_of_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/intervalintegrable-exp-div-of-neg--4ef06025374565feeabfcdc8.md) | 560 | `result-track:4ef06025374565feeabfcdc862148ce45c026723b1a6a5e805948c9a94efe813` |
| 27 | `theorem` | [li_eq_pv_exp_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/li-eq-pv-exp-integral--b1735529bba7d59f80a7cefe.md) | 569 | `result-track:b1735529bba7d59f80a7cefee0d2fc465804258bc83afe407cf5f6ec044883b7` |
| 28 | `theorem` | [li_eq_eulerMascheroni_add_log_log_add_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/li-eq-eulermascheroni-add-log-log-add-tsum--d33c86276f2823e15d75a3e6.md) | 879 | `result-track:d33c86276f2823e15d75a3e6faae5b809bfeb51f92de0ca2a8c69419ad154324` |
| 29 | `theorem` | [li_eq_eulerMascheroni_add_log_log_add_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/declarations/li-eq-eulermascheroni-add-log-log-add-tsum--387c594e70cb50eee0d223bf.md) | 890 | `result-track:387c594e70cb50eee0d223bf46f48e4377c94068f97aae1bb0b908d710bcfefe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
