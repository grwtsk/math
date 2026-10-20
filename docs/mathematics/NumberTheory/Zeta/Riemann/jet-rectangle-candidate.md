# Jet-radius contour integration and a complete height-fifteen candidate

Owner #135; numerical supplier #194; canonical/prime consumer #261.
Parent `12a14f9f8788a9572d5899f624d4c484f5c9e8e1`, tree
`3f8a2925f1d4d7fe97e9f3f0f866d9dbfc9f6047`. Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** A complete finite target inventory
has now been constructed and checked by an independent exact-rational model.
The new Lean candidate defines its literal success equation but DOES NOT assert
that equation as a theorem. Every new and inherited proof script, and the target
computation itself, still requires pinned elaboration and independent acceptance.
No existing source, target, public import, count or local-zero constant changes.

## 1. Carry the same improved radius through the entire contour

The previous local supplier constructs the actual normalized source value and
center derivative, including the uniform Bernoulli residual divided by the outer
radius for the derivative. Its sourced curvature is 2*C/(S-R)^2. Keep

    d0=mag(derivative midpoint)+derivative error,
    M=min(C/(S-R), d0+2*C*R/(S-R)^2),
    rho=value error+M*R.

Both slopes bound the SAME actual derivative on the WHOLE inner disk. This
increment does not sharpen or replace that argument. In particular, the
quadratic contribution still has no unproved Taylor factor one-half.

`JetPoleContour` reuses `ConstructedRectangleCount.Plan`, with no editable value,
derivative, curvature or error field. Each cell checks the generated jet patch,
both literal domain endpoints in its one inner disk, and BOTH literal image
endpoints in the SAME image disk of radius rho. All list lengths, positive edge
count, and both domain and image closure equations are retained. The final edge
and any zero-width cell require their complete records.

Convexity puts the whole domain segment in the checked disk. The inherited
all-point image theorem puts its actual F-image in the corresponding image disk.
The surrogate chord also lies in that disk. Thus the whole straight source/chord
deformation avoids zero, using the very same strict radius condition. It would
be invalid to use a small radius for nonvanishing and a larger old radius for
image endpoints. The stale-radius control explicitly rejects that mixture.

The existing `PolygonFreeHomotopy.freeHomotopy` concatenates every cell. Its
endpoint curves are the SAME old sourceLoop and imageLoop, including their
ordered dyadic schedule and initial pause. The basepoint may move; it is not
silently fixed. `ClosedCurveFactorIndex.index_homotopy` and the OLD
`RationalPolygonIndex.evaluate` then identify the computed signed integer with
the old source winding. No second index or free winding equation is introduced.

The old Cauchy-only Boolean evaluator is preserved unchanged. A new jet-tube
success is not asserted to pass that old test.

## 2. The same source, boundary, orientation and canonical divisor

`JetRectangleCount` generates domain vertices from the old checked unwrapped
perimeter marks and literal rectangle. It reuses the old full range equality
and boundary-valued real-clock homotopy. Whole-boundary nonvanishing follows
from the new complete tubes and the full range, not from sampled values. The
alignment homotopy stays on the boundary rather than cutting through possible
interior zeros. The previous canonical rectangle argument principle then gives

    JetRectangleCount.evaluate(T,n,marks,plans,image)=some k
       ==> (MirrorCountingRectangle.count(T):Int)=k.

There are no separate source Enclosures, boundary, traversal, factorization or
index/count premises. They are supplied by inherited source proofs plus the new
radius-consistent integration, NOT deleted from a generic theorem. A negative
returned integer is not truncated or absolute-valued. Analytic multiplicities,
the removed value F(1)=1, the closed target-height convention and the unchanged
mirror-completeness consumer are retained.

This statement remains a source draft. Its proof has not run in Lean.

## 3. A concrete full target inventory, not isolated pilots

The literal target is the maintained positive rectangle

    1/4 < Re(s) < 5/4,  0 < Im(s) < 61/4.

`Checks.HeightFifteenJetCandidate` encodes sixteen exact rational mesh blocks.
They expand to 2380 perimeter marks, covering 2379 consecutive cells:

    bottom: 14, right: 206, top: 47, left: 2112.

Marks start at zero and end at four, include all four corners in the correct
order, and never skip a corner inside a cell. Every target cell has positive
width. The separate small-square fixture continues to test a zero-width cell.
No modulo-four alias or geometric drawing supplies traversal semantics.

For each cell with endpoints a,b and axis-aligned length ell=mag(b-a), construct

    c=(a+b)/2, R=3*ell/4, S=Re(c)/2.

The endpoints are distance ell/2 from c. Their containment is nevertheless
checked by the same rational squared-ball tests, not inferred from a label.
All centers use the new, explicitly separate numerical schedule

    N=16, eight corrections, 80 bits,
    16+16 logarithm terms, 16 Taylor terms, seven squarings.

