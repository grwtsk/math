# Standard circle cone and the closed complex disk

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

Owner: `grwtsk/math#983`

Pinned parent: draft PR #978 at exact head
`d901f661103da93c9c4779e2eb3d595d0c5b7ca9`.

Source module:

```text
GRWTSK/Topology/AlgebraicTopology/
  SurfacePolygonStandardCircleConeDisk.lean
```

## 1. Input supplied by the parent stack

The parent source has already replaced the polygon-specific perimeter
bookkeeping by an independently defined standard cone

\[
C(S^1)
 =
\bigl(\operatorname{UnitAddCircle}\times[0,1]\bigr)/\sim,
\]

where

\[
(z,r)\sim(w,s)
\quad\Longleftrightarrow\quad
(z,r)=(w,s)
\ \text{or}\ r=s=0.
\]

In Lean the quotient carrier is `StandardCircleCone`, the source
cylinder is `StandardCircleConeCylinder`, and the exact relation theorem
is

```lean
standardCircleConeConnected_iff
    (p q : StandardCircleConeCylinder) :
  StandardCircleConeConnected p q ↔
    p = q ∨ (p.2 = 0 ∧ q.2 = 0).
```

The same parent increment proves a source-exact homeomorphism

```lean
perimeterConeHomeomorphStandardCircleCone k :
  PerimeterCone k ≃ₜ StandardCircleCone
```

from the authentic unpaired polygon perimeter cone. The present source
therefore has one isolated task: identify this standard cone with the
genuine closed complex unit disk.

## 2. Imported circle and disk objects

Mathlib supplies the homeomorphism

```lean
AddCircle.homeomorphCircle (T := (1 : ℝ)) one_ne_zero :
  UnitAddCircle ≃ₜ Circle
```

where `Circle` is the complex unit sphere. The source names this exact
map

```lean
unitAddCircleHomeomorphCircle : UnitAddCircle ≃ₜ Circle.
```

The target is Mathlib's actual closed unit disk type

```lean
Complex.UnitClosedDisc
```

whose underlying set is the metric closed ball

\[
\{w\in\mathbb C: \lVert w\rVert\le 1\}.
\]

No unrelated abstract disk or cardinality argument is introduced.

## 3. Polar source map

For a source pair `p = (z,r)`, define

\[
F(z,r)=r\,u(z),
\]

where `u` is the imported additive-circle-to-complex-circle
homeomorphism. The source declarations are

```lean
standardCircleConePolarComplexSource :
  StandardCircleConeCylinder → ℂ

standardCircleConePolarDiskSource :
  StandardCircleConeCylinder → Complex.UnitClosedDisc.
```

Because `u(z)` has complex norm one and `r` is nonnegative,

\[
\lVert F(z,r)\rVert=r.
\]

This proves at once that `F(z,r)=0` exactly when `r=0`, and that every
source value lies in the closed unit disk.

The map is continuous before quotienting: the radial coordinate is
included continuously into `ℂ`, the angular coordinate is transported
by the imported homeomorphism and included continuously into `ℂ`, and
complex multiplication is continuous.

## 4. Exact source fibers

The central finite statement is

```lean
standardCircleConePolarDiskSource_eq_iff
    (p q : StandardCircleConeCylinder) :
  standardCircleConePolarDiskSource p =
      standardCircleConePolarDiskSource q ↔
    p = q ∨ (p.2 = 0 ∧ q.2 = 0).
```

For positive radius, equality of polar values gives equality of norms,
so the radial coordinates agree. The common nonzero real scale can then
be cancelled in `ℂ`; injectivity of the imported circle homeomorphism
recovers the angular coordinate. At radius zero every angular coordinate
maps to the origin.

Consequently the polar fibers agree exactly with the existing generated
cone relation:

```lean
standardCircleConeConnected_iff_polarDiskSource_eq.
```

This is stronger than merely showing that the map respects the
quotient. It also supplies injectivity after descent.

## 5. Descent and reconstruction

The source map descends by `Quotient.lift` to

```lean
standardCircleConePolarMap :
  StandardCircleCone → Complex.UnitClosedDisc.
```

Continuity is obtained through the actual coinduced quotient topology.
Its norm is the previously defined quotient radius:

\[
\left\lVert
  \operatorname{standardCircleConePolarMap}(x)
\right\rVert
=
\operatorname{standardCircleConeRadius}(x).
\]

Surjectivity uses the exact polar reconstruction of a closed-disk point
`w`.

* If `w=0`, use the selected cone apex.
* If `w\ne0`, take radius `‖w‖` and normalized direction

\[
\widehat w=\frac{w}{\lVert w\rVert}\in S^1.
\]

Transport `\widehat w` back through
`unitAddCircleHomeomorphCircle.symm`. The identity

\[
\lVert w\rVert\widehat w=w
\]

then gives an exact preimage.

Injectivity follows by quotient induction from the complete source
fiber theorem, rather than from a choice of representatives.

## 6. Homeomorphism and compatibility equations

The standard cone is compact by the parent quotient construction, and
`Complex.UnitClosedDisc` is Hausdorff. The continuous bijection is
therefore promoted using Mathlib's compact-to-Hausdorff theorem:

```lean
standardCircleConeHomeomorphUnitClosedDisc :
  StandardCircleCone ≃ₜ Complex.UnitClosedDisc.
```

The source records three exact compatibility statements:

1. cone radius equals complex norm;
2. the selected cone apex maps to complex zero;
3. the outer cone boundary maps by the imported unit-circle
   homeomorphism.

Composition with the parent source-exact transport gives

```lean
perimeterConeHomeomorphUnitClosedDisc (k : ℕ) :
  PerimeterCone k ≃ₜ Complex.UnitClosedDisc.
```

Thus the authentic unpaired genus-`k+2` polygon perimeter cone is
identified with a genuine closed disk while retaining its exact
boundary coordinate.

## 7. Strict frontier

This increment concerns the **unpaired perimeter cone**. It does not
make the existing map

```lean
coneToFilled k : PerimeterCone k → FilledPolygon k
```

injective. Distinct outer-boundary points paired by the polygon word are
supposed to have the same image in `FilledPolygon k`.

Still open after this increment are:

* the complete fibers of `coneToFilled`;
* its quotient-map or pushout universal property;
* construction of the closed surface as an actual CW complex or
  manifold;
* cellular–singular homology comparison;
* van Kampen and Hurewicz consequences;
* any hyperbolic, trace-formula, Weil–Petersson, GUE, sofic, Chowla,
  zeta-divisor, or Riemann-Hypothesis statement.

## 8. Trust boundary

This note describes authored source candidates only. It does not
represent Lean elaboration, generated-declaration reconciliation,
transitive import review, axiom or unsafe audit, hostile replay, native
or VM evaluation, CI, merge, or theorem promotion.

The required immutable exact-head qualification remains governed by
issue #100. Until that occurs, every declaration in this increment has
status

```text
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED
```
