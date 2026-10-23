# Section-linear leaf: source-bound verification specification

## Status and scope

`SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED`.

This is a static mathematical review/replay specification, not an executable manifest,
parser extension, controller, or receipt. Its isolated root is
`GRWTSK.Interfaces.PortFiberSectionLinear`. Repository: `grwtsk/math`; owner: #230;
consumer boundaries: #177 and #204. The selected commit and tree must be pinned
externally. Neither this document nor a stored proof disposition certifies execution.

The leaf constructs explicit complex-linear operations and their laws on the existing
finite-energy carrier and a.e. quotient. It does not install Mathlib algebraic or normed
instances, construct an inner product or completion, or promote an application target.

## Mandatory predecessors and exact source identities

The immediate prerequisite is `docs/verification/Interfaces/PortFiberSectionQuotient/portfiber-section-quotient-v1.md`, at
`de7c0e77b13a847ff0b507944d6c9dc640453fb1`, Git blob
`afdd4c264debf5359283d75b0be59e5c5cb37f7b`. Retain that specification, its source-binding
erratum, all 50 predecessor local modules, all 114 predecessor control specifications,
all trust requirements, and every source-specific nonclaim at its original scope.

Its prerequisites are still the section-energy specification, Git blob
`1ea7f7165ac48dcb3c3efa0abcb2f2ddc6904feb`, and the v0.16 core target, Git blob
`f4b5a55e253ef353da5969ee119ed84ce767b6ee`. The selected repaired energy source remains
blob `4e0a5294e4dfa0cec63efff7560e73f766cf0b04`, with `identityTwistedFamily (D := D)`.
The quotient source remains `8940c6ece1903f2be6c8ea31d727d7aaaa6d6447`; its interface
remains `ed4f856558e4cb2d96cbd141cd2347688aceee61`. This increment changes none of them.

Add exactly these two local modules:

```text
GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear
GRWTSK.Interfaces.PortFiberSectionLinear
```

The selected coverage is therefore 52 distinct local modules and 122 inherited-plus-new
control specifications. These are requirements, not executed coverage. Reconcile the
full transitive local import closure, including the predecessor optional adapters and
each isolated root. Do not substitute a successful root import for per-module outcomes.
The new interface imports the previous quotient interface; no previous root imports
this leaf. `GRWTSK.lean`, all historical manifests/specifications, and READMEs are unchanged.

