# Ordered transfer and state propagation


The interface carries established finite ordered products and two-coordinate state propagation. `orderedTransfer A m n` is the product starting at `n` with length `m - n`, with each new factor on the left. Its definition needs only a monoid. The state theorems keep a commutative semiring and the exact hypothesis `∀ n, X (n+1) = (A n).mulVec (X n)`. The endpoint theorem additionally requires `n ≤ m`; natural subtraction cannot replace that premise.

GRWTSK added canonical placement and checked reuse while preserving the complete supported formal contract. The original endpoint-state proof uses the canonical ordered transfer and iterated-product theorem. One definition, two source theorems and one stored equation helper are checked. No additional original external consumer was found in the selected source frontier. The retained module introduction discusses related gauge conventions; this slice supplies the three declarations above and makes no new gauge, spectral identification or RH claim.

Direction: grwtsk contributors. Formalization and verification assistance: OpenAI Codex. MIT; historical human/machine authoring split unknown. The direct upstream fact `Matrix.mulVec_mulVec` retains its Mathlib identity. Its matrix multiplication source credits Ellen Arlt, Blair Shi, Sean Leather, Mario Carneiro, Johan Commelin and Lu-Ming Zhang, Apache-2.0. Lean and other Mathlib authorship and licenses remain preserved. Scoped source-formal admission of the captured candidate and the selected public source/interface checks passed. Independent review and whole-corpus admission remain open.

## Source and verification scope

[Source](../../../../../GRWTSK/Algebra/LinearAlgebra/OrderedTransfer.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/LinearAlgebra/OrderedTransfer.lean`](../../../../../GRWTSK/Algebra/LinearAlgebra/OrderedTransfer.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 3 |
| Theorem/lemma commands | 2 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
