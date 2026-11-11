# `tailPacket_encloses`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.tailPacket_encloses`.
Canonical source: [../DirichletConductorTailBudgets.lean](../DirichletConductorTailBudgets.lean).
Source SHA-256: `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b`.

## Statement and primary argument

For every q>=2, integer H>=4, original Packet P, nonnegative rational weights w, and real matrices full,head: if P encloses head and each |full_ij-head_ij| is at most w_i*w_j*U_4(q,H)/log(2*q), then tailPacket P H w encloses full.

Multiply the scalar envelope bound by the nonnegative weight product. Add the independently supplied head-enclosure bound using the triangle inequality. Cast and rearrange the sum to the exact new rational radius; center, metric and tolerance are untouched.

## Source comparison, consumer and limits

Local standard consequence, not an assertion of novelty or a theorem attributed to the motivating monograph. Exact dependencies, dated source comparison, proof-status boundaries and reproduction commands are in [README.md](README.md). The consumer is the original finite interval checker and conductor-filtered source return, not an auxiliary positive Weil form.

The actual omitted-tail inequality remains a premise. A finite list of zeros does not establish it or its completeness. Complex use requires full realification, including imaginary off-diagonal entries.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Lean elaboration/build, fresh kernel replay, transitive axiom audit and independent analytical review: `NOT_RUN`. The written argument and Lean script express the same reasoning, not independent proofs. No previous source status is promoted.
