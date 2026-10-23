# Weighted Farey return: cancellation ledger and conditional limit positivity

**Status:** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`.
The current source candidate is **not imported by `GRWTSK.lean`**.
It is not accepted merely because its proof text has no `sorry`.
Lean build, fresh kernel replay and transitive axiom audit are pending.

## Exact source and relation

The source of the arithmetic clock is the **actual Farey positive word**
`[left,right]` whose ordered integral frame transport is
`H=L*R=[[1,1],[1,2]]`. The earlier
`GRWTSK.NumberTheory.Farey.ReturnSpectralChannel` identifies
`λ=(3+√5)/2>1` as its selected expanding eigenvalue.
`GRWTSK.NumberTheory.Farey.ReturnAngularChannel` identifies
the same word modulo three, with a selected four-state vector orbit
`1,i,-1,-i` and the **declared scalar observation**

    discreteSpiral n = (λ*i)^n.

This is a **finite source-identified return observation**, not an
arbitrary picture. The observed phase belongs to an oriented
four-state lift, not to a sign-invariant projective readout.
See `ReturnAngularProjectiveObstruction` and
`ProjectiveKoopmanEigenvalue` for the separate projective limits.

## The key distinction: phase cancellation is not weighted cancellation

The bare phase clock satisfies

    1 + i + (-1) + (-i) = 0.

The **actual first four spiral values** have radial weights

    1, λ, λ², λ³.

Their signed sum is

    1 + λ*i - λ² - λ³*i
      = (1-λ²)*(1+λ*i) != 0,     since λ>1.

It is enough to inspect the real defect `1-λ²<0`.
The source declaration
`discreteSpiral_first_four_eq_radialBlock`
identifies those four values with the weighted expression, and
`discreteSpiral_first_four_ne_zero` retains the strict negative
counterexample. Thus **clock sign-flips alone do not cancel expanding
weights**.

For four *arbitrary real weights* `w0,w1,w2,w3`, the exact ledger is

    w0+i*w1-w2-i*w3 = (w0-w2) + i*(w1-w3),

with rigorous proposed bound

    norm(weighted phase) <= |w0-w2| + |w1-w3|.

There are exactly two paired defects. Equal paired weights
`w0=w2` and `w1=w3` suffice for cancellation. A small
phase alone is **not** an estimate on either defect.

## The source-preserving compensation

The module **declares** the compensator using the independently
constructed real eigenvalue:

    compensatedSample n = λ^{-n} * discreteSpiral n.

Because `λ>1`, it is nonzero, and source algebra claims

    compensatedSample n = i^n,
    Σ_{j=0}^{3} compensatedSample (n+j) = 0

for **each** `n : ℕ`. No limit or asymptotic equidistribution is
used here. But `λ^{-n}` is a selected radial correction:
its admissibility for any source Weil form or gauge class
requires a separate **source-preserving transport theorem**.
Normalizing the observation is not a proof that the original,
uncompensated arithmetic source has become nonnegative.

## Finite partition balance and limit positivity

For any finite set of cells, real weights and real signed errors,
the explicitly paired expression

    sum_x (w(x)*e(x) + w(x)*(-e(x))) = 0

is an exact finite cancellation. It does NOT claim arbitrary
partitions admit weight-preserving involutions. Squared real cell
energies `sum_x signal(x)^2` are nonnegative.

The general endpoint theorem
`limit_lower_bound_of_balanced_partitions` makes **four independent
suppliers** explicit:

1. a **uniform, stage-independent** real lower margin
   `margin ≤ energy(n)` for every natural stage n;
2. an exactly cancelling signed part `cancel(n)=0` at each n;
3. the **complete** residual has an actual limit zero
   `Tendsto residual atTop (nhds 0)`;
4. the actual signed energy sequence
   `energy(n)+cancel(n)+residual(n)` converges to `limit`.

Only under these four hypotheses does `margin ≤ limit` follow.
Taking margin zero gives conditional limit nonnegativity.

The theorem **does not** build the arithmetic partitions,
construct the full residual, show a uniform spectral gap, prove
the convergence, or identify this generic limit with the classical
Riemann/Weil test form. The latter remains an explicit open supplier.
It has no automatic Hodge-cycle, Navier–Stokes regularity or
arithmetic-zero-irrationality consequence.

A sequence may have nonnegative finite energy yet lack a **uniform
strict** margin; a cyclic graph's first nonzero unscaled Laplacian
eigenvalue tends to zero. A nonvanishing negative residual can
destroy positivity; a finite signed cancellation does not eliminate
it. These are intended hostile controls.

## Source identity and verification

The `GRWTSK.NumberTheory.Farey.WeightedReturnBalance` module,
file `GRWTSK/NumberTheory/Farey/WeightedReturnBalance.lean`,
was introduced on existing `main` in
[math commit `c50155b484dc5167ec8f67002a463cdc9ef4f8f4`](https://github.com/grwtsk/math/commit/c50155b484dc5167ec8f67002a463cdc9ef4f8f4)
with Git blob `d3c68e18dc0e5be7b8a82464dc3feaede8ac56b0`.
Direct imports: `ReturnAngularChannel`, blob
`df4c90661a7f0a6897d274604de22850b703d38b`,
and Mathlib pinned at
`db584cd6d46c92f209a44c0f1c829460d327499d`,
with Lean `v4.33.0`.

**Preflight only:** exact SymPy rational/surd arithmetic verified
`625` real-weight fixtures drawn from `{-2,-1,0,1,2}`,
the true `λ` block, normalization for the first eight returns,
and 299 exact-rational stage examples of the margin calculation.
The initial floating-point version of one margin test suffered
roundoff at a strict threshold; rerunning that test with exact
rationals passed. No theorem verification status is inferred.
The local runtime has no `lean`, `lake` or `leanchecker`.

## Bibliographic boundary

This is a **repository-derived algebraic and conditional analytic
criterion**, not an external paper theorem imported into Lean.
No separate publication title, authors, date, DOI or theorem number
is established for these exact weighted-Farey definitions. The
source-credited mathematical direction is R.A. Jacob Martone,
formalization assistance OpenAI. Earlier Sarnak, Sturmian,
Navier–Stokes, Hodge and RH paper comparisons are **analogies or
unresolved links**, not new suppliers of these four hypotheses.

The user-referenced separate ChatGPT conversation could not be
retrieved in this session. No mathematical premise from that
conversation is silently assumed or attributed here.
