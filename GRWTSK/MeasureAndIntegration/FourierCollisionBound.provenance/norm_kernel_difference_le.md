# norm_kernel_difference_le

Declaration: `GRWTSK.MeasureAndIntegration.FourierCollisionBound.norm_kernel_difference_le`, [source line 132](../FourierCollisionBound.lean#L132).

For real A,xi,eta,t with abs(t)<=A, the norm of the exponential-kernel difference at xi +/- I*eta is <= 2*sinh(A*abs(eta)). The exact factorization has an oscillatory factor of norm one. Apply `exp_difference_le` with u=eta*t and v=A*abs(eta); the input bound follows from abs_mul and the support inequality. Both signs of eta and every xi are retained.
Reuses `kernel_difference`, `kernel_norm`, `exp_difference_le`, `Complex.norm_real`, `Real.norm_eq_abs`, `abs_mul`. Consumer: `norm_fourier_difference_le`.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Source correspondence: local derivation of the 2026-11-11 RP-OC-02 mandate; exact digest and pinned primary locators in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream authorship/Apache-2.0 retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. Optimality and attainment are not claimed.
