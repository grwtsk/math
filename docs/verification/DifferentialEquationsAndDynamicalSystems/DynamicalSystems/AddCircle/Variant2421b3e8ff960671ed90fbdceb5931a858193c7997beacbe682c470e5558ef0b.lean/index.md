# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.AddCircle.Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a746cc2091aa145a9addbbf79c359a6ceaf8d5cd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a746cc2091aa145a9addbbf79c359a6ceaf8d5cd`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.AddCircle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.Ergodic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.DensityTheorem` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.Iterate` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_empty_or_univ_of_forall_vadd_ae_eq_self](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean/declarations/ae-empty-or-univ-of-forall-vadd-ae-eq-self--0b23b724a26a13dabf3140a2.md) | 43 | `result-track:0b23b724a26a13dabf3140a24a7c4b373fae4e7b0880826809944a4e105d83d0` |
| 2 | `theorem` | [ergodic_zsmul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean/declarations/ergodic-zsmul--68d63926059e074eeb4ac04c.md) | 102 | `result-track:68d63926059e074eeb4ac04ca490386ff93ec997080794baa20e6507671d18e6` |
| 3 | `theorem` | [ergodic_nsmul](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean/declarations/ergodic-nsmul--9aa7e7bf9aa995c7a16e3fd4.md) | 121 | `result-track:9aa7e7bf9aa995c7a16e3fd462e84d726cfc47011500429bcc72d7eb06fffc14` |
| 4 | `theorem` | [ergodic_zsmul_add](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean/declarations/ergodic-zsmul-add--62796a0133c88e457f1fe1d5.md) | 125 | `result-track:62796a0133c88e457f1fe1d5c11fdabed8c53b8e9610863f8877786bbd841425` |
| 5 | `theorem` | [ergodic_nsmul_add](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircle/Variant2421b3e8ff960671ed90fbdceb5931a858193c7997beacbe682c470e5558ef0b.lean/declarations/ergodic-nsmul-add--976fa3e66b29ba319289f26e.md) | 143 | `result-track:976fa3e66b29ba319289f26ee75ae692641c621aa2e4ef531ffb63ab55b8fd08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
