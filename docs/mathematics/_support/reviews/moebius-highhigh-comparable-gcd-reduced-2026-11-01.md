# Original Möbius high–high nonodd core: nonnegative comparables, gcd-free squarefree sign and quantitative high-gcd payment

Local mathematical attribution: grwtsk contributors. Research date 2026-11-01.
Analytical disposition: exact finite original-source signed partition and full elementary arithmetic proofs at the scopes below; four new Lean SOURCE_PROOF_CANDIDATES, NOT compiled, NOT expected-type checked, NOT freshly kernel replayed and NOT transitively axiom audited. No claim of RH or a new all-positive-rate strong-packet bound.

## 1. Original source, precise object and closest prior work

The unmodified actual source is:
  S_T={1,...,N}, N=floor(exp T),
  k_T(m,n)=mu(m)mu(n)K_T(m,n),
  K_T(m,n)=integral_0^T pickupResponse(m,u)*pickupResponse(n,u) du,
  D(T)=pickupDiagonal(T)>=0, D(T)<=2T², T>=0.

All original integer labels, squareful zero coefficients, physical-time birth and terminal response, two ordered orientations and the diagonal exclusion are retained. The existing original energy-matched genuine Euclidean Tube 2 family selects the strong long-gap source, but it is NEVER used as evidence of arithmetic sign. Prior exact signed source (published as Lean proof candidates):
- MoebiusStrongEarlyIndexCollar.lean blob 5667a895c4f8225a49f45cda4872a133adf7cc30: original Putnam gap packet G_H, full weak physical-energy packet W_H, early-index packet E_(H,M), signed high-high strong S_(H,M). Exact source accounting, endpoint error 1/4 and genuine source estimates |G_H|<=4|A_H|T², |W_H|<=N²sqrt(D/(N+1)^6), |E_(H,M)|<=32T sqrt(MN).
- MoebiusStrongOddCoprimeDilation.lean blob 6164a4de724f2a29ef4304304f87b48d3ec78b41: extracts ALL coprime odd quotient comparables n=m*k, gcd(m,k)=1, mu(k)=-1, as true nonpositive original signed edges. The exact original S_(H,M)=highHighNonOddCross(H,M,T)-highHighOddCredit(H,M,T), with nonnegative original absolute credit and no arithmetic-rate promotion.
- MertensSignedPairDescent.lean blob abde6112700265ec11784292f11a24adcd11d9b6: earlier prime multiplier negative subset.
- MoebiusDivisorCausalGramCollapse.lean blob 6216cb9c8bc590a2dfe84132b8267c90a6622148: full comparable original source divisor-wave collapse and its **UNPROVED** Lean half-rate complete divisor target. The present work must NOT subtract its signed credit a second time. Its paper half-rate proof is nearest prior art, so neither the half-rate bound nor Möbius multiplicativity is claimed as a new number-theoretic theorem.
- MoebiusTwoPrimeRateFrontier.lean blob 025e9343e5c4c819321706d49bc81a56aa68d960: existing balanced low-index/gcd source rate envelope, and a strictly different two-prime cube-base mask with unproved full endpoint Lean target. Its gcd cost is nearest prior to our high-gcd bound. Both masks are kept distinct.
- MoebiusEllipticSquarefulCancellation.lean blob 1964bbca27852543adbd138272ee54b9f9956ccd: exact original sourceKernel vanishing if either original index is non-squarefree.

No claimed RH return is in scope; all-positive-rate strong signed cancellation is still OPEN.

## 2. Nonodd comparable source is NONNEGATIVE

Fix original positive m≠n with m|n; write n=m*k, k>1. There are two exhaustive cases:

(a) n is not squarefree. The genuine Mathlib Möbius coefficient is 0 and k_T(m,n)=0.

(b) n is squarefree. The Mathlib arithmetic lemma Nat.coprime_of_squarefree_mul implies gcd(m,k)=1. The original Möbius multiplicativity then gives
  mu(m)*mu(n)=mu(m)^2 * mu(k).
