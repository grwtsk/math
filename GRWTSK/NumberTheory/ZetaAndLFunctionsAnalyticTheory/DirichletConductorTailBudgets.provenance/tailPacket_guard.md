# `tailPacket_guard`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.tailPacket_guard`.
Canonical source: [../DirichletConductorTailBudgets.lean](../DirichletConductorTailBudgets.lean).
Source SHA-256: `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b`.

## Statement and primary argument

For every original rational Packet P, natural H and rational weights w_i>=0, P.Guard implies (tailPacket P H w).Guard.

The extra radius b(H)*w_i*w_j is nonnegative and symmetric. Add it to the old radius; the tolerance is unchanged. This proves exactly the three existing guard clauses.

## Source comparison, consumer and limits

Local standard consequence, not an assertion of novelty or a theorem attributed to the motivating monograph. Exact dependencies, dated source comparison, proof-status boundaries and reproduction commands are in [README.md](README.md). The consumer is the original finite interval checker and conductor-filtered source return, not an auxiliary positive Weil form.

Guard checks radius arithmetic, not source correctness. Even a guarded zero-height packet has no access to tailPacket_encloses unless H>=4 is proved.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Lean elaboration/build, fresh kernel replay, transitive axiom audit and independent analytical review: `NOT_RUN`. The written argument and Lean script express the same reasoning, not independent proofs. No previous source status is promoted.
