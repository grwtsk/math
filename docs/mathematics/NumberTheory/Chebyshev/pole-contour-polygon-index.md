# A finite rational polygon index with an explicit logarithmic refinement

Owner #135; numerical supplier #194; canonical/prime consumer #261.
Parent `8f74d7f42623d93a5fa5b6ceb288bd2f17e6e170`, tree
`65242adeca66068c3a17925f847f557b6deeeaea`. Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** The mathematical construction
and its Lean proof scripts are source candidates. No new or inherited Lean
script has been elaborated or kernel accepted. The finite rational algorithm
below is no longer an unconnected diagnostic crossing routine: a source proof
constructs its continuous logarithm and identifies the computed integer with
the EXISTING exponential-lift index. The proof is not an execution receipt.
No large-contour evaluation, argument principle, regional count or RH is supplied.

## 1. The computational result has a genuine failure case

`RationalPolygonIndex.evaluate n vertices` returns `Option Int`. The guard
requires n>0, exactly n+1 literal rational complex vertices, exact closure, and
a sufficient condition on EVERY consecutive edge, including the final edge.
The two endpoints must lie in one COMMON STRICT coordinate half-plane:

    Re<0, Re>0, Im>0, or Im<0.

The same half-plane then contains the entire closed affine segment. In
particular that segment cannot contain zero. These tests use only exact rational
sign comparisons; the index itself uses integer subtraction and finite addition.
No pi, argument, logarithm, exponential, division or square root is evaluated by
this finite routine. It does not choose an integer by rounding a floating sum.

Failure is `none`, not `some 0`. A constant nonzero polygon can legitimately
return `some 0`. Defaulted accessors cannot certify absent data because the
exact lengths and each consumed position remain checked. This is not a qualified
parser or compiler implementation, and no runtime complexity claim is made.

The coordinate-half-plane condition is sufficient, not necessary. For example,
the nonzero chord from 1 to i has no common STRICT coordinate half-plane at its
two endpoints. It is rejected, although its midpoint subdivision passes.
The source includes the corresponding diamond and split-diamond controls.
A general subdivision termination/refinement theorem is NOT supplied here.

## 2. Compute signed branch transitions, not endpoint principal arguments

For a rational vertex a, set

    b(a)=1 when Im(a)<0, and b(a)=0 otherwise.

For each edge from a to b, select the negative chart exactly when both real
coordinates are strictly negative. Its integer contribution is

    d(a,b)=b(b)-b(a) if Re(a)<0 and Re(b)<0; otherwise 0.

The algorithm computes k=sum_i d(v_i,v_(i+1)) over the COMPLETE ordered chain.
A downward crossing of the negative real ray contributes +1; the reverse
contributes -1. A crossing of the positive ray contributes zero. The output is
signed Z, not a natural-number conversion. Self-intersections, pauses and
repeated traversal are not silently removed or replaced by set membership.

The convention Im=0 -> b=0 is deliberate. A crossing split at a negative-real
vertex is counted once. A tangent arrival/departure cancels. An edge along the
negative ray is permitted when its endpoints remain strictly negative; it is
not an origin crossing. Reversing an edge negates its contribution, including
these boundary cases. Counting every imaginary sign change without the
left-chart condition would count the wrong ray as well.

## 3. The two charts are actual continuous logarithms on their domains

The first chart is the principal log l_0(z)=log(z), used only on an edge proved
to remain in its slit plane. The second is

    l_1(z)=log(-z)+pi*i.

It is continuous throughout Re(z)<0 and exponentiates to z. The pi*i shift
cannot be omitted: log(-z) alone exponentiates to -z. Pinned Mathlib's exact
argument-negation identities imply, on the left half-plane,

    l_1(z)=log(z)+b(z)*(2*pi*i).

The negative real axis is included with b(z)=0, consistently with the upstream
principal-argument convention (-pi,pi]. No sampled continuity, numerical
argument unwrapping, or caller-supplied branch integer replaces this identity.
The proofs use the actual pinned Arg and Log files, not a newer winding API.

For each admitted edge, its selected chart l_i is continuous on EVERY parameter
and satisfies

    l_i(v_(i+1))-l_i(v_i)
      =log(v_(i+1))-log(v_i)+d_i*(2*pi*i).

The rational comparisons are transported to the same literal complex coordinates.
No different polygon is substituted during the analytic proof.

## 4. Construct the full continuous lift and compute its jump

Let K_i be the computed integer prefix sum before edge i. Define lifted vertices

    L_i=log(v_i)+K_i*(2*pi*i).

On the entire i-th affine edge x_i(t), the constructed logarithm is

    L_i(t)=l_i(x_i(t))-l_i(v_i)+L_i.

Its start is L_i, its finish is L_(i+1), and exp(L_i(t))=x_i(t).
The shifts at the shared vertices therefore GLUE, rather than being independent
principal logarithms with branch jumps. The construction retains all edges and
uses the SAME `FiniteConcatenation.concat` and dyadic schedule as the maintained
`PolygonFreeHomotopy.polygonMap`, including its initial pause and closing edge.
The existing pointwise naturality theorem proves equality after exponentiating.

