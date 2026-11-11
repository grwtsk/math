# `GRWTSK.HermiteRealRootCriterion.exists_negative_of_nonreal`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** A nonreal location in a finite conjugation-closed support with strictly positive weights and at least `card S` coefficient slots yields a strictly negative exact matrix quadratic value at some real vector.

**Primary argument.** Apply `exists_pair_separator_value`. Both selected pair weights are positive, so their sum is positive and its negative is strictly negative.

**Source comparison.** The negative direction in Nathanson v2 Theorem 1, extended to positive real weights rather than integer multiplicities. This is classical reasoning, not a novelty assertion. Edition, source pins and unrun reproduction command are in the [principal record](nonnegative_iff_real_support.md).

**Consumer and limits.** Supplies the contradiction for the real-support criterion and a witness for shrinking enclosures. The vector is not asserted rational, computed or effectively searchable. Arithmetic moments and the full Weil form remain unconstructed.

Evidence: `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, transitive axiom audit and independent review `NOT_RUN`.
