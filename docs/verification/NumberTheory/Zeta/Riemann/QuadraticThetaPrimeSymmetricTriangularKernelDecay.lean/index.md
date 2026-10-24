# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDecay

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05d29c414ba3be92fbbe364dba2f75892938aac0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDecay.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDecay.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDecay.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05d29c414ba3be92fbbe364dba2f75892938aac0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDecay.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDecay.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernel`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_sin_pi_mul_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDecay.lean/declarations/abs-sin-pi-mul-lower--e8f9e34d579bd46889fd4ba1.md) | 14 | `result-track:e8f9e34d579bd46889fd4ba1912398c6e88cd717fd2122080c2e7ee3a4daa130` |
| 2 | `theorem` | [symmetricTriangularKernelDecay_of_closedForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDecay.lean/declarations/symmetrictriangularkerneldecay-of-closedform--12577293db6f02c5f79e9f74.md) | 32 | `result-track:12577293db6f02c5f79e9f74abd3dce8e1d390dc27885fa8155961aa1b85ace6` |
| 3 | `theorem` | [closedForm_discharge_pointwise_decay](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDecay.lean/declarations/closedform-discharge-pointwise-decay--f3236241db915ea72ebe6351.md) | 83 | `result-track:f3236241db915ea72ebe6351cbd130a6bdbc4889a47269840355cfe7d3e15e70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
