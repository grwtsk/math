# Additive analytic order for a finite indexed product

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.analyticOrderAt_finset_rootProduct`.
Source: [FiniteSpectralProductMultiplicity.lean](../FiniteSpectralProductMultiplicity.lean).
Pins, digests, comparison and reproduction: [context](context.md).

For every finite subset of indices, real root family and complex z, the analytic order of the product equals the natural sum of matching-root indicators, cast to ENat. Induct over the finite subset. The empty product is the nonvanishing constant one. At insertion, both factors are analytic, so analyticOrderAt_mul adds their orders; the linear-factor theorem gives the new indicator.

Consumer: analyticOrderAt_rootProduct. This uses the pinned mathlib order-additivity theorem; it is not a new factorization theorem. No simplicity or injectivity premise is present. Novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
