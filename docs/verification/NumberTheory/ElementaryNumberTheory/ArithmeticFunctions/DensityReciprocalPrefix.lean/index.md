# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DensityReciprocalPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f7922b74a37cd1d503818bb85173066b2f6a946",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f7922b74a37cd1d503818bb85173066b2f6a946`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionReciprocalMass`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusReciprocalPrefix`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityReciprocalPrefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/declarations/densityreciprocalprefix--b54a870fe2dde9760050aa41.md) | 20 | `declaration-track:b54a870fe2dde9760050aa41aa4c703f7de9a8484f259ed9590020019b3e3cfe` |
| 2 | `theorem` | [density_coefficient_correction_divisors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/declarations/density-coefficient-correction-divisors--8b5d2a050882fbc268a4780c.md) | 23 | `result-track:8b5d2a050882fbc268a4780c75687f5008dffd52428b2c7631f8eb8d248058cb` |
| 3 | `theorem` | [density_reciprocal_correction_divisors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/declarations/density-reciprocal-correction-divisors--c454072971e3ec58d11a6064.md) | 35 | `result-track:c454072971e3ec58d11a6064311991b2fa42222db38b007d3238ccaac79eea83` |
| 4 | `theorem` | [mobius_reciprocal_prefix_all_real](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/declarations/mobius-reciprocal-prefix-all-real--53e9819b8e040947e502e544.md) | 46 | `result-track:53e9819b8e040947e502e544879af64faf0a211089c155de46c9964f54611326` |
| 5 | `theorem` | [density_reciprocal_prefix_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/declarations/density-reciprocal-prefix-zero--47f6058e3d8f69114b2e04d9.md) | 53 | `result-track:47f6058e3d8f69114b2e04d9f50b1633ac630aed0ce68feac0c1043edcf638d5` |
| 6 | `theorem` | [density_reciprocal_prefix_return](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/declarations/density-reciprocal-prefix-return--84114787ba2afef69036ce14.md) | 57 | `result-track:84114787ba2afef69036ce1441ff468ad8ecf6282aef7c41fb512726dc7eca7e` |
| 7 | `theorem` | [density_reciprocal_prefix_abs_le_mass](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean/declarations/density-reciprocal-prefix-abs-le-mass--a57b5b29cf2dcae7a26ad571.md) | 83 | `result-track:a57b5b29cf2dcae7a26ad571002d4be75ca5582bc3f2937eb2879a19f31249f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
