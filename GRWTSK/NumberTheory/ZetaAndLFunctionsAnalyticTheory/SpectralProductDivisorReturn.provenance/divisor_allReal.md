# Real support of the finite spectral divisor

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.SpectralProductDivisorReturn.divisor_allReal`.
Source: [SpectralProductDivisorReturn.lean](../SpectralProductDivisorReturn.lean).
Pins, digests, comparison and reproduction: [context](../../../FunctionsOfAComplexVariable/FiniteSpectralProductMultiplicity.provenance/context.md).

Every location of spectralDivisor(lambda,U) has imaginary part zero. Remove the domain filter, obtain an index for the support location, and use the imaginary-part identity for a real cast.

Consumer: the existing Program 6 count-saturation theorem. Realness follows from the input type lambda:indices->Real, not from any arithmetic construction or a computed matrix. It cannot imply arithmetic zero reality without source return. Standard consequence, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
