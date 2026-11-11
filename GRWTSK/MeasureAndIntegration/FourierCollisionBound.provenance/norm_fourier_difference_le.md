# norm_fourier_difference_le

Declaration: `GRWTSK.MeasureAndIntegration.FourierCollisionBound.norm_fourier_difference_le`, [source line 147](../FourierCollisionBound.lean#L147).

For every supported L1 complex function f and all real xi,eta, norm(F(xi+i*eta)-F(xi-i*eta)) <= 2*sinh(A*abs(eta))*integral norm(f). F is written as the literal Lebesgue integral with kernel exp(i*z*t); evaluations are not freely assignable variables.
Prove both integrands integrable, subtract inside the integral, factor f pointwise, use `norm_kernel_difference_le` on its support and zero outside, then integrate the majorant. Reuses `integral_sub`, `norm_integral_le_integral_norm`, `integral_mono`, `integral_mul_const`. Consumer: `interpolation_cost`.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Local elementary derivation for the 2026-11-11 RP-OC-02 mandate. See [README](README.md) for exact source digest and primary paths. Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original Apache-2.0 attribution retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, fresh kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. This is not an equality with a Weil form or a tail theorem.
