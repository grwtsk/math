# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68dd26ce02e59d1948854147d6fba1e33ee1b5e8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68dd26ce02e59d1948854147d6fba1e33ee1b5e8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHarmonicTail`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symmetricTriangularWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularweight--a4ec3d0accc815c522fdd858.md) | 15 | `declaration-track:a4ec3d0accc815c522fdd8582f4133add0a0617da000c19308ecffe5f3ffd22c` |
| 2 | `theorem` | [symmetricTriangularWeight_neg](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularweight-neg--08949c5d00b966d91083b1fe.md) | 21 | `result-track:08949c5d00b966d91083b1fe5ecb0f540a5c48599d5fe10885c3b61de2388d08` |
| 3 | `theorem` | [symmetricTriangularWeight_eq_zero_of_cutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularweight-eq-zero-of-cutoff--0f54d1cc7f0253c56f4bac42.md) | 27 | `result-track:0f54d1cc7f0253c56f4bac42cc8377b152e28a6dbef57f9378751653e64017d9` |
| 4 | `theorem` | [symmetricTriangularWeight_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularweight-nonnegative--5e3258d453d02bb0c4c8d3b7.md) | 33 | `result-track:5e3258d453d02bb0c4c8d3b7b53536a8cb506583f2e4051250c3e3776d9e0fa1` |
| 5 | `theorem` | [symmetricTriangularWeight_le_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularweight-le-one--7757c60aa400d0c66c219fec.md) | 41 | `result-track:7757c60aa400d0c66c219fecefc85e854b45b8543dc211338c6e7126904cb56f` |
| 6 | `def` | [symmetricTriangularKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularkernel--b4653703f193d05f57bc506e.md) | 52 | `declaration-track:b4653703f193d05f57bc506ea5d4c03ad978bafa0bcb1ffe6b30998484daf556` |
| 7 | `theorem` | [symmetricTriangularKernel_endpoint_weights_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularkernel-endpoint-weights-zero--271a4836c2a64fed7cf99143.md) | 58 | `result-track:271a4836c2a64fed7cf99143dc9d1799714f352d6560b4ea1c4017185fbc865e` |
| 8 | `theorem` | [symmetricTriangularWeight_nat](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularweight-nat--60f82b660913e6f3b8096d90.md) | 70 | `result-track:60f82b660913e6f3b8096d907d189a8ae2303243b1928a2edcfc5c6575812c21` |
| 9 | `def` | [SymmetricTriangularKernelDecayClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularkerneldecayclaim--53e273955972e7bb6f8ff1ef.md) | 81 | `declaration-track:53e273955972e7bb6f8ff1efe3c81832ddc7e06109467fffcf7bae5e83a8752a` |
| 10 | `def` | [SymmetricTriangularKernelClosedFormClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernel.lean/declarations/symmetrictriangularkernelclosedformclaim--ce83702e3d480c552a09de2f.md) | 91 | `declaration-track:ce83702e3d480c552a09de2faa70437ce018500dea4462fa36fd7705eb0d9b1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
