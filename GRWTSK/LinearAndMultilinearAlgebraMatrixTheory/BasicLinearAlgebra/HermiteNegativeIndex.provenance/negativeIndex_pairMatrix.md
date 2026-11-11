# GRWTSK.LinearAlgebra.HermiteNegativeIndex.negativeIndex_pairMatrix

Local mathematical attribution: grwtsk contributors.
Source: [HermiteNegativeIndex.lean](../HermiteNegativeIndex.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** The literal Program-6 pairMatrix(a,b)=[[2,2a],[2a,2(a^2-b^2)]], with real b!=0, and real negative index.

**Primary argument:** Observe the second coefficient. On its kernel the quadratic value is 2*v_0^2>=0, so index<=1. The existing vector (-a,1) has value -2*b^2<0; zero value and homogeneity give a negative line. The matching certificates prove index=1.

**Consumer:** Multiplicity/collision guard for Program 3, consuming the actual Program-6 control rather than a renamed model.

**Hostile control/limits:** This is a finite synthetic moment matrix, not a Weil form or actual arithmetic zero divisor. It does not prove the general Hermite inertia formula.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