The globally continuous lift L consequently satisfies

    exp(L(t))=polygonMap(t),
    L(1)-L(0)=k*(2*pi*i).

Exact polygon closure cancels the principal endpoint logs but does NOT cancel
the accumulated period. `winding_eq_of_lift` identifies this k with the existing
`ExponentialLoopIndex.winding`. There is no free premise asserting the target
index, no externally supplied continuous logarithm, and no new invariant whose
definition merely repeats the finite algorithm.

`checkedLoop` also constructs the actual punctured-plane loop for every accepted
polygon; its nonvanishing follows from the full lift. Thus the generic refinement
is not vacuous for lack of a proved nonzero loop. The square control composes
its finite guard with this construction and targets mathematical winding one.
All these Lean proof scripts and finite decisions remain unexecuted.

## 5. The old analytic source consumes the computed integer

`PoleContourPolygonIndex` retains the unchanged `RationalPoleContourTube.check`,
`Enclosures`, endpoint maps, global free homotopy and its winding invariance.
Its composite finite function first checks those tube data, then invokes the
polygon checker on the SAME literal image list.

Given the actual source enclosures, its soundness candidate derives

    compositeEvaluate(n,domain,records,image)=some k
      ==> sourceIndex=k.

The prior free hypothesis `imageIndex=k` is discharged by the finite-log
construction. It is not silently retained under a new certificate name. All
actual zeta-value enclosures, all-point variation bounds, input/source identities,
strict tube margins, exact lengths and both closures still remain necessary.
A false source-value ball cannot be certified by computing a polygon index.

The old SMALL pole square has the same constant-one surrogate. It passes the
new rational polygon gate and gives `some 0`; the composed source theorem uses
the unchanged actual F(1)=1 enclosures, without an additional index premise.
This is a regression/control case, not the large target counting rectangle.

The maintained target is still

    Omega_15={s : 1/4<Re(s)<5/4, 0<Im(s)<61/4}, K(15)<=1.

A computed signed index is NOT, by itself, a regional zero count. The argument
principle must still connect the chosen lift index to the same analytic divisor,
with correct boundary, orientation, traversal and source-normalization facts.
A successful complete tube for that large contour is also still absent.
No analytic upper-count premise is discharged merely by adding this algorithm.

## 6. Controls and evidence

The synthetic square, reverse and doubled traversal give 1, -1 and 2. Negative
ray vertices, ray tangencies, ray edges, repeated vertices and accepted constant
zero-index loops are distinct from failure. Missing/extra/changed closure data,
origin vertices, origin-crossing chords and zero-edge inventories reject.
The nonzero unsplit diamond fails the sufficient chart gate; its midpoint
subdivision succeeds with index one. An explicitly proved nonzero rejected
chord demonstrates why rejection must not be interpreted as a zero witness.

17,364 exact-rational assertions passed in EACH of normal and optimized Python
modes, with byte-identical reports and explicit exceptions active in both.
The edge enumeration has 2,304 ordered pairs: 1,440 pass the chart condition and
864 do not. For every admitted pair, an independent determinant-based ray test
agrees with the branch contribution and an exact collinearity/dot-product test
excludes zero on the segment. The 240 constructed rational polygons have index
histogram -1:64, 0:48, 1:64, 2:64. Reversal, cyclic starts, doubling, chosen
midpoint subdivisions, backtracking and malformed records are tested separately.
There are nineteen directed controls. Inputs are reused across properties;
these assertion counts are not counts of independent zero certificates.

5,220 additional ORDINARY comparisons at 90 decimal digits passed on 69 synthetic
polygons, with diagnostic tolerance 1e-75. These evaluate the actual log charts,
local lift seams, exp of the lifted samples, total jumps and an independent
principal-ratio angle sum. They are not outward-rounded interval arithmetic
or proofs of whole-edge continuity. No zeta value, root finder, actual zero list
or target contour was evaluated. Python is a separate implementation; it did
NOT execute the Lean functions or establish their compiler/parser refinement.

The five new Lean files have 544 lines, 48 theorem commands, 24 definitions and
two named instances: 74 explicit source names, not accepted-proof counts.
Static source/hash/import/TOML checks and sparse patch application are separate
from elaboration or independent trust review. The selected manifest catalog is
not a complete transitive import or axiom closure. The prior large finite
reductions and every inherited acceptance obligation remain mandatory.

Pinned elaboration, possible proof-script repairs, and independent transitive
trust review remain the acceptance gate. The next analytic work is the actual
large-contour enclosures and the argument-principle/source-divisor connection.
The complete canonical inventory, omitted-zero tail and strict prime margins
remain independent. No worker request, execution-hold change, merge, issue
closure, Legendre proof or RH conclusion is represented.
