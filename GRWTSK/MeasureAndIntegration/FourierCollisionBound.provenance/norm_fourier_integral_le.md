# norm_fourier_integral_le

Declaration: `GRWTSK.MeasureAndIntegration.FourierCollisionBound.norm_fourier_integral_le`, [source line 88](../FourierCollisionBound.lean#L88).

Under the stated L1 and support premises, norm(integral f(t)*exp(I*z*t)) <= exp(A*abs(Im(z)))*integral norm(f). The Fourier sign is positive, with no 2*pi factor. First prove the integrand integrable. Then apply the Bochner norm inequality, integral monotonicity against the pointwise majorant and the constant-multiple identity.
Reuses `integrable_fourier_integrand`, `integrand_norm_le`, `MeasureTheory.norm_integral_le_integral_norm`, `integral_mono`, `integral_mul_const`.
Consumers: RP-OC-01 zeroth-order Fourier envelope and RP-OC-02 finite-frequency evaluation control. Higher derivative seminorm decay and weighted infinite tails are not supplied.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Statement source: supplied mandate RP-OC-01/RP-OC-02, 2026-11-11; exact digest and locators in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original Apache-2.0 attribution preserved; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, fresh kernel replay, transitive axioms, independent review and arithmetic source certification NOT_RUN. No program is completed.
