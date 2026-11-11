# `GRWTSK.HermiteRealRootCriterion.unpaired_node_counterexample`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** The singleton node `i` with weight one has a nonnegative one-by-one real-part Hermite matrix, and `Im(i)` is nonzero.

**Primary argument.** The matrix is `[1]`, so its value is `(v_0)^2`. Directly compute `Im(i)=1`.

**Correspondence and consumer.** Synthetic hostile control for conjugation closure, separate from the insufficient-dimension control. Dimension equal to support size is not enough without the real structure. This is not a direct external paper theorem or an arithmetic observation.

Exact pins and unrun reproduction: [principal record](nonnegative_iff_real_support.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, kernel replay, transitive axiom audit and independent review `NOT_RUN`. No novelty or GRH claim.
