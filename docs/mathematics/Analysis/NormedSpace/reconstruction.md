# Quadratic reconstruction and energy error

If reconstruction error is at most `delta`, the energy error is at most `delta*(2*norm(approximation)+delta)`. Add the diagonal error separately, then charge frequency tails, finite-grid/quadrature, clipping, drift and calibration exactly once. A nonzero hard-window signal cannot simply be assumed exactly bandlimited. Finite samples require a genuine reconstruction/tail theorem.


## Source and verification scope

[Source](../../../../GRWTSK/Analysis/NormedSpace/QuadraticError.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.
