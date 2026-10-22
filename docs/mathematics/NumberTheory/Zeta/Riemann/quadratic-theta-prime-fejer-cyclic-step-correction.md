# Fejer cyclic sharp-step factor correction

The universal sharp-step counting argument exposes one more constant-level
correction.

For a fixed signed displacement of magnitude \(d\), translating an interval
indicator can change at most \(2d\) lattice sites: one contribution from each
boundary.

The symmetric Fejer kernel also contains both displacement signs \(+d\) and
\(-d\).

Therefore the safe positive-distance first-moment envelope is

\[
\boxed{
4
\sum_{1\le d\le2X}
d\,\kappa_{4X,N}(d),
}
\]

not the factor-one first moment previously encoded.

This is a constant correction only.  Using the already source-written harmonic
bound,

\[
\sum_{1\le d\le2X}
d\,\kappa_{4X,N}(d)
\le
\frac{X}{N}(1+\log(2X)),
\]

the corrected cyclic budget satisfies

\[
\boxed{
B_{X,N}
\le
4\frac{X}{N}(1+\log(2X)).
}
\]

Combining with the safe arithmetic atom envelope gives the same power/logarithmic
shape

\[
O\!\left(
(1+\log(4X))
\frac{X}{N}
(1+\log(2X))
\right),
\]

with only the absolute constant changed.

The accepted universal combinatorial frontier is now
\`NonAliasingFejerSharpStepL1FirstMomentFourClaim\`, equivalently
\`NonAliasingFejerCyclicTranslationContractionClaim\`.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CYCLIC_FACTOR_FOUR_CORRECTION_TYPED /
HARMONIC_SCALING_PRESERVED /
ARITHMETIC_FACTOR_FOUR_ADAPTER_SOURCE_WRITTEN /
CYCLIC_TRANSLATION_CONTRACTION_OPEN\`.
