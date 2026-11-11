# GRWTSK.LinearAlgebra.NegativeIndexBounds.separate_negative_vectors_counterexample

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** The literal real form q(x,y)=-x^2-y^2+4xy on R^2.

**Primary argument:** Direct evaluation gives q(1,0)=q(0,1)=-1 but q(1,1)=2. Hence two independent negative vectors need not span a negative-definite subspace.

**Consumer:** Regression guard for matrix and transform frame certificates.

**Hostile control/limits:** Synthetic exact algebra, not an arithmetic counterexample or an executed numerical experiment. The Lean proof script has not been elaborated.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
