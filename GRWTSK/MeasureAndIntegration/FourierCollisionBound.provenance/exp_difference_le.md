# exp_difference_le

Private source identifier `exp_difference_le`, namespace `GRWTSK.MeasureAndIntegration.FourierCollisionBound`, [source line 120](../FourierCollisionBound.lean#L120). Generated private name not asserted.

For all real u,v with abs(u)<=v, abs(exp(-u)-exp(u)) <= 2*sinh(v). From -v<=u<=v obtain four exponential order comparisons and use both halves of `abs_le`. `Real.sinh_eq` fixes the normalization. There is no division by a variable and no hidden sign premise.
Reuses `Real.exp_le_exp`, `Real.sinh_eq`, `abs_le`. Consumer: `norm_kernel_difference_le`.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Local elementary consequence for the 2026-11-11 RP-OC-02 mandate; source digest and exact pinned primary locators in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream Apache-2.0 retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. No upper interpolation cost or arithmetic positivity is inferred.
