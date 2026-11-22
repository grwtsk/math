# Source-exact shifted variational response and full-dual residual

Local attribution: grwtsk contributors.
Owner: [WeilShiftedSourceSolve.lean](WeilShiftedSourceSolve.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.ShiftedSourceSolve`.
MSC2020: 11M06, 47A07.

## The actual problem solved

Fix T>0 and beta real. Let V be the existing maximal graph domain, H the
supported odd physical L2 space, J:V->H the actual inclusion, q the original
signed source pairing, and lambda=perturbationBound(T,beta)+1. The preceding
source module constructs the bounded symmetric coercive form

    a(u,v)=q(u,v)+lambda<J u,J v>_H,
    ||u||_V^2 <= a(u,u) <= (2C+1)||u||_V^2.

For every physical h in H, construct the unique u in V satisfying

    a(u,v)=<h,J v>_H   for EVERY v in V.

Mathlib's existing Lax--Milgram equivalence E:V equiv V satisfies
<E u,v>_V=a(u,v). Define u=E^{-1}J* h. This establishes existence without
assuming a solve oracle. Its equation and uniqueness follow from the
actual equivalence and source correspondence. Testing at u gives
||u||_V^2 <= <h,Ju> <= ||h||||u||_V; handle u=0 before cancellation.
Hence ||u||_V <= ||h||_H.

## Error and optimization identities

The source objective is F_h(v)=a(v,v)/2-<h,Jv>. Bilinearity, symmetry and
the weak equation prove

    F_h(v)-F_h(u)=a(v-u,v-u)/2 >= ||v-u||_V^2/2.

For any trial v, the computable-in-principle functional
r_v=<h,J(.)>-a(v,.) lies in the ENTIRE continuous dual V*. It satisfies
r_v(w)=a(u-v,w). Coercivity and the dual norm yield

    ||u-v||_V <= ||r_v||_{V*}.

The theorem does not supply a numerical evaluation of this full norm.
Finite rows, quadrature error, missing directions and remote tails require
source-bound estimates before they can be used as a residual budget.

## Physical response

R=J E^{-1}J* is a bounded physical operator with norm <=1. Symmetry of a
implies <Rh,k>=<h,Rk>, and <h,Rh>=a(u,u)>=0. If Rh=Rk, injectivity of J
identifies the weak solutions. Their weak equations imply that h-k is
orthogonal to every original form-domain input; the SOURCE-SPECIFIC density
proof in `WeilFormDomainDensity` then gives h=k. Thus R is injective.
Symmetry and injectivity imply its range is dense: any vector orthogonal
to its range lies in its kernel.

These statements supply the physical response consumed by
`WeilPhysicalSourceOperator.lean`. That separate module constructs the
`LinearPMap` inverse minus the explicit physical shift, proves equality
with its maximal adjoint, and gives its exact whole-domain source graph. Physical L2 density does not establish
that a chosen sine span is a core in the form norm.

## Declaration correspondence

- `variationalEquiv`, `variationalEquiv_pairing`: canonical Lax--Milgram use.
- `weakSolve`, `weakSolve_spec`, `weakSolve_source_equation`,
  `weakSolve_unique`, `weakSolve_norm_le`: actual source solve.
- `objective_error_identity`, `objective_gap_lower`: exact minimizer gap.
- `residualFunctional`, `residualFunctional_eq_error`, `error_le_residual`:
  complete dual residual and source graph-error bound.
- `physicalResponse`, `physicalResponse_opNorm_le`,
  `physicalResponse_symmetric`, `physicalResponse_nonnegative`,
  `physicalResponse_injective`, `physicalResponse_range_closure`:
  bounded physical response with no invisible physical loads.

## Provenance and limits

Base: `grwtsk/math@71a70edea2007e6f5c1c408189e10862499139e9`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
The exact pinned mathlib `Analysis/InnerProductSpace/LaxMilgram.lean`,
by Daniel Roca Gonzalez, blob `0e205e31afdde4e23cd7f99b9dd44da3d553e95d`,
was inspected. Its declarations
`IsCoercive.continuousLinearEquivOfBilin` and
`IsCoercive.continuousLinearEquivOfBilin_apply` are reused, not reproved or
claimed as a novel paper formalization. The physical source and dense
inclusion are constructed in the two companion source modules, not fields
postulating arithmetic positivity.

This is NOT a conformal realization, a new arithmetic sign estimate,
a cofinal certificate supplier, or an unconditional RH/GRH theorem.
The resolvent-like positivity belongs to the explicitly shifted source.
No claim identifies its spectrum with zeta zeros.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, expected signatures, fresh kernel replay,
transitive axiom audit, full import-closure replay and independent review:
NOT_RUN. No new research axioms or proof placeholders. No numerical source
experiment is reported. Novelty is not claimed; prior-art completeness is
UNASSESSED. Publication and exact file readbacks are recorded separately in math#1837. Coordinate with
existing math#1837 and math#1258; preserve earlier evidence and failures.

## Publication integration — 2026-11-18

The attached prepared package was reopened and reconciled against
`grwtsk/math@3b56f8e26f3d39baa3df8b1fda882dc2f03ae690`. The original
source pins and verification limitations above are retained. This record
does not turn a source proof body into elaboration or kernel evidence.
