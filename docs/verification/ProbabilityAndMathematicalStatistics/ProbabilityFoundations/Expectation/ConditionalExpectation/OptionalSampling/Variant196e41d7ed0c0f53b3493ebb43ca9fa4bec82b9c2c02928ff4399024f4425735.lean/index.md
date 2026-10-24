# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.OptionalSampling.Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7e835b53348336fdb5c7de5c9e46df49945f1dd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7e835b53348336fdb5c7de5c9e46df49945f1dd`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.LinearLocallyFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [condExp_stopping_time_ae_eq_restrict_eq_const](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/declarations/condexp-stopping-time-ae-eq-restrict-eq-const--e771bac2a48de5d5376af106.md) | 49 | `result-track:e771bac2a48de5d5376af106192d4c7b15639fe2b5709f55ecf17a7b6fa4e63a` |
| 2 | `theorem` | [condExp_stopping_time_ae_eq_restrict_eq_const_of_le_const](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/declarations/condexp-stopping-time-ae-eq-restrict-eq-const-of-le-const--04aa7ac8f97607fabec68c51.md) | 61 | `result-track:04aa7ac8f97607fabec68c512a450c1d02104797d06002b66d8d7365f27dddf7` |
| 3 | `theorem` | [stoppedValue_ae_eq_restrict_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/declarations/stoppedvalue-ae-eq-restrict-eq--b8eef2e881b7c394c4ca32f9.md) | 80 | `result-track:b8eef2e881b7c394c4ca32f962a47e133c45f4bc0b63600879c835ad39b4a378` |
| 4 | `theorem` | [stoppedValue_ae_eq_condExp_of_le_const_of_countable_range](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/declarations/stoppedvalue-ae-eq-condexp-of-le-const-of-countable-range--3c62f1d5cba7c0b22e0106d6.md) | 92 | `result-track:3c62f1d5cba7c0b22e0106d62f20f4a3f5046e7171e4032c62944f5605d1fb73` |
| 5 | `theorem` | [stoppedValue_ae_eq_condExp_of_le_const](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/declarations/stoppedvalue-ae-eq-condexp-of-le-const--e513fe65b9a9e88d179ab9e9.md) | 110 | `result-track:e513fe65b9a9e88d179ab9e96e68bb3d1998dec053afb0834dda464d9291b1c1` |
| 6 | `theorem` | [stoppedValue_ae_eq_condExp_of_le_of_countable_range](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/declarations/stoppedvalue-ae-eq-condexp-of-le-of-countable-range--a506a2772c8c59e4483b8d88.md) | 122 | `result-track:a506a2772c8c59e4483b8d88c1d2658ace83a917f9412e14317bee136dbccd9e` |
| 7 | `theorem` | [stoppedValue_ae_eq_condExp_of_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/declarations/stoppedvalue-ae-eq-condexp-of-le--339cdc65b1bde9afe0ee8bdb.md) | 145 | `result-track:339cdc65b1bde9afe0ee8bdb96367081582bd120cec8a0c3e8212663b4e37b06` |
| 8 | `theorem` | [condExp_stoppedValue_stopping_time_ae_eq_restrict_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/declarations/condexp-stoppedvalue-stopping-time-ae-eq-restrict-le--dabb1bce84724b27586223dd.md) | 169 | `result-track:dabb1bce84724b27586223ddeb205917d8b76f5a0b6e6ffa8a9efb26f9a99bdb` |
| 9 | `theorem` | [stoppedValue_min_ae_eq_condExp](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/declarations/stoppedvalue-min-ae-eq-condexp--99107bdefc46b5e0b144e03d.md) | 205 | `result-track:99107bdefc46b5e0b144e03deda0bdb3bbd435b3ca1f85e8564f624aa097f559` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
