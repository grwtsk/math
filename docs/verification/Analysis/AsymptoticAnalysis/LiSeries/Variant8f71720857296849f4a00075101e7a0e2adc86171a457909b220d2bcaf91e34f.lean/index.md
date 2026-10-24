# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.LiSeries.Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PVIdentity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.Exponential` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_exp_sub_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/hassum-exp-sub-one--972e90f8dbe58f52a093a7d1.md) | 49 | `result-track:972e90f8dbe58f52a093a7d1931280106d120c7fe67146b11e444ba6dd933e81` |
| 2 | `theorem` | [hasSum_exp_sub_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/hassum-exp-sub-one-div--bc1332346c36430a20df7cc9.md) | 58 | `result-track:bc1332346c36430a20df7cc9c6e7078e5779f5f33cd8938f5ebc724eaa67734e` |
| 3 | `def` | [termFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/termfun--9bda08ec6709baa24dbeb3fb.md) | 70 | `declaration-track:9bda08ec6709baa24dbeb3fbfadb79c9e3fefa40da3d53f32aa0722e1c02a09d` |
| 4 | `lemma` | [abs_le_max_abs_of_mem_uIcc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/abs-le-max-abs-of-mem-uicc--7ca3fc94fe740ac3363ad887.md) | 73 | `result-track:7ca3fc94fe740ac3363ad887a933ddfe2a0c4e14ae5480d663e8227314538c81` |
| 5 | `lemma` | [summable_pow_div_succ_factorial](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/summable-pow-div-succ-factorial--8fd70044f4b520c47eed232b.md) | 83 | `result-track:8fd70044f4b520c47eed232b287867f244495464843c941df85599e46d2ba7ab` |
| 6 | `lemma` | [summable_termFun_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/summable-termfun-norm--1f4a63355fa119182c2f071d.md) | 98 | `result-track:1f4a63355fa119182c2f071d9cab7cdef8ce3bc8c8a6ef9c2ed3ee0695f0ecfc` |
| 7 | `lemma` | [integral_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/integral-term--69a4c67d7d01e4ce2b1630e7.md) | 111 | `result-track:69a4c67d7d01e4ce2b1630e7efe7aef45eed63c0f7597232640b645e09994695` |
| 8 | `theorem` | [integral_exp_sub_one_div_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/integral-exp-sub-one-div-eq-tsum--7657c07eb65176c55f2414c9.md) | 122 | `result-track:7657c07eb65176c55f2414c9ac7bdb4557279e5df0230703443360c97256d224` |
| 9 | `theorem` | [eulerMascheroni_eq_neg_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/eulermascheroni-eq-neg-integral--197d72d2e91c190ba9bc9bb6.md) | 146 | `result-track:197d72d2e91c190ba9bc9bb606cf19b59be98876a2542a0685e15ca9c043f95d` |
| 10 | `lemma` | [integrableOn_log_Ioc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/integrableon-log-ioc--1ed2ca86d1c64983eaae9fe7.md) | 185 | `result-track:1ed2ca86d1c64983eaae9fe7e49769d702c2e8228eca1676c32ed4d22db8979d` |
| 11 | `lemma` | [integrableOn_log_mul_exp_neg_Ioc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/integrableon-log-mul-exp-neg-ioc--6a04d74b039070f2bef46702.md) | 188 | `result-track:6a04d74b039070f2bef46702655d2135152ae65d8ba92f9a7d813b49d81f505a` |
| 12 | `lemma` | [integrableOn_log_mul_exp_neg_Ioi_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/integrableon-log-mul-exp-neg-ioi-one--47e35534bd2e61d05da7a711.md) | 194 | `result-track:47e35534bd2e61d05da7a7110f5ab4fe9f3620a0d8f974a0f5d8a62b7f6b4836` |
| 13 | `lemma` | [integrableOn_exp_neg_div_Ioi_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/integrableon-exp-neg-div-ioi-one--47424d9f5f41ee9df0d31fa9.md) | 214 | `result-track:47424d9f5f41ee9df0d31fa9bcc874cee9239197596e5fa578af0ed3cbab1ebe` |
| 14 | `lemma` | [ibp_Ioi_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/ibp-ioi-one--0fe16b6e0e55388a62a76a4a.md) | 234 | `result-track:0fe16b6e0e55388a62a76a4af428c77c96f49f0a18f9c96dd5819eb2e2f5ec72` |
| 15 | `lemma` | [intervalIntegrable_expm1_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/intervalintegrable-expm1-div--1f8a73e4e4eb7e6195bde5df.md) | 276 | `result-track:1f8a73e4e4eb7e6195bde5df66430fee715e28a62ddce23cad21439c7136990f` |
| 16 | `lemma` | [ibp_eps](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/ibp-eps--023ee4e4765c978636dff6f9.md) | 289 | `result-track:023ee4e4765c978636dff6f98901e6006eaf1ee838abeb52d8daba6bf5883d16` |
| 17 | `lemma` | [nhdsWithin_Ioi_le_nhdsWithin_uIcc](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/nhdswithin-ioi-le-nhdswithin-uicc--d29f28d72450a560f7f51d23.md) | 325 | `result-track:d29f28d72450a560f7f51d23a2b64ea2085f3f13f861b534644cb6d65fea4c3e` |
| 18 | `lemma` | [ibp_Ioc_zero_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/ibp-ioc-zero-one--7312968cbeebdd60d330254c.md) | 334 | `result-track:7312968cbeebdd60d330254c3b8eb9e646e276cb7eb1f85b32908a5600ad0827` |
| 19 | `theorem` | [fubini_log_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/fubini-log-exp-neg--9f989fdbd380fd81696b0567.md) | 378 | `result-track:9f989fdbd380fd81696b05678f003f3f1fee214686385c7ed2b9df51cd8a3473` |
| 20 | `theorem` | [eulerMascheroni_eq_split_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/eulermascheroni-eq-split-integral--ec3089706b42556cfd2dba27.md) | 393 | `result-track:ec3089706b42556cfd2dba275304be683e79a14b9085b7f5649a4e6428a4827d` |
| 21 | `theorem` | [integral_log_inv_eq_integral_exp_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/integral-log-inv-eq-integral-exp-div--214d9baf6e040c1ee1d1599f.md) | 407 | `result-track:214d9baf6e040c1ee1d1599f83b2476fe9d36d75d1e3ab37a48e10cae602a57b` |
| 22 | `theorem` | [pv_exp_div_eq_gamma_add_log_add_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/pv-exp-div-eq-gamma-add-log-add-integral--29c9d9c3a41b27d4285f631e.md) | 450 | `result-track:29c9d9c3a41b27d4285f631e0c4faaae1452faff09d50fe4ace805f30f00779e` |
| 23 | `theorem` | [integral_log_inv_eq_integral_exp_div_of_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/integral-log-inv-eq-integral-exp-div-of-lt-one--253216444bce5f2c392557eb.md) | 460 | `result-track:253216444bce5f2c392557eb5b8b83e9ea94389f7aa973082889329ea9864f02` |
| 24 | `lemma` | [li_setDiff_eq_split](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/li-setdiff-eq-split--de60c597ec45d120667b7d2d.md) | 492 | `result-track:de60c597ec45d120667b7d2da7b9e192e89201289c45a11e00f4b1bb52889af7` |
| 25 | `lemma` | [intervalIntegrable_exp_div_of_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/intervalintegrable-exp-div-of-pos--466be172177532718f015a2e.md) | 543 | `result-track:466be172177532718f015a2e1423a3f53cc96c3941fa16c562f46d577d9b51e9` |
| 26 | `lemma` | [intervalIntegrable_exp_div_of_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/intervalintegrable-exp-div-of-neg--a8189f7ab56d2e19bc2a235f.md) | 552 | `result-track:a8189f7ab56d2e19bc2a235f85e9387e8a92f869692ff640db1c0a092456c2a4` |
| 27 | `theorem` | [li_eq_pv_exp_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/li-eq-pv-exp-integral--f7beac62891a2b0bdb89162a.md) | 561 | `result-track:f7beac62891a2b0bdb89162aa01183afddbf8267d07c2fd7a7f3632bdeb73e2e` |
| 28 | `theorem` | [li_eq_eulerMascheroni_add_log_log_add_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/li-eq-eulermascheroni-add-log-log-add-tsum--b2b5c7ea5d2bb6313daacfa7.md) | 871 | `result-track:b2b5c7ea5d2bb6313daacfa7f7cc8979a70c3a81a8fd55243a3eac7475c32350` |
| 29 | `theorem` | [li_eq_eulerMascheroni_add_log_log_add_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/declarations/li-eq-eulermascheroni-add-log-log-add-tsum--68b5a70aba475e1e5127cc88.md) | 882 | `result-track:68b5a70aba475e1e5127cc88dd218beb9834381ce308cbe0dbe9adecb9a65585` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
