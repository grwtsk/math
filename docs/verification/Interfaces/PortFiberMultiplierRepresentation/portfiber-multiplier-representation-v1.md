# Bounded holomorphic representation: static verification specification

## Scope and source binding

SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.

This is a static mathematical specification, not an executable manifest, receipt,
controller, or grant of execution authority. Owner: #230. Consumers: #177 and #204.
Select and pin the commit and tree externally. The isolated target is
`GRWTSK.Interfaces.PortFiberMultiplierRepresentation`.

Exactly two new Lean modules and this document comprise the increment:

```
GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
GRWTSK.Interfaces.PortFiberMultiplierRepresentation
```

The mathematical parent is `3ec2344d2c57f3e6fb50ef34ab35bc6e6b2571ce`.
Its immediate source, interface and static specification are respectively:

```
HolomorphicLineSectionMultiplier.lean     4daee721caadc02e796fe93d2f30b4799b0a80db
PortFiberSectionMultiplier.lean          8648c218d103f7ed154f2bed81a752b05015ec9e
portfiber-section-multiplier-v1.md        d162fa648bdf733348b2623d94c225897c689d2e
```

Retain all 62 predecessor module requirements and all 162 controls, every earlier
source-binding erratum and each historical scope. Two modules and eight controls give
64 planned local-module requirements and 170 control specifications, not executed
coverage. Reconcile the entire transitive import closure at the selected head; this
arithmetic does not stand in for import discovery or exact per-module outcomes.

