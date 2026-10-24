# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FinitePacketTurnCovariance.Variante26f45b6dc8c71cf.DependentMixtureTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f857b077801ada98839b459f530f13a31e5ae40b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketTurnCovariance/Variante26f45b6dc8c71cf/DependentMixtureTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketTurnCovariance/Variante26f45b6dc8c71cf/DependentMixtureTransport.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketTurnCovariance/Variante26f45b6dc8c71cf/DependentMixtureTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f857b077801ada98839b459f530f13a31e5ae40b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketTurnCovariance/Variante26f45b6dc8c71cf/DependentMixtureTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketTurnCovariance/Variante26f45b6dc8c71cf/DependentMixtureTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Spectral.FinitePacket` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 21; external provider; requires a separately pinned dependency.
- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FinitePacketRelabeling.Variante26f45b6dc8c71cf.WholeEquivalenceAndExpectations`](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketRelabeling/Variante26f45b6dc8c71cf/WholeEquivalenceAndExpectations.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FamilyTurnCovariance](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketTurnCovariance/Variante26f45b6dc8c71cf/DependentMixtureTransport.lean/declarations/familyturncovariance--dd89f2bf08eb28c87bd5f2e7.md) | 46 | `declaration-track:dd89f2bf08eb28c87bd5f2e7b5ebad3ac551c8aae4d89b35476e643ca4028ff9` |
| 2 | `def` | [sumOutcomeEquiv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketTurnCovariance/Variante26f45b6dc8c71cf/DependentMixtureTransport.lean/declarations/sumoutcomeequiv--a2b81e39c6eb7d8431db9467.md) | 62 | `declaration-track:a2b81e39c6eb7d8431db9467b2580ba3ef2cf5aa99859ace1758d8e1d4eb2f87` |
| 3 | `def` | [mixtureEquiv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketTurnCovariance/Variante26f45b6dc8c71cf/DependentMixtureTransport.lean/declarations/mixtureequiv--35f1c61673f269b3893a596a.md) | 69 | `declaration-track:35f1c61673f269b3893a596a0ab6858249ac8437a8a8c06c904f959909ec0ca5` |
| 4 | `theorem` | [spectralExpectation_reindex](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacketTurnCovariance/Variante26f45b6dc8c71cf/DependentMixtureTransport.lean/declarations/spectralexpectation-reindex--f90d2316fac1fadfb543e82c.md) | 89 | `result-track:f90d2316fac1fadfb543e82c448518712c43ac77e887180aa8c7a4b65b699905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
