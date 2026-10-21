# Goldbach rational-arc separation and finite expansion

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**

This note records the next exact geometric layer stacked on the concrete
rational arcs for issue #259. It proves a sufficient separation regime for the
declared widths and rewrites the rational major contribution as a finite sum of
individual signed arc contributions.

It does not prove a major-arc approximation, a singular-series estimate, a
minor-arc bound, or Goldbach's conjecture.

## 1. Inherited rational family

For denominator cutoff `Q`, the inherited index set is

\[
\mathcal I_Q
 =
 \{(a,q):0\le a<q\le Q,\ \gcd(a,q)=1\}.
\]

The real center and radius are

\[
c(a,q)=\frac aq,
\qquad
\rho_{Q,N}(q)=\frac{Q}{q(N+1)}.
\]

Each raw rational arc is periodized through the three centers

\[
c(a,q),\qquad c(a,q)+1,\qquad c(a,q)-1.
\]

The actual major region is the raw finite union clipped to `(0,1]`.

## 2. Uniqueness of reduced natural fractions

Suppose

\[
\frac aq=\frac br
\]

with positive denominators and

\[
\gcd(a,q)=\gcd(b,r)=1.
\]

Cross multiplication gives

\[
ar=bq.
\]

Because `q` is coprime to `a`, Euclid's lemma gives `q | r`.
Likewise `r | q`. Hence `q=r`, and cancellation gives `a=b`.

This is formalized as a finite natural-number theorem rather than imported as
an informal fact about rational notation.

## 3. Integral period lifts retain uniqueness

Define the lifted center

\[
c_k(a,q)=\frac aq+k,
\qquad k\in\mathbf Z.
\]

Every canonical center lies in `[0,1)`. If

\[
c_k(a,q)=c_\ell(b,r),
\]

then

\[
\ell-k=\frac aq-\frac br.
\]

The right side lies strictly between `-1` and `1`; the left side is an integer.
Therefore `k=\ell`. Reduced-fraction uniqueness then gives

\[
(a,q)=(b,r).
\]

Thus equality of lifted centers remembers both the reduced index and the
integral lift.

## 4. Determinant formula and separation

The difference of two lifted centers has the exact common-denominator form

\[
c_k(a,q)-c_\ell(b,r)
 =
 \frac{
   ar-bq+(k-\ell)qr
 }{qr}.
\]

For distinct reduced fraction/lift data, the numerator is a nonzero integer.
Its absolute value is therefore at least one. Consequently,

\[
\left|c_k(a,q)-c_\ell(b,r)\right|
 \ge \frac1{qr}.
\]

This holds for arbitrary integral lifts, not only for the three lifts retained
by the concrete family.

## 5. Radius comparison

The sum of the two declared radii is

\[
\rho_{Q,N}(q)+\rho_{Q,N}(r)
 =
 \frac{Q(q+r)}{qr(N+1)}.
\]

Hence the pair-specific condition

\[
Q(q+r)<N+1
\]

implies

\[
\rho_{Q,N}(q)+\rho_{Q,N}(r)
 <
 \frac1{qr}.
\]

For indexed denominators `q,r <= Q`,

\[
Q(q+r)\le 2Q^2.
\]

The global sufficient condition

\[
2Q^2<N+1
\]

therefore makes every pair of distinct lifted intervals disjoint.

The source does not claim this condition is optimal. It is a simple uniform
guard compatible with all indexed denominators and all three period lifts.

## 6. Full periodized disjointness

The inherited raw periodized arc is exactly the union of the lifts with
offsets

\[
0,\quad 1,\quad -1.
\]

Under `2 Q^2 < N+1`, every one of the nine lift pairs associated with two
distinct reduced indices is disjoint. Therefore the two full three-lift raw
arcs are disjoint.

It follows that the finite family

\[
\left\{
  \mathfrak A_{Q,N}(a,q):(a,q)\in\mathcal I_Q
\right\}
\]

is pairwise disjoint in this sufficient scale regime.

The earlier overlap control at `Q=2, N=0` remains valid because that target
does not satisfy the scale condition.

## 7. Clipping and finite integral expansion

For one reduced index, define the clipped arc

\[
\mathfrak A^{\,\mathrm{clip}}_{Q,N}(a,q)
 =
 (0,1]\cap\mathfrak A_{Q,N}(a,q).
\]

Clipping preserves pairwise disjointness. The concrete major set is exactly

\[
\mathfrak M_{Q,N}
 =
 \bigcup_{(a,q)\in\mathcal I_Q}
 \mathfrak A^{\,\mathrm{clip}}_{Q,N}(a,q).
\]

Because the family is finite, measurable, pairwise disjoint, and the exact
Goldbach integrand is integrable on `(0,1]`, finite additivity yields

\[
I_{\mathfrak M}(Q,N)
 =
 \sum_{(a,q)\in\mathcal I_Q}
   I_{a,q}(Q,N),
\]

where

\[
I_{a,q}(Q,N)
 =
 \int_{\mathfrak A^{\,\mathrm{clip}}_{Q,N}(a,q)}
   F_N(\alpha)\,d\alpha.
\]

No approximation has occurred. This is an exact signed identity.

## 8. Exact recombination and terminal consumer

Combining the finite major sum with the inherited complementary minor
contribution gives

\[
\sum_{(a,q)\in\mathcal I_Q} I_{a,q}(Q,N)
  + I_{\mathfrak m}(Q,N)
 =
 \operatorname{goldbachLogMass}(N).
\]

A count conclusion still requires supplied estimates

\[
M
 \le
 \operatorname{Re}
 \sum_{(a,q)\in\mathcal I_Q} I_{a,q}(Q,N),
\]

\[
\|I_{\mathfrak m}(Q,N)\|\le E,
\]

and the strict margin

\[
E<M.
\]

Only then does the inherited positivity bridge imply

\[
\operatorname{goldbachCount}(N)>0.
\]

The finite-local-main variant keeps the rational denominator cutoff and local
factor cutoff independent. Its local approximation error and complete minor
error are each charged once.

## 9. Hostile controls

The source retains the following failures and distinctions.

- `Q=2, N=0` has overlapping raw arcs and fails the sufficient scale.
- Equality `2 Q^2 = N+1` does not satisfy the strict scale premise.
- Distinct integral lifts of one fraction are separated under the safe scale.
- The safe finite-sum expansion can coexist with
  `goldbachCount 2 = 0`.
- Exact finite additivity supplies no lower bound for any individual arc.
- Pairwise disjointness supplies neither a prime-distribution theorem nor a
  minor-arc estimate.

## 10. Remaining analytic work

The next genuine analytic obligations are:

1. approximate the exact prime-log exponential sum on each clipped arc;
2. identify the resulting finite arithmetic and continuous main pieces;
3. quantify any replacement of the finite local product by an infinite
   singular-series object;
4. bound the complete signed minor contribution;
5. prove a strict margin for every sufficiently large admissible even target;
6. verify every target below the analytic cutoff.

None of these obligations is discharged by separation or finite additivity.
