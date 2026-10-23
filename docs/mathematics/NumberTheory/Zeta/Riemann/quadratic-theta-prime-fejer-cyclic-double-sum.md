# Cyclic Fejer double-sum reindexing

The convex-combination \(L^1\) supplier is now source-proved.

For each fixed \(x\), reindex the inner cyclic sum by

\[
r=x-y.
\]

Because \(y\mapsto x-y\) is an involution on
\(\mathbf Z/(4X)\mathbf Z\), this gives

\[
\sum_y
K(x-y)|f(x)-f(y)|
=
\sum_r
K(r)|f(x)-f(x-r)|.
\]

Swapping the two finite sums gives

\[
\sum_{x,r}
K(r)|f(x)-f(x-r)|
=
\sum_r
K(r)
\sum_x |f(x)-f(x-r)|.
\]

The inner sum is exactly
\`cyclicSharpTranslationL1 X m r\`.

Hence the source proves

\[
\boxed{
\sum_{x,y}K(x-y)|f(x)-f(y)|
=
\sum_r K(r)\|f-\tau_r f\|_1.
}
\]

This discharges
\`CyclicConvolutionDoubleSumReindexingClaim\`,
which immediately discharges
\`CyclicConvolutionL1ByTranslationClaim\`.

The universal smoothing route now has one remaining supplier only:
\`CyclicSharpTranslationCardinalityClaim\`.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
DOUBLE_SUM_REINDEXING_SOURCE_PROVED /
CONVEX_COMBINATION_L1_SOURCE_PROVED /
CYCLIC_INTERVAL_TRANSLATION_COUNT_OPEN\`.
