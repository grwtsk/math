# Period-4X mass-one reduction

The sampled-kernel mass-one theorem is now reduced to a single finite Fourier
orthogonality statement.

The new interface
\`PeriodFourXFourierModeOrthogonalityClaim\`
asks that every nonzero triangular Fourier mode satisfy

\[
\sum_{r=0}^{4X-1}
e^{2\pi i k r/(4X)}
=
0.
\]

The alias-free cutoff \(0<N<4X\) already proves that every nonzero supported
frequency remains a nontrivial character modulo \(4X\).

The source now proves:

- the zero mode sums to \(4X\);
- its triangular coefficient is exactly \(1\);
- assuming nonzero-mode orthogonality, every other supported mode vanishes;
- therefore the complex period sum of the triangular kernel is exactly \(4X\);
- after the \(1/(4X)\) normalization, the real sampled kernel has total mass
  exactly \(1\).

Hence
\`PeriodFourXSampledKernelMassOneClaim\`
is discharged from the single remaining finite-character supplier.

The remaining theorem is now standard finite DFT orthogonality on
\`ZMod (4X)\`, not a kernel-analysis or arithmetic estimate.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
MASS_ONE_REDUCED_TO_MODE_ORTHOGONALITY /
ZERO_MODE_MASS_SOURCE_WRITTEN /
FINITE_CHARACTER_ORTHOGONALITY_OPEN /
SHARP_STEP_COMPARISON_OPEN\`.
