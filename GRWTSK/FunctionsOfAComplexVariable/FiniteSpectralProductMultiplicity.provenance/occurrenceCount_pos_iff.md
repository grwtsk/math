# Positivity of occurrence multiplicity

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.occurrenceCount_pos_iff`.
Source: [FiniteSpectralProductMultiplicity.lean](../FiniteSpectralProductMultiplicity.lean).
Pins, digests, comparison and reproduction: [context](context.md).

For every finite real family and complex z, its natural occurrence count is positive exactly when some indexed root equals z. If no root equals z, every indicator summand is zero. Conversely, one matching summand equals one and is bounded above by the sum of nonnegative summands.

This standard indicator-sum argument supplies FiniteDivisor.positive, including repeated roots without assuming injectivity. The empty family correctly has no positive weights. No claim of analytic order follows from positivity alone. Novelty UNASSESSED; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
