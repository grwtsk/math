# Cyclic sharp-interval telescoping reduction

The final interval-count theorem is now reduced to two small universal lemmas.

For a cyclic function \(f\), define

\[
T_f(r)
=
\sum_x |f(x)-f(x-r)|.
\]

The source proves the symmetry

\[
\boxed{T_f(-r)=T_f(r).}
\]

For the sharp interval indicator, the remaining cardinality theorem can be
obtained from:

1. \`CyclicSharpUnitTranslationBoundClaim\`

\[
T_f(1)\le2,
\]

because a one-site shift can only cross the two endpoints of one interval;

2. \`CyclicSharpTranslationTelescopingClaim\`

\[
T_f(r)
\le
d_{\rm cyc}(r,0)\,T_f(1).
\]

Together these imply

\[
\boxed{
T_f(r)\le2\,d_{\rm cyc}(r,0),
}
\]

which is exactly \`CyclicSharpTranslationCardinalityClaim\`.

This replaces a large wrap-around case split by a reusable one-step boundary
lemma plus a translation telescoping lemma.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
TRANSLATION_NEG_SYMMETRY_SOURCE_WRITTEN /
TRANSLATION_CARDINALITY_REDUCED_TO_UNIT_PLUS_TELESCOPING /
UNIT_TRANSLATION_BOUND_OPEN /
TRANSLATION_TELESCOPING_OPEN\`.
