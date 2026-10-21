# Exact integer dyadic reconstruction for the fixed contour calculation

Owner #135; finite arithmetic supplier #194; canonical/prime consumer #261.
Parent `788c4b62c34edd176429173fff5e2ed86802244a`, tree
`f7eede6da8c605acb584c1762796978e46084c4a`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** All Lean scripts remain
unelaborated. None of the 38 original target block equalities is proved here.
This is an exact arithmetic refinement and a fresh complete independent-model
comparison, not a new source estimate, successful Lean replay or accepted count.

## 1. Preserve the target, change only the rounded-square representation

The same 2,379 cells, sixteen geometric mesh blocks, numerical parameters, shared
image proposal and 37x64+11 computation blocks remain unchanged. The preceding
state fold still forms the exact rational Taylor seed and carries the full
rational value/error pair through rounded squarings. This increment represents
that latter state by three arbitrary-precision integers on one fixed grid.
The logarithms, exact Taylor seed, final logarithm-sensitivity charge, rounded
prefix operations, endpoint coefficients and analytic source tails remain rational.

No old file, public root, dependency pin, error allowance, strict gate or candidate
constant is changed. No native backend, machine-word representation, mutable
cache, supplied result table, state oracle or execution authority is introduced.

## 2. One exact integer square

Let D=2^bits>0 and encode the rational ball as

    midpoint=(A/D)+(B/D)i, radius=E/D.

Set U=A^2-B^2 and V=2AB. With signed Euclidean division by POSITIVE D,

    A'=U div D, B'=V div D,
    r=abs(A'*D-U)+abs(B'*D-V),
    E'=ceil((2*E*D+E^2+r)/D).

Every operation in this transition is integer arithmetic. Ceiling is implemented
as `-((-a) div D)`, not truncation toward zero. The scalar floor/ceiling
identities are derived from pinned Mathlib's floor-division and negation theorems.

The raw square has denominator D^2. Its exact coordinate-floor displacement is
r/D^2. Therefore

    2*(E/D)+(E/D)^2+r/D^2
      = (2*E*D+E^2+r)/D^2.

Applying the OLD outward radius rounding multiplies this quantity by D, takes
its ceiling, and divides by D. That is exactly E'/D. `step_refines` targets

    decode(bits, integerStep(state))
      = RationalExpStateFold.squareStep(bits,j,decode(bits,state)).

Both midpoint components AND the radius agree; this is not merely another valid
enclosure. The residual includes both coordinates. The nonlinear E^2 remains.
Bits zero gives D=1, not an invalid zero denominator. Integer types are unbounded;
no fixed-width overflow policy, memory bound or runtime speedup is claimed.

For arithmetic identity purposes the theorem admits negative integer error
fields as well. That does NOT make negative radii valid analytic enclosures.
All semantic conclusions retain the original source and admissibility guards.

## 3. Seed, full exponential and original inverse power

`IntegerExpStateFold.initial` computes the SAME exact Taylor seed, floors its
coordinates and ceilings the complete seed remainder plus displacement. Its
decoding equals the preceding rational initial state. It accepts no seed value
or seed-error assertion from a caller.

An induction through the same absolute-index fold identifies every decoded
integer state with the original rational state. `exponential_eq_reference`
targets the exact old `RationalRoundedExp.enclosure`, including zero squarings
and zero Taylor terms. Zero terms retain a coarse allowance rather than becoming
an exact exponential.

The inverse-power wrapper restores the unchanged final term

    up_bits(E_exp + mag(parameter)*E_log).

The same computed logarithm, original exponent and once-charged log sensitivity
remain. `powerValue_sound` reuses the old guarded theorem for ORIGINAL t^(-s).
The arithmetic identity does not enlarge the source half-plane or bypass a
Taylor/scale guard. In particular, taylor and logarithm calculations have NOT
been replaced by integer approximations or a new numerical formula.

## 4. Complete source state and block equality

`IntegerJetStateFold` supplies the new inverse-power leaves to the old ordered
prefix fold, preserving every rounded parenthesis and every endpoint term.
Its finite-jet equality retains both value and derivative balls. Its patch
equality retains the same source-value tail, UNIFORM E/S derivative tail,
whole-disk curvature, minimum of two proved slopes, complete image radius and
strict acceptance Boolean. No pointwise error is differentiated.

