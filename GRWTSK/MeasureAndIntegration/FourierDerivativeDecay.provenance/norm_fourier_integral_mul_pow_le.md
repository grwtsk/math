# norm_fourier_integral_mul_pow_le

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.norm_fourier_integral_mul_pow_le`.
For every compact smooth supported f, A,k,z, norm(z)^k*norm(F(z)) <= exp(A*abs(Im z))*integral norm(deriv^[k] f). Take norms of the preceding identity, use norm(I)=1, then apply the original compact-support envelope to the derivative iterate.
Canonical source: [FourierCollisionBound.lean](https://github.com/grwtsk/math/blob/da00dc90fe356e06c9ac83c6a8e64a77cc951703/GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean), `norm_fourier_integral_le`, blob `d7a7d75aea20705cdc037695c07f073e84399a76`; derivative dependencies mapped in [fourier_integral_iterated_deriv.md](fourier_integral_iterated_deriv.md).
Consumer: all-frequency decay after combining orders zero and k. z=0 is retained; no division by norm(z).
Prior real-frequency comparison and primary-library authorship/license map: [README.md](README.md). Local standard consequence, not direct paper/novelty claim.
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
