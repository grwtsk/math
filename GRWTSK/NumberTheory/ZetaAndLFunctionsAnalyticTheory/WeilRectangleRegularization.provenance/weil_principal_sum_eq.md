# weil_principal_sum_eq

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_principal_sum_eq`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For positive N, primitive chi, every T : R, W : C -> C and s : C, the finite sum over S_T of c(a)/(s-a) equals the original height-window sum m(rho)*W(rho)/(s-rho), minus W(0)/s+W(1)/(s-1) when N=1, and minus zero otherwise. This algebraic identity is not itself a contour theorem.

## Primary provenance and consumer

Canonical zeroMultiplicity and heightWindow; subtype injectivity, endpoint exclusion, Finset.sum_image and Finset.sum_insert. Denominators at source singularities are not used to claim analytic values. Consumed by the literal source-return formula. See README section 4.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
