# Port-fiber area gauge transport: static acceptance specification v1

## Scope and prerequisite

This is a mathematical acceptance specification, not an executable manifest or receipt.
The immediate prerequisite is `docs/verification/Interfaces/PortFiberAreaKernelDensity/portfiber-area-kernel-density-v1.md` at
`698f599cf5fb2aae859e37c76a2e68a663095425`. Preserve it recursively with every earlier
packet, objection, source identity, statement-preserving erratum and control.

The isolated root is `GRWTSK.Interfaces.PortFiberAreaGaugeTransport`.
Its mathematical module is `GRWTSK.Analysis.Complex.HolomorphicAreaGaugeTransport`.
No predecessor root imports it. No old source, measure, metric, aggregate root, dependency
pin, historical specification, residual plan, arithmetic supplier or target is replaced.

Pins remain Lean `leanprover/lean4:v4.33.0` and Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
Retain the predecessor's 93 planned local-module requirements and 282 controls. The two
added modules and eight controls give 95 planned local modules and 290 controls, NOT
actual discovered imports or executed coverage. Reconcile the full exact-head closure.

## Fixed data and genuine hypothesis

The input is an ACTUAL `Gauge (Cocycle.identity D) C` on the exact indexed cover D.
Its holomorphic local units, inverse units and oriented overlap laws remain mandatory.
Such a gauge supplies a trivialization of C; this leaf does not produce a gauge for every
cocycle, trivialize a nontrivial Picard class, or replace a missing gauge by fiber dimension.

The source uses the identity cocycle, unit metric and old unnormalized complex area.
The target metric is EXACTLY `transportMetric G (MetricWeights.identity D)`.
The target uses the SAME area measure and exact base subtype. `areaGauge` abbreviates the
historical completed gauge isometry. Its source/target norms, inverse and embeddings are
not independently selected. No finite-area or nonempty-domain premise is added generally.

## Actual target sections and coordinates

`realizedSection` applies the old bundle-section equivalence to the scalar realization of
the exact inverse-gauged vector. It produces a section of the actual target vector bundle.
`realizedSection_on_class` recovers EVERY original target finite-energy section on its old
class and embedding. Surjectivity of the historical finite-energy gauge supplies this
binding; no representative is selected from an arbitrary measurable quotient.

`realizedSection_energy` identifies intrinsic target-section energy with the target's OLD
completion energy on all completed vectors. Finiteness follows from that exact equality.
The target model norm is not silently substituted for the transported Hermitian metric.

`chartEvaluation` is a bounded complex-linear functional constructed as h_i(x) times the
old source evaluation composed with the exact inverse completed gauge. Chart membership
is explicit. `chartEvaluation_eq_coordinate` binds it to the actual local trivialization
of `realizedSection`, not to the unrelated raw preferred-coordinate value function.

## Riesz vector and two-variable kernel

`chartKernelVector` invokes actual Riesz inversion for that TARGET functional and target
Hilbert structure. Inner-product transport DERIVES

    k^G_(i,x) = conjugate(h_i(x)) * U_G(k_x).

The scalar acts on the vector; the first inner-product slot is conjugate-linear.
The norm identity retains the actual frame modulus and old evaluation norm. No common
bound on all frame values or evaluations is supplied or inferred.

`chartKernel` is the coordinate of the same realized target Riesz vector. Its inner-product
binding and two-variable transport are derived:

    K^G_ij(x,y) = h_i(x) * conjugate(h_j(y)) * K(x,y).

The chart indices, exact basepoints, membership proofs and gauge are retained. Chartwise
holomorphy follows from that same bundle section. This does not assert global scalar
holomorphy of a discontinuously selected chart or invariance of coordinate kernels.

The previous exact multiplier conjugacy supplies target chart evaluation intertwining.
`target_adjoint_kernel` binds the ACTUAL target multiplier adjoint to the conjugate symbol
value on these target Riesz vectors. It does not turn the full adjoint into pointwise
antiholomorphic multiplication or assert differential-domain transport.

## Source-frame L2 comparison, not a new intrinsic bundle L2

`pulledL2Inclusion` is the OLD scalar L2 inclusion after the exact inverse gauge. Its a.e.
values are the SOURCE scalar realization of U_G^{-1}v. They are NOT identified with raw
target chart coordinates in ordinary unweighted L2. Norm preservation is derived.

