# Original Möbius complete signed dense endpoint: two-prime cube, odd base dilation and filtered remainder

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Mathematical disposition: original-source unconditional finite/real-variable proof at stated sector scope. It proves a complete one-sided reduction, not an all-positive-rate upper estimate for the remaining source and not RH. Lean: source proof candidates and named unproved target Props; compilation, expected types, fresh kernel and transitive axiom audit all NOT_RUN.

## 1. The unchanged source and the exact cutoffs

The original integer Möbius source is the ACTUAL GRWTSK.RiemannHypothesis.CCC:
- MertensPrimitive.lean, Git blob 45e06c371d67bcf8c939d20a95fcbc63570546fa: moebiusReal, pickupResponse, pickupResponseGram, pickupDiagonal, pickupCross, pickupEnergy.
- LiouvilleDoubleAbelAnalyticGates.lean, blob b4bd9a83c83603faa5eff5326d9a99ec35dae2d4: positive-index causal response nonnegativity and antitonicity.
- GoodScaleEnergyCriterion.lean, blob ca3ae4975b20cf796a167308a9e87546c6001c41: H=D+X, 0<=D<=2T^2, fixed-affine-good-scale RH consumer.
- PickupEndpointQuadrature.lean, blob 2606536c56bdcb33d120aeddfbcbeef793e31ba1: E=endpointSum, |E-X|<=1/4, signed curvature error and existing conditional endpoint RH return.
- MoebiusEndpointPutnamSparseGapYoung.lean, blob 6a424d78ae93cc82e35fae3bb3d20a5a3616c7b2: original integrated two-term Young bound, at most two neighbors per positive additive gap.
- MoebiusPrimeDilationOutsideRateObstruction.lean, blob dc3d52a4b2633ee17e79dc19ab193f79b3d11c65: existing prime-bank negative credit must remain balanced with its outside remainder. The present new packets are an ALTERNATIVE original-source decomposition, NOT additional credit to subtract a second time.

For T>=0 let N=floor(exp T); r_n(u)=2(n^(-1/2)-exp(-u/2)) if log n<=u, and 0 otherwise, including a zero birth value. Let K_T(m,n)=integral_0^T r_m(u)r_n(u)du. Then

    X(T)=sum_(1<=m,n<=N,m!=n) mu(m)mu(n) K_T(m,n)
    H(T)=D(T)+X(T), 0<=D(T)<=2T^2,
    E(T)<=X(T)+1/4.

The kernel is symmetric and nonnegative for T>=0. On 0<=u<=T, 0<=r_n(u)<=2/sqrt(n) for n>=1. Hence

    0<=K_T(m,n)<=4T/sqrt(mn).                      (1)

This is a complete source bound, not a normalized statistical model.

## 2. Unique Möbius two-prime orbits and their genuine signs

Every n with mu(n)!=0 is squarefree. Write uniquely

    n = a*d,  a in {1,2,3,6},  gcd(d,6)=1.

The original Möbius multiplicativity gives
    mu(ad)=mu(d)*s_a, with (s_1,s_2,s_3,s_6)=(+1,-1,-1,+1).

Define the TRUE source cube amplitude

    W_d(u)=r_d(u)-r_(2d)(u)-r_(3d)(u)+r_(6d)(u).

It includes r_(ad)=0 when an index has not yet been born, so no unsupported terminal cell convention is necessary. For every 0<=u<=T,

    F(u)=wholePickup(u)=sum_(1<=d<=N, gcd(d,6)=1) mu(d) W_d(u).   (2)

Squareful d are retained with mu(d)=0. Different d give disjoint squarefree index sets. Finite sum and the original physical-time interval integral may be exchanged because each response is continuous; all events and both orientations are preserved.

## 3. Complete twelve-oriented internal packet is nonpositive

Set a=r_d(u), b=r_(2d)(u), c=r_(3d)(u), e=r_(6d)(u). Actual antitonicity yields

    a>=b>=e>=0, a>=c>=e>=0.

Thus a-b-c+e <=a (because e<=b and c>=0), and
a-b-c+e >=-a (because b,c<=a and e>=0). Therefore

    |W_d(u)|<=r_d(u),  W_d(u)^2<=r_d(u)^2.        (3)

The full INTERNAL cube ordered off-diagonal packet is exactly

    Q_d(T)=mu(d)^2 [ integral_0^T W_d(u)^2du
                         -sum_(a in {1,2,3,6})K_T(ad,ad)].

