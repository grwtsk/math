# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogWeightedPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1a41860d1f430240d6282428faaa2525fbe0042",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1a41860d1f430240d6282428faaa2525fbe0042`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogEnergyStrength`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogEnergyStrength.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredGreenWeightedPrefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/declarations/centeredgreenweightedprefix--b164473848afa382f310d945.md) | 15 | `declaration-track:b164473848afa382f310d9451eb50a2e04799ca351afa5c64dd725f244a692d0` |
| 2 | `def` | [centeredGreenBaselineWeightedPrefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/declarations/centeredgreenbaselineweightedprefix--69ec7050c8d6c76e01fefcac.md) | 19 | `declaration-track:69ec7050c8d6c76e01fefcac70c486513ea86ae1ba93fa02ab9404224fd9469f` |
| 3 | `def` | [centeredGreenWeightedPrefixError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/declarations/centeredgreenweightedprefixerror--c1b0279ce766069a80db2d2f.md) | 22 | `declaration-track:c1b0279ce766069a80db2d2f70e8b31d0ad3866c63e891830eb2202121b1ff64` |
| 4 | `theorem` | [centeredGreenWeightedPrefixError_abel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/declarations/centeredgreenweightedprefixerror-abel--acbf1443f4032e3e7eeda98e.md) | 27 | `result-track:acbf1443f4032e3e7eeda98e8b87b2724f776fdcd145e9cf7d68a19ca43c6c75` |
| 5 | `theorem` | [abs_centeredGreenWeightedPrefixError_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogWeightedPrefix.lean/declarations/abs-centeredgreenweightedprefixerror-le--f3647b4214c2426b40a19003.md) | 59 | `result-track:f3647b4214c2426b40a19003c3253986ebf39f29c9acb3701f5fc0c410e82421` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
