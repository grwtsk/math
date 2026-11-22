# Radius-two prime loss with every source label retained

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilPrimeSupportRadiusTwo.lean](WeilPrimeSupportRadiusTwo.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.PrimeSupportRadiusTwo`.
MSC2020 primary 11M06; dependencies 42A38 and 65G20.
Evidence: **WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE**.
Novelty and exhaustive prior-art assessment: **UNASSESSED**.

## Exact consumer

This file supplies a genuine source-specific prime bound to the existing
`OddLiteralWindow.HighFloor`, retaining its precise domain and pole-free
bordered meaning. It separately combines the result with the already
published complete pole tail for the original unbordered Weil form.
No new operator, source, positivity axiom, certificate checker or RH
predicate is introduced. A rational upper sum is a supplier, not an
assumed source sign.

## Complete primary argument

The existing exact inventory theorem is

    activePrimePowers(2) = Icc 2 54.                         (1)

This includes composite labels with zero weight and ALL 24 nonzero
prime powers through 54, including 4,8,9,16,25,27,32,49. The original
weight at p^k is log(p)/sqrt(p^k), not log(p^k)/sqrt(p^k).

Pinned Mathlib's proved log-two lower bound gives

    log 8 = 3 log 2 > 2.

Log monotonicity implies log q>2 for every q>=8. Thus the preceding
long-shift source theorem halves the old allowance for labels 8..54;
labels 2..7 keep the factor two. Without testing numerical log samples,

    supportPrimeLoss(2)
      <= 2 sum_(2<=q<=7) primeWeight(q)
         + sum_(8<=q<=54) primeWeight(q).                   (2)

The finite budget `integerLoss 54 7` is exactly the right side of (2),
written as one sum. It is not a truncation of a larger active inventory.

### Rational numerical supplier

Reuse the current `RationalPrimeWeights.upper q N D`. For q a prime power
with prime base p, this is

    upper(q,N,D) = logUpper(p,N) * D / floor(sqrt(q D^2)),
    logUpper(p,N) = 2 sum_(k<N) z^(2k+1)/(2k+1)
                   + 2 z^(2N+1)/(1-z^2),
    z=(p-1)/(p+1).

Non-prime-powers have exact value zero. The source theorem already proves
these are upper bounds for the original weights, with q>=1 and D>0.
The integer root is admitted by its two exact square inequalities.
The geometric remainder pays the complete logarithm tail, not only the
first omitted term.

Define the finite rational sum

    rationalLoss(B,K,N,D)
      = sum_(q=2..B) upper(q,N,D)*(2 if q<=K else 1).

Termwise positive multiplication and finite summation give

    integerLoss(B,K) <= rationalLoss(B,K,N,D).

At N=128, D=1000000, exact rational arithmetic gives

    rationalLoss(54,7,128,1000000) < 378/25 = 15.12.         (3)

The source fixture uses the nonstrict comparison. It has an ordinary
`decide` proof candidate, not native computation, an axiom, an externally
trusted oracle, or a stored claim that the real integral has the sign.
That proof has NOT been executed and may need resource or elaboration
repairs. External Fraction/integer arithmetic checks (3) independently
of the Lean tactic, but does not validate the analytic source bridge.

Combining (1)--(3) gives, for every real L2 representative f supported
almost everywhere in [-2,2],

    |primeEnergy(2,f)| <= (378/25) integral |f|^2.            (4)

No finite-mode, smoothness, oddness, or gamma-energy condition is needed
for (4). Its lower-bound consumer still has those original hypotheses
where the gamma source requires them.

Exact rational diagnostics also give raw primeMass(2)>24, and the raw
lower enclosure exceeds the new rational upper enclosure by more than 9.
Those diagnostics quantify the improvement but are not additional Lean
theorems in this increment. The comparison is with this coarse previous
norm bound, not a claim of an optimal norm or a best known literature bound.

### Original high-core and full-source returns

Write

    K(beta,N) = gammaConstant(1,0)-beta
      +periodicMultiplier(0,frequency(2,N+1))-378/25-4.

The exact original periodization theorem, (4), and the complete boundary
loss prove

    HighFloor(2,beta,K(beta,N),N).                           (5)

This is unconditional as a lower inequality, but K is not asserted
positive. A requested gamma is admitted only with gamma<=K. Neither (4)
nor (5) discharges the desired high-64 floor: the present norm bounds
still lose too much arithmetic cancellation. No replacement of N=64 by
an unreported giant cutoff or arbitrary finite model is made.

For the UNBORDERED form and N>=64, the first 64 sine coefficients also
vanish. Reuse the complete-tail theorem from `WeilPoleTailEnergy`:

    -0.034711167494 ||f||^2 <= -2(integral f*sinh(t/2))^2.

Add it once to (5), giving

    shiftedOddWeilEnergy(2,beta,f)
      >= [K(beta,N)-0.034711167494] ||f||^2.                (6)

The pole bound includes the entire infinite tail. It is not a finite
2048-mode observation. In the bordered Schur consumer the pole coordinate
is retained separately, so its `HighFloor` is (5), not (6). All low/high
couplings, residuals, row errors, and complete remote bounds remain the
existing independent obligations.

## Individual declaration correspondence

- `integerLoss_le_rational`: original coefficient enclosures, nonnegative
  scalar factors, and finite summation. Resolution positivity is explicit.
- `long_log_of_eight_le`: exact log(8)=3log(2), proved log-two lower bound,
  and monotonicity at positive integer arguments.
- `supportPrimeLoss_two_le`: source inventory (1) and the two exact shift
  cases, with every original nonnegative weight retained.
- `rational_budget`: exact finite rational condition (3); ordinary kernel
  reduction proof body, currently unexecuted.
- `radius_two_prime_bound`: uniform source bound (4), including arbitrary
  signed supported L2 functions rather than a finite list of probes.
- `radius_two_core_floor`: source-only return (5) into the pre-existing
  `HighFloor` definition, supplying the prime and boundary premises.
- `radius_two_highFloor_of_budget`: scalar monotonicity with nonnegative
  physical mass; no omitted sign premise.
- `radius_two_full_high_lower`: (6), with N>=64 and exactly one complete
  negative-pole allowance.

Definitions `integerLoss`, `rationalLoss`, and `coreFloor` name these
specific budgets, not independent arithmetic objects.

## Scope controls and next mathematical obligation

The sign of the original prime energy is retained. The proof uses an
absolute comparison only to control its adverse contribution; it does not
show primes are individually positive or negative on high inputs. The
long-shift improvement cannot be applied at zero lag. Both orientations
are needed, higher prime powers cannot be dropped, and no rounded integer
inventory is admitted by a floating exponential.

The bound is fixed-window. Increasing a conductor is irrelevant to this
conductor-one argument, and the omitted pole has no automatic analogue
in primitive nonprincipal characters. Extending to complex pairings would
need the original phases and conjugations. No such transfer is claimed.

A useful next analytical target is to retain cancellations between the
prime operator and gamma energy on the SAME high complement, instead of
further packaging this absolute norm bound. The existing finite signed
head, boundary accounting, and universal cofinal certificate existence
are not discharged here.

## Source pins, provenance and verification

Inspected source `grwtsk/math@aaa93f568210e34ba542a70196b6037783df9b07`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

- [WeilIntegerInventory.lean](WeilIntegerInventory.lean), blob
  `eadebe2bf7427e2cc16188c1a3e31dee354c9d83`, `active_two`.
- [WeilRationalPrimeWeights.lean](WeilRationalPrimeWeights.lean), blob
  `973510bc0ec6a01a8db3c2c1e2f6c870559476c8`, `upper`, `weight_enclosure`.
- [WeilOddLiteralWindow.lean](WeilOddLiteralWindow.lean), blob
  `ae085838734c9ae5ae47e83797d3dcde9f195a35`, `HighFloor` and
  `shiftedOddWeilEnergy`: unchanged physical domains and targets.
- [WeilPoleTailEnergy.lean](WeilPoleTailEnergy.lean), blob
  `d59c88a73503813a6efacffda8edabb5ec454102`,
  `radius_two_high64_pole_lower`.
- Pinned Mathlib `Mathlib/Analysis/Complex/ExponentialBounds.lean`, blob
  `747071091440887040140f84067ad4afd2f4cc4b`, `Real.log_two_gt_d9`;
  upstream authors Mario Carneiro and Joseph Myers. Used by import, not copied.
- The preceding [WeilPrimeSupportBound.lean](WeilPrimeSupportBound.lean)
  has its own individual analytic and source-local provenance record.

No new paper formalization or novelty is asserted. This is a local
consequence of the exact source, elementary support geometry, and reused
scalar enclosures. Exhaustive prior-art comparison is UNASSESSED.

Exact Fraction/integer computation checks all 53 inventory labels, the
integer roots, 24 nonzero prime-power classifications, and (3). It also
checks 224 finite step-function long-shift cases, a sharpness fixture, and
a short-shift counterexample. These numerical controls are not universal
analytic proofs. Script and output are recorded in math#1837, with no
execution receipts admitted as Lean mathematics.

Lean parsing/elaboration, exact signatures, clean dependency replay,
fresh kernel replay, transitive axiom audit, certified complete source
computation and independent review: **NOT_RUN**. All imported proof
candidates retain their actual evidence status. Static checks and successful
publication do not upgrade those statuses or imply RH/GRH.
