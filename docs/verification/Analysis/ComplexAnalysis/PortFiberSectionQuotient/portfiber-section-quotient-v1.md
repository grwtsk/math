# Finite-energy section quotient: source-bound verification specification

## Status and scope

`SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED`.

This is a static mathematical review/replay target, not an executable manifest,
controller, receipt, or authorization. The isolated root is
`GRWTSK.Interfaces.PortFiberSectionQuotient`. Owner: #230; consumers: #177 and #204.
An external record must pin the commit and tree containing this file before replay.
A source declaration or stored portfolio proof term does not certify its own checking.

The increment adds the following two Lean modules and this specification, and makes
one source-binding repair in the preceding energy module:

```text
GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
GRWTSK.Interfaces.PortFiberSectionQuotient
```

The new root imports the preceding section-energy interface and the quotient module.
The quotient module imports the preceding energy module and `Mathlib.Tactic.NormNum`.
The only existing-source change is in `HolomorphicLineSectionEnergy.scalarSection`:
`identityFamily D` becomes `identityTwistedFamily (D := D)`, the actual constructor
exported by `HolomorphicLineSections.lean` in the `HolomorphicLineCocycle` namespace.
The public type and all surrounding statements and proof implementations are retained.
No core module, root import, manifest, dependency pin, README, residual plan, or terminal
target changes. Neither the v0.16 core nor the energy leaf imports this new root, and
`GRWTSK.lean` remains unchanged.

## Exact mandatory predecessors

The direct prerequisite is `docs/verification/Interfaces/PortFiberSectionEnergy/portfiber-section-energy-v1.md`, introduced
at `c56a76ec52426c987474117132d6d555b234fc48`, Git blob
`1ea7f7165ac48dcb3c3efa0abcb2f2ddc6904feb`. Historical and selected source identities are:

```text
Historical energy blob  b6dbc70b77eba1a97432843250ab99b02d19b2b2
Selected repaired blob  4e0a5294e4dfa0cec63efff7560e73f766cf0b04
Unchanged interface     4171bdc03b3e63e95aef73f64c8b70924271d839
```

The selected energy blob must differ from its historical blob by only that one
constructor-binding line. The old static specification's `identityFamily` reference
is corrected by this explicit erratum, not treated as an exported declaration.
Neither source state has a claimed kernel or replay receipt.

The mandatory v0.16 prerequisite is unchanged:
`docs/verification/Interfaces/PortFiberHolomorphyCore/portfiber-holomorphy-core-v0.16.toml`, Git blob
`f4b5a55e253ef353da5969ee119ed84ce767b6ee`.

Require every predecessor declaration (with the explicit constructor repair above),
all 48 predecessor local modules, all 106
inherited control specifications, and all predecessor trust and acceptance policies
at their original scopes. Add the two modules above and eight controls below:
required coverage is 50 distinct local modules and 114 control specifications.
These are required outcomes, not executed or passing checks. Reconcile the full
transitive local import closure and every exact declaration type, not only root imports.

The historical energy leaf's statement that it has not constructed a quotient stays
true of that leaf. This separate increment supplies a quotient of its carrier; it does
not silently reinterpret the predecessor subtype as a quotient or change its status.
The toolchain remains `leanprover/lean4:v4.33.0` and the mathlib revision remains
`db584cd6d46c92f209a44c0f1c829460d327499d`; all other pins remain in the existing manifest.

## Construction and exact public boundaries

`aeEqual_refl`, `aeEqual_symm`, and `aeEqual_trans` establish equivalence of the
historical `AEEqual` relation on actual fiber values. `finiteEnergySetoid` restricts
that relation to `FiniteEnergySection M mu hOpen`. Its relation is not equality of
energies, pointwise equality everywhere, or equality of arbitrary chosen chart data.

`SectionQuotient` is `Quotient` of that exact setoid. `classOf_eq_iff` retains both
soundness and exactness: two classes are equal precisely when their representative
fiber values agree almost everywhere for the selected measure. `classOf_surjective`
supplies representative existence, not a canonical section or point-evaluation map.

`quotientEnergy` descends the existing energy with `Quotient.lift` and the actual
`energy_congr_ae` theorem. `quotientEnergy_classOf` recovers the representative's
energy. `quotientEnergy_lt_top` uses quotient induction and the finite-energy subtype
proof. `quotientEnergy_classOf_eq_zero_iff` retains the historical a.e.-zero statement.
No additive zero instance, norm, inner product, or completed section space is inferred.

`finiteEnergyEquiv_ae_iff` preserves and reflects the relation using the historical
`finiteEnergyEquiv` and `aeEqual_gauge_iff`. `finiteEnergyEquiv_symm_ae_iff` derives the
inverse relation from that exact equivalence's inverse laws. It does not replace the
inverse by an unrelated map or recast an independently selected metric.

`gaugeForward` and `gaugeBackward` are well-defined quotient lifts. `gaugeEquiv`
constructs both inverse identities by quotient induction and the historical subtype
equivalence. `gaugeEquiv_classOf` and `gaugeEquiv_symm_classOf` bind both maps to their
representative maps. `quotientEnergy_gauge` descends the original energy invariance.
Every statement keeps the identical measure and the constructed `transportMetric`.
No changed-measure, unproved-target-metric, uniform-norm, or linear-isometry claim follows.

