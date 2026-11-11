# Analytic orders supply the divisor weights

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.SpectralProductDivisorReturn.divisor_multiplicity_eq_order`.
Source: [SpectralProductDivisorReturn.lean](../SpectralProductDivisorReturn.lean).
Pins, digests, comparison and reproduction: [context](../../../FunctionsOfAComplexVariable/FiniteSpectralProductMultiplicity.provenance/context.md).

For beta nonzero and every complex z, the divisor weight cast to ENat equals analyticOrderAt(G_c,z). The constructed multiplicity function is occurrenceCount; substitute the actual finite-product analytic-order theorem and reverse its equality.

This discharges the order supplier needed by Program 4 finiteDivisor_source_return for this concrete finite model. The function equality holds even outside the filtered support; the source-transfer theorem uses it only on support. An arbitrary positive weighting would not satisfy this identity. Novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