Mathlib's actual integer Möbius trichotomy gives mu(k)∈{-1,0,+1}. The already extracted odd-coprime relation includes EXACTLY the case mu(k)=-1. Therefore every surviving nonodd comparable pair has mu(k)=0 or +1 and
  k_T(m,n)>=0
because the ORIGINAL continuous causal response Gram K_T(m,n)>=0 for m,n>=1,T>=0. The reverse orientation follows from the original Gram symmetry. All squareful zero terms remain in the original sum, but their value is exactly zero.

Define the original high-high nonodd comparable signed packet P_(H,M)(T) using this actual selection. The Lean source candidate proves P>=0 termwise and proves it equals its ORIGINAL positive absolute mass C_comp, without replacing the kernel.

## 3. Exact incomparable squarefree source and genuine sign frontier

The highHighNonOddCross selection partitions by the arithmetically decidable m|n OR n|m, before taking absolute values:

  highHighNonOddCross(H,M,T)
     = P_(H,M)(T) + I_(H,M)(T).

Every odd-coprime relation is comparable, so it cannot occur in the incomparable summand. For incomparable m,n, if either is squareful then k_T(m,n)=0 by the already source-proved Möbius zero lemma. Thus I equals the SAME original signed kernel restricted to SQUAREFREE original incomparable m,n. No source term is dropped with a nonzero coefficient; both ordered orientations and strong angular/physical thresholds remain.

Consequently:
  highHighStrongCross(H,M,T)
    = P_(H,M)(T) + I_(H,M)(T) - C_odd(H,M,T),
where P>=0 and C_odd>=0 are actual (distinct, disjoint) original source magnitudes. This is stronger and more informative than a generic signed + free remainder statement. It is not a numerical all-rate bound on I.

At the original endpoint:
  endpointSum T <= 4|A_H|T² + N² sqrt(D(T)/(N+1)^6)
    +32T sqrt(MN) + I_(H,M)(T)
    +P_(H,M)(T)-C_odd(H,M,T)+1/4.                  (1)

This is a SOURCE-EXACT signed ledger: no Möbius signs, indices, birth supports, kernel multipliers or orientations are discarded; quadrature 1/4 paid once.

## 4. Unconditional full comparable pair half-rate: 48 T sqrt N

The true pointwise original causal bound is
  |k_T(m,n)| <= 4T/sqrt(m n), T>=0, m,n>=1.

For M=0, the original early packet vanishes identically because S_T only contains positive integers. Every proper comparable ordered pair can therefore be enumerated uniquely by an UNORDERED smaller positive integer m and a multiplier k>=2 with n=m*k<=N; the other ordered orientation is paid by a factor 2. Dropping the physical/strong/nonodd subset restrictions is safe for an absolute upper bound, with no sign claim:

 C_comp(H,0,T)
    <= 8T * sum_(m=1)^N (1/m)
                 sum_(k=2)^(floor(N/m)) k^(-1/2).

The elementary positive reciprocal-root comparison gives sum_(k<=L) k^(-1/2)<=2sqrt L, and floor(N/m)<=N/m. Hence
 C_comp <=16T sqrt N * sum_(m=1)^N m^(-3/2).

The decreasing positive power tail satisfies
  sum_(m=1)^infinity m^(-3/2)
     <= 1+ integral_1^infinity x^(-3/2)dx =3.
Thus the FULL positive original nonodd comparable high-high strong price satisfies, UNCONDITIONALLY on T>=0 and ALL arithmetic gap sets H,
  **0<=P_(H,0)(T)=C_comp(H,0,T)<=48T sqrt N.**  (2)

This is a strictly half-rate absolute source estimate, independent of PNT and RH. It is weaker than the existing *signed* comparable half-rate constant/structure in MoebiusDivisorCausalGramCollapse, but is directly applicable to the source-selected positive comparable high-high packet without claiming that total signed comparable cancellation controls positive-only mass.

The finite divisor-pair reindexing and inverse-power tail Lean proof are **not yet in the pinned Lean import closure**. The precise proposition AllComparableAbsoluteHalfRateTarget is deliberately an UNPROVED Lean target, not a proof term. Its consumer endpoint theorem is explicitly conditional on this purely elementary target. No hidden RH-sized premise is introduced.

