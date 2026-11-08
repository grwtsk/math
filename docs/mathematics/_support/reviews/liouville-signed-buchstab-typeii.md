# Exact squareful-aware Liouville Buchstab partition and signed Type II covariance

**Attribution:** grwtsk contributors.
**Disposition:** exact finite mathematical decomposition; new Lean source proof
candidates; proposed direct signed arithmetic supplier is OPEN. No Liouville
all-positive-rate estimate or Riemann Hypothesis proof.
**Source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleSignedBuchstabTypeII.lean`.
**Direct imported predecessor:** `LiouvilleGrowingBandUniformObstruction.lean`
(observed blob `eec192eac1d98281f0ee367ec21e160e65ff5bc6`).
**Original coefficients:** `LiouvilleCausalEnergyTarget.lean`, observed blob
`a00aaa07c067b4c88203372870b5d5d151de0de4`.
**Original response:** `CCC.pickupResponse` in `MertensPrimitive.lean`,
historical observed blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`.
Compilation, expected-interface tests, fresh kernel replay, transitive axiom
audit: NOT_RUN. No verification dispatch.

## 1. Original source and exact first-selected-prime partition

Let T>=0, N=floor(exp T), r_n(u)=2 max(n^(-1/2)-exp(-u/2),0),
and lambda(n)=(-1)^Omega(n), including n with prime powers. Write

    F(u)=sum_(1<=n<=floor exp u) lambda(n) r_n(u),
    K_T(n,m)=integral_0^T r_n(u) r_m(u) du.

For any FINITE selected prime set P define
ell_P(n)=min{p in P:p|n}, with ell=0 if the set is empty. The unsifted,
single-first-prime, and repeated-first-prime sets are

    A_0={n>=1:ell_P(n)=0},
    A_(p,1)={n>=1:ell_P(n)=p and p^2 does not divide n},
    A_(p,2+)={n>=1:ell_P(n)=p and p^2 divides n}.

The sets are disjoint and exhaust all positive n; P need not include all
primes below a cutoff. Importantly, q in P with q<p cannot divide n in
either p-sector, but later selected prime factors MAY divide n.

Define F_A(u)=sum_(n in A,n<=floor exp u) lambda(n)r_n(u). Then

    F=F_0+sum_(p in P)(F_(p,1)+F_(p,2+)).                 (B1)

There is no exceptional set, missing integer, change in the cutoff or
proportional-cutoff replacement. Each birth n=exp u has zero weight.

For p prime and n=pm with p not dividing m,

    lambda(pm)=-lambda(m),
    r_(pm)(u)=p^(-1/2)r_m(u-log p).

The exact single-power source is therefore

    F_(p,1)(u) = -sum_(m>=1: p does not divide m,
                      q in P,q<p => q does not divide m)
                       lambda(m)r_(pm)(u).             (B2)

For n=p^2 k (with NO requirement that p not divide k),

    lambda(p^2k)=lambda(k),
    r_(p^2k)(u)=p^(-1)r_k(u-2log p).

Thus

    F_(p,2+)(u)=sum_(k>=1: q in P,q<p => q does not divide k)
                    lambda(k)r_(p^2k)(u).              (B3)

The factor k retains p^3,p^4,..., other repeated primes, squareful terms,
and all later selected prime factors; (B3) is NOT the squarefree-only
Buchstab identity. Each sum has original causal support.

## 2. Complete signed covariance and diagonal

Let I={0} union {(p,1),(p,2+):p in P}. For labels i in I, let A_i
be the sets above, and write F_i for their original signed waveforms.
The complete original energy is

    H(T)=sum_(i,j in I) integral_0^T F_i(u)F_j(u)du.

Writing each integral against K_T gives the EXACT ordered Gram split

    H(T)=D(T)+X_within(T)+X_cross(T),                   (B4)

    D(T)=sum_(n<=N) lambda(n)^2 K_T(n,n)
        =sum_(n<=N) K_T(n,n),

    X_within =sum_i sum_(n,m in A_i,n!=m,n,m<=N)
                       lambda(n)lambda(m)K_T(n,m),

    X_cross =sum_(i!=j) sum_(n in A_i,m in A_j,n,m<=N)
                       lambda(n)lambda(m)K_T(n,m).

Both ordered orientations are included. A cross-label pair has n!=m by
disjointness, but terms inside one label require explicit diagonal
subtraction. The p-sector cross contribution has all four components
(1,1), (1,2+), (2+,1), (2+,2+). Rough/prime cross terms are not dropped.
K_T(n,m)>=0, but the coefficient product remains signed.

The original trivial diagonal costs at most

    0<=D(T)<=4T+2T^2,                                 (B5)

using r_n(u)^2<=4/n on active indices and
sum_(n<=exp u) 1/n<=1+u. This is independently subexponential.
The open problem is the COMPLETE signed off-diagonal, not the diagonal.

## 3. A second diagonal in the overlapping shifted-prime Type II packet

This distinct decomposition is required when expanding the prior
growing-band waveform identity. For finite P with weights w_p>=0 put
W=sum_p w_p and D_P(n)=sum_(p in P,p|n)w_p. Define

    S_p(u)=sum_(a>=1:pa<=exp u)lambda(a)r_(pa)(u),
    S_P(u)=sum_p w_p S_p(u).

