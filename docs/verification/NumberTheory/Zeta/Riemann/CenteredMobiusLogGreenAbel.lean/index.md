# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenAbel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13f4dcc63e3aa0ca3e176d5fb96475e3aa54496b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13f4dcc63e3aa0ca3e176d5fb96475e3aa54496b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenMeshPhase`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenMeshWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/declarations/greenmeshweight--47bb408f6f9965515d02a7b0.md) | 15 | `declaration-track:47bb408f6f9965515d02a7b0157a4cc5c268b23dbb35f809cf6a2a6b65e77d9c` |
| 2 | `def` | [greenMeshPhasePartialSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/declarations/greenmeshphasepartialsum--90f58cce190850ab36730b4e.md) | 18 | `declaration-track:90f58cce190850ab36730b4e3b80792a0a9a99d4a09787c2497e88f46f4dc171` |
| 3 | `theorem` | [greenMesh_weighted_phase_abel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/declarations/greenmesh-weighted-phase-abel--b6f1acd5b00c27f1250045a5.md) | 22 | `result-track:b6f1acd5b00c27f1250045a533632a4dcd4171f4a98af164f137de8c5fb8f019` |
| 4 | `theorem` | [greenMeshWeight_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/declarations/greenmeshweight-nonnegative--15fc1816975f3c345e0db9c4.md) | 53 | `result-track:15fc1816975f3c345e0db9c48e4eff1d7b9c6736fc72ed5f3986be156490f5ac` |
| 5 | `theorem` | [greenMeshWeight_antitone](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/declarations/greenmeshweight-antitone--37a68ace38a2ec2bf0283a9e.md) | 59 | `result-track:37a68ace38a2ec2bf0283a9e480585ef81a99aa31184f7f298a8d465b7f490fa` |
| 6 | `theorem` | [greenMeshWeight_abel_mass_le_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/declarations/greenmeshweight-abel-mass-le-one--d0729410a8616deac435ab2d.md) | 71 | `result-track:d0729410a8616deac435ab2da7a3bda74bc13e8dc5aee357f098f0d16f9fdfea` |
| 7 | `theorem` | [norm_greenMesh_weighted_phase_sum_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/declarations/norm-greenmesh-weighted-phase-sum-le--a66032d49516f4906913e9f6.md) | 92 | `result-track:a66032d49516f4906913e9f6b3e5afec6334adcef78a095d1a219a146f52766c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
