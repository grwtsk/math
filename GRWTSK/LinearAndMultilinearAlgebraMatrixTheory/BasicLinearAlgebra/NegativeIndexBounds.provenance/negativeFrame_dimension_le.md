# GRWTSK.LinearAlgebra.NegativeIndexBounds.negativeFrame_dimension_le

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** W is finite-dimensional over the declared field K; the full observation kernel is nonnegative; an n-dimensional negative frame of Q is supplied.

**Primary argument:** The prior theorem injects K^n into W. Apply the pinned Mathlib LinearMap.finrank_le_finrank_of_injective and the actual finite-Pi dimension formula to obtain n<=finrank_K W. V need not be finite-dimensional.

**Consumer:** Upper bounds on the ENat negative index without assuming that index is already finite.

**Hostile control/limits:** FiniteDimensional K W cannot be omitted: finrank on an infinite-dimensional module is not an upper dimension bound. Real and complex dimensions must not be interchanged.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
