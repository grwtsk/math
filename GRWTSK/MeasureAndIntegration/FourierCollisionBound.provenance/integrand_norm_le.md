# integrand_norm_le

Private source identifier `integrand_norm_le`, namespace `GRWTSK.MeasureAndIntegration.FourierCollisionBound`, [source line 58](../FourierCollisionBound.lean#L58). Generated private kernel name is not guessed.

For every real A, function f vanishing when A<abs(t), complex z and real t, norm(f(t)*exp(I*z*t)) <= norm(f(t))*exp(A*abs(Im(z))). Inside the support use -Im(z)*t <= abs(Im(z))*abs(t) <= A*abs(Im(z)) and exponential monotonicity; outside it the integrand is zero. A<0 forces f=0 under the actual premise.
Reuses `kernel_norm`, `Real.exp_le_exp`, `abs_mul`, `mul_le_mul_of_nonneg_left`. Consumers: `integrable_fourier_integrand`, `norm_fourier_integral_le`.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Local consequence of the RP-OC-02 mandate, 2026-11-11; full source digest and comparison in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream Apache-2.0 retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and arithmetic source certification NOT_RUN. No constructive interpolation or arithmetic identity is supplied.
