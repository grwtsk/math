# `fourthTailBudget_dyadic`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.fourthTailBudget_dyadic`.
Canonical source: [../DirichletConductorTailBudgets.lean](../DirichletConductorTailBudgets.lean).
Source SHA-256: `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b`.

## Statement and primary argument

For every natural k, (fourthTailBudget (4*2^k) : Real) = (5/72)*(1/4)^k.

Cast the natural height exactly and expand (4*2^k)^2=16*4^k. Then 10/(9*16*4^k)=(5/72)*(1/4)^k. All denominators are nonzero; no asymptotic or floating-point step occurs.

## Source comparison, consumer and limits

Local standard consequence, not an assertion of novelty or a theorem attributed to the motivating monograph. Exact dependencies, dated source comparison, proof-status boundaries and reproduction commands are in [README.md](README.md). The consumer is the original finite interval checker and conductor-filtered source return, not an auxiliary positive Weil form.

k=0 gives height four and exact price 5/72. The schedule is sufficient, not asserted optimal.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Lean elaboration/build, fresh kernel replay, transitive axiom audit and independent analytical review: `NOT_RUN`. The written argument and Lean script express the same reasoning, not independent proofs. No previous source status is promoted.
