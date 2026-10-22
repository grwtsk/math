# Cyclic arithmetic restriction

The arithmetic/cyclic bridge is now reduced to two exact finite-indexing
statements.

First, for every arithmetic point \(q\in[1,4X]\), the source proves

\[
\operatorname{octaveRepresentative}(q\bmod 4X)=q.
\]

The endpoint \(q=4X\) is handled explicitly: its residue is zero, and the
endpoint-aware representative sends zero back to \(4X\).

Consequently, on arithmetic octave points,

\[
\boxed{
\operatorname{cyclicSharpPrefixIndicator}(q\bmod4X)
=
\operatorname{sharpPrefixWeight}(q).
}
\]

Thus no endpoint ambiguity remains in the sharp indicator.

The full prefix-weight bridge is now factored into exactly two finite
suppliers:

1. \`ArithmeticCyclicPrefixReindexingClaim\` — reindex the cyclic convolution
   sum selected by the sharp indicator as the arithmetic sum over
   \(q\in(2X,m]\);
2. \`ArithmeticCyclicKernelDifferenceClaim\` — identify the cyclic kernel at
   residue difference \(n-q\) with the repository's signed sampled kernel at
   integer difference \(n-q\).

The source proves that these two suppliers imply
\`ArithmeticPrefixWeightEqualsCyclicConvolutionClaim\`.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
OCTAVE_REPRESENTATIVE_NATCAST_SOURCE_WRITTEN /
CYCLIC_SHARP_INDICATOR_RESTRICTION_SOURCE_WRITTEN /
CYCLIC_PREFIX_REINDEXING_OPEN /
CYCLIC_KERNEL_DIFFERENCE_OPEN\`.
