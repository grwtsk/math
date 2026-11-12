# `exists_primitive_weil_rectangle_residue_identities`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**, with no novelty claim.
The mathematical argument is written; Lean elaboration, fresh kernel replay,
transitive axiom audit, independent review and repository-wide checks are
**NOT_RUN**. Imported source candidates retain their own evidence status.

Inspected math source base: `7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No default-root import or dependency pin is changed.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).


Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.exists_primitive_weil_rectangle_residue_identities`.
Maintained file: [../WeilRectangleResidues.lean](../WeilRectangleResidues.lean); SHA-256 `294284f38f79a294864e46cfcb7e7f81988a1471b9e758b0a1850413edd1464a`.

## Typed claim and retained domain

For every primitive chi there exists T:Nat->Real, n+2<T(n)<n+3, before every admissible f and support bound A, such that the finite residue identity holds for every n with the unchanged correlation weight.

## Argument and primary provenance

Consume exists_primitive_weil_rectangle_regularizations directly. Neither T nor its zero avoidance is reselected after f. Use its actual G, boundary equality and zero remainder integral.

WeilRectangleRegularization.exists_primitive_weil_rectangle_regularizations; the private residue_identity_of_regularization consumer in the maintained module.

Consumer: Subsequent fixed-test infinite-height limit, which is not asserted here.

## Comparison, limitations and evidence

This is a local consequence/assembly from the identified formal sources, not a
claimed new paper theorem. Upstream attribution and license remain unchanged.
See [README.md](README.md) for the full analytical proof, distinct orientation
check, exact revision links, imported evidence boundary and open obligations.
The source proof has not been elaborated or kernel-audited; publication and
source hashes establish only source identity. Independent review: NOT_RUN.
