# `GRWTSK.HermiteRealRootCriterion.zero_weight_counterexample`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** The nodes `+i,-i` with zero weights have a nonnegative two-by-two Hermite matrix, while the first node is nonreal.

**Primary argument.** Every weighted moment and quadratic value is zero. Compute the first explicit node's imaginary part as one.

**Correspondence and consumer.** Synthetic hostile control for strict positivity of the support weights. It blocks silently erasing nonreal nodes through zero weights while concluding reality of the original support. The data are not a positive analytic zero divisor and are not an arithmetic counterexample.

Exact pins, unrun reproduction command and shared limitations: [principal record](nonnegative_iff_real_support.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, axiom audit and independent review `NOT_RUN`. No novelty claim.
