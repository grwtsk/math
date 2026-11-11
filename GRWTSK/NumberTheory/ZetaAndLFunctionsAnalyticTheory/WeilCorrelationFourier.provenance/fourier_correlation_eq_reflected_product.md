# fourier_correlation_eq_reflected_product

Local attribution: grwtsk contributors. Date: 2026-11-11. Status: SOURCE_PROOF_CANDIDATE.

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.fourier_correlation_eq_reflected_product`. Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean), SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.

Statement: for every complex z and supported L1 complex f, integral C_f(r)exp(i*z*r)dr equals F(z)*conj(F(conj z)), using the existing arithmetic correlation. Argument: twist before applying `integral_convolution`, then use the reflection/conjugation identity. Both factors' integrability is proved, not assumed as formal interchange. Consumer: the Fourier-product component of the full arithmetic explicit-formula hsource; the full zero-sum equality remains open.

Local standard consequence, not a direct paper formalization or novelty claim. Exact pins, dependencies, full argument and hostile absolute-square check: [README](README.md). Upstream attribution/license retained.

Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
