# reflected_fourier_integral

Local attribution: grwtsk contributors. Date: 2026-11-11. Status: SOURCE_PROOF_CANDIDATE.

Private source declaration `reflected_fourier_integral` in namespace `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation`; compiler-generated name NOT_RUN. Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean), SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.

Statement: the transform of conj(f(-t)) is conj(F(conj z)). Argument: reflect the integration variable and commute conjugation with integration; conjugation changes i to -i. Dependencies: `integral_neg_eq_self`, `integral_conj`, `Complex.exp_conj`. Consumer: `fourier_correlation_eq_reflected_product`, after integrability is supplied.

Local consequence, not a direct paper formalization. Exact pins, transform convention, hostile reflection check and arithmetic boundary: [README](README.md). Upstream Mathlib attribution/license retained.

Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
