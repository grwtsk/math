# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogEnergyStrength

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66cf533b7c7ef6104f2accf3856fa9f99e896b41",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66cf533b7c7ef6104f2accf3856fa9f99e896b41`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogTwoSupplierReduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [centeredMobiusLogEnergy_le_historicalGreenEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean/declarations/centeredmobiuslogenergy-le-historicalgreenenergy--4481401386bbcec84c4a282a.md) | 16 | `result-track:4481401386bbcec84c4a282ab403744428c4f80a57c668fa8779ab07208419db` |
| 2 | `theorem` | [historicalGreenEnergy_le_centeredMobiusLogEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean/declarations/historicalgreenenergy-le-centeredmobiuslogenergy--6f49c95428ab8ec4a122cda5.md) | 48 | `result-track:6f49c95428ab8ec4a122cda5d0eac02d90bfe9f8ae7c6a9d68bbe0c30840533a` |
| 3 | `def` | [AllDyadicHistoricalGreenEnergyBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean/declarations/alldyadichistoricalgreenenergybound--790656ef1b25c92c3b2b0a2e.md) | 61 | `declaration-track:790656ef1b25c92c3b2b0a2edfc350225445025afb10c7f82cad6775c3147a4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
