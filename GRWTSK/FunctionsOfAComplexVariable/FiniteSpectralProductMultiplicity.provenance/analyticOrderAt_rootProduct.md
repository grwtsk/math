# Full finite root product has occurrence multiplicities

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.analyticOrderAt_rootProduct`.
Source: [FiniteSpectralProductMultiplicity.lean](../FiniteSpectralProductMultiplicity.lean).
Pins, digests, comparison and reproduction: [context](context.md).

For every finite real indexed family, analyticOrderAt(rootProduct lambda,z) equals occurrenceCount(lambda,z), cast to ENat. Specialize the finite-subset product-order theorem to Finset.univ and unfold the two definitions.

Consumer: normalization-invariant order. The conclusion is finite even at repeated roots because the indexed family is finite; it does not assert finiteness of the zero divisor of an arithmetic entire function. Standard specialization, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
