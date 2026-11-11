# `exists_uniform_fourth_tail_cutoff`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.exists_uniform_fourth_tail_cutoff`.
Canonical source: [../DirichletConductorTailBudgets.lean](../DirichletConductorTailBudgets.lean).
Source SHA-256: `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b`.

## Statement and primary argument

For every real epsilon>0 there is a natural H>=4 such that for every natural K>=H and every real q>=2, tailEnvelope 4 q K / log(2*q) < epsilon.

Choose k with 2^(-k)<epsilon using the existing dyadic small-error lemma. Take H=4*2^k. For every later K, antitonicity gives b(K)<=b(H)<=2^(-k); compose with the normalized envelope bound.

## Source comparison, consumer and limits

Local standard consequence, not an assertion of novelty or a theorem attributed to the motivating monograph. Exact dependencies, dated source comparison, proof-status boundaries and reproduction commands are in [README.md](README.md). The consumer is the original finite interval checker and conductor-filtered source return, not an auxiliary positive Weil form.

Uniformity is in conductor and later integer height at the fourth moment. Test-function/support weights are not uniformly bounded as support grows, and no other real exponent is covered by this theorem.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Lean elaboration/build, fresh kernel replay, transitive axiom audit and independent analytical review: `NOT_RUN`. The written argument and Lean script express the same reasoning, not independent proofs. No previous source status is promoted.