Expand the square to see all six unordered interactions with signs:
Q_d=2mu(d)^2[-K(d,2d)-K(d,3d)+K(d,6d)
               +K(2d,3d)-K(2d,6d)-K(3d,6d)].
No positive pair is omitted; in particular the +K(2d,3d) term remains.

From (3), for each d,

    Q_d(T) <= -mu(d)^2[
       K_T(2d,2d)+K_T(3d,3d)+K_T(6d,6d)] <=0.    (4)

Define Q(T)=sum over d<=N, gcd(d,6)=1, Q_d(T), and
D_secondary(T)=sum mu(d)^2*[K(2d,2d)+K(3d,3d)+K(6d,6d)].
Then Q(T)<=-D_secondary(T), and because the remaining square integral is nonnegative,

    -D(T) <= Q(T) <= -D_secondary(T) <=0,  |Q(T)|<=2T^2. (5)

This is a genuine Möbius-specific saving from a complete signed packet, independent of Mertens estimates, RH, random models or a Gram positivity assumption about individual signed edges.

## 4. Nonnegative original cube response and the odd-parity base-ratio sector

There is more structure than |W|<=r_d: the actual W_d is NONNEGATIVE at every real u.

**Elementary complete source proof.** Let A=d^(-1/2)>0, t=exp(-u/2)/A>=0, alpha=1/sqrt(2), beta=1/sqrt(3), gamma=alpha*beta. Then 0<gamma<beta<alpha<1 and

  W_d(u)=(2/sqrt d)*Phi(t),
  Phi(t)=(1-t)_+-(alpha-t)_+-(beta-t)_++(gamma-t)_+.

Check the five exhaustive intervals for t:
- t>=1: Phi=0.
- alpha<=t<=1: Phi=1-t>=0.
- beta<=t<=alpha: Phi=1-alpha>=0.
- gamma<=t<=beta: Phi=1-alpha-beta+t >=(1-alpha)(1-beta)>0.
- 0<=t<=gamma: Phi=(1-alpha)(1-beta)>0.

The overlapping endpoints agree. Consequently

    0<=W_d(u)<=r_d(u), for every d>=1 and real u.       (6)

This is a property of the ORIGINAL positive-part causal response and its actual fixed 2/3 multiplier pattern. It does not follow merely from arbitrary sign labels.

Define the genuine reduced cube kernel
    C_T(d,e)=integral_0^T W_d(u)W_e(u)du.
By (1) and (6),

    0<=C_T(d,e)<=K_T(d,e)<=4T/sqrt(de).                   (7)

For distinct bases d,e coprime to 6 define an odd-parity divisor relation if e=k*d or d=k*e for a positive integer k with mu(k)=-1. Every such quotient k is squarefree with an odd number of prime factors. The source multiplicativity and squareful-zero rule give

    mu(d)*mu(k*d) <= 0.                                  (8)

Indeed if mu(d)=0 the product vanishes; if k and d share a prime then mu(kd)=0; otherwise mu(kd)=mu(k)mu(d)=-mu(d). No coprimality assumption on k,d is hidden.

For every ordered pair of distinct d,e in this class, the ENTIRE 16 original cross products between {d,2d,3d,6d} and {e,2e,3e,6e} recombine EXACTLY as mu(d)mu(e)C_T(d,e)<=0. Define P_-(T) as their sum, with both opposite base orientations retained; then

    P_-(T)<=0.                                           (9)

This removes complete compensated 16-edge blocks, NOT isolated negative original pairs. It extends beyond a single prime-dilation sign: any squarefree quotient of odd Möbius parity is included.

**Independent strict exponent-1/2 magnitude saving.** Every eligible unordered base pair is uniquely d<e=k*d, k>=2, with its two orientations. By (7), and |mu|<=1,

    |P_-(T)| <= 2 sum_(k=2..N)sum_(d<=N/k) C_T(d,kd)
             <= 8T sum_(k=2..N) k^(-1/2)
                         sum_(d<=N/k) d^(-1)
             <= 16T(1+T)*sqrt(N)
             <= 16T(1+T)*exp(T/2).                       (10)

We used sum_(d<=x)1/d <=1+log x and sum_(k<=N)1/sqrt k<=2sqrt N. These bounds are elementary and retain the original cutoff. Thus the COMPLETE odd-ratio base sector has a source-exact nonpositive signed upper bound, and its absolute magnitude is at rate 1/2 with polynomial prefactor. No Mertens power estimate, zero-free strip or higher Chowla estimate is used.

## 5. Exact full source return and an all-positive-rate-compatible residual

