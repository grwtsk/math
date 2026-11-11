# fourier_integral_iterated_deriv

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.fourier_integral_iterated_deriv`.
For supported compact scoped-C-infinity f, every natural k and every complex z, the k-th derivative transform is (-(I*z))^k times the original transform. Induction reuses the first-order identity with unchanged support.
Primary regularity source: Sébastien Gouëzel and Floris van Doorn, [ContDiff/Deriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ContDiff/Deriv.lean), `contDiff_infty_iff_deriv`, blob `ede41b77d146105bee637d6db9b91a1a21a48547`. Whole-line FTC provenance is mapped individually in [fourier_integral_deriv.md](fourier_integral_deriv.md).
Consumer: polynomially weighted Fourier bound without dividing by z. No arbitrary Fourier evaluation data or arithmetic zero hypothesis enters.
Standard local consequence of RP-OC-01, not direct paper formalization. Complete argument, source hashes, pins/licenses and unresolved arithmetic input: [README.md](README.md).
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
