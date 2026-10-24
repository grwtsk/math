# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.FiniteAtomicSpectralEvents.Variantc885071702656434.EventValuesAndBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b72aa91540ad7f9d88b818d2e4c4e39f058bc71",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/index.md) · [Full source](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b72aa91540ad7f9d88b818d2e4c4e39f058bc71`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.Simplex` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 23; external provider; requires a separately pinned dependency.
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteOutcomeSpectralExpectations.Variantc885071702656434.WholePacketAndObservableLaws`](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/index.md) — import line 25; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eventProbability](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/declarations/eventprobability--17ab1aab1b21eb3b34f66588.md) | 50 | `declaration-track:17ab1aab1b21eb3b34f665886c5d3cd679654300d3abf69e142d70c6cca1b3ea` |
| 2 | `def` | [spectralEventProbability](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/declarations/spectraleventprobability--1b16b2f2ee6290fda26f10ce.md) | 57 | `declaration-track:1b16b2f2ee6290fda26f10ce1e733d828a71898097d2f956a645d6d321f52ac6` |
| 3 | `theorem` | [eventProbability_empty](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/declarations/eventprobability-empty--08d5459858c6def807cd441b.md) | 62 | `result-track:08d5459858c6def807cd441b9dc4854b90b7300456a7467a86816ccd2cae40ae` |
| 4 | `theorem` | [eventProbability_univ](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/declarations/eventprobability-univ--6150f3c77abbce203832167d.md) | 68 | `result-track:6150f3c77abbce203832167d0010f4a5eff430cbed68bfa1eed05160c4feba40` |
| 5 | `theorem` | [eventProbability_nonnegative](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/declarations/eventprobability-nonnegative--f7db008157635eb2fc5c722a.md) | 73 | `result-track:f7db008157635eb2fc5c722af6b5f3219d275b041c118d2df20fb137bb2e3f29` |
| 6 | `theorem` | [spectralEventProbability_empty](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/declarations/spectraleventprobability-empty--9d166f5d5d43cf5d8ed59bcb.md) | 80 | `result-track:9d166f5d5d43cf5d8ed59bcb514189cae53786fb1f6fac587804b5f30014993f` |
| 7 | `theorem` | [spectralEventProbability_univ](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/declarations/spectraleventprobability-univ--2c6874fbb200a42ac64f681e.md) | 85 | `result-track:2c6874fbb200a42ac64f681eb1e8273fa5dc7b95d7a93fa2c503943b0344cfe9` |
| 8 | `theorem` | [spectralEventProbability_nonnegative](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/FiniteAtomicSpectralEvents/Variantc885071702656434/EventValuesAndBounds.lean/declarations/spectraleventprobability-nonnegative--1482d85e5972530db612bbcf.md) | 89 | `result-track:1482d85e5972530db612bbcf17ef80cdea5a43f5b6d6419c267f2efdb4d4983b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
