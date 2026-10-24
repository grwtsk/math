# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShellCancellation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc9b7614f6542bad4ba84f580b19e64fc7eb4930",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc9b7614f6542bad4ba84f580b19e64fc7eb4930`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaRecurrenceSupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaShellError](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/declarations/thetashellerror--24f6b41f05874f291125bc61.md) | 45 | `declaration-track:24f6b41f05874f291125bc618fe06742297aedc4bbeb2a61d87eafb66f1e7f29` |
| 2 | `theorem` | [thetaError_two_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/declarations/thetaerror-two-mul--43262638c9c8c83182758b12.md) | 49 | `result-track:43262638c9c8c83182758b126b242de885f732739c4672067d9d8ac47c85c761` |
| 3 | `theorem` | [half_mem_current_octave_of_mem_next](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/declarations/half-mem-current-octave-of-mem-next--6463cb9751909b9ea5539d79.md) | 57 | `result-track:6463cb9751909b9ea5539d792ede9e2cce43b2563cd8e7856ce4ff486f43ea29` |
| 4 | `theorem` | [two_mul_mem_next_octave_of_mem_current](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/declarations/two-mul-mem-next-octave-of-mem-current--f22a1fde2501234e4aacd81d.md) | 89 | `result-track:f22a1fde2501234e4aacd81d12f0c8b4a06c1caf66e47e6df65c8b033ab34cce` |
| 5 | `def` | [QuadraticThetaShellCancellationAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/declarations/quadraticthetashellcancellationat--36d4550061cba1bcb053530e.md) | 120 | `declaration-track:36d4550061cba1bcb053530ee1e18972c2812a79a2d48cfceb11472727e03930` |
| 6 | `theorem` | [quadraticThetaShellCancellation_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/declarations/quadraticthetashellcancellation-to-recurrence--cc29be71116e6b008fcdb0fd.md) | 139 | `result-track:cc29be71116e6b008fcdb0fdd401173f773b94ab217a218a9555a16005e918fd` |
| 7 | `theorem` | [quadraticThetaRecurrence_to_shellCancellation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/declarations/quadraticthetarecurrence-to-shellcancellation--8daf8f38c39a4b5c0ae826bf.md) | 166 | `result-track:8daf8f38c39a4b5c0ae826bf8a5bf5c59787cd95689d88b21f342a5bfee15a2b` |
| 8 | `theorem` | [quadraticThetaSourceRecurrence_iff_shellCancellation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/declarations/quadraticthetasourcerecurrence-iff-shellcancellation--94a2e7b06633d754a59c01ca.md) | 185 | `result-track:94a2e7b06633d754a59c01cab76424e5d1db9235010da6d2ac2b31aa3a659891` |
| 9 | `theorem` | [twoStepQuadraticShellCancellation_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellCancellation.lean/declarations/twostepquadraticshellcancellation-to-rh--e0d5f2050ea73f73168416e0.md) | 194 | `result-track:e0d5f2050ea73f73168416e02f1f7b4e59502a879688c1e651069604691d1fdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
