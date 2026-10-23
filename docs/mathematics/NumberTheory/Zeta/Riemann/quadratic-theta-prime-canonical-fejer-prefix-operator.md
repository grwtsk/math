# Canonical Fejer-smoothed prime-prefix operator

The smoothing operator is now fixed explicitly.

The signed normalized lattice kernel is

\[
\kappa_{X,N}(r)
=
\frac1X K_N(r/X).
\]

For a sharp prefix endpoint \(m\), define the smoothed prefix weight at an
arithmetic point \(p\) by

\[
W_{X,N,m}(p)
=
\sum_{2X<q\le m}
\kappa_{X,N}(p-q).
\]

The canonical smoothed logarithmic prime mass on the ambient octave is

\[
\sum_{2X<p\le4X,\ p\ {\rm prime}}
W_{X,N,m}(p)\log p.
\]

Crucially, the target is a discrepancy, so the same weight is applied to the
integer counting measure:

\[
\sum_{2X<n\le4X}
W_{X,N,m}(n).
\]

The canonical operator is their difference.

This fixes the omission in the earlier prime-only representation interface:
the smoothed object now mirrors the exact sharp discrepancy
\[
\sum_{2X<p\le m}\log p-(m-2X).
\]

The representation theorem for this fixed operator is source-proved by
definition. No tail estimate is inferred from the definition.

The remaining theorem is now genuinely specific:

\[
|D_X(m)-S_{X,N}(m)|
\le
\log(4X)
\sum_{1\le d\le X/2}
\widetilde K_{X,N}(d),
\]

for this exact canonical operator.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CANONICAL_FEJER_PREFIX_OPERATOR_DEFINED /
DISCREPANCY_REPRESENTATION_SOURCE_PROVED /
CANONICAL_TAIL_COMPARISON_OPEN\`.
