# zeta_pole_correlation

Local attribution: grwtsk contributors. Date: 2026-11-11. Status: SOURCE_PROOF_CANDIDATE.

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.zeta_pole_correlation`. Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean), SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.

Statement: integral C_f(r)*(exp(r/2)+exp(-r/2)) is integrable and equals Mplus*conj(Mminus)+Mminus*conj(Mplus). The moments are the literal integrals f(t)*exp(plus/minus t/2). Argument: specialize `correlation_two_oriented_moments` at y=-1/2 and normalize the exponents by ring arithmetic. Consumer: the conductor-one pole component of the arithmetic source return, NOT the entire explicit formula. Both poles and complex phases are retained.

Local consequence, not a direct paper formalization. Exact pins, support/L1 hypotheses, full argument and remaining arithmetic obligations: [README](README.md). Upstream attribution/license retained.

Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
