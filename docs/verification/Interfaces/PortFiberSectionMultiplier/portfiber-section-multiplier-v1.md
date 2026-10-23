# Bounded holomorphic multiplier: source-bound verification specification

## Status and identity

`SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED`.
This static mathematical specification is not an executable manifest, receipt, controller,
worker grant, or execution authorization. Owner: #230; consumers: #177 and #204.
Pin the selected commit and tree externally. The isolated root is
`GRWTSK.Interfaces.PortFiberSectionMultiplier`.

This increment adds exactly these two modules and this specification:

```text
GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier
GRWTSK.Interfaces.PortFiberSectionMultiplier
```

No historical source, integration root, specification, dependency pin, aggregate import,
residual plan, arithmetic supplier or terminal disposition is changed. The new interface
imports the preceding bounded-operator interface; no earlier root imports this leaf.

## Mandatory predecessor

Immediate prerequisite: `438121d62c7ef47de8a0aac34cd97b693e28eb6a`.
Retain `docs/verification/Interfaces/PortFiberSectionBounded/portfiber-section-bounded-v1.md`, blob
`79b2960724133998b2e5e29050667236ddcdc3af`; mathematical source blob
`d9e9d9aaf827604a95bcba5a21e39975157ff101`; interface blob
`71edc19bb2ed0eb44329f378f21587feb21fc061`.

Retain all 60 predecessor module requirements and 154 controls, every historical
source-binding erratum, signature, scoped-instance check and application nonclaim.
The two added modules and eight new controls require 62 local modules / 162 controls;
this is required coverage, not a report of executed coverage. Reconcile the actual
transitive local imports and exact module/source identities at the selected head.

