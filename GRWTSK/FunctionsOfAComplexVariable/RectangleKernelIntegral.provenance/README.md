# Actual rectangular kernel integral and finite linearity

Local attribution: grwtsk contributors. Date: 2026-11-11.

Status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**, with no novelty claim.
The mathematical argument is written; Lean elaboration, fresh kernel replay,
transitive axiom audit, independent review and repository-wide checks are
**NOT_RUN**. Imported source candidates retain their own evidence status.

Inspected math source base: `7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No default-root import or dependency pin is changed.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).


Maintained source: [RectangleKernelIntegral.lean](../RectangleKernelIntegral.lean).
Source SHA-256: `08305c7c9e65acb240bed3df81a9915eba2f4877b4cff3bf926793b0d1365cb3`. MSC2020: 30E20, 30E10.
The definitions `boundaryIntegral` and `EdgeIntegrable` abbreviate the literal
four interval integrals and their four separate integrability conditions. The
inspected Mathlib theorem uses this expression without a named rectangle
integral. The existing centered-square module has parametrized edge integrals;
its definitions, normalization and proofs are reused rather than duplicated.

## Exact statement and consumer

For arbitrary real l,r,b,u and complex a with
l < Re(a) < r and b < Im(a) < u, the source candidate proves

    B(l,r,b,u; z ↦ 1/(z-a)) = 2*pi*I,

where B is bottom minus top plus I times right minus I times left. It also
proves the denominator is nonzero on all four boundary lines, and proves
integrability on each actual edge. No rational approximation to a is used.
`boundaryIntegral_finite_expansion` consumes any finite indexed principal-part
expansion on these boundary lines, a continuous remainder on the rectangle and
its proved zero boundary integral. Repeated locations are allowed: coefficients
are summed, never deduplicated. Its immediate arithmetic consumer is
[WeilRectangleResidues.lean](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilRectangleResidues.lean).
The zero remainder premise is discharged there by the existing maintained
Cauchy-Goursat remainder theorem; the kernel integral is NOT a premise.

## Complete analytical argument

Put a=alpha+i*beta and choose e>0 less than the four positive distances
alpha-l, r-alpha, beta-b, u-beta. The Lean candidate chooses half their minimum.
The closed inner square [alpha-e,alpha+e]+i[beta-e,beta+e] is strictly inside D.
The complement of its interior in D splits into four bands:

- left and right bands have the full outer height;
- bottom and top bands have the inner square's width.

Each band avoids a even on its boundary. The reciprocal kernel is holomorphic
on a neighborhood of each band. Apply the pinned rectangular Cauchy-Goursat
theorem to all four bands. Add their oriented boundary identities, using
interval-integral additivity on the split edges. Every common internal edge
cancels with the opposite orientation. The result is exactly B(D)=B(inner
square). No topological index or unproved contour deformation is substituted
for this equality. The private lemmas `split_x`, `split_y`,
`kernel_integral_zero` and `excision` implement these steps.

For the square, retain the existing paths

    gamma_k(t)=a+e*I^k*(1+I*t),  -1 <= t <= 1,  k=0,1,2,3.

They are right/up, top/left, left/down and bottom/right. The existing module
proves each integral gamma'_k/(gamma_k-a) equals pi*I/2. The new private
`square_comparison` proves that their sum really is the coordinate boundary
integral: the right and bottom use scale e; the top and left use scale -e.
`affine_integral` retains the signed velocity and evaluates the endpoints,
using Mathlib's `smul_integral_comp_add_mul`. Reversing the bounds on the latter
two integrals supplies the negative signs. Thus B(square)=2*pi*I, and excision
gives the claimed general-rectangle value.

For finite principal parts, first prove each scalar multiple is edge integrable.
Induct on the finite index set. At each insertion, interval-integral additivity
is invoked only with integrability proofs. Complex linearity yields the sum of
the coefficients times 2*pi*I. Pointwise equality on the boundary transports the
source integral to remainder plus principal parts. The supplied, already proved
zero remainder integral then gives the finite residue formula.

## A distinct direct calculation for orientation and normalization

This is a second written evaluation, not independent review or a second Lean
proof. Set L=alpha-l, R=r-alpha, B=beta-b, U=u-beta; all are positive. After
translation by a, the bottom and top real integrands are x/(x^2+B^2) and
-x/(x^2+U^2); the right and left real integrands are y/(R^2+y^2) and
-y/(L^2+y^2). Their endpoint logarithms total

    1/2 log((R^2+B^2)/(L^2+B^2))
  - 1/2 log((R^2+U^2)/(L^2+U^2))
  + 1/2 log((R^2+U^2)/(R^2+B^2))
  - 1/2 log((L^2+U^2)/(L^2+B^2)) = 0.

The imaginary parts total the eight arctangents

    atan(R/B)+atan(L/B)+atan(R/U)+atan(L/U)
  + atan(U/R)+atan(B/R)+atan(U/L)+atan(B/L).

Pair each corner ratio with its reciprocal. Each positive reciprocal pair sums
to pi/2, so the total is 2*pi. This check allows four different distances and an
arbitrary imaginary translation; it does not merely check a centered example.

## Primary formal provenance and comparison

- Yury Kudryashov, Mathlib, Apache-2.0,
  [CauchyIntegral.lean at the pin](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/CauchyIntegral.lean),
  `Complex.integral_boundary_rect_eq_zero_of_differentiableOn`.
  Inspected blob `aac86aa902e778812ce356a977d682cff3105b0f`.
- Mathlib contributors, Apache-2.0,
  [interval integral Basic.lean at the pin](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean),
  `integral_add_adjacent_intervals`, `smul_integral_comp_add_mul`,
  `integral_add`, `integral_const_mul` and `integral_symm`.
  Inspected blob `2504147e2230a26eb804b0898004d0186c4e36a1`.
- grwtsk contributors,
  [CenteredSquareKernelIntegral.lean at the source base](https://github.com/grwtsk/math/blob/7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c/GRWTSK/FunctionsOfAComplexVariable/CenteredSquareKernelIntegral.lean),
  `edgePath`, `edgeVelocity`, `edgeIntegral`, `squareIntegral_eq_period`;
  blob `f85e31c7b2d83f117917674c42646e1bb55e75a0`.
  This existing calculation explicitly did not prove the general rectangle
  comparison. The new comparison and excision supply that missing connection.

This is classical residue calculus implemented from pinned formal sources, not
a claimed new theorem of complex analysis. No paper-derived novelty is asserted.
Every new public theorem has its own record in this directory. Private helper
proofs are covered by this argument and the cited exact upstream locators.

## Boundaries and verification obligations

Outside the closed rectangle, the same reciprocal is holomorphic throughout
it and the zero-integral helper applies instead; the value is not universally
2*pi*I. A boundary pole is excluded: strict inequalities cannot be weakened by
appealing to Lean's totalized reciprocal. The top/left signs and vertical I's
are checked by the explicit affine comparison and the second evaluation above.
Multiplicity and pole signs are checked in the arithmetic consumer.

Text inspection is not elaboration. In particular, the new casts, finite-sum
induction, affine substitutions and imported centered-square candidates still
require execution at the exact pins. A future authorized check must elaborate
both new modules and their imports, replay the resulting proof terms in a fresh
kernel context, inspect transitive axioms, and compare the printed statements
with the formulas here. No custom axiom or proof placeholder is introduced.
The intended focused elaboration commands are `lake env lean` on the two new
source paths; they were NOT_RUN. No compatible fresh-kernel runner is assumed.

The current canonical proof-automation skill was requested at
noeaaeue/main `e8309df2b998cc050e80ca1dffd4a78bb83d9448` and returned 404.
Dependent execution was not started. This is not mathematical evidence and does
not block separately authorized ordinary GitHub source publication. Publication
readback and the exact commit are recorded in the coordinating issue.
