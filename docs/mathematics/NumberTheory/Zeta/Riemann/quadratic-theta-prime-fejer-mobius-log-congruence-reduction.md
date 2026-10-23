# Centered Möbius-log congruence reduction

## Scope

This packet refines the sole remaining seven-eighths arithmetic supplier.  The
preceding source had reduced the route to the signed aggregate

\[
\sum_{1\le h\le 2X-1}
\sum_{2X<n\le 4X-h}
w(n)w(n+h)(\Lambda(n)-1)(\Lambda(n+h)-1),
\]

at the concrete cutoff

\[
N=\lceil X^{1/4}\rceil.
\]

The required bound remains

\[
\ll X^{3/2}(\log X)^4.
\]

No such estimate is proved here.

## Exact Möbius-log expansion

Mathlib proves the arithmetic-function identity

\[
\mu * \log=\Lambda.
\]

For each positive integer \(n\), this evaluates to the finite
divisor-antidiagonal sum

\[
\Lambda(n)
 =
 \sum_{da=n}\mu(d)\log a.
\]

The centered atom is therefore

\[
\Lambda(n)-1
 =
 -1+\sum_{da=n}\mu(d)\log a.
\]

The source represents the term \(-1\) by a distinguished `none` index and every
genuine factorization \(da=n\) by `some (d,a)`.  The resulting augmented finite
sum is proved equal to `centeredVonMangoldtAtom n`.

## Why the anchor is retained

The formalization does not split

\[
(\Lambda(n)-1)(\Lambda(n+h)-1)
\]

into four separately bounded channels.  Algebraically,

\[
(A-1)(B-1)=AB-A-B+1,
\]

but the final constant channel has naive pair-counting scale \(X^2\), while the
target scale is \(X^{3/2}\).  Independent absolute estimates would therefore
erase the centering cancellation required by the problem.

The augmented pair index retains all genuine, mixed-anchor, and anchor-anchor
terms in one exact finite sum.

## Divisor compatibility

Suppose genuine divisor witnesses satisfy

\[
da=n,\qquad eb=n+h.
\]

Then \(d\mid n\) and \(e\mid n+h\).  Since
\(\gcd(d,e)\) divides both right-hand quantities,

\[
\boxed{\gcd(d,e)\mid h.}
\]

The source proves this using `Nat.gcd_dvd_left`, `Nat.gcd_dvd_right`, and
`Nat.dvd_add_iff_left`.

The compatibility predicate is vacuous whenever either augmented index is the
centering anchor.  For two genuine indices it is exactly the gcd condition
above.

## Exact congruence packet

For fixed \(n,h\), the source defines the finite compatible pair block

\[
\sum_{(u,v)}
T_n(u)T_{n+h}(v),
\]

where the sum retains the anchor indices and all genuine divisor witnesses.
Every actual genuine pair automatically satisfies the gcd condition, so the
compatibility filter removes no term.  It records a theorem about the support.

The block is proved equal to

\[
(\Lambda(n)-1)(\Lambda(n+h)-1).
\]

After multiplication by the two Fejér weights and summation over \(n\) and
\(h\), the new aggregate is proved exactly equal to the preceding centered von
Mangoldt shift aggregate.

## Logical strength

The packet defines

```lean
SevenEighthsBoundaryMinimalMobiusLogCongruenceBound
```

and proves

```lean
SevenEighthsBoundaryMinimalMobiusLogCongruenceBound
  ↔
SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound
```

Thus this is a representation change, not a stronger premise.  Either
supplier reaches the existing seven-eighths partial-prime discrepancy target
through the already closed adapters.

## Remaining frontier

The remaining theorem is the signed bound

\[
\sum_{h,n}
w(n)w(n+h)
\sum_{\substack{u\in\{-1\}\sqcup\{da=n\}\\
                v\in\{-1\}\sqcup\{eb=n+h\}}}
T_n(u)T_{n+h}(v)
\ll X^{3/2}(\log X)^4,
\]

with the genuine-genuine support satisfying

\[
\gcd(d,e)\mid h.
\]

A useful next increment should exploit the compatible divisor structure—for
example by a centering-preserving Type I/II decomposition, a large-sieve
estimate over compatible moduli, or an averaged shifted-convolution theorem.
It must not estimate the four centered channels independently by absolute
values.

## Evidence status

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_MOBIUS_LOG_EXPANSION_SOURCE_PROVED
DIVISOR_PAIR_GCD_SHIFT_COMPATIBILITY_SOURCE_PROVED
CENTERING_PRESERVING_CONGRUENCE_PACKET_TYPED
SEVEN_EIGHTHS_MOBIUS_LOG_CONGRUENCE_BOUND_OPEN
```
