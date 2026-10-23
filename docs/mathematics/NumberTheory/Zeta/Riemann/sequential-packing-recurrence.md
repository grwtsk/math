# One-new-point sequential packing recurrence

The three-point packing route can be implemented as a finite-state recurrence.

A state stores three source-valid points. Advancing the state does not choose a new triple. It shifts

(first, second, third)

to

(second, third, newPoint).

The corresponding source labels shift identically. Thus after initialization, each quartic stage introduces only one new geometric point and one new source label.

The stage value remains the squared two-dimensional volume / two-by-two Gram determinant and is therefore nonnegative for every advance, independent of the new point.

The module also isolates the scalar limiting argument:

if
  V_n >= 0,
  V_n = lambda_n * H + R_n,
  lambda_n -> L > 0,
  R_n -> 0,

then H >= 0.

Applied to the repository signed quartic H(a,t), this is the exact forcing step needed before witnessTrace_nonneg_iff yields a=0.

The remaining arithmetic obligation is therefore no longer a positivity theorem. It is to construct the initial three points and the one-new-point update rule from the accepted mechanism trace/local source, and prove the exact comparison identity plus residual decay.
