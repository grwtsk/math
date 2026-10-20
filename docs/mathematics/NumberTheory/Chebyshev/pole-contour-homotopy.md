# Global zero-avoiding free-loop homotopy of the checked contour

Owner #135; numerical supplier #194; downstream canonical consumer #261.
Exact parent `99dd9852d19d2cdf61ef56af350275dd147575ca`, tree
`4bb9763c7505de1603c27c58f6bb5a5e06e46580`. Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** No new or inherited Lean script
has been elaborated or kernel accepted. This increment constructs a global
homotopy SOURCE CANDIDATE. It does not compute a winding number, prove a zero-count
formula, certify the large rectangle, or supply the regional upper count. All
inherited source, error allowances, exact enclosures, targets and pins persist.

## 1. Reuse the actual maintained parent

The parent differs from the earlier local-only right-rectangle proposal. It
contains `RationalPoleContour`, `RationalPoleContourTube`, `PolygonTube`, and
`MirrorCountingRectangle`. Those are reused; no older local patch is overlaid.

The maintained finite checks already bind every consecutive edge to one exact
source patch, check both chain closures and all list lengths, and prove that
all source/image interpolations on each edge avoid zero. The source remains
F=`CriticalStripHeightDescent.poleNormalizedZeta`, with its sourced value F(1)=1.
The required actual value enclosures remain proof inputs, not Boolean metadata.

What was missing was a single globally continuous loop homotopy, with its exact
endpoint maps identified. Cell continuity plus separate seam statements were
not yet that formal object. This increment constructs the object from the
existing cells using the pinned `ContinuousMap.Homotopy` API.

## 2. A finite gluing construction with complete oriented traversal

`FiniteConcatenation.concat` takes continuous vertex maps v_i and actual
homotopies e_i from v_i to v_(i+1). Its recursion is

    concat_0 = constant prefix at v_0,
    concat_(n+1) = concat_n.trans e_n.

It calls Mathlib's continuous homotopy concatenation; continuity across seams
is supplied by the typed shared endpoints, not asserted after constructing a
discontinuous piecewise function. Every consecutive cell is retained, including
the last one. The initial pause and all cells preserve their ordering.

The exact schedule is dyadic, not uniform: the initial pause occupies [0,2^-n],
and cell i occupies [2^(-(n-i)),2^(-(n-i-1))]. Equivalently, local u in [0,1]
occurs at global time (1+u)/2^(n-i). Shared endpoints may have either adjacent
cell description. The formal `hits_cell` candidate constructs the required
time through repeated left/right embeddings, including u=0 and u=1.

`value_cases` and `range_iff` target both directions: every global value is an
initial vertex or a cell value, and every point of every cell occurs. No sampled
parameter set or omitted final edge supplies the complete range assertion.

The initial pause is intentional. It does not add a geometric edge, but this
parameterization is not an arclength parameter, an equal-time subdivision, or a
quadrature weight. A future integral consumer must prove the needed regularity
and reparameterization statements rather than reuse uniform-grid weights.

The general pointwise naturality theorem uses the SAME schedule on both sides.
This is used to identify the analytic source endpoint of the assembled homotopy,
not just to name it an analytic loop.

## 3. From all the cells to one standard free-loop homotopy

For external domain vertices a_i and rational-image interpretations b_i, define

    V_i(lambda) = (1-lambda)*F(a_i) + lambda*b_i.

The inherited two-parameter cell is viewed first as a spatial homotopy from V_i
to V_(i+1). Concatenating these cells is a globally continuous function of BOTH
parameters. Swapping the parameters makes lambda the deformation parameter.

Let gamma_a and gamma_b be the separately constructed complete polygon maps,
using the same dyadic timing. The new `PolygonFreeHomotopy.homotopy` targets

    H(0,t) = F(gamma_a(t)),
    H(1,t) = gamma_b(t).

The source endpoint is the actual F composed with the domain polygon. It is
not an unspecified slice renamed as F. For n>0 the range of gamma_a is exactly
the previous full-edge `PolygonTube.carrier`; its inverse range statement
retains every cell point.

The checked domain AND image closures imply

    H(lambda,0) = H(lambda,1)

for every lambda. The existing common-disk theorem on each whole cell, together
with the finite range decomposition, implies

    H(lambda,t) != 0

for every pair of unit-interval parameters. The initial pause is covered using
the first actual cell, so positivity of the edge count is retained.

`freeHomotopy` returns the STANDARD pinned

    ContinuousMap.HomotopyWith sourceLoop imageLoop
      (fun g => g 0 = g 1 and forall t, g t != 0).

