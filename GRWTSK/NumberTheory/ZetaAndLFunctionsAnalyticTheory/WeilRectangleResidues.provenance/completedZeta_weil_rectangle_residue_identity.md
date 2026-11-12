# `completedZeta_weil_rectangle_residue_identity`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**, with no novelty claim.
The mathematical argument is written; Lean elaboration, fresh kernel replay,
transitive axiom audit, independent review and repository-wide checks are
**NOT_RUN**. Imported source candidates retain their own evidence status.

Inspected math source base: `7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No default-root import or dependency pin is changed.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).


Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.completedZeta_weil_rectangle_residue_identity`.
Maintained file: [../WeilRectangleResidues.lean](../WeilRectangleResidues.lean); SHA-256 `294284f38f79a294864e46cfcb7e7f81988a1471b9e758b0a1850413edd1464a`.

## Typed claim and retained domain

For T>0 avoiding completedRiemannZeta zeros on |Im(s)|=T and the original admissible correlation weight, normalized B(W logDeriv completedRiemannZeta) equals the original conductor-one multiplicity sum minus W(0)-W(1).

## Argument and primary provenance

Consume completedZeta_weil_rectangle_regularization literally, and use completedLFunction_modOne_eq. No pole-neutral restriction, central-zero exclusion or simplicity is imposed.

WeilRectangleRegularization.completedZeta_weil_rectangle_regularization; Mathlib DirichletCharacter.completedLFunction_modOne_eq; the new finite kernel theorem.

Consumer: Conductor-one source return retained inside primitive Dirichlet GRH, not a substitute family.

## Comparison, limitations and evidence

This is a local consequence/assembly from the identified formal sources, not a
claimed new paper theorem. Upstream attribution and license remain unchanged.
See [README.md](README.md) for the full analytical proof, distinct orientation
check, exact revision links, imported evidence boundary and open obligations.
The source proof has not been elaborated or kernel-audited; publication and
source hashes establish only source identity. Independent review: NOT_RUN.
