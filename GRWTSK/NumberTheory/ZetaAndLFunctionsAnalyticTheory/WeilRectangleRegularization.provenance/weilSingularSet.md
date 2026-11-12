# weilSingularSet

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weilSingularSet`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For every positive level N, primitive chi and T : R, define a Finset C by inserting 0 and 1 into the image under Subtype.val of the existing heightWindow chi hprim T. Endpoint slots need not be singular at non-zeta levels.

## Primary provenance and consumer

DirichletZeroMultiplicity.heightWindow and its compact-finiteness proof; Finset.image and insert. Subtype injectivity prevents collisions, and strict strip membership separates the endpoints. Consumed by the complete inventory, weighted local parts and finite subtraction. See README section 2.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
