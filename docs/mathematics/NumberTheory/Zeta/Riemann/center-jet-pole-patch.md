# Actual source derivatives and center-aware whole-disk variation

Owner #135; numerical supplier #194; canonical/prime consumer #261.
Parent `4c14fea1618ac2f06d236fab0bfc667185854be8`, tree
`c1d72733533b871d72340a1417d0e9acc92ec95b`. Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** All new and inherited Lean
scripts remain unelaborated. This increment constructs an actual-source
DERIVATIVE enclosure and an alternate local patch supplier. It does not change
the old contour/count checker's image radius, evaluate the complete target
contour, or establish K(15). No public-root or dependency change is made.

## 1. Why additional center-value precision was not the next improvement

The previous literal target-side pilot has c=1/4+(113/8)i, outer radius S=1/8,
N=81, eight Bernoulli corrections, 32+32 logarithm terms, 32 exponential terms,
seven squarings and 160-bit directed rounding. Its value uncertainty is already
about 4.082714800070e-18. The old derivative allowance C/(S-R), with C=1754.5,
is dominated by the conservative source-size estimate, not that uncertainty.

This increment keeps the SAME source, finite model, parameters and value ball.
It uses the finite derivative already computed by that model, but first supplies
its missing connection to the ACTUAL source derivative. That connection cannot
come from differentiating a center-value error or treating a finite derivative
as an exact source derivative.

## 2. A uniform error on the outer disk supplies the source derivative

Let F be the maintained pole-normalized source, including F(1)=1. Let G be the
same pole-free endpoint-corrected finite model, with p+1 actual corrections.
For 0<S<Re(c), put

    B=mag(c)+S, D=mag(c-1)+S, m=2(p+1),
    E=D*M_m*product_(j<m)(B+j)/(m!*(m-1)*N^(m-1)).

Here mag is the existing coordinate L1 upper bound and M_m is the unchanged
Bernoulli coefficient-sum majorant. The source derives |F(z)-G(z)|<=E at EVERY
point of the closed outer disk. Both B and D are outer-disk bounds, not merely
center magnitudes. Positive-half-plane containment, N>=1 and m>=2 remain explicit.

F and G are entire; the positive-half-plane restriction belongs to the inherited
source remainder, not to their analyticity. Applying the existing Cauchy estimate
to the actual analytic DIFFERENCE on the outer circle gives

    |F'(c)-G'(c)| <= E/S.

Given the already constructed finite derivative ball (d,e_fin), the new actual
source derivative ball is (d,e_fin+E/S). There is no caller-supplied derivative,
curvature estimate, remainder or truth field. The source value output is unchanged.
All logarithm uncertainty, exponential truncation, squared-error amplification,
local rounding, endpoint corrections and finite derivative arithmetic remain.

This works even at the removed pole. The control with cutoff one gives zero
center source-value residual, but its outer-disk E is 65/32 at S=1/2. The finite
derivative ball is (9/16,1/16); the actual derivative ball is (9/16,33/8).
It is deliberately coarse, not an exact value for F'(1). The normalized value
one does not make the derivative error vanish. The synthetic difference z has
zero error at zero but derivative one, illustrating why pointwise differentiation
would be invalid.

## 3. Bound variation from the true center derivative and sourced curvature

Write d0=mag(d)+e_deriv, so |F'(c)|<=d0. The existing source-size bound C holds
on the whole outer disk. The pinned Cauchy estimate supplies, on the entire inner
disk of radius R<S,

    |F''(z)| <= L = 2*C/(S-R)^2.

The factorial two and the positive gap are retained. A center value of F'' or
finitely many probes would not supply this hypothesis.

Applying the mean-value inequality to F' gives

    |F'(z)| <= d0 + L*R.

Applying it again to F gives

    |F(z)-F(c)| <= (d0+L*R)*R.

This is a conservative two-mean-value estimate. The implemented quadratic term
is L*R^2, NOT the sharper Taylor term L*R^2/2. No unproved factor one-half is
inserted. The generic theorem retains differentiability of the derivative on
the whole disk; the actual normalized source supplies it by entire analyticity.
The example 1-4z^2 has value one and derivative zero at zero but vanishes at 1/2.
A small center derivative alone cannot certify a zero-free disk.

Both the inherited Cauchy slope and the new center-aware slope bound the SAME
actual derivative everywhere in the inner disk. It is therefore valid to set

    M=min(C/(S-R), d0+2*C*R/(S-R)^2),
    imageRadius=e_value+M*R.

