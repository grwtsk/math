# integrable_fourier_integrand

Declaration: `GRWTSK.MeasureAndIntegration.FourierCollisionBound.integrable_fourier_integrand`, [source line 77](../FourierCollisionBound.lean#L77).

For every Lebesgue-integrable complex f vanishing outside the stated bounded interval and every complex z, f(t)*exp(I*z*t) is integrable. The exponential multiplier is continuous, so the product is a.e. strongly measurable. `integrand_norm_le` gives the integrable majorant norm(f(t))*exp(A*abs(Im(z))). No totalized integral is used to avoid convergence.
Reuses `MeasureTheory.Integrable.mono'`, `Integrable.norm`, `Integrable.mul_const`, a.e. strong measurability of a product, and continuity of `Complex.exp`. Consumers: both Fourier integral estimates.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Local elementary derivation for the 2026-11-11 RP-OC-02 mandate, not an upstream solution port. See [README](README.md) for exact source digest and library locators. Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream Apache-2.0 retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. Arithmetic source identification is not established by integrability.
