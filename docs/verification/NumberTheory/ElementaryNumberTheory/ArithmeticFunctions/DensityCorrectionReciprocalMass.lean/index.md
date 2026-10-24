# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionReciprocalMass

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67e445104c082a7578b47f032723d6043f62a235",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67e445104c082a7578b47f032723d6043f62a235`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionPrimeSeries`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.EulerProduct.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityCorrectionReciprocal](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/densitycorrectionreciprocal--979b1f82394ee219beddb3eb.md) | 20 | `declaration-track:979b1f82394ee219beddb3ebd095df07bd80e2adb2ad776e5e83e3fc0edf76a2` |
| 2 | `def` | [reciprocalSquare](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/reciprocalsquare--09507697ebc0f43ab0d97f1b.md) | 21 | `declaration-track:09507697ebc0f43ab0d97f1ba36882547f062ea85a6854aefeafc20989240530` |
| 3 | `theorem` | [density_reciprocal_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-nonneg--31c8965448d40d8169641ee7.md) | 23 | `result-track:31c8965448d40d8169641ee723361a7c87cf61f9857c5747ea067881921ac24b` |
| 4 | `theorem` | [density_reciprocal_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-one--181cf39866ade1c3956f0b71.md) | 26 | `result-track:181cf39866ade1c3956f0b716d30080011b806c9e7dd289b6c1ad20bafee5341` |
| 5 | `theorem` | [density_reciprocal_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-mul--f47e06de06a92b85929271c3.md) | 29 | `result-track:f47e06de06a92b85929271c3a52e89e4166db2011e0c14ab8e35bf4beadd9f32` |
| 6 | `theorem` | [reciprocal_square_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/reciprocal-square-mul--678294649f6bacc6fbdcb7ae.md) | 35 | `result-track:678294649f6bacc6fbdcb7aeed728a30cb7ac0bf63a87622da27b526c48b4d33` |
| 7 | `theorem` | [reciprocal_square_summable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/reciprocal-square-summable--932e2a42231f2ba46c131fb6.md) | 39 | `result-track:932e2a42231f2ba46c131fb612649fce217b57b7ca31e9a7d8135e2e3ef977d8` |
| 8 | `theorem` | [density_reciprocal_prime_hasSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-prime-hassum--fa44f90f6148ecc012c1d268.md) | 42 | `result-track:fa44f90f6148ecc012c1d268a9d5528a5583c99a273fc6c7f5cdd8e4e2558be6` |
| 9 | `theorem` | [reciprocal_square_prime_hasSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/reciprocal-square-prime-hassum--471274a956a9a8410afd5f3f.md) | 53 | `result-track:471274a956a9a8410afd5f3f97cc985e291eb436661a5707ec8482ba9a501e5b` |
| 10 | `theorem` | [density_reciprocal_factored_hasSum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-factored-hassum--e6ca797a61efb99063f64713.md) | 70 | `result-track:e6ca797a61efb99063f647138fabc544f4f86dae9522b5e7fdd43c0fc112c66f` |
| 11 | `theorem` | [density_reciprocal_range_bound](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-range-bound--01af0acdc49fe7b395691198.md) | 88 | `result-track:01af0acdc49fe7b3956911980efa9877bcb4b57ca24ed65db00b16f3a254d331` |
| 12 | `theorem` | [density_reciprocal_summable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-summable--3163975d080061de03f9f021.md) | 118 | `result-track:3163975d080061de03f9f021f067beff402b37c189b8eba6b26ab6e0cab9f7ac` |
| 13 | `theorem` | [density_reciprocal_tsum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-tsum--42ef9ad58bc4949b9170899d.md) | 121 | `result-track:42ef9ad58bc4949b9170899df54cb350d95e23af3efe7a55aacfc802e38751a5` |
| 14 | `theorem` | [density_positive_reciprocal_summable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-positive-reciprocal-summable--416174b61e05562d4fca6060.md) | 138 | `result-track:416174b61e05562d4fca6060513064227ed15745645fb4d0f60658170799be78` |
| 15 | `theorem` | [density_positive_reciprocal_tsum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/declarations/density-positive-reciprocal-tsum--b51edf4c5ce04d1bd2cdc35b.md) | 142 | `result-track:b51edf4c5ce04d1bd2cdc35b6afe73d050bd0cd10f88628bbe96705da32fff10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