`HeightFifteenIntegerRefinement` reuses the literal candidate plans and cyclic
shared-image formula. Its source candidates identify image coordinates, complete
cell tests (including false results), signed contributions and all block outputs
with the previous fold route. Both domain endpoints and both incident image
endpoints continue to use the SAME image radius, including at the global closure.

`IntegerBlockObligations` is equivalent to the old `FoldBlockObligations`, hence
to the original `BlockObligations`. `verifyExpected` is a computation definition,
not a proof of its output. The same conditional consumer reaches old Success
and the same canonical regional count. NONE of these local acceptance equalities
is asserted true. The 38 pending Lean obligations and entire inherited trust
chain remain mandatory; an independent-model pass is not a kernel witness.

## 5. Controls retain signed division and outward error

At bits=2, state (1,2,0) has raw real numerator -3. Correct flooring produces
(-1,1,1), not the truncation-toward-zero real coordinate 0. At bits=4, state
(10,0,1) becomes (6,0,3), decoding to midpoint3/8 and radius3/16. Starting with
error8 at scale16 and zero midpoint yields error20, not the linear-only error16.

A residual can be nonzero yet be absorbed by a ceiling: removing it need not
change EVERY rounded output. It can nevertheless strictly understate the allowance
and cannot be deleted from the formula. The controls include both facts. Identical
midpoints with different error integers are explicitly not equal decoded states.
The exact pole-value/coarse-derivative example and strict equality rejection are
also unchanged in the independent comparison.

## 6. Fresh COMPLETE comparison in bounded batches

Unlike the preceding three-block test, the delivered normal and optimized batches
each cover all 38 blocks and all 2,379 target cells exactly once. Shared image
vertices are reconciled across batch boundaries. Every source plan is regenerated;
no saved success flag or value table determines acceptance. The rational reference
is the preceding independent state-fold model, not an executed Lean program.

Per mode, 22,522 generic and 789,846 target assertions pass: 812,368 explicit
assertions. Normal and optimized reports match byte-for-byte. A separate 43-check
reconciliation establishes exact cell/block coverage, shared-vertex agreement,
closure and signed totals. Counts reuse inputs and are not independent analytic
proofs or certified-zero counts.

All 38,064 UNIQUE inverse-power leaves and 266,448 UNIQUE square transitions are
covered. Neighbor reevaluation at the eleven batch boundaries gives 2,401 plan
instances, 38,416 leaf instances and 268,912 square-transition instances per mode.
Both finite-jet components, all source/derivative fields, image radii, acceptance
bits and shared images match exactly. Every target endpoint and chart check passes.
All block contributions remain zero except block4, which is+1. The total is+1,
also matched by the separate determinant-ray routine. Reversal gives-1 and double
traversal+2; signs are not discarded. The old minimum strict slack remains about
3.444082255924e-4 and maximum source-value radius about7.192815581364e-7. No improved
mesh, bound, accuracy or measured Lean performance is claimed.

The tests share the exact rational Taylor/logarithm primitives, coefficients and
source-tail formulas. They do not independently prove those analytic suppliers.
No new floating-point, transcendental, zeta-library, root-finder or external-zero
calculation is performed. Python's integer implementation, parser and caching
are not formal compiler/runtime qualification for Lean.

An initial diagnostic incorrectly demanded that every nonzero omitted residual
change a ceiling; it was corrected to monotonicity plus explicit strict examples.
An early smoke test referred to a nonexistent helper, repaired by using the exact
inspected chart formula. One combined shell command exceeded its time cap after
writing reports; its final36/37 batch was rerun separately and all coverage was
reconciled. No mathematical error formula, domain or acceptance guard was relaxed.

## 7. Remaining acceptance

Static source/hash/import/name/manifest and sparse patch checks are not Lean
parsing, elaboration or a transitive audit. Pinned elaboration, possible proof-script
repairs, every original large finite equality, all generated declarations and
complete inherited import/axiom/native coverage remain required. The selected
manifest catalog is not the full dependency closure. No Lean/Lake invocation,
installation, worker/build/replay request, execution-hold release, merge or issue
closure is represented. No accepted K(15)=1, canonical head exhaustion, all-height
RH, omitted-divisor tail or strict every-interval prime margin is supplied.
