# Verification target: GRWTSK.Analysis.Complex.AnalyticZeroOrderDetector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbfcd672b3ac88d8b40e404d15058f37529e2872",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbfcd672b3ac88d8b40e404d15058f37529e2872`.

Source path: `GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/AnalyticZeroOrderDetector.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LogarithmicOrderDetection`](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analytic_order_finite_of_nonzero_value](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/declarations/analytic-order-finite-of-nonzero-value--22b7aa5d7e84825e7e685d5f.md) | 11 | `result-track:22b7aa5d7e84825e7e685d5fe0fec584d8038e167f1214d8c91ebf036cd830fb` |
| 2 | `theorem` | [analytic_finite_order_factorization](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/declarations/analytic-finite-order-factorization--3d5227f01b6627a0cf139262.md) | 20 | `result-track:3d5227f01b6627a0cf13926216b991979e662dfaa1b561c066231bb6bdcd682a` |
| 3 | `theorem` | [analytic_finite_order_scaled_coefficient](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/declarations/analytic-finite-order-scaled-coefficient--1065c801f4aed0bc0d89ac13.md) | 29 | `result-track:1065c801f4aed0bc0d89ac1325101182da31e738683844e5e5ac306379b8f8f5` |
| 4 | `theorem` | [analytic_zero_order_pos](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/declarations/analytic-zero-order-pos--446e579870b02d4646d2dfee.md) | 38 | `result-track:446e579870b02d4646d2dfee025a1d6b60efe3212a8cbd66cf0af59cd1b57ba3` |
| 5 | `theorem` | [analytic_zero_no_continuous_logDeriv_extension](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/declarations/analytic-zero-no-continuous-logderiv-extension--ae4a80d69b50429aa6c80212.md) | 49 | `result-track:ae4a80d69b50429aa6c802127aebc62b92934287702a4341270b6ce700056ed9` |
| 6 | `theorem` | [analytic_zero_detector_of_nonzero_value](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticZeroOrderDetector.lean/declarations/analytic-zero-detector-of-nonzero-value--621d037c68fb1836420b42e0.md) | 57 | `result-track:621d037c68fb1836420b42e0deb6fe5178591d2a59c60684775db25115688c2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
