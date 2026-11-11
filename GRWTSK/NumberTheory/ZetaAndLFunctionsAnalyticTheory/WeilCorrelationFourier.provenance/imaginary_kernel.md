# imaginary_kernel

Local attribution: grwtsk contributors. Date: 2026-11-11. Status: SOURCE_PROOF_CANDIDATE.

Private source declaration `imaginary_kernel` in namespace `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation`; compiler-generated name NOT_RUN. Source: [WeilCorrelationFourier.lean](../WeilCorrelationFourier.lean), SHA-256 `521506313cdfc05284815a860eb208694a17684fa3089e27880ec017110942ea`.

Statement: exp(i*(i*y)*t)=ofReal(exp(-y*t)) for all real y,t. Argument: calculate the complex exponent and use `Complex.ofReal_exp`. Dependencies: `Complex.ext` and ring arithmetic. Consumers: the two imaginary-axis source theorems. No sign of y is discarded.

Local elementary identity, not a direct paper formalization. Exact pinned sources, normalization and source-return boundary: [README](README.md). Upstream attribution/license retained.

Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED. No RH/GRH claim.
