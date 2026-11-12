# completed_source_zero_in_open_strip

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.completed_source_zero_in_open_strip`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For every positive level N, primitive chi and s : C with s != 0, s != 1 and completedLFunction chi s = 0, prove LFunction chi s = 0 AND 0 < Re(s) < 1. No restriction on Im(s), simplicity or distance from the critical line.

## Primary provenance and consumer

Stoll closed-half-plane nonvanishing; Loeffler/Stoll IsPrimitive.completedLFunction_one_sub; rootNumber_ne_zero_from_completed_source and exact nonzero gamma completion. Apply the dual-character equation at 1-s. Consumed by the complete finite inventory. See README sections 1-2.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
