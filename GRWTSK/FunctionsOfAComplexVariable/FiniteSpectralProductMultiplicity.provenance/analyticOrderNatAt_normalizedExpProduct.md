# Natural-valued order agrees with occurrence count

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.analyticOrderNatAt_normalizedExpProduct`.
Source: [FiniteSpectralProductMultiplicity.lean](../FiniteSpectralProductMultiplicity.lean).
Pins, digests, comparison and reproduction: [context](context.md).

Under beta nonzero, the natural analytic order of G_c at z is its occurrence count. Unfold analyticOrderNatAt as ENat.toNat, substitute the already proved natural-cast ENat order, and simplify the cast round trip.

Consumer: natural-number zero-count interfaces. This does not apply to an arbitrary infinite-order germ, for which toNat is totalized; finite order was established first. Standard conversion, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
