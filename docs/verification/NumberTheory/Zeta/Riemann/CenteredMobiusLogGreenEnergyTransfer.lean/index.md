# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenEnergyTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e4eb9647e863a8da9a8bdf68eb51a14741993a8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e4eb9647e863a8da9a8bdf68eb51a14741993a8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenL2Comparison`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenL2Comparison.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thinGreenEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/declarations/thingreenenergy--1a9890b91f52b0b1f7694fc0.md) | 15 | `declaration-track:1a9890b91f52b0b1f7694fc03d5bd8c31d373c1ae8fe0fcb46f9c7788a19c765` |
| 2 | `def` | [centeredMobiusLogFourierEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/declarations/centeredmobiuslogfourierenergy--8e85fd2d0f090b6d98df445e.md) | 19 | `declaration-track:8e85fd2d0f090b6d98df445ee32d6a12e468eb25e5f27c6980e33a7ca4829019` |
| 3 | `theorem` | [sq_norm_thinGreen_le_centered_plus_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/declarations/sq-norm-thingreen-le-centered-plus-residual--e7383b777191247270acac11.md) | 24 | `result-track:e7383b777191247270acac11496e975be39d1694ea2e04d5f8c64a5f0dcba911` |
| 4 | `theorem` | [sq_norm_centered_le_thinGreen_plus_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/declarations/sq-norm-centered-le-thingreen-plus-residual--3df382f1709454193652cee0.md) | 39 | `result-track:3df382f1709454193652cee0b43eda966ea6dda946399226562396d072fdaeb8` |
| 5 | `theorem` | [thinGreenEnergy_le_of_centered_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/declarations/thingreenenergy-le-of-centered-summable--f273e218a679778f7f8c43ca.md) | 60 | `result-track:f273e218a679778f7f8c43cae3bffd465406e4181626e51ca6c2c21fdbd2de66` |
| 6 | `theorem` | [centeredEnergy_le_of_thinGreen_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenEnergyTransfer.lean/declarations/centeredenergy-le-of-thingreen-summable--5e3520a58960d4c2e9143b5d.md) | 109 | `result-track:5e3520a58960d4c2e9143b5d5cf608ff985d685fc0051e7e362b282e4990509d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
