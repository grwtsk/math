# `kernel_boundary_ne_zero`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**, with no novelty claim.
The mathematical argument is written; Lean elaboration, fresh kernel replay,
transitive axiom audit, independent review and repository-wide checks are
**NOT_RUN**. Imported source candidates retain their own evidence status.

Inspected math source base: `7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No default-root import or dependency pin is changed.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).


Declaration: `GRWTSK.Analysis.ComplexAnalysis.RectangleKernelIntegral.kernel_boundary_ne_zero`.
Maintained file: [../RectangleKernelIntegral.lean](../RectangleKernelIntegral.lean); SHA-256 `08305c7c9e65acb240bed3df81a9915eba2f4877b4cff3bf926793b0d1365cb3`.

## Typed claim and retained domain

For every real l,r,b,u and complex a strictly inside the rectangle, every point on any of the four boundary lines has z-a != 0.

## Argument and primary provenance

Strict interior inequalities are retained; equality to a contradicts a coordinate inequality. No nonvanishing assumption is hidden.

Elementary ordered-field reasoning and Complex coordinate projections; the boundary exclusion argument is local, not an imported residue theorem.

Consumer: kernel_edge_integrable and the finite residue boundary comparison.

## Comparison, limitations and evidence

This is a local consequence/assembly from the identified formal sources, not a
claimed new paper theorem. Upstream attribution and license remain unchanged.
See [README.md](README.md) for the full analytical proof, distinct orientation
check, exact revision links, imported evidence boundary and open obligations.
The source proof has not been elaborated or kernel-audited; publication and
source hashes establish only source identity. Independent review: NOT_RUN.
