# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.AuxResults.Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab88fac602dfb4060d68405a2cce226238f51816",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab88fac602dfb4060d68405a2cce226238f51816`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_factors_of_mult](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/prod-factors-of-mult--5a4c0a18e1e55ccb1aae4489.md) | 32 | `result-track:5a4c0a18e1e55ccb1aae44899c4bf090cdd24d90d7866dfb85803525298c3a6e` |
| 2 | `theorem` | [sum_over_dvd_ite](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/sum-over-dvd-ite--dad23e9473ffc638267f94d2.md) | 41 | `result-track:dad23e9473ffc638267f94d2bc964901cd5995fe5d80c1471aea5f13ddddc970` |
| 3 | `theorem` | [ite_sum_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/ite-sum-zero--014834556536ca4a4d0282da.md) | 46 | `result-track:014834556536ca4a4d0282da794061fadc1c7aec92331fcb57f8a50f3bd29f8d` |
| 4 | `theorem` | [conv_lambda_sq_larger_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/conv-lambda-sq-larger-sum--1cf7207a724c50958426cd0e.md) | 50 | `result-track:1cf7207a724c50958426cd0edadd8aeae892f7b1311727d5853f5e923981ba82` |
| 5 | `theorem` | [moebius_inv_dvd_lower_bound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/moebius-inv-dvd-lower-bound--d18bd966c6c9f7f33d0f9df7.md) | 69 | `result-track:d18bd966c6c9f7f33d0f9df788f078004e3c5aa44903baee8c77b128a70f8a6d` |
| 6 | `theorem` | [moebius_inv_dvd_lower_bound'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/moebius-inv-dvd-lower-bound--75186cc9f66480275a99f3db.md) | 92 | `result-track:75186cc9f66480275a99f3db803eff847b7ae68bd2c75e17b0e0c3e28ffbe94a` |
| 7 | `theorem` | [moebius_inv_dvd_lower_bound_real](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/moebius-inv-dvd-lower-bound-real--90eb22a8d6b5f85059c7a482.md) | 98 | `result-track:90eb22a8d6b5f85059c7a48204262d33bdf6f84230a7c47b1c5333ef72f3fab0` |
| 8 | `theorem` | [multiplicative_zero_of_zero_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/multiplicative-zero-of-zero-dvd--5807d5f08aee134346e2efc0.md) | 104 | `result-track:5807d5f08aee134346e2efc06ec04bb2674f0e114ecc94252249e1ca1ab33030` |
| 9 | `theorem` | [div_mult_of_dvd_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/div-mult-of-dvd-squarefree--290fa4d7e1359255a1f989da.md) | 110 | `result-track:290fa4d7e1359255a1f989dae07cc246c0644ecf64fa2305048e056ed24c8c68` |
| 10 | `theorem` | [inv_sub_antitoneOn_gt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/inv-sub-antitoneon-gt--1cf04b0c2e96974fbc4460d5.md) | 118 | `result-track:1cf04b0c2e96974fbc4460d50decf3d4fa537ac4955ecbe9555dcef25283e797` |
| 11 | `theorem` | [inv_sub_antitoneOn_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/inv-sub-antitoneon-icc--a5a7a16adc4d725cabcb4afe.md) | 126 | `result-track:a5a7a16adc4d725cabcb4afee8d8f269cb692b34f9c272f584a932aefc51f82a` |
| 12 | `theorem` | [inv_antitoneOn_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/inv-antitoneon-pos--9ad349058f37da5d51e4a5cd.md) | 134 | `result-track:9ad349058f37da5d51e4a5cd9a95a5d5d7944d3bb0afb62266720ac9c447df72` |
| 13 | `theorem` | [inv_antitoneOn_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/inv-antitoneon-icc--cf15b333474a90e3edee6297.md) | 138 | `result-track:cf15b333474a90e3edee62979f45355251484a4e01e292b5eed464c40a81395e` |
| 14 | `theorem` | [log_add_one_le_sum_inv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/log-add-one-le-sum-inv--5bb8cbb926c93f6e615be8c2.md) | 143 | `result-track:5bb8cbb926c93f6e615be8c219b61d01c874077b36412d6d9702311da326263c` |
| 15 | `theorem` | [log_le_sum_inv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/log-le-sum-inv--1cdc21e2acadd72df3b43254.md) | 154 | `result-track:1cdc21e2acadd72df3b432549a6b02a46b82d40cd58fc881125b02ad3260773f` |
| 16 | `theorem` | [sum_inv_le_log](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/sum-inv-le-log--24105875f87bcc80caeb5212.md) | 164 | `result-track:24105875f87bcc80caeb521234134ae3593796930a77561abd060196d6c11c80` |
| 17 | `theorem` | [sum_inv_le_log_real](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/sum-inv-le-log-real--3fdfeb77ad7c03767628ac73.md) | 183 | `result-track:3fdfeb77ad7c03767628ac730f06e6ebe1645300fcee4f36b1952cb5320089c5` |
| 18 | `theorem` | [sum_pow_cardDistinctFactors_div_self_le_log_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/sum-pow-carddistinctfactors-div-self-le-log-pow--9f352818bdee208f8c28acf9.md) | 193 | `result-track:9f352818bdee208f8c28acf9f1927c8243a782db9801b0c48b446a8eb3a37326` |
| 19 | `theorem` | [sum_pow_cardDistinctFactors_le_self_mul_log_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variant8c19ffc44871fa439091acff11e2717ba579d4edf7ecd6d9e74b4f2edb148377.lean/declarations/sum-pow-carddistinctfactors-le-self-mul-log-pow--c9592ed9339aba1e13412c5a.md) | 261 | `result-track:c9592ed9339aba1e13412c5a3f3b96f2377704171893ce15ef91d29dca9a4610` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
