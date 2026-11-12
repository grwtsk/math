# `boundaryIntegral_kernel`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**, with no novelty claim.
The mathematical argument is written; Lean elaboration, fresh kernel replay,
transitive axiom audit, independent review and repository-wide checks are
**NOT_RUN**. Imported source candidates retain their own evidence status.

Inspected math source base: `7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No default-root import or dependency pin is changed.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).


Declaration: `GRWTSK.Analysis.ComplexAnalysis.RectangleKernelIntegral.boundaryIntegral_kernel`.
Maintained file: [../RectangleKernelIntegral.lean](../RectangleKernelIntegral.lean); SHA-256 `08305c7c9e65acb240bed3df81a9915eba2f4877b4cff3bf926793b0d1365cb3`.

## Typed claim and retained domain

For all real l,r,b,u and complex a with l<Re(a)<r and b<Im(a)<u, boundaryIntegral l r b u (fun z => 1/(z-a)) = 2*pi*I.

## Argument and primary provenance

Choose half the minimum distance to the four edges; prove the four-band excision identity; prove the signed affine comparison to the existing centered square. All four velocities and orientations are retained.

Yury Kudryashov, Mathlib CauchyIntegral.lean, integral_boundary_rect_eq_zero_of_differentiableOn; Mathlib intervalIntegral.smul_integral_comp_add_mul; local CenteredSquareKernelIntegral.squareIntegral_eq_period. Exact pins and blobs are in README.md.

Consumer: boundaryIntegral_finite_expansion, immediately used by WeilRectangleResidues.

## Comparison, limitations and evidence

This is a local consequence/assembly from the identified formal sources, not a
claimed new paper theorem. Upstream attribution and license remain unchanged.
See [README.md](README.md) for the full analytical proof, distinct orientation
check, exact revision links, imported evidence boundary and open obligations.
The source proof has not been elaborated or kernel-audited; publication and
source hashes establish only source identity. Independent review: NOT_RUN.