The pinned toolchain is still `leanprover/lean4:v4.33.0`; mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`, with the unchanged `lake-manifest.json` binding
all other dependencies. The additional direct mathlib import is `Mathlib.Tactic.Linarith`.
Tactic source syntax is not an assertion that elaboration or tactic evaluation occurred.

## Section operations and energy closure

`sectionZero`, `sectionAdd`, and `sectionSMul` act on the original dependent fiber values
of `BundleSection C hOpen`. Their chartwise holomorphy proofs construct ambient witnesses
from the original witnesses: zero, sum, and multiplication by a constant complex scalar.
The three value theorems bind the operations to those exact values. A measurable or merely
pointwise function is not silently admitted as a holomorphic section.

`normSq_add_le` derives the elementary complex quadratic bound from real square
nonnegativity. `squaredNorm_add_le` retains the same positive metric weights;
`density_add_le` uses their nonnegativity in the `ENNReal.ofReal` conversion.
`energy_add_le` integrates the bound using the preceding density-measurability theorem:

```text
E(s + t) <= 2 * (E(s) + E(t)).
```

This is not additivity of energy, a sharp triangle inequality for a constructed norm, or
an inner-product theorem. `density_smul` and `energy_smul` prove the exact quadratic law
with coefficient `ENNReal.ofReal (Complex.normSq c)`. All energies remain in `ENNReal`;
no `toReal` conversion is used. The scalar law includes zero scalars and infinite energies.
`energy_smul_lt_top_iff` reflects finite energy only with the explicit premise `c != 0`.

`finiteZero`, `finiteAdd`, and `finiteSMul` construct elements of the historical
`FiniteEnergySection M mu hOpen` subtype. Zero energy, the sum bound, and the finite
scalar coefficient supply actual subtype membership proofs. No finite-mass premise,
global integrability shortcut, or new finite-energy carrier is introduced.

## A.e. descent and explicit vector-space laws

`aeEqual_add` and `aeEqual_smul` preserve the historical relation on exact fiber values
for the same measure. `quotientZero`, `quotientAdd`, and `quotientSMul` act on the existing
`SectionQuotient`, using the existing `classOf` and `finiteEnergySetoid` rather than an
energy-value quotient. The binary and unary lifts use those a.e.-compatibility proofs.
`quotientAdd_classOf` and `quotientSMul_classOf` recover the original representative maps.
No representative is selected to define the operations.

Eleven separate law declarations prove associativity, commutativity, both zero identities,
additive inverse by scalar -1, scalar identity, scalar multiplication composition, both
distributive laws, and both scalar-zero identities. `QuotientVectorLaws` names those exact
statements; `quotientVectorLaws` supplies every field from the individual proofs.
The laws are proved by quotient induction and fiber algebra, not assumed from a record.
No `Module`, `AddCommGroup`, `LinearEquiv`, or `LinearIsometryEquiv` instance is installed.

`quotientEnergy_smul` and `quotientEnergy_add_le` descend the exact energy statements.
`quotientEnergy_eq_zero_iff` identifies zero energy precisely with `quotientZero` by the
historical quotient exactness and a.e.-zero characterization. This does not identify
arbitrary equal-energy classes: the preceding constant 1/-1 counterexample remains valid.
Zero-class equality does not recover pointwise values outside the measure's support.

## Gauge binding and failure boundaries

`section_gauge_zero`, `section_gauge_add`, and `section_gauge_smul` use the exact historical
`Gauge.bundleSectionEquiv_value` and `Gauge.fiberEquiv` linear maps. The corresponding
`finiteEnergyEquiv_*` declarations retain the original finite-energy equivalence and
subtype proofs. `gaugeEquiv_zero`, `gaugeEquiv_add`, and `gaugeEquiv_smul` descend through
the unchanged quotient equivalence. `gaugeEquiv_symm_add` and `gaugeEquiv_symm_smul` derive
commutation for its exact inverse using injectivity and the existing inverse laws.

The measure is identical throughout. The target metric is precisely `transportMetric G M`.
A selected independent target metric, changed measure, or arbitrary carrier bijection
cannot replace these parameters and maps without its own proof. The historical
`quotientEnergy_gauge` remains the energy-invariance theorem for this same equivalence.

`energy_not_additive` uses two constant unit sections of finite energy under the Dirac
probability measure at zero, in the unit metric: the sum has energy 4, not 1 + 1.
`zero_scalar_does_not_reflect_finiteness` retains an explicit infinite-total-mass premise;
the unit section then has infinite energy but its zero multiple has zero energy. This
conditional statement does not assert a supplied arithmetic measure or an executed test.

The interface adds eight disjoint small-index claims: finite closure, a.e. compatibility,
representative binding, all eleven vector laws, quadratic quotient energy, zero-class
definiteness, forward/inverse gauge commutation, and the two failure boundaries. The
underlying mathematical declarations are universe-polymorphic. Four preservation theorems
retain the previous local dispositions and terminal target. `.proved` is not audit status.

## Additional hostile controls

| Identifier | Required source-bound rejection or theorem check |
| --- | --- |
| `linear-reject-holomorphy-by-label` | Inspect all three ambient witnesses, exact chart multipliers and value equations; reject arbitrary pointwise sections or a changed base/cocycle. |
| `linear-reject-unproved-finite-closure` | Inspect positivity, sum bound, finite coefficient and all subtype proofs; retain the nonzero premise for finiteness reflection and the zero-scalar infinite-energy boundary. |
| `linear-reject-ae-operation-drift` | Inspect addition and scalar compatibility for the same measure on exact fiber values; energy equality is not the relation. |
| `linear-reject-quotient-or-representative-substitution` | Inspect the original setoid/carrier, both lift well-definedness proofs and representative computation laws; reject a new quotient or arbitrary chosen representative. |
| `linear-reject-vector-laws-by-fields-only` | Check all eleven exact field types and their individual quotient-induction proofs; a field-bearing certificate alone supplies no law. |
| `linear-reject-energy-as-additive-or-injective` | Check both descended energy formulas, zero-class equivalence, unit-plus-unit nonadditivity, and inherited distinct equal-energy/support fixtures; do not promote zero definiteness to energy injectivity or pointwise separation. |
| `linear-reject-gauge-map-or-metric-drift` | Check the original fiber, section, finite-energy and quotient maps, same measure, constructed metric, and exact inverse; no unrelated linear or isometric map substitutes. |
| `linear-reject-promotion-or-coverage-loss` | Reconcile eight claims and four preservation theorems, all predecessor coverage/trust requirements, and absence of aggregate imports; reject automatic bundled instances, Hilbert/completion, adjoint/domain/heat, arithmetic or terminal-target promotion. |

## Acceptance and remaining obligations

Require an externally pinned clean checkout, exact predecessor/blob reconciliation,
all 52 per-module source identities, exact public signatures (including eleven law fields),
all 114 inherited and eight new controls, and a complete transitive axiom/runtime audit.
Only `propext`, `Classical.choice`, and `Quot.sound` remain allowed axioms. Reject `sorryAx`,
unsafe declarations, unreported native dependencies, or uninspected execution effects.
Every required item needs explicit PASS/FAIL/NOT_RUN/UNAVAILABLE with source identity;
missing evidence, source inspection, or root-only success is not a pass. Any source repair
requires a new exact-head reconciliation and invalidates affected prior receipts.

Under a separately authorized exact-head runtime profile, the target descriptions are:

```bash
lake build GRWTSK.Interfaces.PortFiberSectionLinear
lake env lean GRWTSK/Interfaces/PortFiberSectionLinear.lean
```

They are not execution permission. Resource metering, logs, hostile-control execution,
trust/signature audits, and immutable external replay remain with `grwtsk/noeaaeue` or an
explicitly authorized reviewer. Exact-head elaboration and possible repair remain pending.

Further mathematics includes canonical Mathlib algebraic bundling, measurable/integrable
finite pairings, an inner product and norm, completion or closed holomorphic-subspace
analysis, support conditions for pointwise recovery, global operator bounds, section-space
adjoints, differential domains/regularity, connections, and Laplacian/heat transport.
No ambient L2 identification, canonical pointwise representative, arithmetic measure/metric,
base-change/Jacobian theorem, Picard/theta or K/KK identification, B_n, Weil comparison,
residual decay, RH/ABC proof/refutation, issue closure, merge, or runtime authority is supplied.
