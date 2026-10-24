# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityCorrectionPrimeSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6acf8a3f6c4617aa0e50d9c8349ddd5ac772f78",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6acf8a3f6c4617aa0e50d9c8349ddd5ac772f78`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.PositiveDensityCorrection`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [density_correction_prime_weighted_term](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-weighted-term--2f04442a074501b04251cab2.md) | 20 | `result-track:2f04442a074501b04251cab2f2c540a61c7222a86b0f168ff059ee36f828fc73` |
| 2 | `theorem` | [density_correction_prime_hasSum_tail](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-hassum-tail--f958970b239f65b5ed8470b3.md) | 29 | `result-track:f958970b239f65b5ed8470b31202ca92cdb567b5a194cc39a8cf25bca13f4630` |
| 3 | `theorem` | [density_correction_prime_tsum_tail](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-tsum-tail--72f9a1a994106578d3a0b161.md) | 42 | `result-track:72f9a1a994106578d3a0b161fdb798ea82a332ae1aa6e9007cdcf6b354124155` |
| 4 | `theorem` | [density_correction_prime_summable](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-summable--cad1b0020c6be94c9354ab9a.md) | 48 | `result-track:cad1b0020c6be94c9354ab9ad14a672de026a97812b8c93ed1508f185f866d36` |
| 5 | `theorem` | [density_prime_reciprocal_mass_algebra](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/declarations/density-prime-reciprocal-mass-algebra--6515e14ce8e36ada8c0febf8.md) | 54 | `result-track:6515e14ce8e36ada8c0febf867e46f9165773615dc50f4fdc62bff012b7175e8` |
| 6 | `theorem` | [density_correction_prime_reciprocal_hasSum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-reciprocal-hassum--43dfa40ec69ec716e6c508e5.md) | 65 | `result-track:43dfa40ec69ec716e6c508e5d61f0940b3342fd8a60626eb4bcc4982a2b37cc2` |
| 7 | `theorem` | [density_correction_prime_reciprocal_tail](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-reciprocal-tail--bdc8a958c76dc41e794894e8.md) | 76 | `result-track:bdc8a958c76dc41e794894e8dcaae010824debe161acdba00b733ac667ef99c1` |
| 8 | `theorem` | [density_correction_prime_reciprocal_factor](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/declarations/density-correction-prime-reciprocal-factor--b008aaa1cccb6e773d8beaf4.md) | 95 | `result-track:b008aaa1cccb6e773d8beaf4f1aff20239a9280693152b1e9ec880a09e5d67ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
