# Chart.source_order

Attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts.Chart.source_order` in [FiniteComplexDivisorCharts.lean](../FiniteComplexDivisorCharts.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `980ed347dbaf7cb9331f313cc974de49acd79e6c`.

At every point in the chart domain, analyticOrderAt f z is the finite natural weightAt, coerced into ENat. This includes order zero outside the root support.

Proof and consumer: Use analyticOrderAt_congr on the neighborhood identity, add the unit and polynomial orders, set the nonvanishing analytic unit order to zero, and use order_weightedProduct. Consumer: actual multiplicity for the RP-OC-06 finite divisor.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
