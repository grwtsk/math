# Fejer period correction on the arithmetic octave

The first fixed Fejer operator still had a structural aliasing problem.

Its signed lattice sample used
\[
\frac1X K_N(r/X),
\]
which is periodic in the integer displacement \(r\) with period \(X\).

The source proves this exact periodicity and hence
\[
W_{X,N,m}(p+X)=W_{X,N,m}(p).
\]

But the arithmetic octave \((2X,4X]\) has length \(2X\). Distinct arithmetic
locations separated by \(X\) were therefore identified by the old operator.

The corrected construction uses lattice period
\[
L=4X
\]
and normalized sample
\[
\kappa_{4X,N}(r)
=
\frac1{4X}K_N(r/(4X)).
\]

For any two arithmetic points \(p,q\in(2X,4X]\),
\[
|p-q|\le2X=L/2.
\]
Thus every relevant displacement lies inside the principal half-circle with no
wrap-around.

The source also transfers the explicit Fejer decay to this corrected lattice:
for \(1\le d\le2X\),
\[
\boxed{
\frac1{4X}|K_N(d/(4X))|
\le
\frac{X}{N d^2}.
}
\]

The corrected fixed operator is
\`nonAliasingPrimePrefixFejerOperator\`, and its matching tail budget sums these
period-\(4X\) samples over the full displacement range \(1\le d\le2X\).

The remaining supplier is now exactly
\`NonAliasingPrimePrefixFejerTailComparison\`: prove that the actual
sharp-minus-smoothed discrepancy error for this fixed operator is bounded by
that corrected tail budget.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PERIOD_X_ALIASING_SOURCE_PROVED /
PERIOD_4X_OPERATOR_DEFINED /
OCTAVE_HALF_PERIOD_GEOMETRY_SOURCE_WRITTEN /
PERIOD_4X_SQUARE_DECAY_SOURCE_WRITTEN /
NONALIASING_TAIL_COMPARISON_OPEN\`.
