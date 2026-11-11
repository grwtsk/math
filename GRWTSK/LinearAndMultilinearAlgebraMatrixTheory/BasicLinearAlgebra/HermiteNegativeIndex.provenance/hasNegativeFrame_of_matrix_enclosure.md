# GRWTSK.LinearAlgebra.HermiteNegativeIndex.hasNegativeFrame_of_matrix_enclosure

Local mathematical attribution: grwtsk contributors.
Source: [HermiteNegativeIndex.lean](../HermiteNegativeIndex.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** H,M,E are actual finite real matrices with abs(H_ij-M_ij)<=E_ij; L is linear; q_M(Lx)+errorBudget(E,Lx)<0 for every nonzero coefficient vector.

**Primary argument:** Apply Program-6 negative_of_errorBudget to each complete linear combination. The actual q_H vanishes at zero, so strict negativity proves injectivity and constructs an n-frame of q_H.

**Consumer:** Certified lower bounds on negative index from a proposed finite trial frame, compatible with the finite-observation upper bound.

**Hostile control/limits:** Every mixed entry error is retained. An indefinite midpoint matrix or independently negative basis values alone does not satisfy the hypothesis. No numerical enclosures were computed here.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
