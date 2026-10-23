# Section-energy leaf: source-bound verification specification

## Status and exact scope

`SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED`.

This is a static review/replay specification, not an executable manifest, parser extension,
controller, receipt, or assertion that a build occurred. Its isolated root is
`GRWTSK.Interfaces.PortFiberSectionEnergy`. It adds measure-dependent section energy and
finite-energy gauge transport to the unchanged v0.16 core. The historical core and
`GRWTSK.lean` do not import this leaf.

Repository: `grwtsk/math`. Owner: #230. Consumer boundaries: #177 and #204.
The commit and tree containing this file must be pinned externally before replay; this
specification cannot issue its own exact-head receipt.

## Mandatory predecessor, not a replaced acceptance predicate

The prerequisite is `docs/verification/Interfaces/PortFiberHolomorphyCore/portfiber-holomorphy-core-v0.16.toml`, originally at
`b01bb6d3b8986fb0539a5ab68f150de251bc947f`, Git blob
`f4b5a55e253ef353da5969ee119ed84ce767b6ee`.

Reconcile that exact blob in the selected checkout. Every one of its 46 module records,
98 hostile-control records, scope requirements, trust policy, acceptance requirements,
and source-specific nonclaims remains required at its original scope. They are not
replaced by the eight additional controls below. In particular, the old assertion that
pointwise adjoints alone provide no integration measure remains valid: this new leaf
requires a separate explicit measure. Reading this specification is not evidence that
those predecessor checks passed.

The new leaf requires the predecessor module set plus exactly these two modules:

```text
GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
GRWTSK.Interfaces.PortFiberSectionEnergy
```

Thus the selected local coverage set has 48 distinct modules. Reconcile the complete
transitive local import closure, including both roots and the predecessor's two optional
adapter modules; do not substitute a successful root import for per-module outcomes.
The pinned toolchain remains `leanprover/lean4:v4.33.0`; the selected mathlib revision
remains `db584cd6d46c92f209a44c0f1c829460d327499d`, with every other dependency still
bound by the unchanged `lake-manifest.json`.

## Mathematical construction and public signatures

`HolomorphicLineSectionEnergy` uses the Borel measurable structure of the actual base
subtype and an explicit `Measure D.X.carrier`. No measure, finite mass, full support,
volume normalization, or arithmetic source is inferred from a cocycle or metric.

`density` is `ENNReal.ofReal` of the preceding `MetricWeights.squaredNorm` evaluated
on an actual `BundleSection`. `density_continuous` composes the genuine total-space
metric and section-continuity theorems; `density_measurable` derives measurability.
`density_eq_zero` uses the existing nonnegativity and definiteness proofs, not an
assumption that the section is zero.

`energy` is the lower Lebesgue integral of that density, valued in `ℝ≥0∞`.
`energy_eq_zero_iff` identifies zero energy with zero fiber values almost everywhere
for the chosen measure. `AEEqual` records equality of the exact fiber values almost
everywhere, and `energy_congr_ae` respects it. No quotient or completeness is asserted.

`density_gauge` and `energy_gauge` use the historical `Gauge.bundleSectionEquiv`, its
binding to `Gauge.fiberMap`, and the constructed `transportMetric`. The measure is
identical on both sides. The invariance applies also to infinite energy.
`aeEqual_gauge_iff` preserves and reflects the same almost-everywhere relation, using
injectivity of the actual continuous-linear fiber equivalence.

`FiniteEnergySection` is the subtype with `energy < ∞`. `finiteEnergyEquiv` restricts
the historical section equivalence and proves membership for its forward and inverse
maps. Its inverse is the inverse of that exact historical equivalence.
`finiteEnergyEquiv_value` binds the restricted map to the original section map.
This is a bijection of finite-energy carriers, not a bundled linear isometry, Hilbert
space, completed space, operator-domain theorem, or assertion that every holomorphic
section has finite energy.

`energy_dirac` evaluates the measurable density at the exact support point.
`scalarSection` realizes a global scalar holomorphic section in the identity cocycle
through the actual chart restrictions and the previous `identityFamily` constructor;
`scalarSection_value` recovers its original values.
`unitSection_energy` equals total measure, and `unitSection_energy_infinite` retains
the explicit infinite-mass hypothesis rather than turning infinite energy into zero.

