# Rough shared-prime sector: independent quantitative saving and exact remaining sum

Attribution: grwtsk contributors.

Mathematical source: `8da6790cf5e26fbee7b9063746606303fcb14923`.
Parent: `8c10f081961e33952335cb722760933a2c9cf70b`.
Exact per-module blobs and dependencies are in the companion verification.toml.

Status: complete written finite argument and Lean source proof candidates.
Compilation, fresh kernel replay and transitive axiom auditing: NOT_RUN.
No bound for the full signed rough prefix, the full distinct-core interaction,
a source-only inverse-mass witness, or RH is asserted.

## 1. Frozen source and prefix identity check

For each j fix T=j*log(2), N=2^j, L=floor(sqrt N), and the unchanged block
schedule P={primes<=j}. The actual coefficients and blocks are

    a(n)=mu(n) 1_(no prime in P divides n),
    K(m,u)=K_(P,N)(m,u),
    G(m,n)=integral_0^T K(m,u)K(n,u) du.

The inner horizon T and CLOSED cutoff N never change in a prime quotient,
prefix, or integral. The exhaustive extraction inventory is
Q={primes j<p<=N}, with w(n)=#{p in Q:p|n}. Define

    c(p,q)=a(q)-1_(p|q)a(q).

This is the existing repeated-prime correction. For p in Q, c(p,q) equals
-a(pq); it is either 0 or a(q), so |c(p,q)|<=1. Also w(pq)>=1.

For 1<=X,Y<=N, the previously defined kernel-free correlation is exactly

 B(X,Y)=sum_(p in Q) sum_(1<=q<=N/p, pq<=Y)
             sum_(L<m<=X, m<pq)
       a(m)c(p,q)/(w(pq)*sqrt(m)*sqrt(pq))
       = -sum_(L<m<=X, m<n<=Y) a(m)a(n)/sqrt(mn).

Let S(t)=sum_(L<n<=t) a(n)/sqrt(n) and V(t)=sum_(L<n<=t) a(n)^2/n.
All cutoffs below are restricted to the frozen N. The two requested identities
are correct:

 X>=Y:  B(X,Y)=(V(Y)-S(Y)^2)/2.
 X<Y:   B(X,Y)=-S(X)S(Y)+(S(X)^2+V(X))/2.

Equivalently, H=min(X,Y) gives

 B(X,Y)=-S(H)S(Y)+(S(H)^2+V(H))/2.

Proof: the square S(H)^2 consists of twice its strict triangle and V(H).
The remaining rectangle is S(H)(S(Y)-S(H)); subtracting gives the identity.
The Lean scripts prove the corresponding generic finite-sum identities and
then identify the literal existing roughPrefixCorrelation with them.

The diagonal is independently small:

 0<=V(t)<=N/(L+1)<=sqrt N.

Each nonzero summand is at most 1/(L+1), and there are at most N. The last
inequality follows from sqrt N < L+1. This is the prefix's own arithmetic
diagonal, not the previous block diagonal or a repeated internal credit.

Consequently, for N>=1, a uniform |B(X,Y)|<=B0*N^(3/4) implies

 |S(t)|<=sqrt(2*B0+1)*N^(3/8).

Conversely |S(t)|<=C0*N^(3/8) for every prefix implies

 |B(X,Y)|<=((3*C0^2+1)/2)*N^(3/4).

These last two displayed implications are algebraic written consequences of
the source identities and diagonal bound, not new arithmetic witnesses.
Prime extraction has NOT manufactured cancellation in S.

## 2. Four disjoint sectors with an arbitrary extraction threshold

For a fixed integer Z>=1 and any fixed kernel H(m,n), let

 t(p,q,m;H)=a(m)c(p,q)H(m,pq)/w(pq).

Every sum uses p in Q, 1<=q<=floor(N/p), pq<=Y,
L<m<=X, m<pq, and m<=N. Partition that SAME sum into

 A_Z(H): p<=Z, all q,m;
 J_Z(H): p>Z, p|m, all q;
 U_Z(H): p>Z, q=1, p does not divide m;
 C_Z(H): p>Z, q>=2, p does not divide m.

Then total(H)=A_Z(H)+J_Z(H)+U_Z(H)+C_Z(H), exactly.
For prime p the condition p does not divide m is equivalent to coprimality.
No stage prime is inserted in this partition. In particular, the prime set P
and the kernel are unchanged. The complementary p<=Z range remains present
with its complete repeated-prime correction.

