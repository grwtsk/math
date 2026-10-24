# Gauge-relative ambient bundle fields: static acceptance specification v1

## Scope, parent and pins

This is a mathematical acceptance specification, not an executable manifest or receipt.
The immediate parent is `7e6145ad4a968aaf9de237641e12f43c295d4e80` and its live
`docs/verification/Interfaces/PortFiberAreaGaugeTransport/portfiber-area-gauge-transport-v1.md`. Preserve that specification recursively,
including every earlier packet, objection, fixed-measure control and statement-preserving repair.
The live parent uses `realizedSection`, explicit `chartEvaluation` and `chartKernelVector`.
Do not apply the earlier unpublished preferred-coordinate draft in place of this parent.

The isolated root is `GRWTSK.Interfaces.PortFiberGaugeFieldL2` and mathematical module is
`GRWTSK.Analysis.Complex.HolomorphicGaugeFieldL2`. No earlier root imports this leaf.
Only these two modules and this specification are added. Earlier source, aggregate imports,
measures, metrics, dependency pins, residual plans and terminal dispositions are unchanged.

Pins: Lean `leanprover/lean4:v4.33.0`; Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
Parent requirements: 95 planned local modules / 290 controls. This leaf adds two modules
and eight controls: 97 planned local modules / 298 control specifications. These are
planning counts, not discovered import closure or executed coverage.

## Actual fields, measurability and metric

The input is an actual `Gauge (Cocycle.identity D) C`, including its exact local holomorphic
units, inverse units and overlap law. `RawField C hOpen` consists of arbitrary fields in
the actual target fibers. It has no holomorphy, continuity or measurability condition.
`frame` and `unframe` use the historical fiber maps. Both inverse identities are proved.
`chart_coordinate` binds every declared local trivialization to the same normalized field.
Chart membership remains explicit.

The target metric is exactly `transportMetric G (MetricWeights.identity D)`.
`square` and `fieldEnergy` use its actual squared fiber length and the SAME measure μ.
`square_eq` derives equality with the normalized scalar norm squared by metric transport.
No raw model norm, independently selected metric, changed measure or uniform frame bound
is substituted. The general carrier/equivalence/energy/pairing statements permit any μ.

`FiniteField` requires AEStronglyMeasurable inverse-gauge coordinates and finite intrinsic
energy. THIS IS AN EXPLICITLY GAUGE-RELATIVE MEASURABILITY DEFINITION. Neither measurability
of the arbitrary preferred-chart selector nor equivalence with an intrinsic bundle-Borel
predicate is asserted. Gauge independence across different trivializations is not proved.
This construction is not an automatic L2 theory for a bundle without the supplied gauge.

## Quotient and comparison with ordinary L2

`fieldSetoid` identifies actual target-fiber values almost everywhere for the same μ,
not fields having equal energies. `fieldClass_eq_iff` retains both directions.
`field_memLp` derives genuine exponent-two scalar Lp membership from measurability and
finite metric energy. `ofMemLp` constructs target finite fields from ANY ordinary scalar
L2 representative; its admission is not restricted to holomorphic functions.

`toScalarL2` uses Mathlib's actual `MemLp.toLp`. Its representative computation is a.e.
`fromScalarL2` applies the actual forward fiber map to a scalar Lp representative, then
passes to the fiber-value quotient. `from_to` and `to_from` prove both identities on all
classes. Thus `scalarEquiv` is a constructed bijection, not an assumed inverse or an
identification of raw target coordinates with unweighted L2 coefficients.

No AddCommGroup, Module, NormedAddCommGroup, InnerProductSpace or CompleteSpace instance
is installed on FieldL2 in this leaf. Consequently scalarEquiv is NOT yet packaged as a
linear isometric equivalence, and fieldProjection is NOT yet a ContinuousLinearMap on
this new carrier. Such structure packaging and its pointwise operation bindings remain
separate. These limitations do not weaken the stated equality/integral laws.

## Energy and full complex pairing

`quotientFieldEnergy` descends the actual target metric energy through the actual setoid.
`quotientFieldEnergy_norm` proves equality with ofReal(norm(toScalarL2 q)^2), using the
finite integral BEFORE converting extended energy to a real number and back.

`fieldPairing` is the normalized scalar L2 inner product. `pairing_eq` binds pointwise
metric pairings to conjugate(unframe(s)) times unframe(t). `fieldPair_integrable` proves
genuine cross-integrability from ordinary L2. `fieldPairing_class` then gives the exact
integral of the intrinsic target fiber pairing, retaining its imaginary part and first-slot
conjugate linearity. No nonintegrable Bochner default is accepted as evidence.