For any positive integer original index n, define its base b(n)=n/[2^v2(n) 3^v3(n)] by removing all powers of 2 and 3. For mu(n)!=0 this is the UNIQUE base in (2). For mu(n)=0 every original weighted term vanishes, irrespective of b(n).

Partition the complete ORIGINAL ordered m!=n sum using this base. Internal pairs b(m)=b(n) give Q(T). For different bases, the odd quotient class in section 4 gives P_-(T). All other original ordered pairs define R_other(T). Thus, with NO sign loss, double counting or fitted model,

    X(T)=Q(T)+P_-(T)+R_other(T).                          (11)

Choose a FIXED polynomial-width additive gap budget
    h(T)=floor((1+T)^2), T>=0.

Partition R_other into the original inter-cube nonodd short-gap pairs 1<=|m-n|<=h(T), called S_poly(T), and the literal original long-gap remainder R_poly(T). In particular R_poly has the exact original coefficient mu(m)mu(n), kernel K_T, m!=n, b(m)!=b(n), odd quotient excluded, and |m-n|>h(T); NO other pair is silently lost.

The original integrated Young inequality gives for every source pair
    2|mu(m)mu(n)K_T(m,n)|<=d_m(T)+d_n(T),
    d_m(T)=mu(m)^2 K_T(m,m)>=0.
At each m there are at most 2*h(T) possible distinct n at these positive gaps, so

    |S_poly(T)| <= 2h(T)*D(T)
                <= 4h(T)*T^2
                <= 4(1+T)^2*T^2.                        (12)

Combining (4), (9), (11), (12), and the ONE existing 1/4 endpoint allowance proves the unconditional one-sided **complete source** estimate

    E(T) <= R_poly(T) - D_secondary(T)
                  +4(1+T)^2*T^2+1/4, T>=0.             (13)

This is the strongest ALL-POSITIVE-RATE-COMPATIBLE reduction in this note: the paid upper error is polynomial for every fixed G and every delta>0. The nonpositive odd packet is removed as a whole; its magnitude bound (10) is NOT needed for the one-sided direction. If R_poly has SubexponentialOn on ONE fixed AffineFrequent G, then (13) supplies the same for E and the previously written endpoint consumer would return canonical RH, subject to its native certification. This is an UNPROVED arithmetic residual premise, not an RH proof.

Important quantifier distinction: (13) is a one-sided sufficiency, NOT equivalence of R_poly and X for every positive rate. The removed P_- may be as large as exp(T/2) in the available absolute bound; reintroducing it to claim a two-way all-rate equivalence is invalid. The weaker source X=Q+S_poly+R_interlong (WITHOUT removing P_-) does have a genuine polynomially bounded absolute comparison because |Q|<=2T^2 and |S_poly| is polynomial. That alternative is a valid two-way all-rate carrier if needed.

## 6. Aggressive geometric refinement, paid strictly below rate one

Independently, for all T>=0 define the original geometric filters

    N=floor(exp T),
    H=floor(exp(T/4)),
    L=exp(T/2),
    G=exp(T/4).

Define R_3/4(T) by keeping, among the exact R_other(T) pairs, ONLY
    |m-n|>H,  min(m,n)>L,  gcd(m,n)<G.

This is still the genuine signed ORIGINAL original-index sum; every removed pair is assigned to exactly one of: short gap, low minimum index or large gcd, in that precedence order. The already-proved negative Q and P_- are removed only AFTER forming complete source packets.

**Short gaps:** the same weighted neighbor Young argument yields
    |S_short|<=4H*T^2<=4T^2*exp(T/4).                    (14)

**Low-index original pairs:** for m<=L and n<=N, both orientations,
use (1) and sum_(m<=x)m^(-1/2)<=2sqrt x. The full ordered absolute cost is
    <= 32T sqrt(LN)
    <= 32T exp(3T/4).                                  (15)

**Large-gcd original pairs:** if gcd(m,n)>=G, write m=d*a,n=d*b with d=gcd(m,n) and a,b<=N/d. Dropping gcd(a,b)=1 only enlarges the absolute sum; by (1),
    sum |mu(m)mu(n)K_T(m,n)|
      <=4T sum_(integer d>=G to N)
                       1/d *(sum_(a<=N/d)1/sqrt a)^2
      <=16TN sum_(d>=ceil G)1/d^2
      <=32TN/G
      <=32T exp(3T/4).                                 (16)

Here sum_(d>=K)1/d^2 <=2/K for integer K>=1; every original orientation, squareful zero and original cutoff remains intact. These are unconditional ABSOLUTE savings on explicitly selected subsets; no arithmetic sign model or prime estimate is being substituted.

