# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Backlund.Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "824f9aa7e3b29ce2a6cbe5c78f7815aec8ab0ab0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `824f9aa7e3b29ce2a6cbe5c78f7815aec8ab0ab0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.ZetaGrowth` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.BacklundDefs` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ReZeroCount` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.Statement` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.StrongPNTPrefix` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ofReal_add_mul_I_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/ofreal-add-mul-i-ne-one--a8bdaa7f85af51205cb74d49.md) | 59 | `result-track:a8bdaa7f85af51205cb74d499f3ef492f93a08697c8c46e8ae2271678a9111df` |
| 2 | `lemma` | [hasDerivAt_riemannZeta_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/hasderivat-riemannzeta-horizontal--17847b73b144175eb3bc9e2a.md) | 66 | `result-track:17847b73b144175eb3bc9e2a4ac0dc16b497580104b88a1c38f729862476965f` |
| 3 | `lemma` | [continuous_riemannZeta_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/continuous-riemannzeta-horizontal--95a27da35286dea883673e7f.md) | 75 | `result-track:95a27da35286dea883673e7f8a135ca70e0cdbcce2558a56e9618bb612fa4c99` |
| 4 | `lemma` | [continuous_deriv_riemannZeta_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/continuous-deriv-riemannzeta-horizontal--54c528038c02eac9c061c89f.md) | 79 | `result-track:54c528038c02eac9c061c89f787a63f499c97c14d12d871527165abd25999421` |
| 5 | `lemma` | [continuousOn_logDeriv_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/continuouson-logderiv-horizontal--3a61ac1da033e6aac4035f9b.md) | 86 | `result-track:3a61ac1da033e6aac4035f9bf095e68112c89b22c619a9e5c289937e036313c0` |
| 6 | `lemma` | [intervalIntegrable_logDeriv_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/intervalintegrable-logderiv-horizontal--eea67128adf91980ed47b451.md) | 95 | `result-track:eea67128adf91980ed47b4513500e5382ded0f8c1ccc1a434bc333423e04679f` |
| 7 | `lemma` | [im_integral_le_two_pi](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/im-integral-le-two-pi--fe9cdf1ecfb8af3e4435bfc2.md) | 103 | `result-track:fe9cdf1ecfb8af3e4435bfc283e3d03e651b37396d358b2b9bacf766d3952e10` |
| 8 | `lemma` | [im_integral_logDeriv_le_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/im-integral-logderiv-le-aux--a96215cfe6184c22699f474b.md) | 186 | `result-track:a96215cfe6184c22699f474b57e808d03e58386b1cc0e2848b8944c27f304d87` |
| 9 | `theorem` | [im_integral_logDeriv_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/im-integral-logderiv-le--030acab0a19c8cef174e7c69.md) | 266 | `result-track:030acab0a19c8cef174e7c698efae64b042de87b705d81448d7ecd545c306ac4` |
| 10 | `lemma` | [riemannZeta_ne_zero_on_segment](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/riemannzeta-ne-zero-on-segment--2aa5f549b00355b157877820.md) | 287 | `result-track:2aa5f549b00355b157877820c815bdc49a2bc266216cac6315d96e4734174941` |
| 11 | `theorem` | [backlund_horizontal_of_count_at](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/backlund-horizontal-of-count-at--df625b771fc9ebd03387338e.md) | 298 | `result-track:df625b771fc9ebd03387338ee3a8ddbeb6e08ae05d79228996608adf740ca71e` |
| 12 | `theorem` | [backlund_horizontal_of_count](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/backlund-horizontal-of-count--b011fb0172a96ea902990810.md) | 319 | `result-track:b011fb0172a96ea902990810f2546bfab2bcb145b6ee799ec3920680c4c24801` |
| 13 | `theorem` | [backlund_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/backlund-horizontal--c2e4b50cebebf46c25439040.md) | 330 | `result-track:c2e4b50cebebf46c254390401925662f99cfda83c9caf7012fe249f1a990648d` |
| 14 | `theorem` | [backlund_horizontal_at](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/backlund-horizontal-at--e25ccaba874499596adb5af5.md) | 338 | `result-track:e25ccaba874499596adb5af51f0b6de04cd73ee6a73559eb41c62e58f4648c0b` |
| 15 | `lemma` | [re_riemannZeta_two_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/re-riemannzeta-two-pos--3992d60b5e214c4460ad2af7.md) | 348 | `result-track:3992d60b5e214c4460ad2af71fab28acb0fad43a04129190c77bc361a58fb6fc` |
| 16 | `lemma` | [two_add_mul_I_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/two-add-mul-i-ne-one--12446aa40a2a6987bb8237fc.md) | 356 | `result-track:12446aa40a2a6987bb8237fc827ff325f28f61730fad4dbae7a4e0e4d521d4ea` |
| 17 | `lemma` | [hasDerivAt_log_riemannZeta_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/hasderivat-log-riemannzeta-two--1a39e84c344a7035ffb926c7.md) | 362 | `result-track:1a39e84c344a7035ffb926c722c9a146abdbb6a9d2f231c9101de2f42da7f33a` |
| 18 | `lemma` | [continuous_logDeriv_riemannZeta_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/continuous-logderiv-riemannzeta-two--8460ebff88d5635c7d82c15e.md) | 383 | `result-track:8460ebff88d5635c7d82c15e66c0a77f883b4891b580d88f0859c0538c65a07b` |
| 19 | `theorem` | [vertical_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/declarations/vertical-two--0d3d588cd0313ec35bdc6244.md) | 400 | `result-track:0d3d588cd0313ec35bdc624474d8c4c91c2537aa4928540c4136cd3d6c05e8c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
