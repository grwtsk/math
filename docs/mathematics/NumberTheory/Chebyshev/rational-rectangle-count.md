# Constructed rectangular meshes discharge coverage and traversal premises

Owner #135; numerical supplier #194; canonical/prime consumer #261.
Parent `bd8239473e7c12d6a73e3f1b2599a56b5750e7e0`, tree
`97087ac1d982e3e87a11bd70dc79994f2dc74384`. Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** New and inherited Lean scripts
remain unelaborated. This increment does not evaluate the large zeta contour,
provide its actual source enclosures, or establish its numerical count. It adds
an alternate, constructed-mesh consumer. The preceding arbitrary-contour theorem
and all of its hypotheses remain unchanged, as do sources, pins and public roots.

## 1. What the previous consumer still required

`CanonicalRectangleIndex.count_eq_of_evaluate` already compares the OLD signed
exponential-lift index with the SAME canonical analytic-multiplicity count. An
arbitrary numerical contour still supplied its whole-boundary exclusion, a
continuous reparameterization r with endpoint values zero and one, and an
all-parameter equation identifying its traversal with the four-edge rectangle.
None of those facts follows merely from a closed vertex list or equal carriers.

This increment constructs the domain vertices from finite rational perimeter
marks. It derives full boundary coverage and an actual boundary-valued homotopy
to the maintained traversal. It does NOT weaken the prior general theorem by
removing its hypotheses without proof.

## 2. One unwrapped perimeter coordinate, not a label modulo four

For opposite corners lower=(l,b), upper=(r,t), require l<r and b<t. Define

    ramp(x)=min(max(x,0),1),
    P(x)=(l+(r-l)[ramp(x)-ramp(x-2)],
          b+(t-b)[ramp(x-1)-ramp(x-3)]).

This continuous piecewise-affine function traverses bottom, right, top and left
on the intervals [0,1], [1,2], [2,3], [3,4], respectively. Its endpoint values
are both lower, but the coordinates zero and four are NOT identified as data.
For every j<4 and x in [j,j+1], the source proves the exact side identity

    P(x)=blend(x-j, corner(j), corner(j+1)).

The rational function uses the SAME formulas. Cast lemmas identify its outputs
with the real/complex construction, including both corners of each side.

`RationalRectangleMesh.check n marks` requires n>0, exactly n+1 marks, first
mark zero, last mark four, and, for EVERY i<n, a side j<4 satisfying

    j <= marks[i] <= marks[i+1] <= j+1.

Every coordinate is then computed from the external box and these marks. There
is no separately supplied vertex list that could move the contour. Nonuniform
subdivision is permitted. Repeated marks and zero-width cells are permitted but
still consume their full upstream witness records. Missing/extra marks, wrong
unwrapped endpoints, reversal, doubled traversal, backtracking and a cell that
cuts across a corner are rejected by these sufficient rules. Failure remains
`none`, distinct from a successfully computed `some 0`.

No automatic adaptive-subdivision termination or resource-cost theorem is
claimed. The implementation accepts an externally provided finite mesh and
checks it. It does not certify a parser, serializer, compiler or runtime.

## 3. Complete range and timing are derived

`RealPolygonClock.clock` concatenates real affine cells with the SAME maintained
`FiniteConcatenation.concat` schedule as `PolygonFreeHomotopy.polygonMap`.
The old initial pause and every subsequent dyadic cell remain. The source
constructs a clock A from the marks, with A(0)=0, A(1)=4 and A(u) in [0,4].
On each cell, P is affine. Naturality of the SAME concatenation therefore gives

    gamma_mesh(u)=P(A(u))

for every parameter, not just the vertex times. No uniform-speed, arclength or
quadrature-weight identity is asserted.

A finite bracketing argument constructs a cell containing every x between the
first and last marks. For a nonconstant cell its local parameter is
(x-a)/(b-a); for a constant cell it is zero. The inherited complete-cell-hit
lemma gives a global time realizing that local value, including closed
endpoints. Separately, every geometric boundary point is represented by a
perimeter coordinate in [0,4]. Thus BOTH range directions are obtained:

    range(gamma_mesh)=boundary(rectangle).

The final cell, corners and initial pause are not omitted. Defaulted list
accessors are only interpreted at indices proved to lie in the checked length.

## 4. Orientation is supplied by a boundary homotopy

Let A be the mesh clock, and let B be the maintained four-edge clock built from
marks 0,1,2,3,4. Define the actual domain deformation

    H(lambda,u)=P((1-lambda)*A(u)+lambda*B(u)).

The convex combination is taken in the REAL PERIMETER COORDINATE, not in the
complex plane. It remains in [0,4], so H stays on the entire geometric boundary.
Every intermediate curve is closed, since its endpoint marks are zero and four.
Its initial curve is the literal generated mesh polygon; its final curve is the
unchanged four-edge rectangle with its existing dyadic schedule.

This distinction is essential when the source has zeros inside. Interpolating
opposite complex boundary points of the unit square passes through zero; the
perimeter-coordinate interpolation instead follows its boundary. No source
nonvanishing throughout the interior is assumed in this alignment argument.