The fixture `coordinate` is the ordinary coordinate section on the duplicated whole
complex-plane cover. `coordinate_energy_zero` and `coordinate_energy_one` evaluate
its energies for the Dirac measures at 0 and 1. `zero_energy_not_pointwise_zero`
exhibits zero energy but a nonzero value at 1. `changing_measure_changes_energy`
keeps base, section, and metric fixed while rejecting measure-independent energy.
The zero-energy fixture uses a Dirac probability measure, not the zero measure.

`PortFiberSectionEnergy` imports the unchanged core and adds eight small-index
portfolio claims: density measurability, zero-energy/almost-everywhere equivalence,
gauge energy invariance, finite-energy transport bound to the original section map,
almost-everywhere gauge equivalence, Dirac evaluation, infinite unit-section energy,
and the two-measure counterexample. The underlying source theorems are
universe-polymorphic. `original_branch_unchanged`, `new_branch_proved`,
`target_unchanged`, and `retarget_preserves_new` retain the prior portfolio and target.
Stored `.proved` proof implementations do not assert kernel acceptance or external replay.

## Additional hostile controls

| Identifier | Required source-bound rejection or theorem check |
| --- | --- |
| `energy-reject-continuity-or-measurability-by-label` | Check `density_continuous`, `density_measurable`, and the exact composition through the actual total-space topology. |
| `energy-reject-zero-as-pointwise-vanishing` | Check `energy_eq_zero_iff` and `zero_energy_not_pointwise_zero`; do not strengthen almost-everywhere vanishing without additional support hypotheses. |
| `energy-reject-measure-substitution` | Check `changing_measure_changes_energy` and retain the identical measure parameter in both sides of every gauge-energy theorem. |
| `energy-reject-infinite-as-finite-or-zero` | Check `unitSection_energy` and `unitSection_energy_infinite`; reject a finite-energy witness at energy `∞` and any real-conversion shortcut. |
| `energy-reject-untransported-metric` | Check `density_gauge` against `squaredNorm_transport` and retain the predecessor's factor-two/quarter-weight controls; an independently selected target metric needs its own equality witness. |
| `energy-reject-finite-domain-or-map-drift` | Check forward and inverse subtype membership, both inverse identities, and `finiteEnergyEquiv_value`; finite-dimensional fiber norms alone do not imply finite section energy. |
| `energy-reject-ae-as-literal-section-equality` | Check `energy_congr_ae` and both directions of `aeEqual_gauge_iff`; the finite-energy subtype is not an almost-everywhere quotient. |
| `energy-reject-hilbert-or-target-promotion` | Check all eight exact portfolio claim types and four preservation theorems; energy and a carrier bijection do not provide completeness, section-space adjoints, differential/heat transport, residual discharge, or an RH/ABC result. |

## Acceptance and evidence boundary

Require a clean checkout of the externally pinned leaf head. Reconcile predecessor
identity, dependency pins, all 48 local modules, exact public declaration types, all
98 inherited controls and all eight additional controls. Preserve the predecessor's
axiom policy: only `propext`, `Classical.choice`, and `Quot.sound`; reject `sorryAx`,
unsafe declarations, unreported native dependencies, or uninspected runtime effects.
Require explicit PASS/FAIL/NOT_RUN/UNAVAILABLE outcomes with exact source identities,
not a root-only success or a missing-check default. A later source repair invalidates
the corresponding prior receipt and requires coverage reconciliation again.

Under a separately authorized exact-head runtime profile, the selected commands are:

```bash
lake build GRWTSK.Interfaces.PortFiberSectionEnergy
lake env lean GRWTSK/Interfaces/PortFiberSectionEnergy.lean
```

These commands are target descriptions, not permission to execute them. Effectful
realization, resource metering, logs, hostile-control execution, signature and axiom
audits, and immutable receipts remain the responsibility of `grwtsk/noeaaeue` or an
explicitly authorized reviewer. No such execution or audit is asserted here.

## Remaining obligations and nonclaims

Exact-head elaboration and potential source repair, signature coverage, trust/runtime
audits, executed hostile controls, and external replay remain pending. This leaf does
not change the verification status of its predecessors.

Mathematical work still needed includes additive/linear structure on the section
carrier, almost-everywhere quotient construction, finite pairings and integrability,
completion or a closed holomorphic subspace theorem, support hypotheses for pointwise
separation, global operator bounds, section-space adjoints, differential domains and
regularity, connections, and Laplacian/heat transport. No source-specific elliptic
measure or metric, base-change/Jacobian theorem, Picard/theta identification,
K/KK classification, arithmetic supplier, B_n, Weil comparison, residual decay,
or RH/ABC proof or refutation is supplied.
