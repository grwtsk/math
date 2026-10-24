# Verification target: GRWTSK.Analysis.Complex.LocalProductAnalyticContinuation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faaf6132cf4dcc6c04529e8a68afc63989622bf0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/LocalProductAnalyticContinuation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/LocalProductAnalyticContinuation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.

Source path: `GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/LocalProductAnalyticContinuation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.Matrix.ConvergentLocalProduct`](../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/ConvergentLocalProduct.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analytic_eqOn_of_local_products](../../../../mathematics/Analysis/ComplexAnalysis/LocalProductAnalyticContinuation.lean/declarations/analytic-eqon-of-local-products--ae716ef6af1fd7fd159f2391.md) | 14 | `result-track:ae716ef6af1fd7fd159f23911d8edf0002387a90f938347076019afada7bad7d` |
| 2 | `theorem` | [germ_eq_of_eqOn_open](../../../../mathematics/Analysis/ComplexAnalysis/LocalProductAnalyticContinuation.lean/declarations/germ-eq-of-eqon-open--af707a83333816bf95f3616b.md) | 32 | `result-track:af707a83333816bf95f3616b531a3d36bbbce5475ae840f703e7d86416d00867` |
| 3 | `theorem` | [analytic_order_eq_of_eqOn_open](../../../../mathematics/Analysis/ComplexAnalysis/LocalProductAnalyticContinuation.lean/declarations/analytic-order-eq-of-eqon-open--37de008f1f5de4e2a7e297dd.md) | 38 | `result-track:37de008f1f5de4e2a7e297dd88499aa4ea93a9648f1f6c072c334332da4f664a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
