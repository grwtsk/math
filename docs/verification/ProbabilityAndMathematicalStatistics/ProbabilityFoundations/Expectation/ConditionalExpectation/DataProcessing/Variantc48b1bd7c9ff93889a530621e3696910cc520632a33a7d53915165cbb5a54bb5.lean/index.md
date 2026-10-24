# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.DataProcessing.Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14a5bcafe26a7c10742129a196763d9d3ccb2be5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14a5bcafe26a7c10742129a196763d9d3ccb2be5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Approximation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Deriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.InformationTheory.KullbackLeibler.ChainRule` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.CondJensen` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.RadonNikodym` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_condExp_rnDeriv_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/map-condexp-rnderiv-le--bb236b3123669e09abaef966.md) | 48 | `result-track:bb236b3123669e09abaef96658fc9b05584a9fc6131c0b50b09655c54eceb6c1` |
| 2 | `lemma` | [comp_rnDeriv_map_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/comp-rnderiv-map-le--355ea572ea2737a6d1bb482d.md) | 56 | `result-track:355ea572ea2737a6d1bb482ddcd98858c138877c8c5daa13d6d2e1b29d537174` |
| 3 | `lemma` | [integrable_comp_rnDeriv_map](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/integrable-comp-rnderiv-map--973819e7e7a85d3dce4f0e8e.md) | 67 | `result-track:973819e7e7a85d3dce4f0e8e5149d63610ad7ef0428a0410904cf34b810d5908` |
| 4 | `lemma` | [comp_rnDeriv_trim_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/comp-rnderiv-trim-le--62f8cd2275a8f390a2e556e5.md) | 87 | `result-track:62f8cd2275a8f390a2e556e575cffa5f47f2c04043ede4ddabde731b290c554e` |
| 5 | `lemma` | [integrable_comp_rnDeriv_trim](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/integrable-comp-rnderiv-trim--f2e2d26f8ed47c8050c8504b.md) | 98 | `result-track:f2e2d26f8ed47c8050c8504b437e231a90c1f5c33f3134b04f93845896ad1647` |
| 6 | `lemma` | [integrable_comp_condExp_rnDeriv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/integrable-comp-condexp-rnderiv--bc0bcc5a551c177d6628700c.md) | 115 | `result-track:bc0bcc5a551c177d6628700c161a87471905ed9accd014ee41c80dee63adb304` |
| 7 | `lemma` | [integrable_llr_map](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/integrable-llr-map--c014d3144639cf8480ad2695.md) | 131 | `result-track:c014d3144639cf8480ad269558c54df82c0f89ca649f8f3fc6f21ca8769ccf78` |
| 8 | `lemma` | [toReal_klDiv_map_of_ac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/toreal-kldiv-map-of-ac--e84e121da86658e83b9b523a.md) | 138 | `result-track:e84e121da86658e83b9b523a2822e821b62454948beb0e2d828462cbef5552ab` |
| 9 | `lemma` | [klDiv_map_of_ac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/kldiv-map-of-ac--9103527b04c74f34f5b218c2.md) | 146 | `result-track:9103527b04c74f34f5b218c2ac52dce8b598bc5112149882f0f864995f62e5a7` |
| 10 | `lemma` | [toReal_klDiv_trim_of_ac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/toreal-kldiv-trim-of-ac--aac62784c502595752ab6df8.md) | 153 | `result-track:aac62784c502595752ab6df8dc30f5fe86c4819d81120d2c7cfb6386eb3aac7d` |
| 11 | `theorem` | [klDiv_map_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/kldiv-map-le--53c53342198498ae83f99749.md) | 160 | `result-track:53c53342198498ae83f99749ffb33a73d226f66dea229e19bbf8d3619e075545` |
| 12 | `theorem` | [klDiv_trim_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/kldiv-trim-le--8e86597d07cf68fb7b40fce3.md) | 180 | `result-track:8e86597d07cf68fb7b40fce319570a866c7a9b6add036c1260de28a1dcde59d7` |
| 13 | `theorem` | [klDiv_comp_right_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variantc48b1bd7c9ff93889a530621e3696910cc520632a33a7d53915165cbb5a54bb5.lean/declarations/kldiv-comp-right-le--7d73d6d4e23eeb59428c78d1.md) | 186 | `result-track:7d73d6d4e23eeb59428c78d199fde32027f1a9074879595560fdbc62fb749f09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
