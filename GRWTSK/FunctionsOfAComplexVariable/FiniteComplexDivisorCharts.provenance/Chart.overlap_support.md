# Chart.overlap_support

Attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts.Chart.overlap_support` in [FiniteComplexDivisorCharts.lean](../FiniteComplexDivisorCharts.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `980ed347dbaf7cb9331f313cc974de49acd79e6c`.

Two charts of the SAME function have identical root membership at every point in the intersection of their domains.

Proof and consumer: Each membership is equivalent to f(z)=0 by Chart.zero_iff. No parameter deformation or globally fixed label ordering is assumed. Consumer: a sound fixed-source atlas transition.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
