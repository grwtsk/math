# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.AddCircleAdd.Variant68b69273642ede494df57157e74372b8aade0fb72f8ce0d7734a605a615876c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc374f9f75b4cc1192c881216cfcb8185946b52d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircleAdd/Variant68b69273642ede494df57157e74372b8aade0fb72f8ce0d7734a605a615876c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircleAdd/Variant68b69273642ede494df57157e74372b8aade0fb72f8ce0d7734a605a615876c3.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircleAdd/Variant68b69273642ede494df57157e74372b8aade0fb72f8ce0d7734a605a615876c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc374f9f75b4cc1192c881216cfcb8185946b52d`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircleAdd/Variant68b69273642ede494df57157e74372b8aade0fb72f8ce0d7734a605a615876c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircleAdd/Variant68b69273642ede494df57157e74372b8aade0fb72f8ce0d7734a605a615876c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.Action.OfMinimal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle.DenseSubgroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ergodic_add_left](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircleAdd/Variant68b69273642ede494df57157e74372b8aade0fb72f8ce0d7734a605a615876c3.lean/declarations/ergodic-add-left--266548b39c8db2ea134e1454.md) | 32 | `result-track:266548b39c8db2ea134e1454cdae9f18a22ec2dad7e82eb6aa82f2074d777ea0` |
| 2 | `theorem` | [ergodic_add_right](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircleAdd/Variant68b69273642ede494df57157e74372b8aade0fb72f8ce0d7734a605a615876c3.lean/declarations/ergodic-add-right--03f0b849c29717a74ba7e011.md) | 35 | `result-track:03f0b849c29717a74ba7e011948c284c8c1fe42c1e82136e49f93360fe7e84a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
