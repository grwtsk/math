# Genuine high-smooth incident dyadic Möbius sector: all-positive-rate mathematical proof

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Research date: 2026-11-01 (America/Los_Angeles).
Source proof candidate. Formalization acceptance: NOT_RUN.

## Source identity and improvement

Continuation of the exact source in MoebiusHighSmoothDensePairs.lean and
MoebiusNearSquareRootEulerPrefix.lean. The original, unsigned physical
response and signed taggedMoebius are unchanged. The finite cutoff is
Q=N exp(-2 sqrt(log N)) at N=2X and T=log N. The literal source shell is
balancedBlock X T, filtered from the original endpointIndex T; it is a
subset of the integers X<n<=2X.

The former finite half-Euler moment yielded
  card H <= sqrt(2X) exp(sqrt T) V_P,
and proved only the HH subpacket small at every positive rate for fixed P.
The new method counts the cofactor of a near-maximal smooth divisor. For
every fixed bank P of r GENUINE primes it bounds all three original
high-incident sectors HH+HL+LH at every positive exponential rate.
This is a genuine enlargement of the bounded signed source subset.
The LL sector and cross-shell terms are not bounded by this argument.

## Exact finite divisor/cofactor count

For X>=1 put N=2X, T=log N >= log 2,
 Q=N exp(-2 sqrt T), U=exp(2 sqrt T) = N/Q.
Let
 H = {X<n<=N : exists d|n with d>Q and every prime factor of d in P}.
This is exactly the highSmoothBlock support at terminal T, not a
new collection of summand coefficients. Choose for each n in H one
witness d. Then 1<=d<=N, n=d*k, k>=1 and
 k<=N/d < N/Q = U.

Every positive P-smooth d<=N has a UNIQUE factorization
 d=prod_(p in P) p^e_p.
For each p, p>=2 and p^e_p<=d<=N imply
 0<=e_p<= floor(T/log p)<= T/log 2.
There are thus at most
 D_P(N) <= prod_(p in P) (1+floor(T/log p))
        <= (1+T/log 2)^r
possible smooth d. Pair counting (d,k) therefore gives
  card H <= U*D_P(N)
          <= exp(2 sqrt T)*(1+T/log 2)^r.              (1)
This holds for P empty, for squarefree and squareful original n,
and without a Mertens assumption. Multiplicities only overcount,
so witnesses need not be unique.

For growing P_T the bound remains subexponential if
  r(T)*log(1+T/log 2)=o(T).
No corresponding claim is made for arbitrary growing initial banks;
the bank cardinal factor is NEVER erased.

## Original physical-time Gram refinement

For every original n in X<n<=2X, its actual response is
 r_n(u)=2(n^-1/2-e^-u/2) when log n<=u, and zero earlier.
It is nonnegative and bounded by 2/sqrt X.
At T=log(2X), every such response is supported inside
 [log X,T], an interval of LENGTH log 2. Therefore for all
 m,n in the original shell,
 0 <= pickupResponseGram(T,m,n)
    = integral_0^T r_m(u)r_n(u) du
    <= 4 log(2)/X.                                     (2)
This is a time-local improvement over the previously used 4T/X.
It does NOT modify the causal kernel or observation time.

## The complete HH+HL+LH source packet

Write S=balancedBlock X T, H=highSmoothBlock, L=lowSmoothBlock.
The original partition is S=H disjoint-union L, with |S|<=X.
For each ordered source tag a,b, and EVERY finite additive-gap mask A,
the exactly preserved original terms have coefficients
 taggedMoebius(P,a,m)*taggedMoebius(P,b,n)*pickupResponseGram(T,m,n)
when m!=n and Nat.dist m n is not in A; otherwise zero.
Both tag magnitudes are <=1. The three incident rectangles sum as
  I_ab(P,X,A)=D_HH,ab + D_HL,ab + D_LH,ab.
There are at most |H|^2+2|H||L| <= 2X|H| ordered pairs
having at least one high endpoint. Taking absolute values ONLY after
forming the original signed packet, and then applying the triangle
inequality as an upper allowance, (1) and (2) imply
  |I_ab(P,X,A)|
   <= (4 log 2/X) (|H|^2+2|H||L|)
   <= 8 log 2 |H|
   <= 8 log 2 *exp(2 sqrt T)*(1+T/log 2)^r.          (3)
The bound is independent of a,b,A. It bounds both mixed orientations
and all original squareful zeros; no negative cancellation is invented.

The source identity is EXACT:
  taggedDenseRectangle(P,a,b,A,X,X,T)
      = I_ab(P,X,A) + D_LL,ab(P,X,A).
The LL signed rectangle is not assumed positive, dominated or small.

## Explicit every-positive-rate constant

For a=log 2>0, r=card P, epsilon>0 and T>=0,
 2 sqrt T <= (epsilon/2)*T + 2/epsilon.
Let x=1+T/a, b=epsilon*a/2, m=r+1>=1. Since x>=1,
 x^r<=x^m and
 x^m exp(-b*x) <= (m/(e*b))^m
by maximizing y^m exp(-b y), y>=0. Consequently (3) implies
 |I_ab| <= C_(r,epsilon)*exp(epsilon*T), with
 C_(r,epsilon) =
  8*a*exp(2/epsilon+epsilon*a/2)*
  (2*(r+1)/(e*epsilon*a))^(r+1).
This is valid at every X>=1. Rates and constants do not depend on
the additive-gap mask or source tags, only on bank cardinal and rate.
This is mathematical analysis, not a compiled Lean proof.

A weaker bound requiring only the older Gram upper is
  |I_ab| <= 8*T*exp(2 sqrt T)*(1+T/log 2)^r.
It already proves all-positive-rate fixed-bank growth and has a
simpler existing causal-kernel supplier in the source.

## Preserved limitations / noncircularity

This result does not control the low/low rectangle or the full
original complete cross-energy. Same-shell terminal-time packets
must not be identified with the cross-shell/global pickupCross(T),
and the signed Gram cannot be estimated by deleting unpaid terms.
A fixed finite bank can make the high subset extremely sparse; the
entire unresolved correlation can reside in LL. The result neither
assumes nor establishes canonical RH.

The separate classical Mertens log-power input used in the near-
square-root PREFIX envelope is not needed for this counting proof.
The prior finite Euler 1 and 1/2 moments still require a pinned
Lean port, and the global all-positive-rate signed dense supplier
remains open.

## Mathematical diagnostics and Lean acceptance

Independent local Python preflight:
- Five genuine-prime banks: empty; {2}; {2,3}; {2,3,5}; {2,3,5,7}.
- 70 dyadic support/cardinality cases for X=1..240 (selected values).
- 720 original signed ordered, additive-gap masked causal-Gram fixtures
  across small X, both Boolean source tags and four masks.
- All finite checks passed; they are NOT certification.

The new Lean file proves candidate source regrouping, a generic masked
finite double-sum bound, source-specific magnitude transfer and the
conditional cardinal/K source inequality. The independent
HighSmoothCofactorCountTarget, DyadicTimeLocalGramTarget and
HighIncidentSameShellAllRateTarget remain explicitly PROPOSITIONAL.
The target is to implement the unique prime-exponent-vector count,
witness pair/cardinality proof, dyadic response support inequality and
elementary every-positive-rate transfer with no research axioms.

Pinned toolchain: Lean 4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Compilation, expected declaration types, fresh kernel replay,
transitive sorry/axiom/opaque/native/unsafe audit: ALL NOT_RUN.
No compiler job, CI, scheduler or Noe worker was invoked.
