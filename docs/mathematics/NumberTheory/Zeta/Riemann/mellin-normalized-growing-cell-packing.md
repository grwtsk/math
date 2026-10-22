# Growing-cell Mellin-normalized action packing

Issue #197 records a finite-rank obstruction: a uniformly bounded number of positive local cells cannot approximate a genuinely global infinite-rank positive form. The source dimension must grow.

The Mellin-normalized successor therefore uses the first N dyadic action cells at stage N:

Q_N^A(z) = sum_{j<N} Q_j^A(z).

Every finite stage is nonnegative and the stages are monotone in N. The number of source cells grows exactly with N.

The exact quartic decomposition assembles without loss:

Q_N^A
 = a^4 A_N^A + 3 a^2 t^2 T_N^A,

where A_N^A and T_N^A are cumulative sums of nonnegative normalized axial/transverse Gram coefficients.

This separates two genuinely independent obligations.

Lower-density obligation:
construct a source-derived common lower weight lambda_j dominated by both action-normalized Gram coefficients whose partial sums diverge under a hypothetical off-line zero.

Upper/global-comparison obligation:
derive a finite upper bound for every growing stage from an independently source-identified explicit-formula / Weil comparison.

Neither condition is built into the other. Together they give a true volume-packing contradiction: the positive quartic factor times an unbounded amount of source mass cannot fit inside a fixed global budget.

This is structurally compatible with the growing-cell requirement in issue #197, but it is not yet the full Weil test-function family required there. The next work is to decide whether the centered dyadic action has persistent lower mass and whether its cumulative stage admits an exact source comparison to a global analytic functional.
