# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CyclicBernoulliComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a4be79226cbaf3133038e1c2564a076e1be8bbd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a4be79226cbaf3133038e1c2564a076e1be8bbd`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshBernoulliTV`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fullPattern_match_indicator](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/fullpattern-match-indicator--7a41692a32b47293c208e448.md) | 48 | `result-track:7a41692a32b47293c208e448435e1c1d72b97a8522dfbf33cb1bc731e7c45f17` |
| 2 | `theorem` | [patternCountOn_univ_eq_count](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/patterncounton-univ-eq-count--a586a366526c6553ea75bfaf.md) | 57 | `result-track:a586a366526c6553ea75bfafdba5ac2ed46f0965491289fea344d6371489db51` |
| 3 | `theorem` | [sum_patternCountOn_event_eq_rootCount](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/sum-patterncounton-event-eq-rootcount--3c4b5365642466235b9596c7.md) | 70 | `result-track:3c4b5365642466235b9596c73c9570f67948474beb19454401cb5230088625a7` |
| 4 | `theorem` | [empiricalEvent_eq_sum_empiricalPatterns](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/empiricalevent-eq-sum-empiricalpatterns--e36fd46d9272a945b87d7eb8.md) | 110 | `result-track:e36fd46d9272a945b87d7eb84de045630fddd22eecc30c4b5dd830e909f6fbea` |
| 5 | `def` | [uniformPatternEventMass](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/uniformpatterneventmass--366dfc4c17f00ac4a277c614.md) | 148 | `declaration-track:366dfc4c17f00ac4a277c614b1eb6d61ff6245c070441f79b01b78cf9270998c` |
| 6 | `theorem` | [uniformPatternEventDeviation_eq_rooted](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/uniformpatterneventdeviation-eq-rooted--05470c19d3393ed97a0e7a3a.md) | 155 | `result-track:05470c19d3393ed97a0e7a3ac62e72ccd280df50a29176e5d28256a74fc82faf` |
| 7 | `theorem` | [empiricalVsUniformTV_triangle](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/empiricalvsuniformtv-triangle--7adb4946be4d62dd7f1c083f.md) | 172 | `result-track:7adb4946be4d62dd7f1c083f7ffca35b4503ba670ea31cae16c75f8b2c8e826a` |
| 8 | `def` | [ordinarySelected](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/ordinaryselected--e6b3aabac6892540b98cdcd2.md) | 220 | `declaration-track:e6b3aabac6892540b98cdcd273098bdcb5b3c92b56a8d7b05fe45229aa3dd355` |
| 9 | `def` | [cyclicSelected](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/cyclicselected--9904ee63a021860453bb08e1.md) | 225 | `declaration-track:9904ee63a021860453bb08e11923ebd7080228d4f3d37677f728c755f9e21c32` |
| 10 | `theorem` | [cyclicEmpiricalVsUniformTV_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean/declarations/cyclicempiricalvsuniformtv-le--5401983ab1956e93d743e049.md) | 239 | `result-track:5401983ab1956e93d743e0496686726ff5b5a7f180b64444d8baff474df3ec67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
