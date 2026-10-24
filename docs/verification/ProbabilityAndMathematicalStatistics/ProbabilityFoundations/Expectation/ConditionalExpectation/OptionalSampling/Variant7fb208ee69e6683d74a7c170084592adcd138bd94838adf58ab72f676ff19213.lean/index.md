# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.OptionalSampling.Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e47fa2ff16c1f1fd884c7d33518156945b81dc5f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e47fa2ff16c1f1fd884c7d33518156945b81dc5f`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.LinearLocallyFinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [condExp_stopping_time_ae_eq_restrict_eq_const](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/declarations/condexp-stopping-time-ae-eq-restrict-eq-const--426531f43fbc313e06f6860e.md) | 57 | `result-track:426531f43fbc313e06f6860ed8425ca126b51cd3a1626660c9931a50efa05677` |
| 2 | `theorem` | [condExp_stopping_time_ae_eq_restrict_eq_const_of_le_const](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/declarations/condexp-stopping-time-ae-eq-restrict-eq-const-of-le-const--044b6761a2c7ab2df724dbd3.md) | 69 | `result-track:044b6761a2c7ab2df724dbd3345e779ddfe9082a1c477852f6647dc66ff91bcf` |
| 3 | `theorem` | [stoppedValue_ae_eq_restrict_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/declarations/stoppedvalue-ae-eq-restrict-eq--44d2ac690bbadae1bf5d66ef.md) | 88 | `result-track:44d2ac690bbadae1bf5d66ef61e86a7a7196f9da253a4537401373b9b050da88` |
| 4 | `theorem` | [stoppedValue_ae_eq_condExp_of_le_const_of_countable_range](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/declarations/stoppedvalue-ae-eq-condexp-of-le-const-of-countable-range--c594369c929ea41641eb224b.md) | 100 | `result-track:c594369c929ea41641eb224b484b8319adf4972a64ad9a51834b065d3d8b2f60` |
| 5 | `theorem` | [stoppedValue_ae_eq_condExp_of_le_const](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/declarations/stoppedvalue-ae-eq-condexp-of-le-const--743f45349deabbc25c9633f7.md) | 118 | `result-track:743f45349deabbc25c9633f700394085368f98780dfceabddb4c0c0400c32e0d` |
| 6 | `theorem` | [stoppedValue_ae_eq_condExp_of_le_of_countable_range](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/declarations/stoppedvalue-ae-eq-condexp-of-le-of-countable-range--06d039f024635ac26fa04966.md) | 130 | `result-track:06d039f024635ac26fa049660eec726b0a2ee224a9cd31bb294ccef606e1c0af` |
| 7 | `theorem` | [stoppedValue_ae_eq_condExp_of_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/declarations/stoppedvalue-ae-eq-condexp-of-le--7bc8acb69b735e41002e47fe.md) | 153 | `result-track:7bc8acb69b735e41002e47fe5542096459089a8df10a327af2cfae4d52b9a32f` |
| 8 | `theorem` | [condExp_stoppedValue_stopping_time_ae_eq_restrict_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/declarations/condexp-stoppedvalue-stopping-time-ae-eq-restrict-le--4ddba090c6bda3a26f7285a6.md) | 177 | `result-track:4ddba090c6bda3a26f7285a6c21e3346cf6d8dc8e35160d9e3b8a5ce190cf0d1` |
| 9 | `theorem` | [stoppedValue_min_ae_eq_condExp](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/declarations/stoppedvalue-min-ae-eq-condexp--3476700bb4b970fb34c9f228.md) | 213 | `result-track:3476700bb4b970fb34c9f228ae56fb062e9f2f2cbbbe03a38ff56b36031d3486` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
