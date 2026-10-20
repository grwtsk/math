# Exact ordered state folds for the unchanged contour computation

Owner #135; finite arithmetic supplier #194; canonical/prime consumer #261.
Parent `4993234603350a77e63764d314f962b99d46d7f2`, tree
`120681fd19d1fe737a4afb99b2a7a54d36c5074f`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** These are new proof scripts, not
accepted Lean results. The 2,379-cell target, its sixteen geometric blocks, all
parameters, image proposal, source errors and 38 proof-decomposition blocks are
unchanged. No large local equality or original `Success` is proved here.

## 1. The arithmetic implementation, not the acceptance proposition, changes

The preceding increment decomposes the fixed target equality into thirty-seven
64-cell chunks and one final 11-cell chunk. Each cell still contains nested
reference expressions for Taylor powers, rounded squarings, their propagated
errors, and both finite-model prefixes. This increment gives those recurrences
an ordered state-fold form and drafts EXACT equality proofs with the old results.

The purpose is to expose reusable intermediate state for subsequent finite proof
work. It is not a claim of measured Lean acceleration, kernel sharing, constant
memory, compiled tail-call optimization, or a successful evaluation strategy.
An equality of mathematical programs does not establish any such resource claim.
The generic loop is a pure finite mathematical recurrence, not a process runner.

Every old definition, declaration, public import, target and analytic theorem
remains unchanged. The new route is additive and retains the original `Success`.
It introduces no alternate zeta, divisor, winding definition, error allowance,
mutable cache, compiler hook, native truth oracle or supplied result table.

## 2. An absolute-index state fold

`IndexedStateFold.run step start count state` applies the steps with indices
start through start+count-1 in order, passing the complete resulting state to
the next step. Its source invariant is

    step j (spec j) = spec (j+1)
      ==> run step start count (spec start) = spec (start+count).

The generic composition theorem retains the exact cursor:

    run step start (a+b) x
      = run step (start+a) b (run step start a x).

It does not restart the second block at zero or permute the operations. A control
using decimal accumulation gives 567 from indices 5,6,7 but 12 from 0,1,2. The
zero-step case returns the supplied state, not a fabricated default.

## 3. Carry powers, factorials and the Taylor sum together

The state after j terms is

    (u^j, j!, T_j(u)),   T_j(u) = sum_(r<j) u^r/r!.

The next state is

    (u^j*u, (j+1)*j!, T_j(u)+u^j/j!).

This maintains the existing exact polynomial, with the same M-term convention
and actual complex coordinate multiplication. It does NOT round individual
Taylor terms, reassociate a rounded sum, or introduce a different polynomial.
The new `taylor_eq` candidate identifies its complete rational output with the
maintained `RationalComplexEnclosure.taylor` for all inputs and natural lengths.

The empty seed is zero; one term is one. A complex control at u=-1/2+i/4 with
three terms retains 19/32+i/8. Factorials are not replaced by j or j+1.

## 4. Carry the rounded stage and its full error together

After the exact Taylor seed is computed, the initial state is

    v_0 = floor_bits(seed),
    E_0 = ceil_bits(seedTail + mag(seed-v_0)).

Every subsequent step forms

    raw = v_j*v_j,
    v_(j+1) = floor_bits(raw),
    r_j = mag(v_(j+1)-raw),
    E_(j+1) = ceil_bits(2*E_j + E_j^2 + r_j).

Both the value and radius travel in the same state. The new proof candidates
identify every state with the old rounded stage and outward propagation. At the
requested final step, `exponential_eq` targets exact equality with the maintained
`RationalRoundedExp.enclosure`, not just a different valid complex ball.

The source explicitly reconciles the old finite trace's radius accessor at every
consumed index. A default radius outside the list cannot replace a real step.
Zero squarings and zero Taylor terms are included in the arithmetic identity.
Semantic exponential admissibility remains the old guard; a coarse valid radius
is not a requested-precision result.

For bits=4, exponent=-1, one squaring and three Taylor terms, the output remains
midpoint 3/8 and radius 3/16. Dropping the square residual or E_j^2 would change
the radius. Equal midpoints alone are not refinement evidence.

The inverse-power wrapper uses the OLD log ball, derived exponent -s*ell.mid,
computed exponent magnitude and final upward-rounded sum

    E_power = ceil_bits(E_exp + mag(s)*ell.rad).

The original-log sensitivity is retained once. `powerValue_eq` targets both
coordinates AND the exact radius of the OLD inverse-power construction. No new
analytic power proof or externally supplied log accuracy is used.

## 5. Carry both finite prefixes in order

`RationalJetStateFold.prefix` accumulates the same value and finite first-
derivative prefixes over bases 1,...,N. Each step binds its local log and power,
then performs exactly the original rounded addition, multiplication and negation
in the original order. The terminal N power and complete endpoint correction
remain in the finishing formula; no term or derivative contribution is omitted.
The terminal expression may be computed again: no global evaluation-sharing or
exact operation-count claim is made.

