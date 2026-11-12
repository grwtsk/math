# completed_source_ne_zero_closed_right

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.completed_source_ne_zero_closed_right`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For every positive level N, chi : DirichletCharacter C N and s : C, (chi != 1 OR s != 1) and 1 <= Re(s) imply completedLFunction chi s != 0. The exceptional alternative is retained.

## Primary provenance and consumer

Michael Stoll, Mathlib NumberTheory/LSeries/Nonvanishing.lean, LFunction_ne_zero_of_one_le_re; exact gamma completion and gammaFactor_regular_of_re_pos in DirichletLogarithmicResidues. Consumed by open-strip localization and endpoint regularity. See README section 1.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
