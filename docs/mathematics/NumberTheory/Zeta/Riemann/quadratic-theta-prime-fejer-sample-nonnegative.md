# Fejer sampled-kernel nonnegativity

The sampled-kernel nonnegativity supplier is now source-proved.

The already established autocorrelation identity gives

\[
K_N(t)
=
\frac1N G_N(t)\overline{G_N(t)}
=
\frac1N |G_N(t)|^2.
\]

Hence the triangular kernel is real and nonnegative for every real argument,
including the zero residue where the off-boundary sine formula is not used.

For the corrected period-\(4X\) lattice sample

\[
\kappa_{4X,N}(r)
=
\frac1{4X}
\operatorname{Re} K_N(r/(4X)),
\]

the source therefore proves

\[
\boxed{\kappa_{4X,N}(r)\ge0}
\]

for every integer residue \(r\) whenever \(X>0\) and \(N>0\).

This discharges
\`PeriodFourXSampledKernelNonnegativeClaim\`.

The finite discrete-reproduction frontier is now reduced to one theorem only:

\[
\boxed{
\sum_{r\bmod 4X}\kappa_{4X,N}(r)=1
}
\]

under the alias-free cutoff \(0<N<4X\).

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SAMPLED_KERNEL_NONNEGATIVITY_SOURCE_PROVED /
DISCRETE_MASS_ONE_OPEN /
SHARP_STEP_COMPARISON_OPEN\`.
