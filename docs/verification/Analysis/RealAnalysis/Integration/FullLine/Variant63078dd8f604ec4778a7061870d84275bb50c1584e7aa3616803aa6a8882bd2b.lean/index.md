# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FullLine.Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c153464c65a1419b366735889c1f9cc641239cb3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula.Contour` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.GoodHeights` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.LineBound` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.ZeroSummabilityGen` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Fline](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/fline--2a050aadcb8058ff50fd5fb7.md) | 38 | `declaration-track:2a050aadcb8058ff50fd5fb7ecdb4edf365c631375a82b5a65910e982fe6fd94` |
| 2 | `theorem` | [continuous_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/continuous-weight--34dee2378658cb594c85013c.md) | 42 | `result-track:34dee2378658cb594c85013cd1af9489030ba19c40d25d89c1d25916772ec31a` |
| 3 | `theorem` | [norm_weight_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/norm-weight-le--439acf5bdf155c128858ca93.md) | 52 | `result-track:439acf5bdf155c128858ca93502aea7a343d77aaec4f43268f05243431e5a731` |
| 4 | `theorem` | [continuous_logDeriv_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/continuous-logderiv-line--ad3f1ad8f430d56d4c3ed7f0.md) | 65 | `result-track:ad3f1ad8f430d56d4c3ed7f06105eabd85a51660d7e419c727267c71fc09dc26` |
| 5 | `theorem` | [integrable_decay_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/integrable-decay-mul-log--6e29e7dfc444770234c7ff03.md) | 76 | `result-track:6e29e7dfc444770234c7ff03f80cd56a5aed70f13c5cd0313416ba4c0c7f220e` |
| 6 | `theorem` | [ne_zero_on_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/ne-zero-on-line--b76103af5f85df40183c81f0.md) | 98 | `result-track:b76103af5f85df40183c81f07447c370fd3b0e72cf5d1d041b0feb1e5dabd6b4` |
| 7 | `theorem` | [integrable_Fline_of](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/integrable-fline-of--48f1654dcb8f8198eae63600.md) | 105 | `result-track:48f1654dcb8f8198eae636009e50c0c3105f11964f372ac73acb5ed47f86d123` |
| 8 | `theorem` | [tendsto_intervalIntegral_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/tendsto-intervalintegral-of-integrable--e1fecb68df09b4ed70ba42d3.md) | 118 | `result-track:e1fecb68df09b4ed70ba42d3d5a2b18aa90edac86767973dddbec144949d1052` |
| 9 | `theorem` | [verticals_eq_of](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/verticals-eq-of--b34159d65b06d6ab6721b931.md) | 128 | `result-track:b34159d65b06d6ab6721b93142b437d19559ea4d49dba9c9e4342ae7470494da` |
| 10 | `theorem` | [exists_heights_of](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/exists-heights-of--b60535797e71e7ae35857361.md) | 173 | `result-track:b60535797e71e7ae358573612a636470e55ed273a36d2596ca24f5ff30c4d0a8` |
| 11 | `theorem` | [horizontal_vanish_of](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/horizontal-vanish-of--34e38292c5201ae5a1d7ff6c.md) | 197 | `result-track:34e38292c5201ae5a1d7ff6c49e18e9a9321ae9781a5401696b01947ae2f0dfe` |
| 12 | `theorem` | [zero_sum_limit_of](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/zero-sum-limit-of--3fbd86fded5244a3919ebeb4.md) | 264 | `result-track:3fbd86fded5244a3919ebeb44616324799a3cfb8f3e226cd5b0622f922d11e77` |
| 13 | `theorem` | [full_line_identity_of](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/full-line-identity-of--e06e37fc08c9505909f39c0c.md) | 316 | `result-track:e06e37fc08c9505909f39c0cece8be8746f3ef1f27435d8522bb86af0a951a41` |
| 14 | `def` | [mulSubOne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/mulsubone--fe8aeecd56628d4336ea6d34.md) | 390 | `declaration-track:fe8aeecd56628d4336ea6d34c1dced26fb8d0a938da6d9ea8a4c4abc70801112` |
| 15 | `theorem` | [differentiable_mulSubOne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/differentiable-mulsubone--fc5e09d2b03ca075840ffd2e.md) | 392 | `result-track:fc5e09d2b03ca075840ffd2ed345adfb752b2df331504143e9225f37164adfb8` |
| 16 | `theorem` | [hasDerivAt_mulSubOne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/hasderivat-mulsubone--8078ffdcfe6bec8dad636e0c.md) | 395 | `result-track:8078ffdcfe6bec8dad636e0c9ea0e445e8f6fb2e400212c0f5f4d70870ffd262` |
| 17 | `theorem` | [logDeriv_mulSubOne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/logderiv-mulsubone--2881dda314aca6f56287fb97.md) | 399 | `result-track:2881dda314aca6f56287fb972a6c573200ff2ad3b17d5a71bc4989eb76d40e3d` |
| 18 | `theorem` | [logDeriv_mulSubOne_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/logderiv-mulsubone-one-sub--0011f07b04db0e3278245c24.md) | 403 | `result-track:0011f07b04db0e3278245c246bc9775e5673d9e5da807a9475421cca31871cb1` |
| 19 | `theorem` | [logDeriv_mulSubOne_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/logderiv-mulsubone-eq--4aea766ad555d14f68e04fd5.md) | 410 | `result-track:4aea766ad555d14f68e04fd5a1d8ceca18cec02efb317573bf38f06d3bfbc813` |
| 20 | `theorem` | [mulSubOne_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/mulsubone-eq-zero-iff--b43eb94a41f7a482703c0132.md) | 417 | `result-track:b43eb94a41f7a482703c013228ec0b12f2da63e354c4ecd81e7697362c95cea2` |
| 21 | `theorem` | [analyticOrderNatAt_mulSubOne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/analyticordernatat-mulsubone-zero--c627acab729a3a847d0e4230.md) | 420 | `result-track:c627acab729a3a847d0e4230c8535f4ac4c2293320738f18e6f3e2a7a2cfd0a9` |
| 22 | `theorem` | [analyticOrderNatAt_mulSubOne_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/analyticordernatat-mulsubone-one--a49c9971699b357b3ba671f7.md) | 426 | `result-track:a49c9971699b357b3ba671f7eccce1625426ae6b9a2b490247fb84be20c20777` |
| 23 | `theorem` | [norm_logDeriv_mulSubOne_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/norm-logderiv-mulsubone-le--ee138b77e820a6ab204e64ca.md) | 433 | `result-track:ee138b77e820a6ab204e64cabd2beb50d6c5a55eb08ced3bf70c90f9b731eff5` |
| 24 | `theorem` | [mulSubOne_good_heights](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/mulsubone-good-heights--9baa4226126fe79d3569f9f9.md) | 449 | `result-track:9baa4226126fe79d3569f9f90130ddd618806d0c0294b135530eedb64e008bd7` |
| 25 | `theorem` | [logDeriv_mulSubOne_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/logderiv-mulsubone-line--be0f7e79ea8c4f3ce73e8adb.md) | 475 | `result-track:be0f7e79ea8c4f3ce73e8adb3686d8fbcc732f28b9e2f1acd69a53f368611c40` |
| 26 | `theorem` | [mulSubOne_line_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/mulsubone-line-bound--0b282a822ea5aaeb92e2b4b9.md) | 481 | `result-track:0b282a822ea5aaeb92e2b4b9b76b0055623b0061a021ddf546fb3b2235bd6373` |
| 27 | `theorem` | [rational_line_inst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/rational-line-inst--f23f63e21bdb1fa161addaf0.md) | 514 | `result-track:f23f63e21bdb1fa161addaf0127bd0776d758b68beb8bc56c6670b2f431ce9ec` |
| 28 | `theorem` | [full_line_identity_gen](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/full-line-identity-gen--9e26930eb9cc32275b5dd705.md) | 552 | `result-track:9e26930eb9cc32275b5dd7059fef0fb3ed64f7cd2322219cd73e92a63ff89026` |
| 29 | `theorem` | [full_line_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/declarations/full-line-identity--a8f50c7cc8c6826c4b6cc618.md) | 581 | `result-track:a8f50c7cc8c6826c4b6cc6188f2fced4f0e510161e0e22f136e0e5144e749c1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
