# negative_generators_can_have_positive_sum

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.NegativeFramePerturbation.negative_generators_can_have_positive_sum` in [canonical source](../NegativeFramePerturbation.lean), exact blob `ad1027a32525519477026631827daeab4c29f16b`.

Statement: define q:Real x Real->Real by q(x,y)=-x^2-y^2+4xy. Then q(1,0)=-1, q(0,1)=-1 and q(1,1)=2. There are no arithmetic hypotheses.

Primary argument: exact scalar evaluation, encoded with norm_num. Consumer: hostile check for whole-subspace negativity and the need to retain mixed terms. The two displayed generators are individually negative but their sum is positive, so counting negative samples cannot certify the dimension of a negative subspace. Comparison: elementary indefinite quadratic-form example, not novel and not a counterexample to GRH. An encoded proof body is not a report of an executed Lean check.

Source pins and reproduction: [principal record](hasNegativeFrame_of_weighted_approximation.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN.