Combining (1) with M=0 and (2), and keeping the genuine negative credit if desired:
  endpointSum(T) <= 4|A_H|T²
   +N²sqrt(D/(N+1)^6)+48T sqrt N
   +I_(H,0)(T)-C_odd(H,0,T)+1/4.                  (3)

For the literal previous H=floor(exp(εT/2)), replace the first term by the EXISTING sharper 32/ε² exp(ε T), without claiming the crude 4|A_H|T² cost has the same direct bound.

## 5. Genuine gcd-normalization of every surviving original arithmetic sign

For each squarefree incomparable m,n>0, the natural-number gcd factorization gives UNIQUE
  g=gcd(m,n)>=1, a=m/g>1, b=n/g>1, gcd(a,b)=1.
Squarefreeness of both m and n implies gcd(g,a)=gcd(g,b)=1. Therefore, with actual original Möbius multiplicativity,
  mu(m)mu(n)
    = mu(g)^2 mu(a)mu(b)
    = mu(a)mu(b).                                     (4)

This removes the common gcd from the ARITHMETIC sign EXACTLY. The TRUE original causal Gram remains
  pickupResponseGram(T,ga,gb),
which still depends on the common factor g through the response birth times log(ga),log(gb), the finite horizon T, and its source normalization. NO incorrect homogeneous identity K_T(ga,gb)=c(g)K_T(a,b) is asserted.

The new source theorem candidate constructs an actual Nat.exists_coprime' witness g,a,b, proves a,b>1 from incomparability, proves all the genuine squarefree/coprime guards, and returns the original kernel identity
  k_T(m,n)=mu(a)mu(b)K_T(m,n).
The EXACT full original double-to-triple-source-sum reindex, retaining the full strong geometric mask and cutoff, is recorded as OriginalFullGcdReindexTarget : Prop, UNPROVED IN LEAN. Finite analytical bijectivity is straightforward: for a,b coprime, gcd(ga,gb)=g, and the original positive m,n reconstruct uniquely.

This is a useful source-normalization theorem, not a two-point Chowla estimate. Existing ordinary fixed-shift or logarithmically averaged Chowla results cannot be substituted for uniform original g-dependent causal Gram bounds.

## 6. A second unconditional strict sub-one payment: large gcd

For any positive D, partition the SAME source I_(H,0)(T) EXACTLY into
  I_smallGcd(H,0,D,T):  gcd(m,n)<=D,
  I_largeGcd(H,0,D,T):  gcd(m,n)>D.
Both orders, the source masks and original signs are retained.

Writing the latter with the genuine unique reduced variables m=ga,n=gb, g>D, gcd(a,b)=1, squarefree source restrictions and the original K_T(ga,gb), an ABSOLUTE overcount can remove all masks and coprimality conditions, but it does not alter the original selected signed packet:

 |I_largeGcd| <= sum_(g>D) sum_(a,b<=floor(N/g))
                   4T/(g sqrt(a b))
               <= 16 T N * sum_(g>D) g^(-2)
               <= **16 T N / D**, D>=1.             (5)

The first inequality is source-nonnegative absolute domination by the TRUE rank-one causal upper; the second uses two original reciprocal-root sums <=2sqrt(N/g); the final bound uses the decreasing positive 1/g² integral comparison. No PNT, RH, probabilistic model, or unproved sign cancellation is used. This source-bound bound is mathematically established at finite T,D; the exact finite gcd triple-sum reindex and integral comparison are separately an UNPROVED Lean Prop LargeGcdAbsoluteRootTailTarget rather than a kernel theorem.

For D=floor(exp(βT)) with 0<β<1, the bound is at exponential rate 1-β (up to the floor and a fixed constant). Thus the ONLY not-absolutely-paid dense signed squarefree pair sector is now the incomparable low-gcd source with a,b>1, gcd(a,b)=1, gcd g≤D.