The q=1 shared row is empty: 0<m<p and p|m are incompatible. In the coprime
row a(1)=1, w(p)=1, and c(p,1)=1. Hence, for the inverse-square-root kernel,

 U_Z(X,Y)=sum_(p in Q, Z<p<=Y) S(min(X,p-1))/sqrt(p).

This identity is source-exact. Its signed prefix is NOT independently bounded
in this increment; q=1 is not discarded as a negligible error. For primes
p<=L the prefix in this formula is zero by its lower cutoff, not by replacing
a(1) with zero.

## 3. Long-prime identities, and where their simplifications stop

For p>sqrt N and q<=floor(N/p), one has q<p. Thus p does not divide q,

 c(p,q)=a(q),     w(pq)=1+w(q).

The second equality is the cardinality of an exact divisor-set insertion.
It does not turn the denominator into a constant. For p|m put m=p*r;
from m<p*q one gets r<q<p, hence p does not divide r either. The actual shared
atom becomes

 t(p,q,p*r;H)=-a(r)a(q)H(p*r,p*q)/(1+w(q)).

For H(m,n)=1/(sqrt m sqrt n), this is

 -a(r)a(q)/[p*(1+w(q))*sqrt r*sqrt q],

with L<p*r<=X, p*q<=Y, r<q, and both r,q<=floor(N/p).
The original strict comparison and both quotient cutoffs are explicit.

These simplifications are NOT used for primes at or below sqrt N. In
particular p|q can occur in the expanded paid sector described below; its
correction stays in c(p,q). A prime-square original coefficient is zero only
after the unrestricted quotient term and its repeated partner cancel.

## 4. The independent reciprocal-square bound

Suppose |H(m,n)|<=K0/(sqrt m sqrt n) for positive m,n, with K0>=0.
This kernel hypothesis is independently supplied with K0=1 for the prefix
kernel, and K0=4*T*A(P)^2 for the ACTUAL block Gram.

Reindex only the shared sector m=p*r. Since |a(m)c(p,q)/w(pq)|<=1,

 |t(p,q,p*r;H)|<=K0/(p*sqrt r*sqrt q).

Taking absolute values here does not discard any purported saving: this is
a direct absolute budget for the specified sector. Dropping only restrictions
in a nonnegative upper bound and writing M=floor(N/p),

 sum_(shared terms at p) |t|
   <= (K0/p)*(sum_(r=1)^M 1/sqrt r)^2
   <= (K0/p)*4M
   <= 4*K0*N/p^2.

The inverse-square-root sum is paid by the existing telescoping square-root
estimate. The second reciprocal p is supplied by the actual quotient range,
not by an assumption that the arithmetic coefficients cancel.

The FINITE integer tail satisfies

 sum_(Z<n<=N) 1/n^2
 <=sum_(Z<n<=N) (1/(n-1)-1/n)
 <=1/Z.

Every fresh prime greater than Z is in that integer range. Therefore

                  |J_Z(H)| <= 4*K0*N/Z.                 (SH)

The proof actually majorizes the complete absolute atomic sum of this sector.
It needs no prime-counting theorem, uniform randomness, full-vector coercivity,
Mertens estimate, or hypothesis about S. The Lean theorem sharedPart_abs_le
proves the displayed sector bound.

For Z=L=floor(sqrt N), N>=1 implies N/L<=2sqrt N. Thus the literal prefix
sector satisfies

                  |J_L(X,Y)|<=8sqrt N                  (LP)

uniformly in the two prefixes. This is an independent fixed saving for one
proper region of the proposed bilinear supplier, not a bound for all of B.

## 5. Source-exact return to the ordered energy

Write A(P)=product_(p in P)(1+p^(-1/2)). The established block amplitude and
Gram bound give

 |G(m,n)|<=4*T*A(P)^2/(sqrt m sqrt n).

Thus (SH), with the factor -2 from the original ordered-pair extraction, gives

 |R_shared,Z| := |-2*J_Z(G)| <=32*T*A(P)^2*N/Z.           (EG)

This is a channel of the ORIGINAL distinct-core interaction. It is not a
block-diagonal decrement, a same-core transfer, or an energy-ratio definition.
The original Gram uses the complete signed K and therefore includes its
positive-positive, negative-negative, and signed mixed contributions.

At the long-prime threshold L,

 |R_shared,L|<=64*T*A(P)^2*sqrt N.

The inherited, independently constructed supplier is

 T_j*A(P_j)^2 <=16*exp(64/log2)*exp(T_j/8).

