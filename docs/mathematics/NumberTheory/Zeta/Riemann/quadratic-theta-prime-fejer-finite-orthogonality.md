# Period-4X finite Fourier orthogonality

The remaining discrete mass-one supplier is now source-proved.

For a Fourier mode \(k\), define

\[
\zeta_{X,k}
=
\exp\!\left(\frac{2\pi i k}{4X}\right).
\]

The source establishes

\[
\zeta_{X,k}^{4X}=1.
\]

Under the alias-free cutoff \(0<N<4X\), every nonzero triangular support mode
remains nonzero modulo \(4X\), so

\[
\zeta_{X,k}\ne1.
\]

At the lattice point \(r/(4X)\),

\[
\operatorname{fourier}(k,r/(4X))
=
\zeta_{X,k}^{\,r}.
\]

Therefore Mathlib's finite geometric-series identity gives

\[
\boxed{
\sum_{r=0}^{4X-1}
\operatorname{fourier}(k,r/(4X))
=
0
}
\]

for every nonzero supported mode.

This discharges
\`PeriodFourXFourierModeOrthogonalityClaim\`.

The previously proved reduction then yields exact sampled-kernel mass one:

\[
\boxed{
\sum_{r=0}^{4X-1}
\kappa_{4X,N}(r)=1.
}
\]

Together with sampled-kernel nonnegativity, the full discrete reproduction
packet is now source-proved.

The only remaining substantive smoothing theorem is the sharp-step
boundary-crossing comparison.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_MODE_ORTHOGONALITY_SOURCE_PROVED /
DISCRETE_MASS_ONE_SOURCE_PROVED /
DISCRETE_REPRODUCTION_SOURCE_PROVED /
SHARP_STEP_COMPARISON_OPEN\`.