## Existing holomorphic architecture and projection

The area specialization uses exactly the historical unnormalized complex area.
`completedField` admits the existing `realizedSection` of every target completed vector.
`targetEmbedding_normalizes` identifies the new field-class map with the OLD
`pulledL2Inclusion` after normalization. This retains the original target completion,
its original finite-section recovery, and the supplied gauge; no replacement vector is chosen.

`fieldProjection` conjugates the OLD Bergman projection by the proved ambient bijection.
`fieldProjection_normalizes` is the exact commuting equation. `fieldProjection_realizes`
binds its output to the ACTUAL target-bundle realization of the historical projected vector.
Every `targetEmbedding` vector is fixed. Fixed classes normalize precisely into the OLD
holomorphic subspace, not all ordinary L2. Idempotence, the explicit Hermitian pairing
identity and contraction in the actual target metric energy are derived.

These statements are on explicit quotient maps and pairings. Do not call their proofs
an intrinsic gauge-independent Hilbert-bundle construction or a new bundled adjoint theorem.
No finite-total-area or nonempty-domain premise is required for these general statements.

## Claims and hostile controls

Eight AddedIndex cases: metricDensity, ambientBijection, intrinsicPairing, energyIdentity,
historicalEmbedding, projectionRealization, projectionLaws and nullPointBoundary.
The source is universe-polymorphic; the portfolio stores its small-index instances.
Keep all four old/new/target/retarget preservation equations. A `.proved` constructor in
unelaborated source is not a compilation, kernel, audit or replay receipt.

- GFL-H01: Reject raw-selector measurability inferred from chartwise continuity. Retain the
  explicit inverse-gauge measurability definition and chart membership in chart_coordinate.
- GFL-H02: Reject a changed target metric or unweighted raw-fiber norm. Retain the earlier
  factor-two/quarter-weight control and the actual metric equality square_eq.
- GFL-H03: Reject equality of energies as fieldClass equality. The setoid is a.e. equality
  of the actual target fiber values; phase and same-energy predecessor controls remain.
- GFL-H04: Reject an always-zero or one-sided ambient map. Both inverse identities quantify
  over ALL old scalar L2 classes and ALL new field classes, including nonholomorphic inputs.
- GFL-H05: Reject recovery of every representative's point value. The framed disk spike
  shares the zero class; no_allFields_point_recovery rejects even arbitrary recovery maps.
- GFL-H06: Reject holomorphy of every field representative or completeness installed by
  unproved coercions. No new algebraic/topological/completeness instances are declared.
- GFL-H07: Reject all fields being fixed by projection. Keep the exact old holomorphic
  image in fieldProjection_fixed_iff and the exact target realization of the output.
- GFL-H08: Reject silent changes of gauge, measure, base, cover, cocycle or target metric.
  No gauge-independent Borel equivalence or arbitrary-bundle trivialization is supplied.

GFL-H05 has explicit theorem fixtures. Other controls are mandatory source/signature or
negative-elaboration obligations and inherited controls, not newly executed hostile tests.

## Exact-head acceptance

Every actual module/source identity requires a unique successful terminal result. Missing,
failed, unavailable, duplicate/conflicting, wrong-identity, NOT_RUN, source-only and
root-only outcomes do not pass. Discover and reconcile all actual transitive imports.
Inspect resolved signatures, dependent fibers, coercions, quotient reductions, MemLp
membership, integrability, inverse equations and inherited scalar/norm/topology projections.
Only propext, Classical.choice and Quot.sound are allowed transitive axioms. Reject
sorryAx, unsafe mathematical declarations and unreported native dependencies.

```bash
lake build GRWTSK.Interfaces.PortFiberGaugeFieldL2
lake env lean GRWTSK/Interfaces/PortFiberGaugeFieldL2.lean
```

These commands are unrun. This specification confers no execution authority or F06 release.
Lexical checks, rational diagnostics and empty-overlay patch tests are not Lean verification.
No issue closure, merge, worker qualification or RH/ABC promotion follows.

## Remaining obligations

Pointwise vector operations and coherent Hilbert-instance packaging on FieldL2; intrinsic
bundle-Borel measurability and change-of-trivialization equivalence; general metrics and
bundles without a supplied gauge; weighted kernel integral coordinates; Toeplitz calculus;
unbounded domains/cores, heat calculus, Picard/theta/K/KK and arithmetic suppliers remain
separate. Preserve prior nonclaims at their original isolated-leaf scopes.
