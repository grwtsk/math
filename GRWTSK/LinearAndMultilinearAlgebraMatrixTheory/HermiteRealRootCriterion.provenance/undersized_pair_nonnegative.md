# `GRWTSK.HermiteRealRootCriterion.undersized_pair_nonnegative`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** The one-by-one Hermite truncation of the explicit nodes `+i,-i` with unit weights is nonnegative, despite the two nonreal distinct locations.

**Primary argument.** Evaluate the finite sums: the sole moment is two and the quadratic value is `2(v_0)^2`, hence nonnegative.

**Correspondence and consumer.** Synthetic hostile control for the dimension premise of the classical criterion, not a new external paper theorem. The existing `pairNodes 0 1` gives the stated locations. It prevents treating too few moments or coefficient slots as a complete real-rootedness certificate.

This pair is not claimed to be an arithmetic zero divisor. Exact pins, unrun reproduction and common limitations: [principal record](nonnegative_iff_real_support.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, kernel replay, axiom audit and independent review `NOT_RUN`. This is a source control, not an executed numerical test.
