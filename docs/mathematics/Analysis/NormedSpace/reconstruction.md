# Quadratic reconstruction and energy error

If reconstruction error is at most `delta`, the energy error is at most `delta*(2*norm(approximation)+delta)`. Add the diagonal error separately, then charge frequency tails, finite-grid/quadrature, clipping, drift and calibration exactly once. A nonzero hard-window signal cannot simply be assumed exactly bandlimited. Finite samples require a genuine reconstruction/tail theorem.


## Source and verification scope

[Source](../../../../GRWTSK/Analysis/NormedSpace/QuadraticError.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.

The source binding was updated after history integration. Earlier proof receipts retain their original bytes; this page does not assert fresh acceptance of the updated source.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/NormedSpace/QuadraticError.lean`](../../../../GRWTSK/Analysis/NormedSpace/QuadraticError.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 2 |
| Theorem/lemma commands | 2 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