`pulledLift` is this map's ACTUAL Hilbert adjoint. Its equality with U_G after the historical
Bergman lift follows from the inner-product equations. `pulledProjection` is inclusion
after that adjoint; both changes cancel in the declared source-frame ambient carrier,
leaving the exact OLD Bergman projection. No independent target ambient L2 space, raw
coordinate unitary, change of measure or intrinsic fiber-valued L2 projection is claimed.

`pulledLift_realizedSection` binds the adjoint's target-bundle output to the old projected
holomorphic function transported by the same bundle-section equivalence.

## Portfolio and controls

Eight disjoint claim indices are `originalSection`, `intrinsicEnergy`, `chartEvaluation`,
`kernelTransport`, `multiplierAdjoint`, `sourceFrameProjection`, `projectedSection`, and
`frameBoundaries`. The source is universe-polymorphic; the portfolio explicitly records
small-index instances. Preserve all four old/new/target/retarget equations. A source-level
`.proved` constructor is not a compilation or trust receipt.

- AGT-H01: Reject an unconjugated frame in Riesz transport. A constructed constant-i unit
  and actual constant gauge give `phase_kernel`; `phase_wrong_sign` uses the prior
  finite-area nonzero kernel detector and rejects the positive-i factor.
- AGT-H02: Reject unchanged coordinate kernels. The historical constant-two gauge gives
  `doubling_kernel` with factor four. `doubling_diagonal_not_invariant` rejects equality
  under the actual finite-area nonzero-diagonal premise. The old quarter-weight control
  remains mandatory: a metric isometry need not preserve unweighted coordinates.
- AGT-H03: Require the supplied identity-to-C gauge, local holomorphic inverses and overlap
  law. Do not infer triviality from a named bundle, equal dimensions or an abstract label.
- AGT-H04: Keep the target metric exactly transported; an independently selected target
  metric cannot inherit energy preservation, Riesz transport or adjoint formulas.
- AGT-H05: Keep chart membership and the exact old local trivialization. Off-overlap total
  transition defaults and a preferred-chart selector cannot stand in for a local chart.
- AGT-H06: The ambient projection comparison is in the pulled-back SOURCE frame. Reject
  replacing it with ordinary-L2 raw target coordinates or an unconstructed bundle L2.
- AGT-H07: Retain the old class/embedding, exact completed inverse and intrinsic energy.
  Equality only on fixtures, a dense set without continuity, or norms alone is insufficient.
- AGT-H08: Preserve all previous target dispositions and boundaries. No general metric,
  nontrivial-bundle detector, unbounded-domain/core, heat or arithmetic theorem follows.

AGT-H01/H02 have explicit source theorem fixtures, not executed hostile tests. The others
remain negative elaboration/signature obligations. Listing controls is not running them.

## Acceptance

Every module/source identity in the actual exact-head import closure must have its own
unambiguous terminal result. Missing, failed, unavailable, duplicate, conflicting,
wrong-identity, NOT_RUN, source-only and root-only outcomes do not pass.
Inspect resolved signatures, dependent fibers and all inherited scalar, metric, norm,
inner-product, topology, uniformity and completeness projections. No instance is added.
Only `propext`, `Classical.choice` and `Quot.sound` are permitted transitive axioms.
Reject `sorryAx`, placeholders, unsafe mathematical declarations and unreported native
dependencies. Lexical inspection cannot establish transitive trust or Lean elaboration.

```bash
lake build GRWTSK.Interfaces.PortFiberAreaGaugeTransport
lake env lean GRWTSK/Interfaces/PortFiberAreaGaugeTransport.lean
```

These commands are unrun. This specification authorizes no execution. Review proposals
are inert data. No F06 release, worker qualification, issue closure or merge is conferred.

## Separate obligations

Independent intrinsic bundle L2, general metric comparisons, existence of trivializations,
nontrivial Picard/theta geometry, strict Gram positivity, stable sampling, explicit kernels,
Toeplitz calculus, unbounded-operator domains/cores, heat calculus, arithmetic measure
identities, K/KK comparisons, Weil/residual suppliers and RH/ABC remain separate. Earlier
nonclaims keep their original isolated-leaf scopes rather than being rewritten.