The source returns a standard `ContinuousMap.HomotopyWith` carrying all-point
boundary membership and closure. It does not accept a user-supplied homotopy,
orientation flag or invariant-equality field. A reparameterization of the old
dyadic clock is unnecessary for this alternate consumer. No inverse clock,
contour-integral change of variables or equivalence of uniform integration
weights is claimed.

## 5. Compose with the existing actual-source and counting proofs

`RationalRectangleCount.evaluateBox` checks the strict external box bounds and
the mesh, generates its exact domain vertices, then calls the UNCHANGED
`PoleContourPolygonIndex.evaluate`. That call still enforces every source patch,
strict Cauchy margin, domain/image closure, list length and rational image chart.
The numerical result is still a signed `Option Int`.

Actual `RationalPoleContour.Enclosures` are still mathematical proof inputs.
Given them and a passing tube, the old source-lift theorem is nonzero at every
time of the mesh. The derived full range then transfers this nonvanishing to
EVERY point of the geometric boundary. The separate boundary-nonvanishing
premise of the former consumer has now been supplied, not silently dropped.

Composing the constructed boundary homotopy with the SAME normalized source F
produces an actual zero-avoiding source-image homotopy. The old signed index
invariance identifies the mesh index with the positive four-edge index. The
preceding canonical rectangle argument-principle draft then identifies the latter
with the SAME canonical regional analytic-multiplicity count.

At the maintained corners lower=(1/4,0), upper=(5/4,T+1/4), the new theorem has
only the numerical data and these two substantive premises:

    Enclosures(n,data),
    evaluate(T,n,marks,data,image)=some k.

Its target is

    (MirrorCountingRectangle.count T : Int)=k.

There is no additional boundary proof, reparameterization r, all-parameter
alignment equation, imageIndex=k, divisor equality or upper-count premise. The
source function, regional head, analytic orders and previously derived index
are unchanged. A negative returned integer cannot satisfy the actual source
premises; it is not truncated or replaced by its absolute value.

At T=15 a genuine `some 1` result would feed the inherited mirror-completeness
consumer and its same isolated simple line pair. NO such successful target
trace or its source Enclosures is constructed here. Geometry for the top at
61/4 is checked, but the target's source values are not evaluated.

## 6. Controls and evidence

The sourced positive example is the OLD small square with opposite corners
(19/20,-1/20) and (21/20,1/20). Its nine-cell marks include a repeated corner:

    0, 1/2, 1, 1, 3/2, 2, 5/2, 3, 7/2, 4.

All nine records retain the old patch c=1,R=1/10,S=1/2 and actual F(1)=1. The old
image allowance is 3/4, its strict margin 1/4. The constant-one surrogate yields
`some 0`. The source composition has no new boundary or alignment premise.
Removing the zero-width cell's record still fails exact-length accounting.
These Lean finite checks and compositions remain unexecuted. This square is NOT
the large counting rectangle, and its zero index is not a target-region count.

The controls reject reversed/doubled/unclosed mark inventories, a diagonal
corner skip, absent or extra records, degenerate boxes and reuse of the small
square's records at the large target geometry. Boundary nonvanishing is kept
distinct from absence of interior zeros. The old false-value limitation also
persists: a finitely passing fictitious value two at the source center one
cannot supply its actual enclosure, because F(1)=1.

14,133 independent exact-rational assertions passed in EACH normal and optimized
Python run, with identical reports. They use 36 nonuniform geometric meshes,
389 side cells, 1,556 closed-cell-hit specializations, 1,188 explicit coverage
witnesses, 12 synthetic polynomial sources and 21 directed controls. Inputs are
reused across properties. The synthetic sources produced 239 complete cells
with whole-polynomial Taylor variation budgets; their rational image indices
agree with an independent determinant ray routine and the assigned polynomial
multiplicities. These are not zeta patches or a refinement of the Lean program.

6,224 finite parameter samples check the perimeter-clock deformation; they do
not prove universal continuity or replace the new all-point source argument.
No floating/transcendental arithmetic, zeta evaluation, actual zero database,
root finder, target-contour source evaluation or Lean execution occurred. The
initial diagnostic had an extra closing parenthesis; it was repaired before
the successful paired runs. No mathematical guard or error bound was relaxed.

Static name/hash/import/TOML and sparse additive-patch checks do not establish
elaboration, exact types, compiler correctness or full transitive axiom review.
All predecessor obligations, generated declarations and large finite reductions
persist. Pinned elaboration, proof-script repairs if needed, and independent
trust review remain the acceptance gate. No worker/replay request, execution
hold release, merge or issue closure is represented.

The remaining numerical supplier is now the actual complete target source
Enclosures and a successful finite trace. This work does not establish K(15)<=1,
a completed zero inventory, omitted-divisor tails, strict prime margins,
Legendre or RH. The unrelated webpage/diagram is not mathematical evidence
for these proofs and is not modified by this source increment.
