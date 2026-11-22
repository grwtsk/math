# Support-sensitive bound for the literal paired prime energy

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilPrimeSupportBound.lean](WeilPrimeSupportBound.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.PrimeSupportBound`.
MSC2020 primary 11M06; dependencies 42A38 and 46C05.
Evidence: **WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE**.
Novelty and exhaustive prior-art assessment: **UNASSESSED**.

## Original objects and exact consumer

Retain the real measurable L2 representatives, whole-line Lebesgue measure,
window [-T,T], original `activePrimePowers T`, nonnegative `primeWeight q`,
and `OddSineForm.primeEnergy T f`. The latter is twice the sum of the
forward correlation, equal to the paired two-orientation source after the
original change of variables. Every supported prime power is included;
non-prime-power labels remain present with their exact zero coefficient.

The immediate consumer is `shiftedOddCoreEnergy_ge_of_exactBudget` from
`WeilOddExactPeriodization.lean`. Its high core is POLE-FREE, since the
bordered scalar port lies in the retained head. Its full original gamma
energy, increasing periodic multiplier, and boundary loss are unchanged.
The new result supplies a smaller prime loss without a finite trial model,
operator-domain substitution, or independently specified positivity premise.
The unbordered source must still pay its negative rank-one pole separately.

## Complete primary argument

Let f belong to L2(R) and vanish almost everywhere outside [-T,T]. For a
shift r>T, split f into

    l(t) = 1_(t<=0) f(t),       u(t) = 1_(t>0) f(t).

Both pieces are L2. Translation preserves Lebesgue null sets and L2 norms.
For almost every t,

    f(t)f(t+r) = l(t)u(t+r).                               (1)

To check (1), if t>0 then t+r>T, so the second original factor vanishes.
If t<=0 but t+r<=0, then t<=-r<-T, so the first original factor vanishes.
The only remaining case has t<=0<t+r, where the indicators change nothing.
The proof uses both original and translated support assertions. It does
not infer pointwise support from an almost-everywhere premise.

The two pieces have disjoint support and sum to f. Therefore

    ||l||_2^2 + ||u(.+r)||_2^2 = ||f||_2^2 = M.            (2)

The existing integrated-square Cauchy--Schwarz theorem gives

    |integral f(t)f(t+r) dt|^2 <= ||l||_2^2 ||u||_2^2.

Together with (||l||_2^2-||u||_2^2)^2>=0 and (2), this yields

    2 |integral f(t)f(t+r) dt| <= M.                       (3)

An alternative direct derivation integrates
2|l(t)u(t+r)|<=l(t)^2+u(t+r)^2. It is an independent elementary
presentation of the same estimate, not independent formal verification.
No oddness, differentiability, zero endpoint values, or finite sine
synthesis is required. Strict r>T is the stated domain. The equality case
r=T is not needed; it is conservatively assigned to the old allowance.

For arbitrary r the previous whole-line inequality gives |correlation|<=M.
Define

    c_T(r) = 1 if T<r, and 2 otherwise,
    L_support(T) = sum_(q active) primeWeight(q) c_T(log q).

Equation (3) and the old short-shift bound imply, for every active label,

    2 |correlation(log q)| <= c_T(log q) M.

Multiply by the original nonnegative weight and sum using the triangle
inequality. This proves

    |primeEnergy(T,f)| <= L_support(T) M.                  (4)

No signed term is deleted from the source; the absolute comparison is an
upper bound used in its negative-prime lower estimate. Since 0<=c_T<=2,
L_support is nonnegative and at most the canonical `primeMass T`.

On the original measurable odd high domain, exact source periodization
and its complete boundary comparison now give

    shiftedOddCoreEnergy(T,beta,f)
      >= [gammaConstant(1,0)-beta
          +periodicMultiplier(0,frequency(T,N+1))
          -L_support(T)-4] ||f||_2^2.                     (5)

The hypotheses in (5) include every first-N original sine coefficient
being zero and the original finite gamma-energy integrability condition.
The prime bound is discharged by (4); no `hprime` is left for the caller.
The existing exact-periodization theorem and its current evidence status
remain dependencies. Equation (5) asserts no sign for its coefficient.

## Falsification and scope checks

* The factor one cannot apply to short shifts: at r=0 every positive-mass
  input has 2|correlation|=2M>M. `zero_shift_control` states this directly.
* The long-shift factor is sharp for arbitrary signed supported inputs:
  choose two equal small intervals E and E+r in the window, set f=1 on E
  and f=-1 on E+r. For r>T there is only the one coupling, so correlation
  is minus the length of E while mass is twice that length. Symmetric
  placement gives an odd example. Thus this estimate alone offers no
  further universally valid factor reduction.
* Omitting the backward orientation changes the paired source by a factor
  of two. The proof bounds the original `primeEnergy`, whose factor two
  is retained throughout.
* The pole is not part of the bordered high core. Charging the evaluated
  pole tail in (5) and again in a bordered Schur return would double-count.
* Whole-window bounds do not control the sign after cancellation. No
  conductor-uniform, all-window vanishing-defect, primitive-character,
  complete-zeta spectral, or RH/GRH conclusion is inferred.

## Individual declaration correspondence

- `long_shift_correlation_le`: (1)--(3), including translated null sets,
  membership of the half restrictions in L2, and the exact mass split.
- `shiftCost_bounds`: the two explicit scalar cases.
- `supportPrimeLoss_nonneg`: original nonnegative weights and scalar costs.
- `supportPrimeLoss_le_primeMass`: c_T<=2 compared term by term.
- `abs_primeEnergy_le_support`: (4), retaining the exact active inventory.
- `high_core_lower`: (5), with the source-specific prime premise discharged
  and the existing complete boundary estimate supplied.
- `zero_shift_control`: the actual zero-lag correlation, with positive
  original mass explicit, rejects the invalid all-shift factor one.

The definitions `shiftCost` and `supportPrimeLoss` describe these exact
bounds, not another arithmetic source or another RH target.

## Source identities and prior art

Inspected source: `grwtsk/math@aaa93f568210e34ba542a70196b6037783df9b07`.
Lean `leanprover/lean4:v4.34.1` and mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` remain unchanged.

- [WeilOddSineForm.lean](WeilOddSineForm.lean), blob
  `ce5100120f5af50eb520a5a58e6aac0c10f26ba2`:
  `abs_integral_mul_translate_le_sq`, `primeEnergy`, `abs_primeEnergy_le`.
- [WeilFixedWindowSemibounded.lean](WeilFixedWindowSemibounded.lean), blob
  `becde980e515c1909cdb1d52fa3cdbc1fec1f8a7`:
  `integral_mul_sq_le`, proved by integrating squares.
- [WeilOddHighComplement.lean](WeilOddHighComplement.lean), blob
  `b2fbd7b1184ff303d4186dfda5e3eabf41d00cd5`:
  `shiftedOddCoreEnergy_ge_of_budget`, original physical norm and shift.
- [WeilOddExactPeriodization.lean](WeilOddExactPeriodization.lean), blob
  `647d73f6ff44cd3af3c5acc5c0fbeb64743a6d75`:
  `shiftedOddCoreEnergy_ge_of_exactBudget`.
- [WeilOddMultiplierBounds.lean](WeilOddMultiplierBounds.lean), blob
  `36cf87fa6321d42c3821ea6cdb7395a41ef9c1af`:
  original `periodicMultiplier`, not a fitted diagonal.

The estimate is elementary support geometry and Cauchy--Schwarz, not a new
general operator principle. No external paper is being claimed formally
adapted here. The source normalization inherits the exact references in
the cited canonical modules; this increment does not strengthen their
completed-L-function correspondence. Search completeness and novelty are
UNASSESSED, and no independent reviewer has been obtained.

## Verification boundary

Static source-text checks and exact piecewise-constant diagnostic controls
are recorded in math#1837. The finite controls do not prove the quantified
L2 theorem; the analytical argument above and unexecuted Lean bodies have
separate roles. Lean parsing/elaboration, exact signatures, dependency
replay, kernel replay, axiom audit, and independent review: **NOT_RUN**.
Source may require elaboration repairs. The inaccessible canonical Noe
proof skill blocks dependent execution, not ordinary source publication.
