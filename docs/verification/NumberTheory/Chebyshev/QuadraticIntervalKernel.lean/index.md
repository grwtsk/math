# Verification target: GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5af4b9474e03b8b526d29fe1d4bee26afd03c0fa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5af4b9474e03b8b526d29fe1d4bee26afd03c0fa`.

Source path: `GRWTSK/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntervalMellinKernel`](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals`](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareKernel](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/declarations/squarekernel--a6b63f5ecec88ba9eb77da15.md) | 26 | `declaration-track:a6b63f5ecec88ba9eb77da1565635c4986148338aa5c1ffdf26345f91a550ed4` |
| 2 | `theorem` | [squareEndpoint_strict_order](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/declarations/squareendpoint-strict-order--b7b33937f81c6da725c3e713.md) | 29 | `result-track:b7b33937f81c6da725c3e713e438858b64fdd66b986bcbd30c1bbd9c8f61ffc5` |
| 3 | `theorem` | [differentiable_squareKernel](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/declarations/differentiable-squarekernel--d5948bca5120c328eb5720bd.md) | 35 | `result-track:d5948bca5120c328eb5720bdc4e9bb050a819264bb03a6316828e2ff7f0d8988` |
| 4 | `theorem` | [squareKernel_eq_quotient](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/declarations/squarekernel-eq-quotient--bc25208c3273a6a4f158f520.md) | 39 | `result-track:bc25208c3273a6a4f158f52052feb9bb71e6efaf55aa337c30f7f13fd7d98e23` |
| 5 | `theorem` | [squareKernel_zero](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/declarations/squarekernel-zero--dc5a841e08baa2e761e0c6c9.md) | 44 | `result-track:dc5a841e08baa2e761e0c6c9d630bfb7039581a27c6b3c84ffc93c4dd96f076e` |
| 6 | `theorem` | [squareKernel_zero_ne_zero](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/declarations/squarekernel-zero-ne-zero--69db8245fb2af3026c70ff5f.md) | 49 | `result-track:69db8245fb2af3026c70ff5fcddda92eb61c5ce3a041d84e942e9cc32b45d17a` |
| 7 | `theorem` | [squareKernel_one](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/declarations/squarekernel-one--d43574623e5a432221fa7936.md) | 53 | `result-track:d43574623e5a432221fa79368022e783f84219cb1f1a9b8afce14d11c8387dda` |
| 8 | `theorem` | [norm_squareKernel_sub_le](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/declarations/norm-squarekernel-sub-le--2f4306e66f540f1ce7bbe92f.md) | 56 | `result-track:2f4306e66f540f1ce7bbe92f0f9ae12d5e3ad7af417d072072ed0a5815e43d0b` |
| 9 | `theorem` | [square_finite_enclosure_error](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervalKernel.lean/declarations/square-finite-enclosure-error--61b4c05bec7cdd34a4a4870b.md) | 65 | `result-track:61b4c05bec7cdd34a4a4870b05812c5cd96c944d43ec981b8fe8112b92fbde15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
