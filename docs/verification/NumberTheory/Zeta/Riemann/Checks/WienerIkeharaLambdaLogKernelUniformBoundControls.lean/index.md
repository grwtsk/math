# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaLambdaLogKernelUniformBoundControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c3e7f15ce708a455697a8fa00fa807804c72a76",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c3e7f15ce708a455697a8fa00fa807804c72a76`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelUniformBound`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wiener_logCauchy_exact_mass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/wiener-logcauchy-exact-mass--fdbd0ddab7ecd5ad8d952a15.md) | 20 | `result-track:fdbd0ddab7ecd5ad8d952a159a93a2bc4b2166d7fc0b5467e5e95c7d8cc633c9` |
| 2 | `theorem` | [wiener_log_kernel_real_integrable](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/wiener-log-kernel-real-integrable--ea0497fe5a51b66511509171.md) | 27 | `result-track:ea0497fe5a51b6651150917195ccc79904dddc3260394a2869dca8716e12c8c7` |
| 3 | `theorem` | [wiener_log_kernel_real_integral_bound](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/wiener-log-kernel-real-integral-bound--9257835dac63d802f9c62548.md) | 35 | `result-track:9257835dac63d802f9c625480824b71ae6f2cdc195c8a6186b1f156b2047ef30` |
| 4 | `theorem` | [wiener_log_kernel_first_term_le](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/wiener-log-kernel-first-term-le--d376c46f5008982801509a94.md) | 44 | `result-track:d376c46f5008982801509a9408993a39a1e2bb519308cd81e91ef97686c21b66` |
| 5 | `theorem` | [wiener_log_kernel_shifted_weight_summable](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/wiener-log-kernel-shifted-weight-summable--900d12970c3c9d9618c9f83d.md) | 51 | `result-track:900d12970c3c9d9618c9f83d766ef027b4f77a6fd902235c702462225e99820a` |
| 6 | `theorem` | [wiener_log_kernel_shifted_lambda_bound](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/wiener-log-kernel-shifted-lambda-bound--7655417032ca7472dd160db2.md) | 60 | `result-track:7655417032ca7472dd160db2cef1830297e1fe179427e6bd154aef5d51dd7ac8` |
| 7 | `theorem` | [wiener_log_kernel_original_shift](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/wiener-log-kernel-original-shift--69fbf4e2273d29f9e830b1c3.md) | 72 | `result-track:69fbf4e2273d29f9e830b1c3a872ef0faa546fa43df53b91089d828f575b2208` |
| 8 | `theorem` | [wiener_actual_lambda_bound_sum_log](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/wiener-actual-lambda-bound-sum-log--8c06795f6271c27e0aa9783a.md) | 79 | `result-track:8c06795f6271c27e0aa9783a3f2d61313327fe2789548aee2c78e3bd83c467a7` |
| 9 | `theorem` | [wiener_actual_lambda_unit_scale](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/wiener-actual-lambda-unit-scale--0761e922a1e27100244f342f.md) | 88 | `result-track:0761e922a1e27100244f342f73096ba6966fae328c388670b63de85194bd0c09` |
| 10 | `def` | [remainingWienerSchwartzProofObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaLogKernelUniformBoundControls.lean/declarations/remainingwienerschwartzproofobligations--a08b2a533050461d50fd5353.md) | 96 | `declaration-track:a08b2a533050461d50fd5353a1a767812b6b0d4e634964f49aba8950da3c6e41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
