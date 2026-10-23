# Fejer discrete reproduction prerequisites

The sharp-step comparison requires more than pointwise kernel decay.

To compare a sharp prefix with its discrete Fejer convolution, the sampled
kernel must reproduce constants:

\[
\sum_{r\bmod 4X} \kappa_{4X,N}(r)=1.
\]

This is only alias-free when no nonzero Fourier mode in the triangular support
is divisible by the lattice period. The source therefore introduces the
necessary regime

\[
\boxed{0<N<4X.}
\]

Inside this regime the source proves that every nonzero triangular frequency
\(|k|<N\) remains nonzero in \(\mathbf Z/(4X)\mathbf Z\). It also proves the
zero-frequency triangular coefficient is exactly \(1\).

Thus finite-character orthogonality on \`ZMod (4X)\` has the exact expected
shape: all nonzero Fourier modes should sum to zero and only the zero mode
survives.

Two finite-DFT suppliers are now isolated:

- \`PeriodFourXSampledKernelMassOneClaim\`;
- \`PeriodFourXSampledKernelNonnegativeClaim\`.

The accepted sharp-step comparison is also corrected to include the cutoff
hypothesis \(N<4X\):

\`NonAliasingPrimePrefixFejerFirstMomentComparisonAtCutoff\`.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ALIAS_FREE_CUTOFF_REGIME_TYPED /
NONZERO_MODE_MOD_PERIOD_SOURCE_PROVED /
ZERO_MODE_COEFFICIENT_SOURCE_PROVED /
DISCRETE_MASS_ONE_OPEN /
DISCRETE_SAMPLE_NONNEGATIVITY_OPEN /
SHARP_STEP_COMPARISON_OPEN\`.