Combining all paid sectors with the full Q and P_- sign gives the quantitative source-exact upper

    E(T) <= R_3/4(T) - D_secondary(T)
           +4T^2 exp(T/4)+64T exp(3T/4)+1/4.            (17)

Thus for every fixed rho>3/4 the right-hand payment outside R_3/4 is O_rho(exp(rho*T)) for all T>=0. This is a genuine strictly-sub-one paid sector, but it does NOT prove the same bound for the unmatched R_3/4 and does NOT offer all-positive-rate control: the geometric allowance has a rate-3/4 floor. Do not use (17) in place of (13) for delta<=3/4.

## 7. Hostile comparisons and noncircularity

- Replacing TRUE mu by all +1 breaks the orbit coefficient signs: W_d is not the source contribution of that sequence. For four equal nonnegative response samples, the all-positive 12-oriented off-diagonal packet is positive, not negative. Thus the cancellation is genuinely arithmetic.
- Dropping K(2d,3d), or the other positive internal interactions, would not be this theorem; each complete six-pair/twelve-orientation internal packet is explicitly expanded and compared to its full diagonal.
- A negative odd-base packet is NOT automatically a negative original individual edge: only the complete 16-term reassembly is proved nonpositive. The source mask filters are applied AFTER these packets are formed.
- The existing prime-dilation credit in MoebiusPrimeDilationOutsideRateObstruction is a different complete-source partition. Its negative credit CANNOT be subtracted again in (13) or (17); this note supplies an ALTERNATIVE partition with its own exact return.
- The prior `PickupGcdOuterSector` blob 6e6d522eaf79f5a94288e648bb83044b5266d46d (math issue #1435) classifies large-gcd original birth-cell quotients (1,2)/(2,1) as nonpositive. It is a different object and source slice from the present integrated four-vertex two-prime orbit and 16-cross packet. The older #1556 Putnam gap pays all fixed/growing additive gaps by Young; the present result reuses it honestly for the geometric complement.
- The earlier global source Mertens-PNT bound gives a stronger-than-rate-one logarithmic/stretched saving but not a fixed strict exponent. The present sign and absolute sector results do NOT use that estimate or an equivalent zero-free theorem.
- A completely arbitrary signed dense remainder can still have a large positive contribution. Neither a nonpositive local packet nor an absolute strict-rate bound on a subset proves its complement is small. This is the exact remaining signed arithmetic frontier.

Finite independent diagnostic: calculated actual mu(n), the physical causal Gram through its closed-form integral, the disjoint cube grouping, internal and odd signed packets, and the full original ordered cross for N in {16,40,64,100,180,200} with T=log(N+0.25). At all six horizons, the total cross matched Q+P_-+R_other numerically, the independent original-pair odd-filter matched the cube-kernel odd packet, Q<=-D_secondary and P_-<=0, and W_d(u)>=0 on sampled u. This is ordinary floating-point diagnostic only, not certified interval mathematics, not uniform asymptotic evidence and not native Lean replay.

## 8. Exact formalization, intended consumer and unresolved arithmetic

A new subject-local source proof candidate `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusTwoPrimeSignedPacketCore.lean` proves candidate elementary four-response signed-credit algebra and candidate actual source pointwise domination; it defines the literal original cube waveform, original Gram internal packet, odd-base ordered packet, original-index polynomial and 3/4 cores, secondary diagonal, and five named UNPROVED Lean Prop targets for the complete-source return and its RH implication. The complete integral, unique-orbit, odd-quotient positivity, divisor-envelope and source-return proofs above are WRITTEN mathematics, not claimed as Lean theorem statements with proofs. No `sorry` or new research `axiom` is introduced.

Pinned environment Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Exact compiler parsing, full dependency elaboration, expected public types, fresh kernel replay, all transitive axioms/private-generated-opaque dependencies and unsafe/native trust are NOT_RUN. No runner, Noe queue, root import or migration is authorized/inferred. For formal acceptance, first elaborate the genuine source properties, multiplicative parity identities, source partition and integral interchange; then certify (13) and (17) with immutable receipts and no hidden RH premise. Do not infer a uniform full-core arithmetic bound from these source comparisons.

**Remaining proof target:** establish a genuinely noncircular every-positive-rate ONE-SIDED upper bound for R_poly on a single fixed AffineFrequent G, or a source-exact alternative. The present unconditional negative packets and strict 1/2/3/4 paid sectors reduce the unpaid correlation population but DO NOT close that last arithmetic premise, canonical RH, or its Lean trust acceptance.