The toolchain remains `leanprover/lean4:v4.33.0` and Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`; all other pins remain manifest-bound.
The direct upstream import is `Mathlib.Analysis.Complex.Norm`, inspected at blob
`0898fb3ad035a87ee89ce2093780486e857cc5ff`. No new instance is installed.
The preceding scoped quotient structures must be opened and audited explicitly.

## Producer and energy bound

`BoundedMultiplier X` contains an actual `HolomorphicSection X`, a nonnegative real
bound, and the uniform norm inequality for that same section at every point of X.
No operator, finite-energy closure, or arbitrary cross-integrability theorem is a field.
Constants and products are actual producers; the product bound is proved from the two
factor bounds. No boundedness is inferred from holomorphy alone.

`sectionMultiply` is the historical `CompatibleOperators.multiplication` section map,
using its existing holomorphy-preservation proof. `sectionMultiply_value` binds it to
scalar multiplication on the actual dependent fibers. `density_multiply` proves the
intrinsic weighted-density identity; `density_multiply_le` and `energy_multiply_le`
then give E(f*s) <= K^2 E(s) in ENNReal. The measure need not have finite total mass.
The input energy need not be finite for this extended-valued inequality.

`finiteMultiply` derives finite-energy membership from the bound and the existing
subtype proof. `aeEqual_multiply` proves preservation of the exact old fiber-value
relation. `quotientMultiply` uses that proof in a lift over `finiteEnergySetoid`.
The original class map, quotient, zero and scalar/additive operations are unchanged.
`multiplierLinearMap` proves its two linearity laws from pointwise distributivity.

`quotientMultiply_norm_le` converts energies to real numbers only after proving the
upper energy finite. The induced norm yields ||M_f q|| <= K ||q||, and
`quotientOperator` is constructed with `LinearMap.mkContinuous`. The operator norm
has an upper bound, not an asserted equality to K or to an unproved essential supremum.

## Symbol, product, gauge and completion binding

`quotientOperator_congr_ae` allows distinct bound certificates and symbols agreeing
only for the selected measure. This is a sufficient equality law, not a converse or
faithfulness theorem. `quotientOperator_const` recovers the old constant scalar action.
`quotientOperator_mul` and `completedOperator_mul` preserve actual ordered composition.
No ring or C-star representation of all measurable symbols is asserted.

`quotientOperator_gauge` derives commutation through the old `Gauge.fiberEquiv` using
its complex linearity and its binding to the historical section equivalence. The same
base, measure and scalar symbol are retained. The target metric is precisely the
constructed `transportMetric`; `multiplier_gaugeDefect_zero` supplies the previously
missing zero-residual producer, not an independent exactness assumption.

`completedOperator` is exactly `completeMap` of the constructed quotient operator.
Its representative commutation and norm upper bound retain that source. The preceding
zero-defect theorem yields gauge conjugacy; actual completed adjoints consequently
transform by the same unitary. There is no assertion that the adjoint preserves the
original holomorphic subspace or equals multiplication by a holomorphic conjugate
symbol. In particular, the conjugate of the disk coordinate is not supplied as a
holomorphic-section-ring element.

## Concrete producer and failure boundaries

`Fixtures.disk` is the open unit disk. Its one-member indexed cover has actual
coverage and ambient openness proofs. `diskCoordinate` is the restriction of z to
that domain with bound 1. `diskCoordinate_nonconstant` distinguishes its values at
0 and 1/2. This is not an entire-plane bounded-coordinate construction.

For the same identity bundle and metric, `diskCoordinate_operator_zero` proves that
Dirac support at 0 makes this multiplier the zero operator. `diskCoordinate_norm_strict`
rejects turning the supplied bound 1 into an exact norm. Changing only the support to
1/2 gives `diskCoordinate_operator_ne_zero_at_half`, evaluated on the actual finite
constant-one section. Both measures are point masses, not the zero-measure shortcut.
No nontriviality premise for arbitrary measures is added.

## Additional controls

| Identifier | Required check or rejected promotion |
| --- | --- |
| `multiplier-reject-unbound-or-wrong-symbol` | Inspect the exact section/norm field and historical map binding; holomorphy alone supplies no global norm bound. |
| `multiplier-reject-assumed-energy-closure` | Check density identity, lintegral inequality and actual finite-subtype construction; retain zero constants and possible infinite input energy. |
| `multiplier-reject-representative-or-bound-drift` | Check the old setoid, class computation, a.e. congruence for both symbols and independence from a chosen bound; no new carrier or pointwise representative. |
| `multiplier-reject-infinite-real-conversion` | Check explicit upper-energy finiteness before toReal, induced norm coherence and mkContinuous's actual source map and bound. |
| `multiplier-reject-product-map-substitution` | Check actual symbol product, constant action and quotient/completed composition order; no unrelated bounded supplier or inferred general C-star representation. |
| `multiplier-reject-gauge-metric-or-measure-drift` | Check section/fiber-map binding, original quotient gauge, same measure/symbol and constructed target metric in the zero defect and conjugacy. |
| `multiplier-reject-holomorphic-adjoint-shortcut` | Check completion and actual adjoint covariance only; no conjugated symbol, adjoint-invariant holomorphic subspace, differential domain or heat law is inferred. |
| `multiplier-reject-faithfulness-or-exact-bound` | Check nonconstant disk symbol, zero and half-point support tests and strict norm bound; preserve all eight claims, earlier dispositions and terminal target. |

## Acceptance

Require exact-head Lean elaboration and any necessary repairs; all predecessor and new
per-module outcomes; resolved public signatures and instance/coercion projections;
all controls; and transitive axiom/runtime audits. Allowed axioms remain only `propext`,
`Classical.choice`, `Quot.sound`. Reject `sorryAx`, unsafe declarations, unreported native
dependencies, missing/failed/unavailable outcomes and root-only evidence of full coverage.

Separately authorized checking may target:

```bash
lake build GRWTSK.Interfaces.PortFiberSectionMultiplier
lake env lean GRWTSK/Interfaces/PortFiberSectionMultiplier.lean
```

These commands are descriptions, not records of execution or permission. Static source
checks and finite rational diagnostics do not establish Lean elaboration, arbitrary-measure
analysis or a kernel audit. Mutable checks and receipts stay outside the math repository.

Remaining mathematics includes optimal bounds under explicit support hypotheses, general
measurable-symbol/L2 realization, holomorphic closedness, adjoint-invariant subspaces,
unbounded or differential multipliers/domains, connections and heat. Arithmetic measures,
elliptic/Picard/theta data, K/KK identification, Weil comparison, residual decay and RH/ABC
remain separate. This bounded multiplier does not resolve those unrelated obligations.