`diracFiniteSection` is a positive producer for every actual section at a point mass:
the real squared length has finite `ENNReal.ofReal` density. This does not provide
finite energy for an arbitrary measure. `classOf_dirac_eq_iff` identifies classes with
equal values at that exact support point, using measurable singletons on the actual
complex base subtype and the pinned `ae_dirac_eq` theorem.

## Concrete positive and negative fixtures

`coordinateAt` and `constantAt` restrict the historical coordinate and scalar-section
producers to finite-energy subtypes for the chosen point mass.

`coordinate_zero_same_class` identifies the coordinate and zero sections under the
Dirac probability measure at zero. `same_class_not_pointwise_equal` retains this
class equality while their values at one are respectively one and zero. This rejects
unconditional pointwise evaluation or literal representative equality on the quotient.

`changed_measure_separates` proves the same underlying coordinate and zero sections
are not equivalent for the point mass at one. This is a comparison of two internally
well-typed quotient equalities, not an ill-typed equality across different quotient types.

`equal_energy_distinct_classes` uses the constant one and negative-one sections for
the same point mass at zero. Their energies are equal but their classes are distinct.
Thus quotienting by energy values would collapse distinctions that `AEEqual` retains.

`PortFiberSectionQuotient` adds eight disjoint small-index claims: exact quotient
equality, representative energy, quotient finiteness, gauge representative binding,
quotient gauge energy, Dirac class equality, the support counterexample, and the
equal-energy counterexample. `original_branch_unchanged`, `new_branch_proved`,
`target_unchanged`, and `retarget_preserves_new` retain the predecessor portfolio and
target. The underlying mathematical source statements are universe-polymorphic.

## Additional hostile controls

| Identifier | Required exact-source check or rejection |
| --- | --- |
| `quotient-reject-relation-drift` | Check all three equivalence laws, `finiteEnergySetoid`, both directions of `classOf_eq_iff`, and `classOf_surjective`; relation metadata cannot replace the actual a.e. predicate. |
| `quotient-reject-representative-energy-drift` | Check the `Quotient.lift` congruence proof and `quotientEnergy_classOf`; choosing or merely naming a representative does not prove well-definedness. |
| `quotient-reject-finiteness-by-name` | Check `quotientEnergy_lt_top`, its subtype proof dependency, and the explicit point-mass scope of `diracFiniteSection`; no general finite-energy membership is supplied. |
| `quotient-reject-forward-only-gauge` | Check relation preservation and reflection, the separately derived inverse relation, both lifts, and both inverse identities in `gaugeEquiv`. |
| `quotient-reject-map-metric-measure-drift` | Check both representative computation laws and `quotientEnergy_gauge` against the same historical equivalence, measure, and constructed transported metric. |
| `quotient-reject-pointwise-recovery` | Check `classOf_dirac_eq_iff`, `coordinate_zero_same_class`, and `same_class_not_pointwise_equal`; reject unconditional evaluation away from support or equality of representatives. |
| `quotient-reject-measure-or-energy-collapse` | Check `changed_measure_separates` and `equal_energy_distinct_classes`; neither changed measures nor equal scalar energy may replace the exact relation. |
| `quotient-reject-linear-hilbert-target-promotion` | Check all eight claim types and four preservation declarations; a quotient and energy-preserving bijection do not construct linear operations, a norm, completion, operator domains, heat transport, or a terminal target theorem. |

## Acceptance, evidence, and remaining obligations

Require a clean checkout of the externally selected exact head, the exact repaired
energy blob, all other unchanged predecessor blobs and pins, all 50 local-module
outcomes, all 114 control outcomes, complete public
signature reconciliation, a transitive axiom audit, and a runtime-safety audit. Preserve
the allowed-axiom set `propext`, `Classical.choice`, and `Quot.sound`. Reject `sorryAx`,
unsafe declarations, unreported native dependencies, omitted modules, wrong identities,
or root-only success. Report PASS, FAIL, NOT_RUN, and UNAVAILABLE explicitly.

A source repair requires a new exact-head review and receipt; no earlier outcome carries
across an uninspected change. Effectful replay, resource metering, immutable logs, and
authorizing evidence remain outside this repository under separately granted authority.
This document grants no execution permission and reports no build or kernel acceptance.

Remaining: exact-head elaboration and any repairs, predecessor checking, full signature
and trust/runtime audits, executed hostile controls, and an immutable external replay.
The mathematical next boundaries are additive/linear closure of finite-energy sections,
compatibility of those operations with `AEEqual`, finite pairings and integrability,
an inner product, a completion or closed-holomorphic-subspace theorem, pointwise support
hypotheses, and bounded/global or differential operator domains and adjoints.

No identification with all measurable L2 sections, holomorphic closedness, canonical
representative, source-specific elliptic measure/metric, base-change or Jacobian theorem,
Picard/theta or K/KK identification, Laplacian/heat intertwiner, arithmetic supplier,
B_n, Weil comparison, convergence, residual decay, or RH/ABC proof or refutation is added.
