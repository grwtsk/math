# Cyclic convolution model for the sharp Fejer step

The remaining translation-contraction proof is now expressed on the exact
finite cyclic group \(\mathbf Z/(4X)\mathbf Z\).

The endpoint \(4X\) requires explicit handling because it is residue zero.  The
new \`octaveRepresentative\` uses

\[
0 \longleftrightarrow 4X,
\]

and every other residue is represented by its canonical value in
\(\{1,\dots,4X-1\}\).

This gives an exact cyclic sharp-prefix indicator for \((2X,m]\), including the
case \(m=4X\).

The source now defines:

- \`cyclicFejerKernel\`;
- \`cyclicFejerSmoothedPrefix\`;
- \`cyclicFejerSharpStepL1Error\`;
- \`cyclicSharpTranslationL1\`.

The remaining universal proof is split into three auditable suppliers.

First, identify the repository's arithmetic prefix weight with the restriction
of the cyclic convolution:
\`ArithmeticPrefixWeightEqualsCyclicConvolutionClaim\`.

Second, use kernel nonnegativity and mass one to derive the convex-combination
bound
\[
\|1_I-K*1_I\|_1
\le
\sum_r K(r)\|1_I-\tau_r1_I\|_1.
\]

Third, prove the interval-counting estimate
\[
\|1_I-\tau_r1_I\|_1
\le
2\,d_{\rm cyc}(r,0).
\]

These are exactly the ingredients needed for the safe factor-four
positive-distance first-moment estimate already encoded.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CYCLIC_CONVOLUTION_MODEL_DEFINED /
ENDPOINT_ZERO_REPRESENTATIVE_SOURCE_WRITTEN /
ARITHMETIC_CYCLIC_IDENTIFICATION_OPEN /
CONVEX_COMBINATION_L1_OPEN /
CYCLIC_INTERVAL_TRANSLATION_COUNT_OPEN\`.
