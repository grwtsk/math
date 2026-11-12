# weilLocalCoefficient

Record version: 1. Attribution: grwtsk contributors (MIT).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weilLocalCoefficient`.
Maintained typed statement and proof: [WeilRectangleRegularization.lean](../WeilRectangleRegularization.lean).
Inspection base: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Statement and domain

For positive N, chi : DirichletCharacter C N, W : C -> C and a : C, define c(a): at a=0 OR a=1 it is -W(a) when N=1 and 0 otherwise; elsewhere it is analyticOrderNatAt (LFunction chi) a, cast to C, times W(a). Residue interpretation is proved only on the actual finite source set.

## Primary provenance and consumer

The original analytic-order definition and DirichletLogarithmicResidues signed zeta factorizations. No residue meaning is assigned to arbitrary totalized orders elsewhere. Consumed by weighted_completed_source_principal_parts and weil_principal_sum_eq. See README sections 3-4.

Full argument, exact source blobs, normalization, falsification and remaining
obligations: [README](README.md). No external paper proof is claimed to have
been ported. Prior-art comparison dated 2026-11-11: reuse of the identified
classical/formal inputs, not a novelty claim or exhaustive absence search.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain their
status. This record does not promote the full residue formula or RH/GRH to a
proved result. It is source-local provenance, not a new frontier claim ID.
