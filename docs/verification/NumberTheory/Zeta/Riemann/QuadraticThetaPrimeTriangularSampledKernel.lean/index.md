# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularSampledKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b71375c5c542b2aca8309df26c4f3d413981fa2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b71375c5c542b2aca8309df26c4f3d413981fa2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularKernelClosedForm`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularKernelClosedForm.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetricTriangularKernelDecay_explicit](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean/declarations/symmetrictriangularkerneldecay-explicit--e0422b8f728d4e89c1362852.md) | 12 | `result-track:e0422b8f728d4e89c1362852b1788fe7a9f2e7fa67e0bba3378ff46cd1ab64eb` |
| 2 | `def` | [sampledTriangularKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean/declarations/sampledtriangularkernel--304aeec06946688e757017ae.md) | 60 | `declaration-track:304aeec06946688e757017aef2aca77cfdb9dbfa10f8741c9994fbc22b711926` |
| 3 | `theorem` | [sampledTriangularKernel_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean/declarations/sampledtriangularkernel-nonnegative--f97817edb6bf6cf340574018.md) | 66 | `result-track:f97817edb6bf6cf34057401888935b077e585d518b1bbec002bb09400f97bc6f` |
| 4 | `theorem` | [sampledTriangularKernel_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean/declarations/sampledtriangularkernel-le--1bf406960bb77390745b7b64.md) | 74 | `result-track:1bf406960bb77390745b7b64dc3dc31c844578be2a42eb75489fa0f8b7cfd96f` |
| 5 | `def` | [PrimePrefixSampledKernelTailPropagationClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSampledKernel.lean/declarations/primeprefixsampledkerneltailpropagationclaim--16550c714929a8f8fab9e94d.md) | 115 | `declaration-track:16550c714929a8f8fab9e94dc25c64af943c375ba6601db6f4f692820acd7199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
