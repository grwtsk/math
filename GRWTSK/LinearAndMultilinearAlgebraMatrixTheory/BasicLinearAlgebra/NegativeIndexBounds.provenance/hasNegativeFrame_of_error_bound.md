# GRWTSK.LinearAlgebra.NegativeIndexBounds.hasNegativeFrame_of_error_bound

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** Q(0)=0; L:K^n ->_K V is linear over a normed field; model(x)<=-margin*norm(x)^2 and abs(Q(Lx)-model(x))<=error*norm(x)^2 for every x; error<margin.

**Primary argument:** For x!=0, norm(x)^2>0. The upper error inequality gives Q(Lx)<=-(margin-error)*norm(x)^2<0. Derive injectivity using Q(0)=0 and construct the existing frame. No separate perturbation-injectivity assumption is needed.

**Consumer:** Program-2 whole-divisor uniform error bound composed with an n-dimensional negative model.

**Hostile control/limits:** The inequality is uniform on all linear combinations in the declared coefficient norm, not an entrywise or basis-only claim. At error=margin the allowed perturbation may erase negativity, as the explicit equality counterexample shows.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
