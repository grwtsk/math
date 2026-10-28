# Concrete dyadic prime range and quantitative Abel comparison

Contribution: grwtsk.

**SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.**
This note records exact finite mathematics and source scripts, not Lean acceptance.
No arithmetic cancellation estimate, operator norm, or unconditional RH is supplied.

## Immutable source

- Repository: `grwtsk/math`, existing `main`.
- Reviewed parent: `19b607a766d170e270ccd0acb01621307cbbc3df`.
- Source introduction: `21fdc83543bbd9419d851a0a089c5f8e71e96b7c`.
- Module: `GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange`.
- Path: `GRWTSK/NumberTheory/Moebius/MertensSignedAbelDyadicPrimeRange.lean`.
- Git blob: `2472dc59b2892798a97b603eb419e7121e85d6d0`.
- SHA-256: `e4aa3fa8e4ba12e5914215e670d782ba64b81a158c9e529793e01155cd2fba62`.
- Direct parent: `MertensSignedAbelPrimeExtraction.lean`, blob
  `86dfea00c3ffccd9eb26fd028e8fd09acb2adaa7`.
- Lean: `leanprover/lean4:v4.33.0`.
- Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.

There are four definitions and twenty theorem scripts, counted lexically.
The leaf remains outside `GRWTSK.lean`. No dependency upgrade is performed.

## 1. The chosen range

Set

\[
 X=2^j,\quad Y=2^{j+1},\quad
 Q_j=2^{\lfloor(j+1)/3\rfloor},\qquad
 \mathcal P_j=\{p: p\text{ prime},\ Q_j<p\le2Q_j\}.
\]

`bandScale` uses natural division. `primeBand` filters the literal integer
interval `[Q_j+1,2Q_j]` by primality. It is fixed before the shifts, depths,
prefix lengths and source values. Only `#P_j <= Q_j` is used; neither a
prime-counting asymptotic nor nonemptiness is assumed. At the smallest scales
a selected prime can lie outside the actual arithmetic support and contributes
zero through the original cutoffs.

The purpose is a concrete scale-separated quotient problem, not a claim that
this band is optimal or that the unsifted source is sparse. If `p in P_j` and
`N+h<Y`, the source proves

\[
 \left\lfloor\frac{N+h}{p}\right\rfloor
 \le \left\lfloor\frac{Y-1}{Q_j+1}\right\rfloor.
\]

`quotient_window_le_band` retains both the variable upper endpoint and the
integer floor. The lower cutoff `h<pm` is still present in every quotient sum.

## 2. Exact squared-prime incidence bound

For any finite set P of primes define

\[
 S(P,Z)=\sum_{p\in P}\left\lfloor\frac Z{p^2}\right\rfloor.
\]

This is an incidence count, not the cardinality of a disjoint union. An integer
with two selected squared prime factors may be counted twice, which is safe
for this upper bound. It is not asserted to equal the actual signed correction.

The old coefficient correction is

\[
 r_P(n)=\frac{1}{k_P(n)}
   \sum_{\substack{p\in P,\ p\mid n\\p\mid n/p}}\mu(n/p),
 \qquad k_P(n)=\#\{p\in P:p\mid n\}.
\]

The zero-count branch is kept. In the other branch, `k_P(n)>=1` and
`|mu(n/p)|<=1`, so

\[
 |r_P(n)|\le\sum_{p\in P}\mathbf1_{p^2\mid n}.
\]

For the unchanged ordinary right window,

\[
 R_P(h,N)=\sum_{h<n\le N+h}\mu(n-h)r_P(n),
\]

the exact multiple-counting bijection yields

\[
 |R_P(h,N)|\le S(P,N+h).
\]

No logarithmic averaging, asymptotic interchange or hidden uniformity in the
shifts is involved. `window_multiple_count_le` uses the existing finite
quotient reindexing and retains the entire ordinary prefix.

## 3. Complete bulk comparison

Let T_{j,L} be the existing middle-depth functional with normalization `2/Y`,
original kernel K(j,t,h), and prefix length N=t+1. The new generic comparison
`abs_bulkPrefixFunctional_le_two_mul` states:

\[
 |F(h,N)|\le B\quad(h\ge1,\ N+h<Y),\quad B\ge0
 \quad\Longrightarrow\quad |T_{j,L}(F)|\le2B.
\]

The factor two is paid after summing all Y depths. The proof uses the ACTUAL
nonnegative kernel and its mass at most one. It does not assume a bound for F
outside the triangular arithmetic window. Any width function, including an
empty middle interval, is allowed.

Consequently,

\[
 \boxed{|T_{j,L}(R_P)|\le2S(P,Y-1).}
\]

