# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternBoundaryTV

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbac3acda406e56772c39599de39c086fbf88c22",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbac3acda406e56772c39599de39c086fbf88c22`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshPatterns`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eventCount](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/eventcount--8ce88c254543cef4ccb81508.md) | 37 | `declaration-track:8ce88c254543cef4ccb81508bb288fa2c43c4f4e87180be30a25c8aac11809db` |
| 2 | `theorem` | [eventCount_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/eventcount-nonneg--433d6a159592f48e6a5ac9ee.md) | 41 | `result-track:433d6a159592f48e6a5ac9ee3d8947d7e620f5b90d63d162be34972be29878cb` |
| 3 | `theorem` | [eventCount_le_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/eventcount-le-card--a0a0ab309a9a5d8e9478ebca.md) | 49 | `result-track:a0a0ab309a9a5d8e9478ebca96e72c3b46948ca29e75cc803383b5114548ff20` |
| 4 | `theorem` | [eventCount_split](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/eventcount-split--05e89eac3475670449a15be1.md) | 62 | `result-track:05e89eac3475670449a15be12ffc971cd22d428e0b9ad2bf0c2b7d9ec29c7efd` |
| 5 | `theorem` | [eventCount_agree_off](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/eventcount-agree-off--15007d1ed262ea7e1719c4d5.md) | 72 | `result-track:15007d1ed262ea7e1719c4d55d90964102f6cb8ca71014d7a7ba61f49f763778` |
| 6 | `theorem` | [eventCount_difference_supported](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/eventcount-difference-supported--38792844e10958d4d2331a5f.md) | 85 | `result-track:38792844e10958d4d2331a5fb228f8bc012454170ed5050f9581a36fbe5d7b3e` |
| 7 | `theorem` | [abs_eventCount_difference_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/abs-eventcount-difference-le--f0376755d3a1737359b9309c.md) | 97 | `result-track:f0376755d3a1737359b9309c528d2b95b9109c82fe962e20c8eda2435b53b246` |
| 8 | `def` | [empiricalEvent](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/empiricalevent--1d58db5664ef9ed94ee3d93b.md) | 112 | `declaration-track:1d58db5664ef9ed94ee3d93bf2145dfa596faeed9dafa0cbf9105490b17381a1` |
| 9 | `theorem` | [abs_empiricalEvent_difference_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/abs-empiricalevent-difference-le--b69f2fe6146811f613dfff8d.md) | 117 | `result-track:b69f2fe6146811f613dfff8de934d8da2e46ff853d1cface7b4b20dfa84ac27f` |
| 10 | `def` | [finiteEventTV](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/finiteeventtv--b764221482a156271e98489c.md) | 131 | `declaration-track:b764221482a156271e98489c99957015ebb01e59d223f57977ec28acb51a6df0` |
| 11 | `theorem` | [finiteEventTV_le_exception_fraction](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/finiteeventtv-le-exception-fraction--a2a5a45f8c71aaffcf799ae2.md) | 137 | `result-track:a2a5a45f8c71aaffcf799ae2ec8ef6ba6c13b91d8d9367a310aaee09ae2ad8f9` |
| 12 | `def` | [selectedPattern](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/selectedpattern--ab1b236c6d0344cc8498d936.md) | 151 | `declaration-track:ab1b236c6d0344cc8498d936dbec20d0820460ef3e5c4abad6a66e8b67937680` |
| 13 | `theorem` | [selectedPattern_agree_off](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/selectedpattern-agree-off--7d0c3afd6931df3a7a4cf574.md) | 156 | `result-track:7d0c3afd6931df3a7a4cf574656f0de885290eb65724ef903962bc619fb2b2b4` |
| 14 | `theorem` | [selectedPattern_finiteTV_le_exception_fraction](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/declarations/selectedpattern-finitetv-le-exception-fraction--51070670cbdf5d900ba584ca.md) | 169 | `result-track:51070670cbdf5d900ba584ca48180a0905a21f9f9fbae51485e336d3d53353a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
