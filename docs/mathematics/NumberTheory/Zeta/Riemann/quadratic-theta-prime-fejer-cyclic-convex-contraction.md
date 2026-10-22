# Cyclic Fejer convex-combination contraction

The analytic heart of the cyclic \(L^1\) contraction is now source-written.

First, the existing period-range mass theorem is transferred to the actual
finite group sum:

\[
\boxed{
\sum_{z\in\mathbf Z/(4X)\mathbf Z}
K(z)=1.
}
\]

The source also proves pointwise nonnegativity

\[
K(z)\ge0
\]

and translated mass one

\[
\sum_y K(x-y)=1.
\]

Therefore, for the sharp indicator \(f\),

\[
f(x)-(K*f)(x)
=
\sum_y K(x-y)(f(x)-f(y)).
\]

By triangle inequality and kernel nonnegativity,

\[
\boxed{
|f(x)-(K*f)(x)|
\le
\sum_y K(x-y)|f(x)-f(y)|.
}
\]

Summing over \(x\) reduces the full cyclic \(L^1\) contraction to one finite
double-sum reindexing:

\[
\sum_{x,y}K(x-y)|f(x)-f(y)|
=
\sum_r K(r)\|f-\tau_r f\|_1.
\]

That exact bookkeeping is isolated as
\`CyclicConvolutionDoubleSumReindexingClaim\`.

Once it is discharged, \`CyclicConvolutionL1ByTranslationClaim\` follows
immediately.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CYCLIC_KERNEL_FINTYPE_MASS_ONE_SOURCE_WRITTEN /
SHIFTED_MASS_ONE_SOURCE_WRITTEN /
POINTWISE_CONVEX_CONTRACTION_SOURCE_WRITTEN /
DOUBLE_SUM_REINDEXING_OPEN /
CYCLIC_INTERVAL_TRANSLATION_COUNT_OPEN\`.
