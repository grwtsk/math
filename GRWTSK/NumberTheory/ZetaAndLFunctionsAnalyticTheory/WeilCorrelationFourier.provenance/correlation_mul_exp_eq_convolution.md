# correlation_mul_exp_eq_convolution

Local attribution: grwtsk contributors. Date: 2026-11-11. Status: SOURCE_PROOF_CANDIDATE.

Private source declaration `correlation_mul_exp_eq_convolution` in namespace `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation`; compiler-generated name NOT_RUN. Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean), SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.

Statement: C_f(r)*exp(i*z*r) is the convolution of the two correctly twisted factors. Argument: move a constant through the inner integral, substitute t -> -t and factor the exponential. Dependencies: the original `correlation`, `integral_mul_const`, `integral_neg_eq_self`, `Complex.exp_add`. Consumers: the two complex-frequency theorems, which separately prove the integrability required for Fubini.

Local elementary consequence, not a direct paper formalization. Exact pins, normalization, full argument and arithmetic boundary: [README](README.md). No new correlation definition. Upstream Mathlib attribution/license retained.

Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
