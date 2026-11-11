# Analytic order of one linear factor

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.analyticOrderAt_linear_factor`.
Source: [FiniteSpectralProductMultiplicity.lean](../FiniteSpectralProductMultiplicity.lean).
Pins, digests, comparison and reproduction: [context](context.md).

For arbitrary complex x and z, order_z(w-x) is one when x=z and zero otherwise. At equality use mathlib's centered monomial of degree one. Away from x the factor is analytic and nonvanishing, so its analytic order is zero.

Consumer: finite-product induction. This is an actual analyticOrderAt statement, not a definition of an artificial multiplicity. A repeated root in a product is handled by adding several such contributions. Standard consequence; novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
