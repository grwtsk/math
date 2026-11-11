# GRWTSK.LinearAlgebra.HermiteNegativeIndex.quadraticValue_smul

Local mathematical attribution: grwtsk contributors.
Source: [HermiteNegativeIndex.lean](../HermiteNegativeIndex.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** Finite real matrix H, real scalar c and real coefficient vector v.

**Primary argument:** Each summand acquires c^2 from the two coefficients. Distribute multiplication across both finite sums and use abs(c)^2=c^2. No matrix symmetry is required.

**Consumer:** Use the existing negative-vector-to-negative-line theorem with Program-6 matrices.

**Hostile control/limits:** The statement is over R. Complex Hermitian forms require conjugate rather than ordinary scalar-square homogeneity; no real/complex index identification is claimed.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
