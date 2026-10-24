# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.MoebiusReciprocalPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a641a4e96747480caa5befe873dc9fc86b0482a7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a641a4e96747480caa5befe873dc9fc86b0482a7`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityFiniteSums`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityMobiusReciprocalPrefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/declarations/densitymobiusreciprocalprefix--2dac2196efc7ddb1f41f1f3e.md) | 18 | `declaration-track:2dac2196efc7ddb1f41f1f3eb010a2c4d42df38d8f73661f7dde1dcea05d8078` |
| 2 | `theorem` | [density_mobius_reciprocal_prefix_source_inventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/declarations/density-mobius-reciprocal-prefix-source-inventory--ea069af4e9d9030460744bc3.md) | 21 | `result-track:ea069af4e9d9030460744bc3438f28e9493f6f50d69052d29020de7e9e03c911` |
| 3 | `theorem` | [density_mobius_reciprocal_prefix_zero_of_lt_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/declarations/density-mobius-reciprocal-prefix-zero-of-lt-one--e8d986b99ecc0b5c04da01af.md) | 26 | `result-track:e8d986b99ecc0b5c04da01af8485c4bb1805f65a6a09b1b5e654496554d2be77` |
| 4 | `theorem` | [density_mobius_closed_floor_convolution](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/declarations/density-mobius-closed-floor-convolution--111dc3f5d6a25d4b32b5b63c.md) | 30 | `result-track:111dc3f5d6a25d4b32b5b63c49f672720ec2c0fc90e05fec8dee4a31f15d3df9` |
| 5 | `theorem` | [density_mobius_reciprocal_prefix_abs_le_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/declarations/density-mobius-reciprocal-prefix-abs-le-one--e2eec5ebc6563f321c462bed.md) | 51 | `result-track:e2eec5ebc6563f321c462bed3d1a04882da6b090065ba31a943dedd15043b373` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
