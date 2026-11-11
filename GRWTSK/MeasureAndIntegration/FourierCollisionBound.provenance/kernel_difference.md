# kernel_difference

Private source identifier `kernel_difference` in namespace `GRWTSK.MeasureAndIntegration.FourierCollisionBound`, [source line 105](../FourierCollisionBound.lean#L105). Generated private kernel name is not guessed.

For all real xi,eta,t the exact difference of exponential kernels at xi +/- I*eta factors as exp(I*xi*t)*(exp(-eta*t)-exp(eta*t)), the latter real factor embedded in C. Both imaginary displacements remain in the identity. Compute each phase using `Complex.ext`, apply `Complex.exp_add` twice, use `Complex.ofReal_exp` and `Complex.ofReal_sub`, and factor algebraically.
Consumer: `norm_kernel_difference_le`.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Local elementary consequence for the 2026-11-11 RP-OC-02 mandate; exact statement source and dependency locators in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream Apache-2.0 retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and arithmetic source certification NOT_RUN. This is a kernel identity, not the arithmetic explicit formula.
