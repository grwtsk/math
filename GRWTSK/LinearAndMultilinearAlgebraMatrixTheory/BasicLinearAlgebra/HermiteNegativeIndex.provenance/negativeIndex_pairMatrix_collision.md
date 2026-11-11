# GRWTSK.LinearAlgebra.HermiteNegativeIndex.negativeIndex_pairMatrix_collision

Local mathematical attribution: grwtsk contributors.
Source: [HermiteNegativeIndex.lean](../HermiteNegativeIndex.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** The same Program-6 pair matrix with b=0; the parameter a is arbitrary real.

**Primary argument:** Reuse pairMatrix_nonnegative_iff to obtain nonnegativity on all coefficient vectors, then apply negativeIndex_eq_zero_of_nonneg.

**Consumer:** Collision boundary control paired with the exact off-axis index-one theorem.

**Hostile control/limits:** Index zero does not assert invertibility, strict positivity or trivial radical. The double collision is deliberately retained.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
