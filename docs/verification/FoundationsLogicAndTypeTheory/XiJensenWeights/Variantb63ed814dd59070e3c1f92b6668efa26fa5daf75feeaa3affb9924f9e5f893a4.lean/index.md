# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.XiJensenWeights.Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6d403d17552f8b3ba407eeda2401eac40bd2b98",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6d403d17552f8b3ba407eeda2401eac40bd2b98`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weight](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight--7db69677e0834d2ea9d88b22.md) | 27 | `declaration-track:7db69677e0834d2ea9d88b227e41006d4992cbad346aeafdeacfe89edeed2b0c` |
| 2 | `theorem` | [weight_zero_index](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight-zero-index--db48caf64555873563e5b891.md) | 30 | `result-track:db48caf64555873563e5b891f0d29ec5128f3faa98a3e2a5e9bd24e0bffc4f14` |
| 3 | `theorem` | [weight_eq_zero_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight-eq-zero-of-lt--19e6e3c1c066b0e21b82541f.md) | 34 | `result-track:19e6e3c1c066b0e21b82541fca16e094a9dc3a1e8f3d1271d57221efe005cd17` |
| 4 | `theorem` | [weight_eq_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight-eq-factorial--7f31b975de48b0ad92ca25d3.md) | 38 | `result-track:7f31b975de48b0ad92ca25d38437f716e17268f092e3fd0b41083a997155446c` |
| 5 | `theorem` | [weight_self](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight-self--3d7068058921566378cf4869.md) | 50 | `result-track:3d7068058921566378cf4869d109323f3a123be41d33ba103bb47be3072f38b0` |
| 6 | `theorem` | [weight_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight-pos--81f7efb45056cfa82d0e9a85.md) | 55 | `result-track:81f7efb45056cfa82d0e9a85d5ab15560b20381c01638a463bbbec9a0a939aee` |
| 7 | `theorem` | [weight_eq_prod](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight-eq-prod--2ca391ad47cc9dee3ea61879.md) | 62 | `result-track:2ca391ad47cc9dee3ea618798ad022a88d1d11c7fa7e5088ffbc7b3069884e84` |
| 8 | `theorem` | [weight_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight-nonneg--e7c6c28f97373d2d22152dd9.md) | 75 | `result-track:e7c6c28f97373d2d22152dd9b8f98103fccd1632a86a43ca39fc10169d440a61` |
| 9 | `theorem` | [factor_mem_unit](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/factor-mem-unit--f731973d5c0f2538ba48a1c7.md) | 79 | `result-track:f731973d5c0f2538ba48a1c7d2b8feb2cf7d6d42a19d6850b8e6ec75ee7f7f30` |
| 10 | `theorem` | [weight_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight-le-one--69337ae4f17f7a22c3005acc.md) | 92 | `result-track:69337ae4f17f7a22c3005acc888f8084021f3b54913bc2ae50c8729cde4ea269` |
| 11 | `theorem` | [sum_range_real](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/sum-range-real--0bb1cb3f424d61b0090a2b85.md) | 104 | `result-track:0bb1cb3f424d61b0090a2b851a01af5a00b5ce65a6521e2761880014fcdfa3eb` |
| 12 | `theorem` | [one_sub_weight_le](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/one-sub-weight-le--665121f293be1a2557df130f.md) | 114 | `result-track:665121f293be1a2557df130f56beed94b855bada889e619925f79a4859835a72` |
| 13 | `theorem` | [weight_error_bounds](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/weight-error-bounds--42a69e5981180089cfef8c57.md) | 141 | `result-track:42a69e5981180089cfef8c57b71af273235e77014353fba6f7367bfd61bbef3e` |
| 14 | `theorem` | [tendsto_weight](../../../../mathematics/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/declarations/tendsto-weight--042287c6381e1aa9573a5ef0.md) | 147 | `result-track:042287c6381e1aa9573a5ef00b5b8e25431f9b9531e2ae17f6d4319960d63848` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
