# reflected_integrable

Local attribution: grwtsk contributors. Date: 2026-11-11. Status: SOURCE_PROOF_CANDIDATE.

Private source declaration `reflected_integrable` in namespace `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation`; compiler-generated name NOT_RUN. Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean), SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.

Statement: Integrable f implies integrability of t -> conj(f(-t)). Argument: negation preserves Lebesgue measure; conjugation preserves norm and is continuous. Dependencies: `Integrable.comp_neg`, `Integrable.mono'`, `Complex.continuous_conj`. Consumer: `reflected_fourier_integrable`.

Local consequence, not a direct paper formalization. Exact source/pin map, hypotheses, shared analytical argument and unresolved arithmetic return: [README](README.md). Upstream Mathlib bylines and Apache-2.0 license retained. Local source MIT.

Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
