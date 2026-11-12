# `weil_rectangle_residue_identity`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**, with no novelty claim.
The mathematical argument is written; Lean elaboration, fresh kernel replay,
transitive axiom audit, independent review and repository-wide checks are
**NOT_RUN**. Imported source candidates retain their own evidence status.

Inspected math source base: `7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No default-root import or dependency pin is changed.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).


Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.weil_rectangle_residue_identity`.
Maintained file: [../WeilRectangleResidues.lean](../WeilRectangleResidues.lean); SHA-256 `294284f38f79a294864e46cfcb7e7f81988a1471b9e758b0a1850413edd1464a`.

## Typed claim and retained domain

For each primitive chi, T>0 avoiding all completed-source zeros on |Im(s)|=T, and entire W, normalized B(W logDeriv completedLFunction chi) is the original heightWindow multiplicity sum minus delta(N=1)*(W(0)+W(1)).

## Argument and primary provenance

The original entire-weight regularization constructs G. Its Cauchy-Goursat theorem supplies B(G)=0. Typed zero slots plus two signed endpoint slots are integrated by the general kernel theorem.

WeilRectangleRegularization.exists_weil_rectangle_regularization and weil_rectangle_regular_remainder_integral_zero; RectangleKernelIntegral.boundaryIntegral_finite_expansion. Exact namespaces, blobs and pins are in README.md.

Consumer: Finite contour source return before infinite Weil evaluation; no positivity conclusion.

## Comparison, limitations and evidence

This is a local consequence/assembly from the identified formal sources, not a
claimed new paper theorem. Upstream attribution and license remain unchanged.
See [README.md](README.md) for the full analytical proof, distinct orientation
check, exact revision links, imported evidence boundary and open obligations.
The source proof has not been elaborated or kernel-audited; publication and
source hashes establish only source identity. Independent review: NOT_RUN.
