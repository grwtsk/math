# `GRWTSK.HermiteRealRootCriterion.exists_pair_separator_value`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** For conjugation-closed finite `S`, `n >= card S`, arbitrary real weights `w`, and nonreal `z0` in `S`, there is a real vector `v` with `q_H(v) = -(w(z0) + w(conjugate z0))`, for the complete real-part Hermite support matrix.

**Primary argument.** The selected node and its conjugate are distinct. Prescribe `i,-i,0` at the selected pair and the other nodes. The values are conjugation-compatible, so a real interpolant exists. Substitute into the existing ordinary-square Hermite identity: the two selected contributions are respectively `-w(z0)` and `-w(conjugate z0)`, and all others vanish. The finite subtype sum is evaluated using the two indicator functions.

**Source comparison.** Nathanson v2 Lemma 2 and the converse proof of Theorem 1. Arbitrary real weights are a standard local generalization; equal multiplicities recover `-2m`. The real-part formula does not require equal conjugate weights. Exact edition and dependency pins are in the [principal record](nonnegative_iff_real_support.md).

**Consumer and limits.** Strict negativity follows only when the pair-weight sum is positive. This is a finite Hermite witness, not a compact smooth negative Weil test, a zero-search result, or an arithmetic source identification. Full inertia remains separate.

Evidence: `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, axiom audit and independent review `NOT_RUN`. No novelty or GRH claim.
