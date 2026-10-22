# Fejer first-moment correction

The period-\(4X\) operator removes aliasing, but the tail budget itself requires
one more structural correction.

For a sharp prefix step, a displacement of size \(d\) crosses \(d\) boundary
positions. Therefore the smoothing error is governed by the first moment of
the sampled kernel, not its unweighted mass.

The corrected budget is

\[
\log(4X)
\sum_{1\le d\le2X}
d\,
\frac1{4X}
\left|K_N\!\left(\frac d{4X}\right)\right|.
\]

Using the period-\(4X\) square-decay estimate already formalized, the source
proves termwise

\[
\boxed{
d\,
\frac1{4X}
\left|K_N\!\left(\frac d{4X}\right)\right|
\le
\frac{X}{Nd}.
}
\]

Thus the expected summed scale is the harmonic one

\[
\frac{X}{N}
\sum_{1\le d\le2X}\frac1d.
\]

The exact finite reciprocal-sum rewrite is kept as the separate
\`NonAliasingFejerFirstMomentHarmonicBoundClaim\`; it is not silently folded
into this source-only increment.

The remaining substantive arithmetic theorem is
\`NonAliasingPrimePrefixFejerFirstMomentComparison\`: prove that the actual
sharp-minus-smoothed discrepancy for the corrected fixed operator is bounded
by this first-moment budget.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FIRST_MOMENT_TAIL_MODEL_CORRECTED /
DISTANCE_WEIGHTED_KERNEL_BOUND_SOURCE_WRITTEN /
FINITE_HARMONIC_SUMMATION_OPEN /
SHARP_STEP_CONVOLUTION_COMPARISON_OPEN\`.
