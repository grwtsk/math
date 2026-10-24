# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.Function.Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "168ff5bce5edab75af1175e87c385410be047371",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `168ff5bce5edab75af1175e87c385410be047371`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.Ergodic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqFun` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [QuasiErgodic.ae_eq_const_of_ae_eq_comp_of_ae_range₀](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/declarations/quasiergodic-ae-eq-const-of-ae-eq-comp-of-ae-range--45b47304d426919e399f2adb.md) | 35 | `result-track:45b47304d426919e399f2adbe7c22bfe16d495ae336ed354947d67b3c8a99fdb` |
| 2 | `theorem` | [PreErgodic.ae_eq_const_of_ae_eq_comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/declarations/preergodic-ae-eq-const-of-ae-eq-comp--698486c24a40cbfa2742c632.md) | 54 | `result-track:698486c24a40cbfa2742c632f58bbd3ed019c52a27285e3e7573d99e1f55b5cc` |
| 3 | `theorem` | [QuasiErgodic.ae_eq_const_of_ae_eq_comp₀](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/declarations/quasiergodic-ae-eq-const-of-ae-eq-comp--e45539248ee6f15ac8613876.md) | 63 | `result-track:e45539248ee6f15ac86138764af88363ded946b2f151731c0d0306cbd38891a0` |
| 4 | `theorem` | [Ergodic.ae_eq_const_of_ae_eq_comp₀](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/declarations/ergodic-ae-eq-const-of-ae-eq-comp--c05a180a3fc1a199df3e9956.md) | 71 | `result-track:c05a180a3fc1a199df3e9956665d9a151079577c36c161437db95d8e5b104102` |
| 5 | `theorem` | [ae_eq_const_of_ae_eq_comp_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/declarations/ae-eq-const-of-ae-eq-comp-ae--ddc3565a4016184b186d8c8a.md) | 85 | `result-track:ddc3565a4016184b186d8c8a01501beda5c429a080bc5c733c742cd3d8a6512b` |
| 6 | `theorem` | [eq_const_of_compQuasiMeasurePreserving_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/declarations/eq-const-of-compquasimeasurepreserving-eq--b11ba2f6b60568053c74475a.md) | 92 | `result-track:b11ba2f6b60568053c74475a078f9e49fac71d48dc35a6b4ab8d684c2797ae20` |
| 7 | `theorem` | [ae_eq_const_of_ae_eq_comp_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/declarations/ae-eq-const-of-ae-eq-comp-ae--7b536769ff2c253332c08183.md) | 107 | `result-track:7b536769ff2c253332c08183d43b01817a38baf47e0152f12cf7277759d9f2f0` |
| 8 | `theorem` | [eq_const_of_compMeasurePreserving_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Function/Variant83897f3647503e87b0325da73849f32e2891525a1f3e89012b8173bca642a5b9.lean/declarations/eq-const-of-compmeasurepreserving-eq--b907f661f360f08cd2bd2a06.md) | 111 | `result-track:b907f661f360f08cd2bd2a068847fca52fab6954528fe8e07d7022579e5fe57c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
