# Verification target: GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3a58baf8a462dd2c4a6fd6be73a4868cb569788",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3a58baf8a462dd2c4a6fd6be73a4868cb569788`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachPrefixFrequencyEnvelope`](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixFrequencyEnvelope.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachClippedFrequencyEnvelope](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/goldbachclippedfrequencyenvelope--ae96068f13db2577ddce0110.md) | 40 | `declaration-track:ae96068f13db2577ddce0110ca5323248a70b7b640de6f583052d1c1d978d0b3` |
| 2 | `def` | [goldbachFrequencyArcErrorBudget](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/goldbachfrequencyarcerrorbudget--7703150c8654bc31644b2c38.md) | 49 | `declaration-track:7703150c8654bc31644b2c381e97d0ac705f822d3afcf3003bf3f2bf4e601b77` |
| 3 | `def` | [goldbachFrequencyMajorErrorBudget](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/goldbachfrequencymajorerrorbudget--f3cc8d01b47bd5cfb7885b00.md) | 55 | `declaration-track:f3cc8d01b47bd5cfb7885b005ed6a5c41568b8132b7c727cfef859cccdbdbf10` |
| 4 | `theorem` | [continuous_goldbachClippedFrequencyEnvelope](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/continuous-goldbachclippedfrequencyenvelope--fd052165ed340fa6b03ff092.md) | 60 | `result-track:fd052165ed340fa6b03ff092ac7a88c6ebc0c373ccb4b6fed6714babafd01897` |
| 5 | `theorem` | [integrableOn_goldbachClippedFrequencyEnvelope](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/integrableon-goldbachclippedfrequencyenvelope--768b77a7f08a31f6b5e878a6.md) | 66 | `result-track:768b77a7f08a31f6b5e878a6fefea0b668f835cfc3871f08093b3713fbdcce92` |
| 6 | `theorem` | [norm_goldbachProgressionResidual_le_clipped_frequency_envelope](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/norm-goldbachprogressionresidual-le-clipped-frequency-envelope--148cf608aa96a72567433fcf.md) | 74 | `result-track:148cf608aa96a72567433fcf99450080842a93b0b4f1cf7dc825e5494e6ad170` |
| 7 | `theorem` | [norm_goldbachProgressionArcResidual_le_frequency_budget](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/norm-goldbachprogressionarcresidual-le-frequency-budget--e466f317d4948b62dbd989e7.md) | 94 | `result-track:e466f317d4948b62dbd989e7cc738b8f2cbb4369082ae838a1845b4ca598e538` |
| 8 | `theorem` | [goldbachFrequencyArcErrorBudget_le_coarse](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/goldbachfrequencyarcerrorbudget-le-coarse--d135b8907ac8333c36232e54.md) | 109 | `result-track:d135b8907ac8333c36232e54436fad5b5c3b7041a78d3fc65464fd8a12898cf7` |
| 9 | `theorem` | [goldbachFrequencyMajorErrorBudget_le_prefix](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/goldbachfrequencymajorerrorbudget-le-prefix--9229cb423e0cf15ff6a2e531.md) | 137 | `result-track:9229cb423e0cf15ff6a2e5314d00fe75b9e9aa64d9994cb2c43918e4c542889a` |
| 10 | `theorem` | [goldbachCount_pos_of_frequency_prefix_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/goldbachcount-pos-of-frequency-prefix-bounds--fd39b824d16accecdff16fdf.md) | 149 | `result-track:fd39b824d16accecdff16fdfc89bb277886522d9375b80a3b526741dd212d848` |
| 11 | `theorem` | [goldbachCount_pos_above_of_frequency_prefix_supplier](../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/declarations/goldbachcount-pos-above-of-frequency-prefix-supplier--2b615320545fd4a8d70c10c9.md) | 167 | `result-track:2b615320545fd4a8d70c10c9548cd921483a8b2fe06fb04b6ad9c856c96e123c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
