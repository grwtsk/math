# Verification target: GRWTSK.Analysis.Complex.NewtonDisk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96a4a162853b3bcd52adf92bec586be30c54c723",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/NewtonDisk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96a4a162853b3bcd52adf92bec586be30c54c723`.

Source path: `GRWTSK/Analysis/Complex/NewtonDisk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/NewtonDisk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Contracting` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [step](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/declarations/step--4ec2e999dd5dad0ccab0325d.md) | 27 | `declaration-track:4ec2e999dd5dad0ccab0325d82990cd3e256551caf3fbd4f43d27bbd26422a07` |
| 2 | `theorem` | [step_deriv](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/declarations/step-deriv--f832486fdf29a4753077f146.md) | 29 | `result-track:f832486fdf29a4753077f1461df4d7016128fa3a79330db7987527e29665dfc5` |
| 3 | `theorem` | [step_lipschitz](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/declarations/step-lipschitz--1d36af6b85c35aad49462572.md) | 34 | `result-track:1d36af6b85c35aad4946257287966635fa68777b1c1b45617b656791200db765` |
| 4 | `theorem` | [derivative_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/declarations/derivative-ne-zero--7ae0dfef8df6f63e07a7b1e3.md) | 43 | `result-track:7ae0dfef8df6f63e07a7b1e3720780f465a2351cf1a77e8a56a2d3201a203862` |
| 5 | `theorem` | [preconditioner_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/declarations/preconditioner-ne-zero--02f76f71f1c87b1d5462cf9f.md) | 50 | `result-track:02f76f71f1c87b1d5462cf9f51c7ab60bef46eb2aacd890ec8bdae1d79870e25` |
| 6 | `theorem` | [step_mapsTo](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/declarations/step-mapsto--86dba37009c7217ab321d494.md) | 57 | `result-track:86dba37009c7217ab321d49483f21fbb6da947130c8d3472383ed8adc186188a` |
| 7 | `theorem` | [exists_unique_zero](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/declarations/exists-unique-zero--476c2253b9cff4bc050a6a44.md) | 79 | `result-track:476c2253b9cff4bc050a6a447a462b8f635665443ee13a7f9755c15db0b3e70f` |
| 8 | `theorem` | [zero_distance_le](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/declarations/zero-distance-le--9f44816a05b4cf215799dc5c.md) | 108 | `result-track:9f44816a05b4cf215799dc5c78348334b038506a39f887e0e35cab49323ca266` |
| 9 | `theorem` | [derivative_variation](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/declarations/derivative-variation--3dbcfd1c43141e92ee0d67dc.md) | 127 | `result-track:3dbcfd1c43141e92ee0d67dc319c0b3ad2a3fc797ed2624ad6bbecf2ff90f083` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
