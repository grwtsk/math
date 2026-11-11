# `GRWTSK.HermiteRealRootCriterion.exists_negative_enclosure_of_nonreal`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** Assume conjugation-closed positive weighted finite support, `n >= card S`, a nonreal support node, and two-sided lower/upper enclosures of the exact matrix quadratic value for every real vector. If widths can be arbitrarily small for each vector, some vector and some accuracy have a strictly negative upper endpoint.

**Primary argument.** First construct a negative real vector by `exists_negative_of_nonreal`. Fix this vector and use Program 10 `DenseNonnegativeApproximation.exists_negative_upper_endpoint` with its sound shrinking enclosures. Combine the two existentials.

**Source comparison.** Local composition of the classical Hermite negative direction with Program 10's enclosure consumer, math#1807, at the recorded formal-source pin. This is not an implementation of algebraic rational reconstruction.

**Consumer and limits.** Coefficients are real, not asserted rational or computable. Effective interpolation, a concrete arithmetic enclosure producer, a fair rational dictionary and quantitative termination remain unprovided. The theorem proves existence from its suppliers, not execution of a search or detection of an actual arithmetic zero.

Exact edition, dependency pins, unrun build command and shared evidence: [principal record](nonnegative_iff_real_support.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, transitive axiom audit and independent review `NOT_RUN`.
