# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.AddCircle.Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "596962cb59978977397593c4f0cc842f552f938a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `596962cb59978977397593c4f0cc842f552f938a`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Prufer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.Ergodic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.DensityTheorem` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.AddCircle` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_empty_or_univ_of_forall_vadd_ae_eq_self](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean/declarations/ae-empty-or-univ-of-forall-vadd-ae-eq-self--e3b07aeb19186fcced7c409d.md) | 51 | `result-track:e3b07aeb19186fcced7c409d6c3c744177e11a82c8df51bb30e348ab8e502c1d` |
| 2 | `theorem` | [ergodic_zsmul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean/declarations/ergodic-zsmul--e9a9058d61dae750cca58034.md) | 109 | `result-track:e9a9058d61dae750cca580340bcded8cd9b4efce81cb924826cf11ac3ac3aa21` |
| 3 | `theorem` | [ergodic_nsmul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean/declarations/ergodic-nsmul--dafded85cf6b36b076558ad5.md) | 128 | `result-track:dafded85cf6b36b076558ad55dac2f9a839462900e2d2267e94caf5c062da41a` |
| 4 | `theorem` | [ergodic_zsmul_add](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean/declarations/ergodic-zsmul-add--35c86d9a75d81d7b9031e2c2.md) | 131 | `result-track:35c86d9a75d81d7b9031e2c287ce4d6640bc5614eb199e9bd9f4ae246555365f` |
| 5 | `theorem` | [ergodic_nsmul_add](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant738b8b50765409762f2f4a68260067237503d104a76dd87071040edf34537caf.lean/declarations/ergodic-nsmul-add--ccf8bd1adb6bded7da21a5f4.md) | 148 | `result-track:ccf8bd1adb6bded7da21a5f4e4f6721a4492db882ab48e6ce1aba86f34acf547` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
