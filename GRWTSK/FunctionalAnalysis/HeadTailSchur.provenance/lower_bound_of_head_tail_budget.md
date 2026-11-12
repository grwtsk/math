# lower_bound_of_head_tail_budget

By grwtsk contributors.

Declaration:
`GRWTSK.FunctionalAnalysis.HeadTailSchur.lower_bound_of_head_tail_budget`.
Maintained source: [../HeadTailSchur.lean](../HeadTailSchur.lean).

Statement: for real value,a,b,c,s,x,y, the hypotheses
`a*x^2-2*b*x*y+c*y^2<=value`, `s<c`, and
`b^2<=(a-s)*(c-s)` imply `s*(x^2+y^2)<=value`.
Proof: apply `schur_quadratic_nonneg` to a-s,b,c-s, and rearrange.
No continuity, spectral identification, matrix positivity, or arithmetic estimate
is assumed to have been proved by this scalar result.

Actual consumer: Theorem 1 of `PrimitiveWeilNeumannSchur.md` in
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/`.
There x,y are norms of the Neumann head and its orthogonal complement; the
analytical decomposition supplies the full lower budget, the cross-norm bound,
and the high-mode lower bound. Those functional-analytic suppliers are written
arguments, not formalized dependencies of this theorem. An actual numerical
application additionally needs source-exact interval enclosures and a finite
matrix certificate. Universal existence for every character, window and tolerance
is NOT concluded.

Primary comparator: Hongmin Li, *Cutoff-free positivity of localized Weil forms
through the (log 11)/2 threshold*, rStation paper 45 v2, 9 November 2026,
section 4, equation (4.9). The local scalar statement is a direct specialization
of the classical block square-completion mechanism, not a new mathematical claim.
https://rstation.ai/problems/riemann_hypothesis/papers/45

Pinned local comparison: math main daa8c88b644cf40ada77e76739d84f749068ffde.
Lean v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: math#1801, scope comment 6814361620.

Evidence: SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom
audit, independent review and repository validation: NOT_RUN. Novelty:
UNASSESSED; none claimed. No RH/GRH or positive arithmetic certificate follows
without the explicitly retained hypotheses.
