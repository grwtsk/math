# GRWTSK.LinearAlgebra.NegativeIndexBounds.completedSquare_negativeIndex_le

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** Q(x,y)=S(x)+R(y+Yx), with linear Y, S(0)=R(0)=0 and R>=0. The entire kernel of a finite-dimensional observer on the S-domain is nonnegative.

**Primary argument:** First reuse SchurNegativeIndex.negativeIndex_completedSquare, which identifies the two negative indices by lifting and projecting frames. Then bound the SAME S-index using its nonnegative observation kernel.

**Consumer:** Upper inertia control for the full form after a justified high-block solve, without discarding the Schur coupling.

**Hostile control/limits:** Existence of the analytic high inverse, the exact form-domain identity and the kernel sign are not supplied. A different low compression or uncorrected trial cannot replace S.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
