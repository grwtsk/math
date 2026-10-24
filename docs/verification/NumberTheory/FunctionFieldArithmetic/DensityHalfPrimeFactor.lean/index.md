# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityHalfPrimeFactor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad57c732c00161c4f0c0b5e46e0b3a10f8a75c8f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad57c732c00161c4f0c0b5e46e0b3a10f8a75c8f`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityCorrectionPrimeSeries`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Real.Sqrt` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [density_half_prime_denominator_lower](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/declarations/density-half-prime-denominator-lower--141332a02dced3d31bf21f26.md) | 19 | `result-track:141332a02dced3d31bf21f26bd83ba8a8997c8e99aeb78b989c09a1695933b59` |
| 2 | `theorem` | [density_half_prime_factor_bounds](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/declarations/density-half-prime-factor-bounds--f21478429bc4c320a4acb581.md) | 24 | `result-track:f21478429bc4c320a4acb58150051da6ba8124351e8df64690ac0efb86d30255` |
| 3 | `theorem` | [density_half_prime_square_excess](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/declarations/density-half-prime-square-excess--6018822d24c5e6b7d9a81371.md) | 38 | `result-track:6018822d24c5e6b7d9a8137197a214a3c5c085c7ce3b38fd4cbbf3a75ea7c132` |
| 4 | `theorem` | [density_prime_half_mass_algebra](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/declarations/density-prime-half-mass-algebra--ba153704e58ea1811dd497ca.md) | 68 | `result-track:ba153704e58ea1811dd497cabf148ca95d50a14d0ef09bfb48ba50d49a21fa75` |
| 5 | `theorem` | [density_correction_prime_half_hasSum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/declarations/density-correction-prime-half-hassum--f3d720421f18da8dd5aaf600.md) | 80 | `result-track:f3d720421f18da8dd5aaf6007d6278a280213c9239b4b6eb76ee9e4e50b5e1d4` |
| 6 | `theorem` | [density_correction_prime_half_tail](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/declarations/density-correction-prime-half-tail--d1fc05b12601049fc311c6a3.md) | 94 | `result-track:d1fc05b12601049fc311c6a31dc9da475b58e7c724c4d57faadee7b531facb5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