For the concrete band, elementary floor and interval counting give

\[
 S(\mathcal P_j,Z)
 \le\frac{\#\mathcal P_j\,Z}{(Q_j+1)^2}
 \le\frac Z{Q_j}.
\]

Thus the complete repeated-prime channel satisfies

\[
 \boxed{|T_{j,L}(R_{\mathcal P_j})|
 \le2S(\mathcal P_j,Y-1)
 \le\frac{2\#\mathcal P_j(Y-1)}{(Q_j+1)^2}
 \le\frac{2(Y-1)}{Q_j}.}
\]

The actual finite incidence is kept available rather than immediately replaced
by the coarser power-scale estimate.

Write B_{j,L} for the existing bulk and U_P,A_P,R_P for the existing three
prefix channels. The original exact identity B=T(U)-T(A)+T(R) now gives

\[
 |B_{j,L}-[T_{j,L}(U_{\mathcal P_j})-T_{j,L}(A_{\mathcal P_j})]|
 \le2S(\mathcal P_j,Y-1).
\]

At the existing square-root boundary width, the FULL original signed packet P_j
therefore satisfies

\[
 \boxed{|P_j-[T_j(U_{\mathcal P_j})-T_j(A_{\mathcal P_j})]|
 \le2+2S(\mathcal P_j,Y-1).}
\]

The first two units are exactly the inherited boundary allowance. No additional
arithmetic boundary estimate is introduced.

## 4. Do not treat this polynomial correction as subpolynomial

For scale interpretation, write `j+1=3e+r`, `0<=r<=2`. Then `Q_j=2^e` and
`Y=2^r Q_j^3`, so the coarse correction is O(Y^(2/3)); more explicitly,
`2(Y-1)/Q_j < 4Y^(2/3)`. This exponent calculation is explanatory mathematics;
the Lean conclusions above retain their exact integer powers and quotients.

This does NOT pay an O_delta(Y^delta) allowance for every delta>0. It does not
prove a threshold descent. The finite unsifted channel remains unchanged and
can be substantial: a narrow dyadic prime band need not divide most source
integers. No sieving density or randomness assumption is made.

## 5. Preferred exact comparison: combine repeated terms before estimating

Define `coprimePrefix P h N = primePrefix P h N - repeatedPrefix P h N`.
The source proves, rather than assumes, the exact quotient formula

\[
 A_P^{\rm cop}(h,N)=
 \sum_{p\in P}
 \sum_{\substack{1\le m\le\lfloor(N+h)/p\rfloor\\h<pm,\ p\nmid m}}
 \frac{\mu(pm-h)\mu(m)}{k_P(pm)}.
\]

The repeated-prime correction cancels precisely the `p|m` terms of the raw
quotient expression. This is NOT deletion of the correction because mu(pm)=0;
it is the finite identity A-R=A_cop, with the SAME source denominator.

For the chosen band the new exact source comparison is

\[
 \boxed{B_{j,L}=T_{j,L}(U_{\mathcal P_j})-T_{j,L}(A^{\rm cop}_{\mathcal P_j}).}
\]

No correction error is paid in this equality. The unsifted term is still signed
and explicit. Thus the preferred next analytic target is the signed combination
`T_j(U_Pj)-T_j(A_cop_Pj)`, not a forced absolute estimate for three separate terms.
The inherited full-packet distance remains at most two.

## 6. Scope and next arithmetic obligation

The source imports local finite mathematics and pinned Mathlib APIs. It is not
a port of an analytic Ramaré, entropy-decrement, expander, or prime-density
theorem. No historical influence is inferred and no paper result is admitted.
The radical-log identity is not a premise of these finite comparisons.

Still missing is a quantitative arithmetic estimate for the SAME signed
unsifted-minus-coprime aggregate at every positive exponent and every dyadic
scale, or an actual operator comparison that supplies it. An operator must
retain the variable window, prime band, weights, divisor-count denominator,
unsifted contribution, and coprimality guard. Self-adjointness, generic norm
bounds, or source-independent positivity cannot be substituted for cancellation.

## 7. Verification boundary

Compile, fresh-kernel and transitive axiom audit: **NOT_RUN**.
Canonical Noe execution receipt: **NONE**.

Requested commands include `lake build --wfail
GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange` and
`lake env lean --trust=0 -DwarningAsError=true
GRWTSK/NumberTheory/Moebius/MertensSignedAbelDyadicPrimeRange.lean`, followed
by an independently supported fresh checker and all-declaration axiom audit.
The mirrored passive specification pins source and dependencies. Actual command
logs and receipts belong outside math, in grwtsk/noeaaeue. A source scan or an
exact finite diagnostic does not establish Lean elaboration or kernel acceptance.
