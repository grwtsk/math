# integrable_correlation_fourier_integrand

Local attribution: grwtsk contributors. Date: 2026-11-11. Status: SOURCE_PROOF_CANDIDATE.

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.integrable_correlation_fourier_integrand`. Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean), SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.

Statement: for every complex z, supported L1 f gives integrability of C_f(r)*exp(i*z*r). Argument: prove both twisted factors integrable, apply `Integrable.integrable_convolution`, and transport through the exact pointwise identity. Dependencies: `reflected_fourier_integrable`, `FourierCollisionBound.integrable_fourier_integrand`, `correlation_mul_exp_eq_convolution`. Consumers: pole integrability and the compact-smooth source theorem.

Local consequence of the mandate and pinned canonical/Mathlib sources, not a direct paper formalization. Exact pins, full hypotheses and source-return limitations: [README](README.md). Upstream attribution/license retained.

Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
