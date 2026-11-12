# weil_boundary_not_mem_singularSet

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_boundary_not_mem_singularSet`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For positive N, primitive chi, T > 0 and s : C satisfying Re(s)=-1 OR Re(s)=2 OR abs(Im(s))=T, prove s is outside S_T. Thus every point of all four edges and corners is covered, not just finitely many samples.

## Primary provenance and consumer

Canonical strict strip and mem_heightWindow bounds plus exact endpoint locations. Every member of S_T has -1 < Re(s) < 2 and abs(Im(s)) < T. Consumer: evaluation of identity (1) on the entire contour. See README section 2.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
