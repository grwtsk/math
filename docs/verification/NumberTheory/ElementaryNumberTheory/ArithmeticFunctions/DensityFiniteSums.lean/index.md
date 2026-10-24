# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.DensityFiniteSums

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5966c3f96ddc62762dcee0720f9dc8a1c1cf4d2b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityFiniteSums.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5966c3f96ddc62762dcee0720f9dc8a1c1cf4d2b`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/DensityFiniteSums.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/DensityFiniteSums.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.DensityMoebius`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityMoebius.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [moebiusReal_abs_le_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/declarations/moebiusreal-abs-le-one--4dbc14e446189f3374e183ab.md) | 10 | `result-track:4dbc14e446189f3374e183ab1ef560913cce6db1ed24ab1dbdd95c851d2a72d7` |
| 2 | `theorem` | [density_closed_inventory_one_of_nonneg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/declarations/density-closed-inventory-one-of-nonneg--3ff0aea955b78b9f1862c992.md) | 15 | `result-track:3ff0aea955b78b9f1862c992dbb0d545bff20f09c48aebcb1a470c5bcb873e6d` |
| 3 | `theorem` | [density_moebius_divisor_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/declarations/density-moebius-divisor-sum--f25827437e640936b6bd37f8.md) | 23 | `result-track:f25827437e640936b6bd37f8c83d21ca3c0b4f2e02ec6e9854f204742c93b240` |
| 4 | `theorem` | [density_coprime_indicator_moebius_sum](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/declarations/density-coprime-indicator-moebius-sum--53c89413038571ccdefb75ae.md) | 31 | `result-track:53c89413038571ccdefb75ae6eef3ca38efe43a7d67148b0956419dc609f9c9f` |
| 5 | `theorem` | [density_closed_inventory_mul_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/declarations/density-closed-inventory-mul-iff--a172e79ef924f3a2bbbbce4d.md) | 53 | `result-track:a172e79ef924f3a2bbbbce4ddb4125dcbaa7560fe0a0ca412262c44a49e73787` |
| 6 | `theorem` | [density_closed_convolution_regroup](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityFiniteSums.lean/declarations/density-closed-convolution-regroup--72b10c31ac7e5a4304203471.md) | 74 | `result-track:72b10c31ac7e5a4304203471e4f1ef063e9d0ddfcad6401520700655bf077867` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
