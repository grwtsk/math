# GRWTSK.LinearAlgebra.NegativeIndexBounds.hasNegativeFrame_of_strict_negative

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** The same Q(0)=0, linear L and all-nonzero-coefficient strict sign as injective_of_strict_negative.

**Primary argument:** Use the preceding injectivity theorem and the supplied strict-negative hypothesis as the two fields of the pre-existing HasNegativeFrame witness. The source definition is not changed.

**Consumer:** The error-safe matrix and weighted-pairing consumers in this increment.

**Hostile control/limits:** The full coefficient quantifier is indispensable. A separately negative list need not span a negative-definite subspace.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
