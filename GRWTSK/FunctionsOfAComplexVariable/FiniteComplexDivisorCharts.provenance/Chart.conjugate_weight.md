# Chart.conjugate_weight

Attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts.Chart.conjugate_weight` in [FiniteComplexDivisorCharts.lean](../FiniteComplexDivisorCharts.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `980ed347dbaf7cb9331f313cc974de49acd79e6c`.

Assume a conjugation-stable chart domain and global value equivariance f(conj z)=conj(f z). Then normalized multiplicities agree at conjugate points in the domain.

Proof and consumer: Derive analyticity at both points from the chart, apply the existing AnalyticOrderTransport.order_conjugate_of_equivariant, and convert its finite orders with source_orderNat. The global value identity is a hypothesis, not a property asserted for an unnormalized Dirichlet source.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
