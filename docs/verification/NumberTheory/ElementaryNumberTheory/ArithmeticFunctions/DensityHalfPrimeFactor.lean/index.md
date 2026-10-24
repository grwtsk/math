# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfPrimeFactor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "360b92fe6e8cc25cb7eba1f75c4047a5b4340cdb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `360b92fe6e8cc25cb7eba1f75c4047a5b4340cdb`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionPrimeSeries`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Real.Sqrt` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [density_half_prime_denominator_lower](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/declarations/density-half-prime-denominator-lower--621a8216cf7b6fd8076b40df.md) | 19 | `result-track:621a8216cf7b6fd8076b40df58649a9b56f1790f868dc89256f500061b4c1d15` |
| 2 | `theorem` | [density_half_prime_factor_bounds](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/declarations/density-half-prime-factor-bounds--7529bba1d7ae53cb0e43633f.md) | 24 | `result-track:7529bba1d7ae53cb0e43633f7823f835a3d83a46870c85f99cab646cbe32f913` |
| 3 | `theorem` | [density_half_prime_square_excess](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/declarations/density-half-prime-square-excess--6d64b6bf27c82ded76a8bbb0.md) | 38 | `result-track:6d64b6bf27c82ded76a8bbb01197b4e957716f6d7a69ea741abf457fc068fc82` |
| 4 | `theorem` | [density_prime_half_mass_algebra](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/declarations/density-prime-half-mass-algebra--f1073ab2fe1128309bec5b13.md) | 68 | `result-track:f1073ab2fe1128309bec5b13d32cad0f18355ebdce636f0644a2d8cd04087ffe` |
| 5 | `theorem` | [density_correction_prime_half_hasSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/declarations/density-correction-prime-half-hassum--aa28333d3576a64166d9f308.md) | 80 | `result-track:aa28333d3576a64166d9f308d0fff738f4dd5f630955b82e12b2ced3f3893aef` |
| 6 | `theorem` | [density_correction_prime_half_tail](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean/declarations/density-correction-prime-half-tail--43438eb29edc6132e3939635.md) | 94 | `result-track:43438eb29edc6132e39396356525ca023be845049d2358a5a4fb3a67b15ec05a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
