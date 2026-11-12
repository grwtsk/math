# exists_primitive_weil_rectangle_regularizations

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.exists_primitive_weil_rectangle_regularizations`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For every positive N and primitive chi, there exists one T : Nat -> R with n+2<T(n)<n+3 for ALL n, such that for EVERY admissible f, EVERY A>=0 supporting f in [-A,A], and EVERY n, there exists an analytic G on R_T(n), satisfying the exact identity (1) outside S_T(n) for the literal W_f and the zero four-edge integral (2).

## Primary provenance and consumer

DirichletCompletedHorizontalLogDerivative.exists_horizontal_completedLFunction_logDeriv_bound chooses T BEFORE tests; WeilContourWeight.analyticOnNhd_correlation_contour_weight proves entire W_f. The preceding finite source theorem and Cauchy-Goursat finish this subresult. No extra growth, inventory or remainder supplier is a premise. See README section 6.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
