# `re_neg_of_fourth_tail_budget`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.re_neg_of_fourth_tail_budget`.
Canonical source: [../DirichletConductorTailBudgets.lean](../DirichletConductorTailBudgets.lean).
Source SHA-256: `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b`.

## Statement and primary argument

For q>=2, H>=4, complex value and head, real weight>=0 and eta: head.re<=-eta and norm(value-head)<=weight*U_4(q,H)/log(2*q), together with weight*b(H)<eta, imply value.re<0.

Multiply the rational scalar ceiling by the nonnegative weight, then invoke Program 2 re_neg_of_error_budget for the full complex value. Both a head sign and the entire remaining error are consumed.

## Source comparison, consumer and limits

Local standard consequence, not an assertion of novelty or a theorem attributed to the motivating monograph. Exact dependencies, dated source comparison, proof-status boundaries and reproduction commands are in [README.md](README.md). The consumer is the original finite interval checker and conductor-filtered source return, not an auxiliary positive Weil form.

Strict inequality is necessary for strict negativity: head=-1, value=0, error=eta=1 gives equality and no negative full value. This is a synthetic boundary case, not an arithmetic zero.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Lean elaboration/build, fresh kernel replay, transitive axiom audit and independent analytical review: `NOT_RUN`. The written argument and Lean script express the same reasoning, not independent proofs. No previous source status is promoted.
