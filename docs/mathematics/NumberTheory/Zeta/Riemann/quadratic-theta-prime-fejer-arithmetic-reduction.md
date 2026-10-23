# Fejer arithmetic reduction to universal L1 smoothing

The remaining arithmetic comparison is now factored into a universal
step-smoothing problem.

Define the arithmetic atom

\[
a(n)=\mathbf 1_{\mathbb P}(n)\log n-1.
\]

The source proves the exact sharp discrepancy identity

\[
D_X(m)
=
\sum_{2X<n\le m} a(n).
\]

It also proves the corrected Fejer-smoothed discrepancy is the same atom summed
against the smoothed prefix weight:

\[
S_{X,N}(m)
=
\sum_{2X<n\le4X}
W_{X,N,m}(n)\,a(n).
\]

Therefore

\[
\boxed{
D_X(m)-S_{X,N}(m)
=
\sum_{2X<n\le4X}
a(n)\,
\bigl(
\mathbf 1_{n\le m}-W_{X,N,m}(n)
\bigr).
}
\]

On the octave, the source uses the safe uniform envelope

\[
\boxed{
|a(n)|\le1+\log(4X).
}
\]

This corrects the earlier use of \(\log(4X)\) alone while preserving the same
power/logarithmic scale.

Hence the arithmetic error is reduced to

\[
|D_X(m)-S_{X,N}(m)|
\le
(1+\log(4X))
\sum_{2X<n\le4X}
\left|
\mathbf 1_{n\le m}-W_{X,N,m}(n)
\right|.
\]

The only remaining supplier is now purely combinatorial:

\`NonAliasingFejerSharpStepL1FirstMomentClaim\`

asserting that this L1 step-smoothing error is bounded by the period-\(4X\)
kernel first moment.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_ATOM_DECOMPOSITION_SOURCE_WRITTEN /
SAFE_ATOM_ENVELOPE_SOURCE_WRITTEN /
ARITHMETIC_TO_L1_REDUCTION_SOURCE_WRITTEN /
SHARP_STEP_L1_FIRST_MOMENT_OPEN\`.