Rounded arithmetic is not treated as associative. The controls use point balls
at -4/3,-4/3,-1 with one-bit rounding. Left association gives midpoint -4 with
radius 1/2; right association has the SAME midpoint but radius 1. A rewrite based
only on associativity of exact complex addition would not preserve these balls.

`finiteJet_eq` identifies the complete pair of finite balls with the old finite
model assembly. The Bernoulli/Pochhammer coefficients are reused unchanged, not
rederived. The generated `PatchState` then binds one finite jet before adding the
old point source residual to its value and the old UNIFORM outer-disk residual
E/S to its derivative. The old curvature, minimum of two proved slopes and strict
image-disk gate remain. `patch_eq` targets equality of all six rational ball
fields, the complete image radius and the acceptance Boolean.

`PatchState` is an OUTPUT of pure computation, not an input accepted without
checking its source. Its Boolean is not an imported PASS annotation. The positive
source half-plane, cutoff and scalar leaf guards stay with their original owners.
Arithmetic identities may hold for totalized invalid expressions; that does not
supply analytic semantics outside the guarded domain.

At the minimal pole control, the source value is exactly one, but the actual
source derivative remains the ball centered at 9/16 with radius 33/8. The radius
3/4 at inner1/10/outer1/2 and the equality rejection at inner1/8 are preserved.
The source residual is not erased because the center happens to be the pole.

## 6. Return to exactly the same block obligations

`HeightFifteenFoldRefinement` reuses the literal candidate's plan, lengths, prior
index and inverse-length shared-image formula. It computes those images using
folded value midpoints and targets equality with the ORIGINAL image expressions,
including the explicit closing imageAt(0). It supplies no independent table.

Its `test_eq` is Boolean equality for the complete cell predicate, including
false results. Both original domain endpoints, both incident image endpoints,
the complete source/derivative guard, the same image radius and logarithmic chart
are present. `term_eq` preserves the old signed branch increment. `chunk_eq`
therefore targets the same old local Option Int for every start/count.

`FoldBlockObligations` uses the unchanged widths and proposed local integers.
`obligations_iff` identifies it with the old `BlockObligations`; `verifyExpected_eq`
identifies their actual Boolean computations. Conditional consumers then reach
the old `Success`, count and complete-pair implications. Neither the new nor old
38 local equalities has been asserted true. This is an exact refinement route,
not a shortcut from a different successful-looking numerical test.

## 7. Bounded fresh evidence, not a new whole-target verification

Normal and optimized Python processes each completed **51,965 exact-rational
assertions**, with byte-identical reports and explicit exceptions active in both.
The tests compare the reference and folded arithmetic at every consumed stage,
including factorials, coordinates and outward radii, not only their final index.
Shared rational primitives, coefficient formulas and source-tail formulas are
reused; this diagnostic does not independently prove those analytic suppliers.

The fresh target work covers COMPLETE verification blocks 0,4,37:

    block0  [0,64)       contribution0,
    block4  [256,320)    contribution1,
    block37 [2368,2379)  contribution0.

Their 139 cells require 143 source plans after adding the neighboring plans for
all shared image proposals. All 2,288 inverse-power leaves and 16,016 local
squarings were recomputed and compared. Both finite-jet components, all selected
source/derivative balls, image radii, strict acceptance bits and shared image
coordinates match the reference exactly. Both endpoints of every selected cell,
its chart, and the global closing image are checked. These are THREE of the 38
large target blocks in an independent MODEL, not three accepted Lean proofs.

The report also contains 24 directed controls. Generic tests retain nonlinear
radius growth, signed flooring, term-count boundaries, ordered rounded prefixes,
positive cutoffs/domains, strict margins and signed orientation. Inputs are reused
across properties; these totals are not independent analytic-proof or zero counts.

A preliminary attempt at a fresh FULL-target comparison hit the 200-second local
diagnostic limit after partial progress. It did not produce a complete report and
is not counted as a successful run. The delivered paired runs deliberately bound
the target scope to the three complete blocks above. An optional gmpy2 package
retrieval failed at DNS resolution; no alternate backend was installed or used.
The successful arithmetic uses the standard exact Fraction implementation.

No new floating, transcendental, zeta-library, root-finder or external-zero-file
calculation was performed. No Lean/Lake or code generation ran. The separate
Python implementation and its memoization have no formal kernel, compiler,
serializer or parser qualification. No performance improvement is inferred from
this source refactoring or these bounded tests.

Pinned elaboration/possible repairs, the SAME38 concrete local equalities, every
inherited exact type/generated declaration/control/import/axiom/native dependency,
and independent acceptance remain necessary. The next acceptance target is the
same finite computation through this exact-refinement route, not a new geometry or
an easier error budget. No execution hold, issue disposition, merge or public-root
import is changed. No accepted K(15)=1, complete zero inventory, all-height RH,
omitted-divisor tail or universal strict prime margin is supplied here.
