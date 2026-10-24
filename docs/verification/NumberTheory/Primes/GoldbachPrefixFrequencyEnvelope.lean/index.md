# Verification target: GRWTSK.NumberTheory.Primes.GoldbachPrefixFrequencyEnvelope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5c8f3f1184a6fae1d41dd9d5fcffa21dc1848ac",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5c8f3f1184a6fae1d41dd9d5fcffa21dc1848ac`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer`](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachPrefixChordLoss](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/goldbachprefixchordloss--053392bad0ed18e9177fd4e5.md) | 34 | `declaration-track:053392bad0ed18e9177fd4e57f9145e755bb7017150475edf1a65e8c9eee79b6` |
| 2 | `def` | [goldbachPrefixFrequencyResidueBudget](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/goldbachprefixfrequencyresiduebudget--b465f6e5b697aa90b7a1c054.md) | 39 | `declaration-track:b465f6e5b697aa90b7a1c054538f3f1c0622b69c15f759682d53ea700d7eb778` |
| 3 | `def` | [goldbachPrefixFrequencyError](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/goldbachprefixfrequencyerror--1dcf43922bd6f40f970e317c.md) | 45 | `declaration-track:1dcf43922bd6f40f970e317cf0bd3b66bf5bdd44beb62706bc5199127d4e80dd` |
| 4 | `def` | [goldbachPrefixFrequencyEnvelope](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/goldbachprefixfrequencyenvelope--cc4a927e47bbfdc0c2058651.md) | 50 | `declaration-track:cc4a927e47bbfdc0c2058651a4b27813a54e226f1f14be90f23aeb8bf4031693` |
| 5 | `theorem` | [norm_goldbachProgressionExponentialModel_eq_amplitude](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/norm-goldbachprogressionexponentialmodel-eq-amplitude--e4f116925018a02646de091f.md) | 57 | `result-track:e4f116925018a02646de091fc1dc46cb7c6ee5670e8bc1447e07a2c1faac46f2` |
| 6 | `theorem` | [norm_goldbachCenteredProgressionCircleResidual_le_model](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/norm-goldbachcenteredprogressioncircleresidual-le-model--10fd5c85bce91bd7c00622df.md) | 66 | `result-track:10fd5c85bce91bd7c00622dfe71c69328ee14ba1816e4cf6195d504e9d02fade` |
| 7 | `theorem` | [norm_goldbachCenteredProgressionCircleResidual_le_model_of_bound](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/norm-goldbachcenteredprogressioncircleresidual-le-model-of-bound--f7d5d8a31f8adfee8c0b99ab.md) | 84 | `result-track:f7d5d8a31f8adfee8c0b99abdcc2189eb1d20ea9e8afe3db0a0edce3cea86a62` |
| 8 | `theorem` | [norm_goldbachResidueDiscrepancy_le_frequency_budget](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/norm-goldbachresiduediscrepancy-le-frequency-budget--f8b0c6be11784c7a4bbf8587.md) | 96 | `result-track:f8b0c6be11784c7a4bbf8587c74f0f50a54ce43b3e6ed9440b478542f61a2930` |
| 9 | `theorem` | [norm_goldbachProgressionDiscrepancy_le_frequency_error](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/norm-goldbachprogressiondiscrepancy-le-frequency-error--82b51f45d1bcceff68390586.md) | 111 | `result-track:82b51f45d1bcceff6839058646a77984e4d3c1154243fcbcbd6b7b46e1e87d91` |
| 10 | `theorem` | [norm_goldbachCenteredResidual_le_frequency_envelope](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/norm-goldbachcenteredresidual-le-frequency-envelope--4e65d297ed6c676620d4ff5b.md) | 125 | `result-track:4e65d297ed6c676620d4ff5b3c332e8d5a502b6f1adb15869731232bba6ffc20` |
| 11 | `theorem` | [goldbachPrefixChordLoss_add_int](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/goldbachprefixchordloss-add-int--94bbe6bd1a2d880e7a354506.md) | 140 | `result-track:94bbe6bd1a2d880e7a35450679ced48c0345c8d6bab6a94fdb49a2bacd059992` |
| 12 | `theorem` | [goldbachPrefixFrequencyEnvelope_add_int](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/goldbachprefixfrequencyenvelope-add-int--8d5fb99d901d6622e33bff7b.md) | 145 | `result-track:8d5fb99d901d6622e33bff7b031ea27cf31e2ec46ca009f100c1eecd83cc2538` |
| 13 | `theorem` | [continuous_goldbachPrefixChordLoss](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/continuous-goldbachprefixchordloss--754b217170106d31e021a162.md) | 155 | `result-track:754b217170106d31e021a162c705cd1f0d919461148055e29b6985693a2148dd` |
| 14 | `theorem` | [continuous_goldbachPrefixFrequencyResidueBudget](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/continuous-goldbachprefixfrequencyresiduebudget--9c21d190d5d3994136a60c7b.md) | 161 | `result-track:9c21d190d5d3994136a60c7bf3782fb1126cf2e22e19a473dd8ffc08bd7db21f` |
| 15 | `theorem` | [continuous_goldbachPrefixFrequencyError](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/continuous-goldbachprefixfrequencyerror--b6eb5deecaf17e1c777cb01c.md) | 168 | `result-track:b6eb5deecaf17e1c777cb01ccbbf3b49216e40372b050e9b2478629611a877d4` |
| 16 | `theorem` | [continuous_goldbachPrefixFrequencyEnvelope](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/declarations/continuous-goldbachprefixfrequencyenvelope--147cdb80be247651d7d96e42.md) | 175 | `result-track:147cdb80be247651d7d96e420012203c945e1132a9ab27c35a10d32fc8b115a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