Consequently

 |R_shared,L|<=1024*exp(64/log2)*2^(5j/8).               (E5)

This is the new long/shared 5/8-rate source bound. No claim about the whole R
is inferred from it.

A larger region is affordable at the requested 7/8 rate. Fix

 Z_j=2^floor((j+3)/4)=2^ceil(j/4).

Then Z_j>=N_j^(1/4), so N_j/Z_j<=N_j^(3/4), and (EG) gives

 |R_shared,Z_j|<=512*exp(64/log2)*2^(7j/8).              (E7)

The paid region is p>Z_j, NOT every real p>N_j^(1/4) when the thresholds differ.
All primes in the intervening range remain in A_(Z_j). For Z_j<p<=sqrt N,
the repeated-prime correction still appears in both the identity and proof.

Z_j is an extraction partition only. P_j remains all primes <=j, T_j remains
j log2, and N_j remains 2^j. No assertion |P_j|^2<=T_j is used. No 4^|P_j|
discrepancy bound is substituted for the available exp(4sqrt j) amplitude.

## 6. Precisely what remains signed and unproved

The existing thin strip has

 |R_lo|<=512*exp(64/log2)*N_j^(7/8).

For full prefixes and the actual frozen Gram define, in this note only,

 W_j=A_(Z_j)(G)+U_(Z_j)(G)+C_(Z_j)(G).

These are three specified sums above, not an unrestricted remainder field.
The source code leaves them expanded in the theorem statement. Exact extraction
and the disjoint partition give

 R_(P_j)(T_j)=R_lo+R_shared,Z_j-2*W_j.

The new source-level comparison is

 R_(P_j)(T_j)
 <=1024*exp(64/log2)*N_j^(7/8)-2*W_j.                  (FULL)

A sufficient remaining estimate is the ONE-SIDED LOWER bound

 exists C0>=0, for all j>=0:   W_j>=-C0*N_j^(7/8).      (REM)

It would imply R<= (1024*exp(64/log2)+2*C0)*N_j^(7/8).
(REM) is UNPROVED. In particular, U_(Z_j) retains the q=1 source and may
interact with both other sectors; no separate smallness assumptions are added.

The kernel-free alternative is the genuinely signed inequality

 |A_(Z_j)(I;X,Y)+U_(Z_j)(I;X,Y)+C_(Z_j)(I;X,Y)|
       <=B0*N_j^(3/4), uniformly in j,X,Y,              (PREF-REM)

where I(m,n)=1/(sqrt m sqrt n). The paid part satisfies |J_(Z_j)(I)|<=4*N_j^(3/4),
so PREF-REM would imply the previous BIL with constant B0+4. Its existing
normalized-variation/two-variable Abel return is still a WRITTEN argument,
not newly promoted to a Lean result in this increment. PREF-REM is likewise
UNPROVED; the prefix identity in section 1 explains its real arithmetic content.
No independent fixed-exponent bound for the entire S or R has been supplied.

The other chat's localized negative channel and anchored M_30 return are not
premises here. Bounding a negative channel alone leaves the positive and mixed
terms; the whole signed block Gram is retained throughout the present proof.
The earlier Euler-product/Laplace secondary-forcing obstruction remains at its
written scope, separate from its finite Lean reductions and pending acceptance.
A fixed 7/8 bound, once supplied, would still not imply every positive rate
without an additional justified argument.

## 7. Source and acceptance scope

Three new modules under GRWTSK/NumberTheory/Moebius:

- PickupRoughSharedPrime.lean: exact sector split and reindex, independent
  finite reciprocal-square tail, source-specific long and threshold bounds.
- PickupRoughPrefixIdentity.lean: both requested prefix identities and the
  independent arithmetic diagonal bound V<=sqrt N.
- PickupRoughLongPrime.lean: exact long-prime quotient/count identities,
  q=1 return, all four sectors, and the original-source comparison FULL.

There is no new RH theorem, growth-witness field, or full-vector mass premise.
No existing source, root imports, dependency pins, or old receipt is replaced.
Operational diagnostics and the audit driver are external to mathematical source.
The source-bound manifest and passive issue identify exact native commands;
compilation, fresh replay and transitive axiom audit remain NOT_RUN.

## Next mathematical execution instruction

Apply a second-moment estimate to the COMBINED short-prime plus unit-quotient
plus nonunit-coprime sum W_j at the frozen outer horizon; expand its square
before any absolute-value split so the q=1 cross terms and both complementary
prime ranges remain, and target the one-sided lower estimate (REM).
