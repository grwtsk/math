# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Linearity.Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "562602ed7525a631c8352d2e85118378924f859d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `562602ed7525a631c8352d2e85118378924f859d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LSeries.term_add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-add--bdd6d10b61419e6c38f0e4a9.md) | 22 | `result-track:bdd6d10b61419e6c38f0e4a9c355167f0a73a4d0521dd51554518b657ac8eb23` |
| 2 | `lemma` | [LSeries.term_add_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-add-apply--7f8c896a17464e62ee2e064a.md) | 26 | `result-track:7f8c896a17464e62ee2e064acd5187a7eb6abf6693838451719a2a1e45973647` |
| 3 | `lemma` | [LSeriesHasSum.add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lserieshassum-add--3b0863a1dcae2a56d1d0b8d9.md) | 30 | `result-track:3b0863a1dcae2a56d1d0b8d9173cb0aa9196c9ff3988d6cf635e49618722770c` |
| 4 | `lemma` | [LSeriesSummable.add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseriessummable-add--eb170387be6280b6e33feee5.md) | 35 | `result-track:eb170387be6280b6e33feee50ada9e580001748921a7a7e8f938b3335420ab0b` |
| 5 | `lemma` | [LSeries_add](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-add--e155590ee424df25649440a8.md) | 41 | `result-track:e155590ee424df25649440a80d3f3fc217640c841fe5be3b22db5e190a7a504d` |
| 6 | `lemma` | [LSeries.term_neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-neg--23907a5844f69ab6cf22b311.md) | 49 | `result-track:23907a5844f69ab6cf22b3112e449b450b0280e557fa93572fd745e93ff4c700` |
| 7 | `lemma` | [LSeries.term_neg_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-neg-apply--325046be934e096e1206e32c.md) | 53 | `result-track:325046be934e096e1206e32c46dcb2d66efad6e2761f3fb649390d343f56837a` |
| 8 | `lemma` | [LSeriesHasSum.neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lserieshassum-neg--534406e10b5409f04baf9f0d.md) | 56 | `result-track:534406e10b5409f04baf9f0dc7b911b84bc6b274e8fb110e5c7985751101bfd8` |
| 9 | `lemma` | [LSeriesSummable.neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseriessummable-neg--2fa55a968ae4a9b2d2ab1607.md) | 60 | `result-track:2fa55a968ae4a9b2d2ab1607e9070af5a506fdf8721aa3553a47c3da948ef58a` |
| 10 | `lemma` | [LSeriesSummable.neg_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseriessummable-neg-iff--014bf8f614273bf9527fb3da.md) | 65 | `result-track:014bf8f614273bf9527fb3da23e77a834ac89859bd79eed57c666d8c0d41a9cc` |
| 11 | `lemma` | [LSeries_neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-neg--cefe6fbc39747bd17249d00d.md) | 70 | `result-track:cefe6fbc39747bd17249d00dc07e9968ed83ac3a7594f44cec027023a145c0e7` |
| 12 | `lemma` | [LSeries.term_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-sub--91672d0377fa831e7dba8d65.md) | 77 | `result-track:91672d0377fa831e7dba8d6507803aedc177763ee61347258adc8caf7eb8b07e` |
| 13 | `lemma` | [LSeries.term_sub_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-sub-apply--91c1dd89d654fa7b94f2243d.md) | 80 | `result-track:91c1dd89d654fa7b94f2243d87f9e2127f2baf02c7a765898ee138b4284610da` |
| 14 | `lemma` | [LSeriesHasSum.sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lserieshassum-sub--579e716e1d69396eb5231705.md) | 84 | `result-track:579e716e1d69396eb52317052b1714415320c7491470ce70b3f491ff353041aa` |
| 15 | `lemma` | [LSeriesSummable.sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseriessummable-sub--ee8c339ce24cb5c30af020ab.md) | 89 | `result-track:ee8c339ce24cb5c30af020ab335290423da3085f0f679eb2d93ed73e3aa0f4db` |
| 16 | `lemma` | [LSeries_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-sub--a1cc364cf960b0aaf6d8476b.md) | 95 | `result-track:a1cc364cf960b0aaf6d8476bc0d0f73930f029898a2f0a6a5168e115f38bb3e2` |
| 17 | `lemma` | [LSeries.term_smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-smul--69c7d89e8ff5233cbe51545d.md) | 103 | `result-track:69c7d89e8ff5233cbe51545d7b7c7db7094e3ccfce0e7deaaec414b018789450` |
| 18 | `lemma` | [LSeries.term_smul_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-smul-apply--5fc49d84c21cdff5ca7a79d5.md) | 107 | `result-track:5fc49d84c21cdff5ca7a79d529e61b4e8d3ad8514df4823ba74ceb2139e94fdd` |
| 19 | `lemma` | [LSeriesHasSum.smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lserieshassum-smul--82db2e44e3e807a3a11ed619.md) | 111 | `result-track:82db2e44e3e807a3a11ed619158744eb20264320ac12ad30d23449f017c5264d` |
| 20 | `lemma` | [LSeriesSummable.smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseriessummable-smul--b0310a01b525adc8a191d112.md) | 115 | `result-track:b0310a01b525adc8a191d1123e9b06913231555290e94c10b72365f3df499db3` |
| 21 | `lemma` | [LSeriesSummable.of_smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseriessummable-of-smul--6f54994279708f25053259a5.md) | 119 | `result-track:6f54994279708f25053259a532ae251898a4b5a443f93348c35c57e5f152b614` |
| 22 | `lemma` | [LSeriesSummable.smul_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseriessummable-smul-iff--3a0b4b64e299983d0e8ef273.md) | 123 | `result-track:3a0b4b64e299983d0e8ef273570ecbe39bcf47e6920f1616c2169057151c07ec` |
| 23 | `lemma` | [LSeries_smul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-smul--d00a39cba1bbf6aa18fdf445.md) | 128 | `result-track:d00a39cba1bbf6aa18fdf44502797d354f468251487530311880491fe3427264` |
| 24 | `lemma` | [LSeries.term_sum_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-sum-apply--1f3beafef13a1c844fd32156.md) | 140 | `result-track:1f3beafef13a1c844fd321568f558c951313b47c1d860682964d913b2d771f34` |
| 25 | `lemma` | [LSeries.term_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-term-sum--f6db0fbbf604d5a626bcd99c.md) | 145 | `result-track:f6db0fbbf604d5a626bcd99cde1bc50edc8685b6ea4a5410648abd1571c28b37` |
| 26 | `lemma` | [LSeriesHasSum.sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lserieshassum-sum--b1b03ea99fd588d7cd1751e2.md) | 150 | `result-track:b1b03ea99fd588d7cd1751e2991f249b213665f22ce09242f6f1b83694931e31` |
| 27 | `lemma` | [LSeriesSummable.sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseriessummable-sum--8fcbd810f1666f8774f31722.md) | 154 | `result-track:8fcbd810f1666f8774f31722efbad0d0480be4194fb1bb42ea9b1f6f15680efb` |
| 28 | `lemma` | [LSeries_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Linearity/Variantd89c1fe99a0381f3561254d2a0b66b7671a90395df35393d34a2d4b9c643171b.lean/declarations/lseries-sum--20d27274099da7ff817f1dd9.md) | 159 | `result-track:20d27274099da7ff817f1dd9ad27d795b55ecb2b3766fe813db70914dad4872e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
