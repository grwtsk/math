# `checked_tailPacket_scaled_source_lower`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.checked_tailPacket_scaled_source_lower`.
Canonical source: [../DirichletConductorTailBudgets.lean](../DirichletConductorTailBudgets.lean).
Source SHA-256: `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b`.

## Statement and primary argument

Under tailPacket_encloses hypotheses and acceptance by the existing intervalCheck, if log(2*q)*quadratic(full,x)<=source(x) for every real x, then -P.tolerance*log(2*q)*quadratic(P.metric,x)<=source(x) for every x.

Use the original checked_enclosure_lower on the enlarged packet. Multiply its lower bound by positive log(2*q), then apply the explicitly supplied lower comparison with the original source. No inequality between Q/log(2*q) and Q is assumed.

## Source comparison, consumer and limits

Local standard consequence, not an assertion of novelty or a theorem attributed to the motivating monograph. Exact dependencies, dated source comparison, proof-status boundaries and reproduction commands are in [README.md](README.md). The consumer is the original finite interval checker and conductor-filtered source return, not an auxiliary positive Weil form.

Restoring the positive conductor scale is essential when the unknown source value might be negative. The metric may be singular. Original-source identification, all active prime powers, gamma/parity and applicable poles cannot be supplied by a packet label.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Lean elaboration/build, fresh kernel replay, transitive axiom audit and independent analytical review: `NOT_RUN`. The written argument and Lean script express the same reasoning, not independent proofs. No previous source status is promoted.
