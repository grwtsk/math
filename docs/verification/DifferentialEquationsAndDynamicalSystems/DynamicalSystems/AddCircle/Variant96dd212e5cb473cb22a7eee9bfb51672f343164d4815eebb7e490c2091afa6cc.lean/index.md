# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.AddCircle.Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9483805418679fe66dc312ac1d8622206c2314d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9483805418679fe66dc312ac1d8622206c2314d`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Prufer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.Ergodic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.DensityTheorem` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.AddCircle` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_empty_or_univ_of_forall_vadd_ae_eq_self](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean/declarations/ae-empty-or-univ-of-forall-vadd-ae-eq-self--6a235c22ce88395d4501771a.md) | 43 | `result-track:6a235c22ce88395d4501771abc0b34755bc8845b6f3f0414b54c1565a3bb4c04` |
| 2 | `theorem` | [ergodic_zsmul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean/declarations/ergodic-zsmul--f88b9d4e24a4ecd473357af9.md) | 101 | `result-track:f88b9d4e24a4ecd473357af9a85f0fe83724b1a2e352538758ba969693c3100e` |
| 3 | `theorem` | [ergodic_nsmul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean/declarations/ergodic-nsmul--3a7f529e124b4bf9e8be7017.md) | 120 | `result-track:3a7f529e124b4bf9e8be7017eaa83da757dfee45286cde4d6d27014fc4258e63` |
| 4 | `theorem` | [ergodic_zsmul_add](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean/declarations/ergodic-zsmul-add--383dacad3c523c82eedc2d52.md) | 123 | `result-track:383dacad3c523c82eedc2d521d49d9f5a989aecedaf6a81288b3e9bfc1abbd45` |
| 5 | `theorem` | [ergodic_nsmul_add](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant96dd212e5cb473cb22a7eee9bfb51672f343164d4815eebb7e490c2091afa6cc.lean/declarations/ergodic-nsmul-add--65edbcf573d584103578e9bd.md) | 140 | `result-track:65edbcf573d584103578e9bd86fe8b8e02e8609c85049df885447a4315194117` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
