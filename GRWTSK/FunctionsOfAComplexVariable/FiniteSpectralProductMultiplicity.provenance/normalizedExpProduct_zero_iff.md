# Normalization preserves finite spectral zero locations

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.normalizedExpProduct_zero_iff`.
Source: [FiniteSpectralProductMultiplicity.lean](../FiniteSpectralProductMultiplicity.lean).
Pins, digests, comparison and reproduction: [context](context.md).

For real indexed roots, beta nonzero, and arbitrary complex slope c, G_c(z)=0 iff some indexed root equals z. The anchor i*beta is not real, so the normalization denominator is nonzero. Complex.exp is nowhere zero. Remove both factors from the product-zero equation and apply rootProduct_zero_iff.

Consumer: divisor_identifies_model. Realness of c is unnecessary for zero locations and is deliberately not imposed. It becomes essential for the one-anchor mass bound. A zero anchor can meet a root and is excluded. Standard consequence; novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
