# kernel_norm

Private source identifier `kernel_norm`, namespace `GRWTSK.MeasureAndIntegration.FourierCollisionBound`, [source line 52](../FourierCollisionBound.lean#L52). Generated private kernel name: not asserted before elaboration.

Statement: for every z in C and real t, norm(exp(I*z*t))=exp(-Im(z)*t). No support or sign premise.
Argument: rewrite `Complex.norm_exp` and compute the real part of I*z*t using `Complex.mul_re` and `Complex.mul_im`. This retains the full complex location, not only its ordinate.
Consumers: `integrand_norm_le`, `norm_kernel_difference_le`.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`.
Local elementary consequence for the 2026-11-11 RP-OC-02 mandate; exact attachment digest, pinned source paths, primary analytical argument and remaining arithmetic bridge are in [README](README.md). Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream authorship/Apache-2.0 retained. Local attribution/license: grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. No RH/GRH conclusion.
