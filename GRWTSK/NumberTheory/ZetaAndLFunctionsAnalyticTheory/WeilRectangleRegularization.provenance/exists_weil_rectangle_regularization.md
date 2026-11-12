# exists_weil_rectangle_regularization

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.exists_weil_rectangle_regularization`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For positive N, primitive chi, T : R, entire W and nonvanishing of the actual completion at EVERY point with abs(Im(s))=T, construct G : C -> C analytic on a neighborhood of every point of R_T, with the exact pole-inclusive identity (1) in README at EVERY s outside S_T.

## Primary provenance and consumer

Existing FinitePoleSubtraction.finite_pole_subtraction, with both premises DISCHARGED by completed_source_regular_off_weilSingularSet and weighted_completed_source_principal_parts. weil_principal_sum_eq returns to the original typed zero window. Consumer: Cauchy-Goursat and the future finite residue identity. See README sections 2-5.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
