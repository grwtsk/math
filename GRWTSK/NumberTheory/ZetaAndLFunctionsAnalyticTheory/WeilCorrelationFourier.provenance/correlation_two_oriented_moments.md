# correlation_two_oriented_moments

Local attribution: grwtsk contributors. Date: 2026-11-11. Status: SOURCE_PROOF_CANDIDATE.

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation_two_oriented_moments`. Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean), SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.

Statement: both oriented exponential moments of C_f are jointly integrable and their sum equals the two opposite-moment cross products, for every real y and supported L1 complex f. Argument: prove integrability at y and -y before `integral_add`; then apply both exact moment identities. Consumer: `zeta_pole_correlation`. No positivity or pole-neutral restriction.

Local consequence, not a direct paper formalization. Exact pins, individual dependencies, full analytic argument and source-return boundary: [README](README.md). Upstream attribution/license retained.

Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
