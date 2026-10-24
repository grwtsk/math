# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaLambdaLogKernelFiniteBridgeControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34218fd92d7ff07619c2e6a8f9251690b49e56a4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34218fd92d7ff07619c2e6a8f9251690b49e56a4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelFiniteBridge`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lambda_log_kernel_zero_shift](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/declarations/lambda-log-kernel-zero-shift--e374ba7a60ce06d562c501c4.md) | 20 | `result-track:e374ba7a60ce06d562c501c46f1005bf3cfefc8fde9951b98643e12fcb2da841` |
| 2 | `theorem` | [lambda_log_kernel_first_shift](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/declarations/lambda-log-kernel-first-shift--6b99d7e1471cd0162bd18e1f.md) | 27 | `result-track:6b99d7e1471cd0162bd18e1fe296e9f66d0626515f5d6b0474586ee86fa03a80` |
| 3 | `theorem` | [lambda_log_kernel_prefix_all_N](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/declarations/lambda-log-kernel-prefix-all-n--78723866effbb54f3f7bc784.md) | 34 | `result-track:78723866effbb54f3f7bc7845033837095ca9dedba2246a1e0e9ca543be2df9d` |
| 4 | `theorem` | [lambda_log_kernel_twopi](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/declarations/lambda-log-kernel-twopi--7db6e72cbc30b9fb2fb0a7d3.md) | 41 | `result-track:7db6e72cbc30b9fb2fb0a7d3e7f2204cf74625937595fe57c941406362158293` |
| 5 | `theorem` | [lambda_log_kernel_den_increasing](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/declarations/lambda-log-kernel-den-increasing--ab7f3dad939c745deac01ea1.md) | 47 | `result-track:ab7f3dad939c745deac01ea1fc443846595cf1b859685c1e9d2329c6f32d0b66` |
| 6 | `theorem` | [lambda_log_kernel_weight_decreasing](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/declarations/lambda-log-kernel-weight-decreasing--aeeba945673ac6659dd409bc.md) | 54 | `result-track:aeeba945673ac6659dd409bc2afa1f468bc3f3401bfdaab0c70cd875acb05ed7` |
| 7 | `theorem` | [lambda_log_kernel_at_its_scale](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/declarations/lambda-log-kernel-at-its-scale--0377df53f00000c720a1ecbf.md) | 62 | `result-track:0377df53f00000c720a1ecbfa04fdb54cb0613f1b641fb2b50be628ed5300ca0` |
| 8 | `theorem` | [lambda_log_kernel_weighted_finite_actual](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/declarations/lambda-log-kernel-weighted-finite-actual--8a4624862c81f1a4c3d76d70.md) | 70 | `result-track:8a4624862c81f1a4c3d76d702b531b1f268edb79dbde44913de6242617a51358` |
| 9 | `def` | [remainingUniformLogKernelObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelFiniteBridgeControls.lean/declarations/remaininguniformlogkernelobligations--ec363ec0983ebde73ea53ac0.md) | 81 | `declaration-track:ec363ec0983ebde73ea53ac0339fdc6f6bd74c07c9f5df33fde1dc70ad118ff3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
