# fourier_integral_deriv

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.fourier_integral_deriv`.
For every compact C1 f with tsupport in [-A,A] and every complex z, the literal plus-sign transform of f' equals -(I*z) times that of f. Both derivative summands and the original twisted product are integrable before applying whole-line FTC.
Primary source: Anatole Dedecker and Bhavik Mehta, [IntegralEqImproper.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/IntegralEqImproper.lean), `integral_eq_zero_of_hasDerivAt_of_integrable`, blob `99d112e521dea3e23ebd33931a5ad88f755642f1`; kernel chain-rule and support inputs have individual companion records.
Canonical integrability source: [FourierCollisionBound.lean](https://github.com/grwtsk/math/blob/da00dc90fe356e06c9ac83c6a8e64a77cc951703/GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean), `integrable_fourier_integrand`, blob `d7a7d75aea20705cdc037695c07f073e84399a76`.
Consumer: every derivative-order identity and the actual correlation decay. No boundary or Fubini condition is assumed away. Standard local consequence, not a new paper theorem.
Full argument, normalization comparison, authorship/licenses and arithmetic obligations: [README.md](README.md).
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