Complete multiplicativity gives S_p=-sum_(n:p|n)lambda(n)r_n, hence
S_P=-sum_n lambda(n)D_P(n)r_n; the exact uncovered waveform is R_P=WF+S_P.
Expanding ||S_P||², BEFORE any sign or norm bound, gives

    ||S_P||² = D_shift(P,T)+T_II(P,T),                 (B6)

    D_shift =sum_(n<=N)D_P(n)^2 K_T(n,n),

    T_II=sum_(p,q in P) w_p w_q
         sum_(a,b>=1:pa,qb<=N, pa!=qb)
             lambda(a)lambda(b) K_T(pa,qb).

For p=q the omitted diagonal is a=b. For DISTINCT primes p!=q the
omitted diagonal pa=qb has EXACTLY the solutions a=qk,b=pk,
n=pqk<=N. Their coefficient product is

    lambda(qk)lambda(pk)=lambda(p)lambda(q)lambda(k)^2=+1.

These are positive diagonal overlaps and are NOT signed off-diagonal
savings. They retain every repeated prime in k. Equivalently all shared
integer diagonals together are exactly D_shift above, counting every
(p,q) orientation. In particular

    0<=D_shift<=W^2 D(T)<=W^2(4T+2T^2).              (B7)

Equation (B6) holds without a Chowla theorem, squarefree restriction,
orthogonality, independence approximation, or discarded covariance.

## 4. Exact explicitly priced unsifted and repeated-power costs

The unsifted waveform F_0 is kept in (B1), including n=1. Direct absolute
bounds give only |F_0(u)|<=4 exp(u/2) and hence

    integral_0^T |F_0(u)|² du <=16(exp T-1).          (B8)

This is exponentially too large for the all-positive-rate target.
It is NOT replaced by a density assertion or silently declared negligible.

For repeated first-prime terms the source (B3), without losing the
condition excluding smaller selected primes, gives the upper allowance

    |sum_(p in P) F_(p,2+)(u)|
       <= 4 exp(u/2) sum_(p in P, p²<=exp u) 1/p².   (B9)

Indeed r_(p²k)(u)<=2/(p sqrt(k)) and
sum_(k<=exp u/p²) k^(-1/2)<=2 exp(u/2)/p.
For p>exp(T/2) all p² contributions are absent for every u<=T,
including the zero-width birth collar at equality. Otherwise (B9)
is generally NOT of every-positive-rate size. Both (B8) and (B9)
are explicit losses, not an assertion of signed cancellation.

## 5. Precisely isolated direct arithmetic supplier, and its limits

A concrete signed Type II problem, not an invertible residual-norm
hypothesis, is to prove from the actual Liouville arithmetic that, for
a predetermined admissible family (P_T,w_T), for every epsilon>0
there exist C_epsilon>=0 and T_epsilon>=0 such that for all T>=T_epsilon,

    T_II(P_T,T) <= C_epsilon W_T² exp(epsilon T).      (A)

The arithmetic expression T_II is the fully explicit signed bilinear
sum in (B6), with pa!=qb. It has no H(T), residual E(T), arbitrary
remainder, conditional density, or supremum over signed rectangles
as an input. (A) is a DIRECT arithmetic estimate; it is currently
UNPROVED. A proof must give cancellation rather than infer (A) from
the invertible prime-band identity or the all-positive-rate target.
A vacuous band P_T with all p>exp T is excluded by demanding a stated
nonzero active mass/coverage condition.

(A) alone controls only ||S_P||² via (B7). It does NOT control H:
R_P=WF+S_P still contains the entire unsifted portion, and
the rough/prime and intra-prime packets in (B4) require source-specific
treatment. For the original target, the remaining consumer must bound
those complete packets independently, with cost O_epsilon(exp(epsilon T));
otherwise the assertion becomes a renaming of H's required bound.
A fixed one-prime Type II bound may itself be RH-strength by exact
time shift; do not claim (A) is weaker or established.

The all-positive-rate return remains unproved. The retained
finite-prime and reciprocal-summable-prime countermodels disallow
deducing (A) from complete multiplicativity and prime-delay signs alone.

## 6. Verification and independent check

The new source candidate formally defines the first-selected-divisor
partition, actual-waveform subseries and general complete signed Gram,
and contains scripts for the exact waveform partition, prime-square
Liouville sign, prime-overlap sign, and diagonal/off-diagonal finite
bookkeeping. These are NOT compiled Lean facts.

A hostile check is the all-positive multiplicative coefficient a(n)=1:
all kernel weights and Type II products are nonnegative, so algebraic
partitioning alone cannot furnish signed cancellation. The exact
Liouville value lambda(p)=-1 is crucial to (B2)-(B3) and the +1
shared-prime diagonal. No new external theorem is invoked; fixed-shift
correlation and entropy literature cannot be promoted to (A) without
proving the demanded growing-parameter uniformity and weighted
physical-time conversion.

Single next bounded proof obligation: source-formalize the arithmetic
p!=q overlap reindexing into D_shift and prove its complete equality
to the existing `weightedDelayedCovariance`/uncovered source, including
the integrability and terminal support lemmas. Only then attack (A)
with an independent Type II arithmetic argument.