The minimum is of two proved upper bounds, not an optimistic selection among
unproved estimates. It is never worse than the old radius budget on the guarded
domain. A coarse derivative can lose: in the cutoff-one pole control, the old
slope 15/2 beats the new 135/16. The code retains that fallback.

## 4. Preserve the exact strict gate and existing patch semantics

`RationalJetPolePatch.check` checks the source jet, 0<=R<S, a nonnegative value
radius, and

    imageRadius < max(abs(value.re),abs(value.im)).

The right side remains a LOWER bound for the value-center norm. The coordinate
L1 magnitude is not used as a lower bound. Equality rejects. `image_bound` supplies
actual containment of every F(z) in that one image disk, not only nonvanishing.
`patchOfCheck` returns the EXISTING `SampleVariationPatch`; its value, variation
and strict-margin fields retain their original mathematical meaning.

The old contour/count code is unchanged and continues to recompute its old
Cauchy radius. A successful new local check cannot be fed to that old Boolean
gate as though the tests were identical. Next integration must carry this NEW
proved imageRadius through both image-endpoint tests, every source-image
homotopy cell and the complete count construction. Simply changing a number in
a certificate would not do this. The new all-point containment theorem supplies
the needed local analytic fact, not that complete adapter or its target trace.

## 5. Same pilot, larger proved-target disk

For the unchanged pilot, the independent exact rational model gives

    uniform outer source error E: about 4.529791273659e-18,
    actual derivative radius:     about 3.623833019038e-17,
    derivative midpoint:          -3.758278092720 + 13.21042187490 i.

At R=1/400 and S=1/8,

    source bound C:              1754.5,
    Cauchy curvature L:          about 233835.9017076,
    old derivative slope:       about 14322.44897959,
    new selected slope:         about 601.5584542367,
    new imageRadius:            about 1.503896135592,
    lower value-center bound:   about 2.991891840936,
    strict remaining margin:    about 1.487995705344.

The OLD gate at this SAME radius and value ball fails: its image allowance is
about 35.80612244898. The new gate passes. The source fixture composes that finite
success with the whole-disk theorem, without a free value/derivative premise.
All Lean decisions remain NOT_RUN; possible reduction-budget and source-script
repairs remain acceptance work.

Radius 1/400 is 25 times the PREVIOUSLY EXHIBITED radius 1/10000. This is not a
25-fold improvement over the old optimal threshold, not an optimal-radius claim,
and not a runtime speedup. The old fixed-S sufficient threshold was about
2.127955650055e-4. The larger R=1/200 still fails the new sufficient gate.
Failure does not establish a zero: the pole control rejects R=1/8 at equality
although the maintained direct radius-one-fifth collar supplies nonvanishing.

Ten inherited target-boundary point pilots are recomputed. All ten pass the new
local gate at radius1/400; seven also pass the old gate and three do not. These
are isolated local tests, not a cover of the large contour. No complete target
mesh/image inventory or regional count has been constructed.

## 6. Evidence and acceptance

11,404 independent exact-rational assertions passed in each of normal and
optimized Python modes, with identical reports and explicit exception checks
active in both. They cover 48 polynomial models, ten actual-source expression
pilots, 26 directed controls and varied inner/outer radii. Inputs are reused
across properties. Polynomial norm comparisons use exact squared norms and
whole-polynomial coefficient majorants; no floating approximation is involved.

520 ordinary comparisons at 100 decimal digits passed with diagnostic slack
1e-85 and no recorded excess. They compare actual normalized-source values and
derivatives, finite derivative arithmetic, source-difference derivatives, 120
outer-circle residual samples, 120 outer source-size samples and 80 inner points
for each of curvature, derivative and image containment. These are NOT outward
interval certificates or proofs of disk-wide uniformity. No root finder, zero
database or complete target contour was used. Python is a separate implementation,
not execution or compiler/parser refinement of the Lean source.

All diagnostic code stays outside the pure-math repository. Static source/hash/
import/manifest checks and sparse patch application do not establish Lean parsing,
exact types, large decision reductions or transitive axiom/native dependency
acceptance. Every predecessor obligation remains, including the source remainder,
finite arithmetic, canonical count, homotopy, analytic orders and trust chain.
No Lean/Lake invocation, installation, worker/build/replay request, execution-hold
release, merge or issue-state change is represented.

The next implementation is the source-identical jet-radius tube/count adapter
and its complete target trace, followed by exact-head elaboration/repairs and
independent trust review. K(15)<=1, complete numerical zero inventories,
omitted-divisor tails, universal prime margins, Legendre and RH remain unclaimed.
