# A finite noncircular error budget for the two-block comparison

Local attribution: grwtsk contributors.

The actual SU2 plaquette penalty e_p lies in [0,2] under the actual normalized
finite Wilson law. The new source candidate uses Mathlib's bounded-variable
variance estimate to obtain Var(e_p)<=1. Nonnegativity of Var(e_p+e_q) and
Var(e_p-e_q), together with their exact covariance expansions, then gives
|Cov_W(e_p,e_q)|<=1. No Wilson correlation bound is assumed.

Insert that estimate into the existing complete signed-pair comparison. With
M(B,C)=sum(p in B,q in C)|1-mu(ell p)*mu(ell q)|, the candidate gives

    |C_W(B,C)-C_marked(B,C)| <= M(B,C) <= 2 |B| |C|.

The second inequality uses the genuine integer Mobius bound |mu(n)|<=1,
transported to the reals. No squareful zero or negative coefficient is removed.
Empty blocks yield zero budget. Equal nonzero marks give zero pair mismatch,
opposite marks give weight two, and a squareful mark gives weight one.
The budget is explicit and finite; it is not an assumed small residual.

The pairwise constant one is sharp for generic bounded random variables:
a fair common binary energy taking values 0,2 has covariance one, and the
opposite binary energy has covariance minus one. These examples do not assert
that any actual separated Wilson plaquettes realize those extremes. Finite
rational checks of endpoint laws are external sanity evidence, not Lean or
Wilson-Haar verification.

No coefficient depends on physical separation. For nonempty blocks, dividing
the energies by block cardinalities turns the crude discrepancy budget into
at most two, rather than a quantity tending to zero at long distance. Therefore
this range estimate alone cannot establish exponential clustering. Generic
boundedness cannot supply the missing spatial information.

The next analytic improvement must use actual Wilson structure: for example a
proved relation of these block observables to the actual transfer operator and
control of correlations at separated times, or a supported coupling expansion
with all applicable hypotheses. Arithmetic signs or an abstract RH assertion do
not by themselves constrain these geometry-dependent random variables.
An original-RH-response transport and a proved RH-to-required-estimate direction
remain unpaid; this increment supplies neither. Physical scaling, the relevant
observable class and nontrivial continuum reconstruction remain separate.

Baseline math commit: a50d44327f7ffb046fd539e60ac787d6ba911bae.
Source: WilsonBlockCovarianceBudget.lean in the canonical 81T25 subject folder.
The static target binds its source blob, digest and exact declarations.
All new declarations remain SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel
replay, transitive axiom auditing and expected-interface checking are NOT_RUN.
No new paper theorem is formalized. Recurring research remains paused.