The toolchain remains `leanprover/lean4:v4.33.0`; mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`. All dependency pins, predecessor sources,
roots, specifications, residual plans and terminal-target dispositions are preserved.
No earlier root imports this leaf. The new direct upstream imports are
`Mathlib.Algebra.Algebra.Hom` and `Mathlib.MeasureTheory.Measure.OpenPos`.

## Canonical symbol algebra

`boundedSubring X` is a subring of the exact historical holomorphic-section ring.
Membership is the proposition that a finite nonnegative uniform bound exists.
Zero, one, addition, negation and multiplication have derived boundedness proofs.
`BoundedSymbol X` inherits that commutative ring. Its identity includes the function,
not a numerical bound or a chosen witness. It is not a quotient by a.e. equality.

`ofMultiplier` forgets only the numerical-bound choice. `toMultiplier` selects a witness
to call the existing operator producer and retains the original symbol definitionally.
`quotientRepresentation_ofMultiplier` and `completedRepresentation_ofMultiplier` prove
that this choice recovers the old operators, regardless of the selected bound witness.

`BoundedSymbol.constants` is an actual unital ring homomorphism from complex scalars.
The single new scoped instance `BoundedSymbol.symbolAlgebra` uses precisely that map.
`algebraMap_eq_constants` and `smul_value` bind the scalar structure to pointwise complex
multiplication. Audit scope activation and all algebra/module/coercion projections.
No norm, Banach structure, star operation or alternative holomorphy predicate is installed.

## Actual representations

`quotientRepresentation` is a unital ring homomorphism into the original continuous
complex-linear quotient endomorphisms. Additivity and multiplication are proved by the
same representative operations and the original a.e. relation, not by dimension or labels.
`quotientAlgHom` additionally binds the complex algebra map to the original constant action.

`completedRepresentation` applies the old `completeMap` to those exact operators.
Its unit and composition laws use the previous completion theorems.
`completedAlgHom` retains the same complex scalar binding. Application and embedding
identities identify all four bundled maps with the old producer; no new operator supplier
is assumed. The completed image commutes because the source ring is commutative.
This does not assert star closure, a C-star algebra or continuity of the representation
for the inherited function-subspace topology on symbols.

`completedRepresentation_bound` accepts any valid pointwise bound on the same symbol,
then derives the corresponding operator-norm upper bound using bound-independence.
There is no optimal-norm assertion, and the scalar bound remains distinct from an operator.
Gauge conjugacy retains the old gauge, exact inverse, same symbol, same measure, and the
constructed transported metric. No residual plan or terminal proposition is modified.

## Detection and faithfulness

`quotientRepresentation_congr_ae` needs only a.e. equality of symbol values.
The converse in `quotientRepresentation_eq_iff_ae` requires an actual finite-energy
holomorphic bundle section whose value is nonzero almost everywhere. Apply the operators
to its original class, recover a.e. equality of the two products, and cancel its nonzero
fiber value. No global frame or canonical representative is inferred.

`completedRepresentation_eq_iff` reflects equality through the old injective `completeMap`;
completion introduces no additional kernel. With the same detecting section, completed
operator equality is also equivalent to a.e. equality of symbols.

`quotientRepresentation_injective` and `completedRepresentation_injective` additionally
require `Measure.IsOpenPosMeasure` on the actual base subtype. The old holomorphic-section
continuity theorem and pinned `Measure.eq_of_ae_eq` turn a.e. equality into equality of
functions. Positivity on every nonempty open is not replaced by nonzero total mass.

`finiteUnit` constructs the detecting section for the identity cocycle and unit metric
under the explicit hypothesis `mu univ < infinity`, using the historical unit-energy
identity. `identityBundle_faithful` combines that construction with open-set positivity.
Finite mass is used only for this unit-section producer, not for the general representation
or detection theorems. No such detector is postulated for every nontrivial line bundle.

## Failure fixture

`Fixtures.diskSymbol` is the old nonconstant unit-disk coordinate, now an actual element
of the canonical symbol algebra. Evaluation at the old half point proves it nonzero.
`nonzero_symbol_in_kernel` nevertheless maps it to zero under the completed representation
for Dirac mass at the center. This is a nonzero measure and retains the same domain and
identity metric. It blocks unconditional faithfulness and full-support inference from
nonzero mass. The old strict-bound, changed-support, zero-measure and non-self-adjoint
phase fixtures remain mandatory.

## Additional controls

| Identifier | Required check or rejection |
| --- | --- |
| `repr-reject-bound-in-symbol-identity` | Check subring closure, proof-valued membership, extensionality, ofMultiplier/toMultiplier and both old-producer equalities; reject dependence on a chosen bound. |
| `repr-reject-detached-scalar-map` | Check constants, the single scoped algebra instance, both AlgHom scalar laws and application bindings; reject conflicting inherited scalar actions. |
| `repr-reject-wrong-composition-or-star-promotion` | Check unit/add/product/scalar laws and commuting image in the actual operator multiplication order; reject inferred star closure or C-star status. |
| `repr-reject-completion-map-substitution` | Check the canonical embedding identity and completed equality reflection; reject unrelated completion maps or loss of kernel information. |
| `repr-reject-bound-or-gauge-substitution` | Check the any-valid-bound estimate and historical gauge conjugacy with the same measure/symbol and transported metric; reject optimal norm or residual updates. |
| `repr-reject-missing-detecting-section` | Check both directions of a.e. detection, finite-energy membership and nonvanishing almost everywhere; reject a witness-free converse. |
| `repr-reject-missing-support-or-unit-integrability` | Check open-set positivity, section continuity, the finite-unit producer and faithful corollary; nonzero mass and a formal unit do not suffice. |
| `repr-reject-counterexample-or-target-erasure` | Check the nonzero disk symbol in the completed kernel, all eight claims and four preservation equations; reject terminal-target promotion or erasure of inherited failures. |

## Acceptance

Require exact-head Lean elaboration and repairs, resolved public signatures and instance
projections, complete per-module outcomes, all inherited/additional controls, and transitive
axiom/runtime audits. Allowed axioms remain only `propext`, `Classical.choice`, `Quot.sound`.
Reject `sorryAx`, unsafe declarations and unreported native dependencies. Missing, failed,
unavailable and root-only outcomes cannot be promoted to completed verification.

Under separately authorized local verification, the isolated target descriptions are:

```sh
lake build GRWTSK.Interfaces.PortFiberMultiplierRepresentation
lake env lean GRWTSK/Interfaces/PortFiberMultiplierRepresentation.lean
```

These commands are not execution receipts. Source inspections and finite arithmetic
checks do not establish Lean elaboration, arbitrary-measure theorems or transitive trust.

Remaining mathematics: optimal norm criteria, a normed symbol algebra and operator-norm
continuity, source-specific full-support measures and detectors, holomorphic closedness/L2
realization, adjoint-invariant domains, differential operators, heat and K/KK comparisons.
No arithmetic supplier, Weil comparison, residual decay or RH/ABC theorem is supplied.
