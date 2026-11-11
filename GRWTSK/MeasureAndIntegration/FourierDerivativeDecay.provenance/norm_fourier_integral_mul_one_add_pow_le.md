# norm_fourier_integral_mul_one_add_pow_le

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.norm_fourier_integral_mul_one_add_pow_le`.
For every supported compact smooth f and every k,z, (1+norm(z))^k*norm(F(z)) <= exp(A*abs(Im z))*derivativeL1Cost f k. Split norm(z)<=1 and >1. The first branch uses the zeroth-order integral; the second uses the k-th derivative estimate. Both retain nonnegative L1 costs.
Sources: the local [preceding derivative bound](norm_fourier_integral_mul_pow_le.md), whose exact canonical envelope digest and primary dependencies are mapped there, and mandate RP-OC-01.
Consumer: norm_fourier_integral_le_decay and the weighted signed-pairing estimate. The zero-frequency branch is necessary; it is not obtained by dividing the derivative-only inequality.
Classical local consequence, not direct paper or novelty claim. Full proof, pins, source comparison, licenses and open arithmetic premises: [README.md](README.md).
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