This is not a change to the previous 81-base pilot or local-zero constants.
The full original error rules remain in force. Lower arithmetic precision is
sufficient for these nonvanishing margins; no source allowance is discarded.

Let v_i be the generated source midpoint at cell center c_i and ell_i its
length. At the shared vertex of previous cell j and current cell i, propose

    y_i=(ell_i*v_j+ell_j*v_i)/(ell_i+ell_j).

The last-to-first adjacency is included, and y_0 is appended exactly at closure.
This interpolation is ONLY a rational proposal. It is not asserted equal to F
at that vertex and carries no guessed source accuracy. BOTH incident disks
independently check it. This avoids adding an unrelated vertex-value oracle.
The entire image list is a pure expression in the same marks and generated
source values; it contains no floating constants or imported value table.

## 4. What the independent rational calculation established

A bounded dyadic subdivision search constructed this complete mesh. A separate
validation pass reconstructs the frozen sixteen blocks, EVERY plan, all source
balls, every shared image coordinate and all checks. It does not trust the
stored acceptance booleans or reported integer. The calculation uses Python's
exact Fraction arithmetic; no logarithm, exponential, zeta library or zero
finder decides its budgets or success.

All 2379 jet patch margins, 4758 domain endpoint tests, 4758 image endpoint tests,
source/derivative guards, closure/mesh checks and polygon charts pass in the
independent model. The signed branch-transition sum is +1, agreeing with a
separate determinant ray-crossing calculation. Reversal gives -1 and doubled
traversal gives +2. Those diagnostic variants are not accepted positive target
meshes and cannot masquerade as the once-counterclockwise rectangle.

Computed allowance summaries are

    minimum strict image-disk margin: about 3.444082255924e-4,
    maximum full source-value radius: about 7.192815581364e-7,
    minimum squared image-endpoint slack: about 1.554395188424e-2.

All acceptance comparisons are exact rational comparisons, not these rounded
display numbers. At these SAME cells and values, 2366 old Cauchy-only patch gates
fail. The new result therefore cannot be advertised as success of the old
Boolean checker. No optimal-mesh, necessary-width or runtime-speedup claim is
made. The independent search used 4590 local attempts and 164 early geometry
splits; these are construction details, not a general termination theorem.

## 5. The exact remaining acceptance equation

The source defines

    result := JetRectangleCount.evaluate 15 edges marks plans image,
    Success := result = some 1.

`Success` is a proposition definition, NOT an axiom, theorem, truth annotation
or imported Python result. No `by decide` theorem for this full equality is
provided. `count_one_of_success` and `complete_pair_of_success` retain it as an
explicit premise and otherwise reuse the existing canonical source and point.
The only new finite `by decide` claims concern source controls and mesh shape;
those too remain unexecuted.

The numerical data are no longer missing in the independent model. What remains
is exact evaluation/certification of this SAME finite equality in Lean and
acceptance of the entire generic analytic/topological/arithmetic proof chain.
The model's caching, iteration order and runtime are not a compiler/refinement
proof for the Lean definitions. Direct reductions may require resource work or
a sound checked-computation strategy; no resource bound or executable worker
request is supplied here. Native output must not be installed as an axiom.

Thus no accepted K(15)=1 theorem, completed canonical height head, bounded-RH
certificate, first-zero ordinal claim, prime margin, Legendre or RH is announced.
Even acceptance of this finite count would not establish all-height RH or the
universal arithmetic inequalities required by the prime consumers.

## 6. Diagnostics and review boundary

The fresh full reconstruction passes 402124 exact-rational assertions per Python
mode, including every one of 38064 power leaves and 266448 local squaring steps.
Assertions remain active under optimization. Counts reuse the same data across
properties. They are not independent analytic proofs or certified-zero counts.
Twenty-nine directed controls and five target mutations cover missing/extra
records, incorrect closures/centers, reversal, double traversal, invalid disks,
coarse source errors, mixed radii and image rejection. The existing small pole
square computes zero through generated actual-source values.

Another 920 ordinary comparisons at 100 decimal digits use forty selected cells.
They compare actual normalized zeta values/derivatives, finite derivatives and
analytic-difference errors, plus source-edge, homotopy and outer-circle probes.
There was no recorded excess over the allowances, with diagnostic slack 1e-85.
These are NOT outward-rounded interval certificates or uniform proofs. The
full finite rational acceptance does not depend on these transcendental probes.
No root finder or external zero database was used.

Every new and inherited Lean declaration, its exact type, all generated names,
large finite decisions and the full import/axiom/native dependency closure need
pinned elaboration and independent trust review. Static text/hash/TOML checks,
a sparse patch test and a Python result are not acceptance receipts. Diagnostic
programs and expanded inventories remain outside the pure-math repository.
No installation, Lean/Lake invocation, worker/build/replay request, hold release,
merge, issue-state change or public-root modification is represented.