The exact source endpoint inequality, after elementary payments (2) and (5), is

  endpointSum(T) <= (32/ε²)exp(ε T)
    + N²sqrt(Diag(T)/(N+1)^6)
    + 48 T sqrt N
    + 16 T N / D
    + I_smallGcd(H_ε,0,D,T)
    - C_odd(H_ε,0,T) + 1/4.                           (6)

In Lean this numerical theorem is explicitly CONDITIONAL on the two named elementary \`Prop\` targets for (2) and (5). The exact full signed source partition and its positive absolute-cost bills are source proof candidates without those assumptions. The true all-positive-rate RH target remains OPEN.

## 7. Hostile tests, numerical evidence and the actual unresolved arithmetic obligation

Independent reproducible finite checks, executed in Python 3 using standard-library exact integers and fractions.Fraction:
- 46,234 exhaustive exact original Möbius sign and gcd reduction assertions for 1<=m,n<=250, including comparable nonodd positivity and all nonzero squarefree incomparable gcd-coprime identities.
- 350 synthetic exact-rational positive-Gram fixtures, random N=2..45, source original Möbius signs, exact signed four-way gap/weak/strong and high-high decomposition, including correct stereographic projective gap squared.
- 300 further synthetic exact-rational signed-Gram fixtures, N=2..54, with exact odd-coprime, nonodd-comparable, incomparable-small-gcd and incomparable-large-gcd disjoint reconstruction.
- Four ACTUAL original Möbius causal Gram high-precision numerical fixtures at N=24,48,72,96 and T=log N using the analytically integrated literal response formula, with 65 decimal digits; full signed ordered decomposition error <2e-63, nonnegative comparable mass, positive odd credit and both absolute analytic payments satisfied. These are NOT interval-certified exact real proofs, and the earlier synthetic Gram tests are not the literal causal integral.

Hostile examples: n=m*k with k squareful gives zero, not an invented positive sign. n=9,m=3 has shared prime and mu(9)=0, so the coprime product sign cannot be used. k=6 has mu(k)=+1 and contributes nonnegative surviving comparable mass, whereas k=30 has mu(k)=-1 and was already extracted as negative credit. Gcd normalization never erases its appearance inside K_T(ga,gb). Genuine incomparable squarefree pairs can have either source sign: (m,n)=(10,21) has +1 product and (10,37) has -1 product, with neither dividing the other. The remaining signed sum cannot be bounded by positivity or pairing without a new arithmetic theorem.

The major limitation is quantitative: even with the incomparable signed core proved O(exp(εT)) for each tiny ε, the presently paid absolute *comparable* cost 48T exp(T/2) is not O(exp(εT)) for ε<1/2. The high-gcd cost exp((1-β)T) also has a fixed positive exponent for β<1. Thus source-faithful all-rate RH must additionally obtain genuinely signed cancellation in these currently absolutely paid sectors or a new source-complete compensated estimate. This development is a true strict-rate localization and finite number-theoretic normalization, NOT a proof of RH.

## 8. Source candidates and verification boundary

Files and target SHA identities are pinned in the adjacent verification target; the final commit and tree are appended to the tracking issue after safe publication. All new original source files have local attribution exactly 'grwtsk contributors', no root import or dependency mutation, and no newly authored axiom/sorry/unsafe declarations by lexical preflight (not a transitive audit).

Pinned Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Native Lean/Lake commands unavailable in the current sandbox. No live remote CI or verifier was launched. Actual Lean parsing/elaboration NOT_RUN; expected types NOT_RUN; fresh kernel check NOT_RUN; complete transitive axiom/sorry/unsafe audit NOT_RUN. The mathematical proofs (2) and (5) are recorded as reviewed finite analytic arguments, not as inhabitation of the newly named Lean Prop targets.

Precise next two-point supplier: show for the genuine original low-gcd source with fully specified squarefree m=ga,n=gb, a,b>1 coprime, g≤D, TRUE K_T(ga,gb) and physical mask, enough signed cancellation uniformly across growing g, two original ordered orientations and all fixed affinely frequent scales. Alternatively prove a complete compensated estimate that also pays the half-rate comparable and high-gcd signed costs. Neither is currently established.
