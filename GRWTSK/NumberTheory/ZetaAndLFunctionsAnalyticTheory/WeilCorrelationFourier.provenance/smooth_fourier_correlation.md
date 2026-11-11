# smooth_fourier_correlation

Local attribution: grwtsk contributors. Date: 2026-11-11. Status: SOURCE_PROOF_CANDIDATE.

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.smooth_fourier_correlation`. Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean), SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.

Statement: for compact-smooth complex f supported in [-A,A] and every complex z, every inner correlation integral and the outer complex Fourier integral are integrable, and the exact reflected-product identity holds. Argument: continuity/compact support supply L1 and L2; use `Continuous.memLp_of_hasCompactSupport` and the original `integrable_correlation_integrand`, then the two new complex-frequency results. The existing admissibility predicate's two fields supply the smoothness and compactness inputs; no replacement predicate is defined.

Local source-domain application, not a direct paper formalization. Exact pins, full argument and still-open arithmetic equality: [README](README.md). Upstream attribution/license retained.

Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
