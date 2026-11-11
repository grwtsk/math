# Normalized finite spectral product: exact analytic multiplicity

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.analyticOrderAt_normalizedExpProduct`.
Source: [FiniteSpectralProductMultiplicity.lean](../FiniteSpectralProductMultiplicity.lean).
Pins, digests, comparison and reproduction: [context](context.md).

For every finite real family, beta nonzero, complex c and z, analyticOrderAt(G_c,z)=occurrenceCount(lambda,z). Factor G_c as rootProduct times u(w)=exp(c*(w-i*beta))/rootProduct(i*beta). The anchor denominator is nonzero and u is analytic and nonvanishing. Reuse AnalyticOrderTransport.order_mul_nonzero_right, then the full root-product order theorem.

This closes the finite-model analytic-order supplier for Program 6's divisor, not the arithmetic source identity. A triple root stays order three; a vanishing multiplier would invalidate the transfer. Complex c is allowed here. Standard unit-factor argument, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
