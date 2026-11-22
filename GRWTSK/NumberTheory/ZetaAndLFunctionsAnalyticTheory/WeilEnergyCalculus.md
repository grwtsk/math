# Complete Hilbert charts and energy differentials

Owner: [WeilEnergyCalculus.lean](WeilEnergyCalculus.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.EnergyCalculus`.
Primary subject: MSC 58B20; consumer: the original Weil form-domain calculus.

## Charts, metric and completeness

`physical_manifold`, `energy_manifold`, and `formDomain_manifold` use
mathlib's standard global identity-chart instances on the actual normed
model spaces. `formDomain_complete` refers to the proved Hilbert GRAPH
norm, not to the weaker inherited physical L2 norm.
`formMetric` is its constant inner product and `metricRieszEquiv` is an
actual Riesz continuous linear equivalence. Thus no weak metric is silently
promoted to a strong one. The chart atlas is the global identity atlas;
there is no unsupported nonlinear transition map.

## Correct differential types

For a bounded A:H->L E, `halfEnergy_hasFDerivAt` proves the differential
h |-> inner(Ax,Ah). `halfEnergy_gradient_pairing` identifies its representing
vector A*Ax in the named Hilbert metric. `energyGradient_hasFDerivAt` gives
the constant gradient derivative A*A and `energyHessian_pairing` is the
bilinear form (v,w)|->inner(Av,Aw). Positivity is derived by v=w.

The concrete cutoff has derivative equal to itself and second derivative
zero (`cutoff_fderiv`, `cutoff_second_fderiv`). `fullGamma_contDiff` and
`fullGamma_halfEnergy` transfer these bounded-map facts to the full output
ON THE COMPLETE FORM DOMAIN and return to the original gamma energy.
They do not assert the existence of an ambient physical-L2 gradient at
every finite-form-energy input.

## Provenance, consumer and exclusions

Local consequences of bounded linear calculus. Pinned mathlib
`Analysis/InnerProductSpace/Calculus.lean` supplies
`HasFDerivAt.norm_sq`; `Adjoint.lean` supplies `adjoint_inner_left`;
`Dual.lean` (blob `a68d5b79b9188228581993555c0bf14f2edb9697`) supplies
`InnerProductSpace.toDual`. The identity-chart typeclasses come from
`Geometry/Manifold/IsManifold/Basic.lean`.
No external geometric paper is asserted as newly formalized.

Consumers: source-domain differentiation and future variational arguments.
The physical line has one coordinate, the lag/position base has two, and
the configuration spaces here are infinite-dimensional. A finite matrix
Jacobian is not an identification of their complete derivative. Ordinary
three-dimensional curl is not asserted. Sharp lag indicators are not
differentiated as smooth functions. Geodesic completeness for nonlinear
constraint manifolds, stereographic charts on the physically normalized
sphere, the logarithmic base-coordinate measure transform and a general
Riemannian manifold reconstruction remain outside this increment. No
cofinal positivity or zero-spectrum identification follows from these charts.

## Source pins, evidence, and scope

Local mathematical attribution: grwtsk contributors.
Base: `grwtsk/math@771e0b7e232ec7527fd11fb4f9275009cec06717`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root imports or pins are changed.

Status: **SOURCE_PROOF_CANDIDATE**. Lean elaboration, exact expected
signatures, fresh kernel replay, transitive axiom audit, clean dependency
replay, and independent mathematical review: **NOT_RUN**. Static inspection
is not a replacement for any of these checks. No earlier acceptance or
failure record is changed. Novelty is not claimed; prior-art completeness
is **UNASSESSED**.

The source is ordinary authorized mathematical authoring, not execution of
a proof runner or import of an unproved paper theorem as an axiom.
Coordinating issues: [#1837](https://github.com/grwtsk/math/issues/1837),
[#1258](https://github.com/grwtsk/math/issues/1258).
