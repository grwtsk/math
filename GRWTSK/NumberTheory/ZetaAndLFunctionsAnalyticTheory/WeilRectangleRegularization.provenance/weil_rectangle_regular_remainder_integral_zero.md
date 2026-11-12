# weil_rectangle_regular_remainder_integral_zero

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_rectangle_regular_remainder_integral_zero`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For G : C -> C, T : R with T >= 0 and AnalyticOnNhd C G R_T, prove bottom integral minus top integral plus i times right integral minus i times left integral equals zero, exactly as equation (2) in README.

## Primary provenance and consumer

Yury Kudryashov, pinned Mathlib Analysis/Complex/CauchyIntegral.lean, integral_boundary_rect_eq_zero_of_differentiableOn. The actual analytic remainder supplies continuity, differentiability and compact-edge integrability; unordered intervals are reduced using -T <= T. Does not evaluate any principal kernel. See README section 5.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
