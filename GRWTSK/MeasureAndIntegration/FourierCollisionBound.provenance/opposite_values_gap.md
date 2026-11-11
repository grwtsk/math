# opposite_values_gap

Private source identifier `opposite_values_gap`, namespace `GRWTSK.MeasureAndIntegration.FourierCollisionBound`, [source line 181](../FourierCollisionBound.lean#L181). Generated private kernel name not asserted.

For every a,b in C and real ea,eb, norm(a-1)<=ea and norm(b+1)<=eb imply 2-ea-eb<=norm(a-b). The norm premises already force nonnegative errors. Write 2=(1-a)+(a-b)+(b+1), apply `norm_add_le` twice and `norm_sub_rev`, then combine the inequalities. No nonzero displacement or smallness premise is needed.
Consumer: `interpolation_cost`, whose arguments are the actual Fourier integrals, not an assumed evaluator.

Source blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; SHA-256 `7c3bf114ba2cba68f3ab5ef0dedf23c588cc40dc8c99b4171315cc583e490053`. Local consequence for the 2026-11-11 RP-OC-02 mandate; full digest/source map in [README](README.md). Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, upstream Apache-2.0 retained; local grwtsk contributors/MIT.

SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, kernel replay, transitive axioms, independent review and arithmetic certification NOT_RUN. This elementary gap is not itself the signed-pair margin theorem.
