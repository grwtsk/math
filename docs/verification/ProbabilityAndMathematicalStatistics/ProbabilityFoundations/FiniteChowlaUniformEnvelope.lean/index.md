# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteChowlaUniformEnvelope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d22eb97829eb8257c70e21a0ff9c08843ced733",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d22eb97829eb8257c70e21a0ff9c08843ced733`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicWalshBoundary`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicWalshBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Data.Fintype.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AllOrderCorrelationEnvelope](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/declarations/allordercorrelationenvelope--12c1a3f91e587be2a94d8555.md) | 45 | `declaration-track:12c1a3f91e587be2a94d8555467decc86ad053410bd8692b48ecf50d41db245b` |
| 2 | `theorem` | [nonemptyCharacterCount](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/declarations/nonemptycharactercount--7174e3861f0a0e2a47f6155e.md) | 53 | `result-track:7174e3861f0a0e2a47f6155e699736c620b08281ab5eccc3eec88b43ee451647` |
| 3 | `theorem` | [nonemptyCharacterCount_rat](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/declarations/nonemptycharactercount-rat--83acb3f015594c8859a95998.md) | 61 | `result-track:83acb3f015594c8859a959985f885b75e9f78e28999b833fbc6e53475541bb68` |
| 4 | `theorem` | [energy_le_characterCount_mul_envelope_sq](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/declarations/energy-le-charactercount-mul-envelope-sq--04a1cb4d92b426a0501f7b48.md) | 72 | `result-track:04a1cb4d92b426a0501f7b48d60cdc067095ff142f316a8ec01210e9b1632d0c` |
| 5 | `theorem` | [energy_le_exponential_envelope_sq](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/declarations/energy-le-exponential-envelope-sq--0e7bfb1b225521cac34af7c4.md) | 102 | `result-track:0e7bfb1b225521cac34af7c4e82747a116c109494b071c044bdaea4c5b9625de` |
| 6 | `def` | [OrdinaryAllOrderChowlaAtScale](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/declarations/ordinaryallorderchowlaatscale--1c910b5a885ee02e61cf4a0d.md) | 119 | `declaration-track:1c910b5a885ee02e61cf4a0d217ef8115e98d646d9ce80eb1336b01b3ed642f2` |
| 7 | `theorem` | [cyclicTV_le_allOrderEnvelope](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/declarations/cyclictv-le-allorderenvelope--4581fb63bb3d5769d1e9a11d.md) | 132 | `result-track:4581fb63bb3d5769d1e9a11d9da18d2f6189d9eebc969e333c5f9e8407067d3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
