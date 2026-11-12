# weighted_completed_source_principal_parts

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weighted_completed_source_principal_parts`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For positive N, primitive chi, T : R and entire W : C -> C, every a in S_T admits B : C -> C analytic at a such that W(s)*logDeriv(completedLFunction chi)(s)=c(a)/(s-a)+B(s) on a punctured neighborhood of a.

## Primary provenance and consumer

DirichletLogarithmicResidues completedLFunction_logDeriv_principal_part and both zeta factorizations; LogarithmicPrincipalPart.exists_analytic_remainder; existing FinitePoleSubtraction.principal_part_mul. Non-zeta endpoint regularity is proved. Supplies analytic germs, not merely residue limits. See README section 3.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
