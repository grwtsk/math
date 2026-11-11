# Chart.conjugate_mem

Attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts.Chart.conjugate_mem` in [FiniteComplexDivisorCharts.lean](../FiniteComplexDivisorCharts.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `980ed347dbaf7cb9331f313cc974de49acd79e6c`.

Assume the chart domain is closed under conjugation and actual source zeros in that domain conjugate to source zeros. Then the finite root support is closed under conjugation.

Proof and consumer: Put a listed root in the domain, convert membership to a source zero, apply the source symmetry, and convert back in the conjugate domain. Zero symmetry alone is deliberately not used to claim equality of orders.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
