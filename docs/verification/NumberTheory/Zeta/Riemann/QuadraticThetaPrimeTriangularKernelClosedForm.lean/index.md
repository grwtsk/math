# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularKernelClosedForm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a430f60e1b95267283e12880af873bc0a408325f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a430f60e1b95267283e12880af873bc0a408325f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHalfAngleSineConversion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [triangularPhaseConjugateCancellation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean/declarations/triangularphaseconjugatecancellation--840d7ff9f9f4298438f6b20d.md) | 13 | `result-track:840d7ff9f9f4298438f6b20d17542dceacc8b5edea54bbf5eaec2c905aace57f` |
| 2 | `theorem` | [triangularGeometricBlockSineNorm_offBoundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean/declarations/triangulargeometricblocksinenorm-offboundary--2c65ca081dd47e4f21937e12.md) | 22 | `result-track:2c65ca081dd47e4f21937e12877a3461e3cc264bbd77ae8c05f575b724ded9ae` |
| 3 | `theorem` | [symmetricTriangularKernelClosedForm_offBoundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean/declarations/symmetrictriangularkernelclosedform-offboundary--5504032a77b3e61b586ee8f7.md) | 29 | `result-track:5504032a77b3e61b586ee8f7f31304a624a09a44ca2e6bdc06f941be9973d4b7` |
| 4 | `theorem` | [symmetricTriangularKernelDecay](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean/declarations/symmetrictriangularkerneldecay--c6cc8687de5607f1e35dfa39.md) | 37 | `result-track:c6cc8687de5607f1e35dfa39a45cbc02e7974c8c1375630b81a08d076cf1a362` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
