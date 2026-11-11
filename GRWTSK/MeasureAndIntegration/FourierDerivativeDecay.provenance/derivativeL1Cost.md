# derivativeL1Cost

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.derivativeL1Cost`.
Definition: for every complex-valued f and natural k, 2^k times the sum of the order-zero and order-k L1 norm integrals. Estimates use it only for compact smooth f, where integrability is proved. This is not a bundled Lean Seminorm; no formal seminorm-law claim.
Source specification: supplied research execution mandate, RP-OC-01 derivative seminorm requirement, SHA-256 `77acba975792729ceaf80d12e3a91bddfd3556a4be88bbcf4f358af48023535f`.
Primary dependency: Sébastien Gouëzel and Floris van Doorn, [ContDiff/Deriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ContDiff/Deriv.lean), `ContDiff.iterate_deriv`, blob `ede41b77d146105bee637d6db9b91a1a21a48547`.
Consumer: norm_fourier_integral_le_decay and WeilCorrelationDecay. Representation uses literal integrals, not freely assigned evaluations.
Local consequence, no direct paper-formalization or novelty claim. Full argument, pins, license attribution, source return and remaining arithmetic obligations: [README.md](README.md).
Lean v4.34.1. Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
