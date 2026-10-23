# Standard circle-cone transport for the authentic polygon perimeter

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

Owner: `grwtsk/math#975`

Direct parent: draft PR #972, exact head
`525457c57b9d5b040bbe0c3be46f80c7e4eaaaa0`.

## Mathematical purpose

The previous surface-topology stack has already separated three objects
that must not be conflated:

1. the genuine unpaired polygon perimeter `UnpairedPerimeter k`,
   retaining all original directed side identities;
2. the paired boundary one-skeleton, where opposite oriented sides are
   identified;
3. the radial filled quotient, where the side pairing occurs only on
   the outer boundary.

PR #946 supplies a source-specific homeomorphism

```lean
perimeterUnitCircleHomeomorph k :
  UnpairedPerimeter k ≃ₜ UnitAddCircle
```

and PR #972 constructs the authentic topological cone

```lean
PerimeterCone k =
  (UnpairedPerimeter k × unitInterval) /
    ((x, 0) ~ (y, 0)).
```

The remaining disk theorem should not have to repeat any polygon-edge
combinatorics. This increment therefore transports the entire authentic
cone to a cone built directly from Mathlib's standard unit additive
circle.

## The independently defined standard cone

The new source defines

```lean
StandardCircleConeCylinder :=
  UnitAddCircle × unitInterval
```

and an inductive relation with one generator family only:

```lean
StandardCircleConeStep.apex (x y) :
  (x, 0) ~ (y, 0).
```

Its equivalence closure is characterized exactly:

```lean
standardCircleConeConnected_iff :
  StandardCircleConeConnected p q ↔
    p = q ∨ (p.2 = 0 ∧ q.2 = 0).
```

Thus no positive-radius points are identified unless their complete
circle/radius source data agree. The quotient carries the actual
coinduced Mathlib topology. Its quotient projection is continuous and
a quotient map. The radial coordinate descends continuously. The outer
boundary map

```lean
standardCircleConeBoundary :
  UnitAddCircle → StandardCircleCone
```

is injective because radius one is outside the collapsed apex fiber.
The quotient is compact as a quotient of the compact
`UnitAddCircle × unitInterval`.

## Transport through the source perimeter homeomorphism

On cylinder sources, define the forward and inverse maps

```lean
(x, r) ↦ (perimeterUnitCircleHomeomorph k x, r)

(z, r) ↦ ((perimeterUnitCircleHomeomorph k).symm z, r).
```

Both maps are continuous. The exact fiber theorems for the two cone
relations show that both maps preserve their respective equivalence
relations. They therefore descend by genuine `Quotient.lift` maps

```lean
perimeterConeToStandardCircleCone k :
  PerimeterCone k → StandardCircleCone

standardCircleConeToPerimeterCone k :
  StandardCircleCone → PerimeterCone k.
```

The inverse laws are proved by quotient induction and the two inverse
laws of the already supplied perimeter-circle homeomorphism. No
cardinality argument, arbitrary finite reindexing, or assumed cone
functor is used.

The principal source candidate is

```lean
perimeterConeHomeomorphStandardCircleCone k :
  PerimeterCone k ≃ₜ StandardCircleCone.
```

It has explicit compatibility theorems for:

- the real radial coordinate;
- the selected apex;
- the authentic polygon perimeter outer boundary;
- the inverse standard-circle boundary parameterization;
- genus-two and genus-three source fixtures.

In particular,

```lean
perimeterConeHomeomorphStandardCircleCone k
    (coneBoundary k x)
  =
standardCircleConeBoundary
    (perimeterUnitCircleHomeomorph k x).
```

This retains the exact source perimeter identity before transport and
does not change the already formalized noninjective map from the cone
into the paired radial filling.

## What this closes

At source level, the polygon-specific cone problem is reduced to one
standard topology theorem:

```lean
StandardCircleCone ≃ₜ
  {z : ℂ // z ∈ Metric.closedBall 0 1}.
```

A later increment can prove that theorem by a source-exact polar map,
with the zero-radius fiber handled by the cone quotient and every
positive radius handled by the circle coordinate.

## What remains open

This source does not construct the polar homeomorphism to the complex
closed disk. It does not prove that `coneToFilled` is the adjunction or
pushout quotient, characterize all fibers of that map, or construct a
CW surface or manifold structure. It proves no cellular/singular
comparison, van Kampen theorem, Hurewicz theorem, hyperbolic metric,
geodesic-length theorem, Selberg or Weil–Petersson statement, GUE
limit, sofic/Chowla result, zeta-divisor theorem, or Riemann
Hypothesis consequence.

## Trust boundary

The branch is source-only. No Lean or Lake command, native or VM
evaluation, workflow, cache, executor, generated-declaration
reconciliation, theorem-type extraction, axiom/unsafe audit, hostile
fixture replay, merge, or issue closure is represented here.

Promotion requires an immutable exact-head review under issue #100,
including:

1. elaboration of the exact source and inherited stack;
2. generated declaration and exact public-type reconciliation;
3. `--trust=0` and warning-as-error replay;
4. transitive axiom, unsafe, import, and native-dependency review;
5. hostile tests for the apex, positive-radius separation, forward and
   inverse quotient descents, radial compatibility, and outer boundary;
6. source/blob/SHA binding to the accepted receipt.
