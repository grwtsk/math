# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstBlockData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b08c18f5e11ad887802d6f59e84779f7804555e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b08c18f5e11ad887802d6f59e84779f7804555e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalTaylorSeedNormalization`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.EuclideanDyadicRun`](../../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic.FinCases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [base](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/base--77848ada10f234a835d7ed64.md) | 27 | `declaration-track:77848ada10f234a835d7ed64717540348849b29eac132ed1d70e7b77d9577377` |
| 2 | `def` | [initial](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/initial--5dd78c80942e270581344259.md) | 29 | `declaration-track:5dd78c80942e2705813442595859cf24cc4bbd700053d51bc325876df098363e` |
| 3 | `def` | [sourceArgument](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/sourceargument--c695c3459300d94e20e6f7b4.md) | 97 | `declaration-track:c695c3459300d94e20e6f7b4740e35dc2f92cc0c10fb01803a8c04a3e930eb0e` |
| 4 | `def` | [sourceRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/sourceradius--0f5efaeec2855dfdb638c552.md) | 99 | `declaration-track:0f5efaeec2855dfdb638c552caf6f4e230f283e23eaeb6ced0ee5a82eec7e93c` |
| 5 | `def` | [sourceDisplacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/sourcedisplacement--df926e88f7dde47da2c376a9.md) | 101 | `declaration-track:df926e88f7dde47da2c376a9d2c90b4f475de0a44af2c614981d60454da8faaa` |
| 6 | `def` | [InputValid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/inputvalid--8957c2aa7e1da074282e67de.md) | 104 | `declaration-track:8957c2aa7e1da074282e67de10a8a1db2be27438af01f5973fa900ed426b2fa2` |
| 7 | `def` | [SeedWindows](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/seedwindows--0e8f45e9c5c699564e6c75d6.md) | 108 | `declaration-track:0e8f45e9c5c699564e6c75d609c03fa7d6d277ce292af9418ce619c5496df55d` |
| 8 | `def` | [slot](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/slot--3c43af1f90b412e7837333fc.md) | 113 | `declaration-track:3c43af1f90b412e7837333fc9add3f833cb2abd5b6b5a4755c164f52507735d7` |
| 9 | `theorem` | [group_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/group-cover--0264f94aede8ef1357419009.md) | 116 | `result-track:0264f94aede8ef1357419009adfb8a9217bce24e3e81261511196f4bd340cff7` |
| 10 | `theorem` | [group_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlockData.lean/declarations/group-unique--d3dff6ee57d4e61e39fb9017.md) | 123 | `result-track:d3dff6ee57d4e61e39fb9017b28cb2b69a7cdc7179f0d0c5044fa4b99f393521` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