`puncturedHomotopy` also lifts both maps and the whole homotopy to the actual
subtype {z : C // z != 0}, retaining closedness as the HomotopyWith property.
It is not a new structure whose fields merely request the desired homotopy.
The rational-source adapter discharges the complete cell premise using the
existing `edge_deformation_nonzero`, and obtains n>0 and both closures from the
unchanged check. No new analytic-enclosure or coverage assumption is introduced.

This is a free-loop presentation on [0,1] with equal endpoints. An explicit
quotient-circle presentation is not constructed here. A winding API that uses
that presentation still needs the corresponding conversion and invariance
argument. No unavailable default-branch winding API is imported at the pin.

## 4. The basepoint really can move

The construction retains the exact formula

    H(lambda,0) = (1-lambda)*F(a_0) + lambda*b_0.

A rational surrogate vertex need not equal the true source value. Consequently
this is NOT automatically a fixed-endpoint Path.Homotopy or a HomotopyRel
fixing the starting point. Synthetic constant loops at one and two give a
zero-avoiding free homotopy with different endpoint basepoints. That control
makes the distinction explicit rather than demanding a false endpoint equality.

Conversely, constant loops at one and minus one have nonzero endpoints but the
straight interpolation passes through zero at lambda=1/2. This does not deny
that another nonzero path between them exists; it shows why the common-disk
hypothesis is required for THIS construction. An unclosed surrogate likewise
produces an unclosed final curve despite a closed domain chain.

## 5. Actual small-square contraction; no large counting result

The existing sourced small-square fixture is reused unchanged: vertices
(19/20,-1/20), (21/20,-1/20), (21/20,1/20), (19/20,1/20), then closure. All patches
use c=1,R=1/10,S=1/2 and the actual source value F(1)=1. The previous computed
image allowance is 3/4, with strict margin 1/4. The surrogate is the constant-one
chain. `square_contracts_without_zero` composes those existing inputs with the
new global construction and identifies the final loop as the constant map one.
It has no additional source-enclosure or homotopy premise. All Lean scripts,
including the inherited finite guard, remain unexecuted.

The all-point contraction is for this SMALL square, not for the counting
rectangle. An identity-map control on a square around zero instead produces a
zero-avoiding self-deformation of its boundary while retaining an interior zero.
A homotopy to an arbitrary polygon is not necessarily a contraction.

The maintained counting region at T=15 remains

    Omega_15 = {s : 1/4 < Re(s) < 5/4, 0 < Im(s) < 61/4}.

Its regional analytic multiplicity upper bound K(15)<=1 remains UNSUPPLIED.
Neither a completed evaluation of this large contour nor a verified winding
index is introduced. Nonvanishing, loop closure, orientation, traversal number,
source/divisor agreement and a regional analytic upper count remain distinct.

## 6. Evidence, pinning and remaining obligations

The five new Lean files contain 581 source lines, 34 theorem commands, 21
definitions and one abbreviation: 56 explicit source names, not accepted-proof
counts. The isolated target retains the exact predecessor target and its entire
large-reduction/type/import/axiom chain. Its selected modules are not the full
transitive closure. All generated and inferred types must be reconciled too.

12,306 independent exact-rational Python assertions passed per mode with identical
normal and optimized reports. There are 48 polynomial naturality models, 60
affine common-disk models, 30 positively scaled square-loop models, the literal
small-square scalar gate, and twelve directed controls. Categories reuse inputs.
The 648 per-cell hit checks include both closed endpoints. The diagnostic signed
crossing routine distinguishes traversal +1, reversed -1 and doubled +2 on known
synthetic squares; it has NO Lean refinement or argument-principle status.

No zeta evaluation, transcendental arithmetic, root finder, actual zero inventory,
large-contour computation or analytic count enclosure occurred. Python did not
execute Lean, and sampled parameter assertions are not uniform analytic proofs.
A preliminary diagnostic syntax typo was repaired before the final paired runs;
no mathematical inequality or acceptance condition was relaxed.

Static source/name/hash/import/TOML reconciliation and additive patch byte checks
are separate diagnostics, not Lean parsing or kernel acceptance. A direct source
download attempt failed at network resolution. No full exact-parent checkout,
Lean installation, Lean/Lake invocation, worker request, execution-hold release,
merge or issue closure is represented.

Next: pinned elaboration/repairs and independent transitive trust review;
independently, a chosen winding definition with its free-homotopy invariance,
verified polygon-index computation, actual large-contour enclosures and the
argument-principle/source-divisor comparison needed for K(15)<=1. The complete
zero inventory, omitted-divisor tails, global arithmetic identities and strict
prime margins are not supplied by this topological construction. No Legendre
or RH conclusion is claimed.
