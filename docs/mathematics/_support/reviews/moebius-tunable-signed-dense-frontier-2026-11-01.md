# Original signed Möbius dense frontier: tunable geometric rate and positive-only obstruction

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Disposition: complete ordinary mathematical derivation for source-exact signed upper **comparisons** and an elementary squarefree-density obstruction to an **unsigned replacement**. Neither proves the required upper estimate for the remaining SIGNED core, any new fixed zeta zero-free strip, all-positive-rate RH supplier, or RH. New Lean source contains finite real algebra candidate proofs and precisely named UNPROVED original-source propositions. Compilation, exact types, fresh kernel checking and full transitive axiom audit NOT_RUN.

## 1. Original source identities, source correspondence and previous boundary

The unchanged canonical original source is:

- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, Git blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`: `moebiusReal`, `pickupResponse`, `pickupResponseGram`, `pickupCross`, `pickupDiagonal`, `pickupEnergy`. For T>=0 and N=floor(exp T),
  `X(T)=sum_(1<=m,n<=N,m!=n)mu(m)mu(n)K_T(m,n)`, where `K_T(m,n)=integral_0^T r_m(u)r_n(u)du`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelAnalyticGates.lean`, blob `b4bd9a83c83603faa5eff5326d9a99ec35dae2d4`: original causal response nonnegative, antitone in positive index, and its birth-value positive-part identity.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/GoodScaleEnergyCriterion.lean`, blob `ca3ae4975b20cf796a167308a9e87546c6001c41`: `H=D+X`, `0<=D<=2T^2`, and conditional affine-frequent good-scale RH return.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean`, blob `2606536c56bdcb33d120aeddfbcbeef793e31ba1`: `E=endpointSum`, `|E-X|<=1/4` uniformly, with signed curvature retained.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSparseGapYoung.lean`, blob `6a424d78ae93cc82e35fae3bb3d20a5a3616c7b2`: original integrated signed Young estimate and bounded additive gap-degree.
- Direct predecessor `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusTwoPrimeSignedPacketCore.lean`, blob `af6a0b8daa8684a36dfee6e0524b7e56578d432f`, main commit `805a1eecc84725858e3d3206254a4cc89bb1547b`: exact original 2/3-squarefree orbit definitions `cubeBase`, `oddBaseRatio`, the original internal negative packet `Q`, nonpositive odd-parity complete base packet `P_-`, and original `secondaryDiagonal`. Original source partition is `X=Q+P_-+R_other`, with `Q<=-D_secondary<=0` and `P_-<=0`; the inter-cube source `R_other` retains every remaining genuine mu(m)mu(n) and both ordered orientations. These are written full-source mathematical proofs, while the source-specific integral and partition Lean theorems are NOT_RUN/UNPROVED targets in that module.

The preceding review `moebius-two-prime-signed-dense-core-2026-11-01.md`, blob `9d3cb1d49f85a9420b10b0cd8e6cf9ed2bda8c58`, paid geometric low indices m<=exp(T/2), gcd>=exp(T/4), and short gaps <=exp(T/4) at aggregate rate 3/4; the remaining original signed core was unbounded. The new work varies the three cutoffs independently and proves the exact available rate/residual tradeoff, without claiming an improved bound on the SAME residual.

All newer geometric tube, causal Gram Cauchy and two-coordinate Mertens/Euler modules found on current main have separate original-source comparisons and verification status; they do not establish a fixed sub-one upper for this full remaining signed core. No claim of novelty outside the inspected source neighborhood is made.

## 2. Parameterized ORIGINAL signed pair mask

For real a,b,c>=0 and T>=0 put

    N=floor(exp T);
    L=exp(a*T), G=exp(b*T), H=floor(exp(c*T)).

Form the ORIGINAL signed ordered remaining residual R[a,b,c](T) by summing

    mu(m)*mu(n)*K_T(m,n)

over ALL m,n in 1..N with the following exact masks:
    m != n;
    cubeBase(m) != cubeBase(n);
    NOT oddBaseRatio(cubeBase(m),cubeBase(n));
    min(m,n)>L;
    gcd(m,n)<G;
    |m-n|>H.

No arithmetic coefficient is changed, neither mixed ordered orientation is dropped, and indices with mu=0 stay in the complete finite inventory but contribute zero. The p/q two-prime complete signed packets are removed only as the PREVIOUSLY FORMED nonpositive observations Q,P_-; no old prime-bank dilation credit is counted again.

The partition of R_other is made in THIS precedence: first short gaps |m-n|<=H, then remaining low min<=L, then remaining large gcd>=G, finally R[a,b,c]. The absolute bounds below are valid for each restricted subset because they are dominated by the corresponding full source mask. Thus no overlap is paid more than once in the source identity, even though its independent upper allowance is a sum.

## 3. Unconditional three-sector estimates with COMPLETE original terms

The actual response has 0<=r_n(u)<=2/sqrt(n), n>=1 and 0<=u<=T. Hence for every original ordered pair

    0<=K_T(m,n)<=4T/sqrt(m*n).                         (1)

Short gaps: true source signed Young on the full ordered m!=n source and each row's at-most-two neighbors at each of H positive gaps yield

    |S_gap| <= 2H*D(T) <=4H*T^2 <=4T^2 exp(c*T).       (2)

Low minimum index: ignore every auxiliary source condition except min(m,n)<=L. Summing (1) with both orientations gives

    |S_low|
      <= 8T (sum_(m<=min(N,L))m^(-1/2))
                (sum_(n<=N)n^(-1/2))
      <= 32T sqrt(L*N)
      <= 32T exp((1+a)*T/2).                           (3)

Here sum_(n<=x)1/sqrt(n)<=2sqrt(x) for x>=1, including integer clipping, and N<=exp T. The factor 8 pays BOTH original index orientations; it is not a one-sided sum.

Large gcd: for each selected pair with d=gcd(m,n)>=G, write m=d*x,n=d*y. Drop the original gcd(x,y)=1 and all original Möbius magnitude filters only to enlarge the positive absolute allowance. Then

    |S_gcd|
      <=4T sum_(d>=ceil G,d<=N) (1/d)
                           (sum_(x<=N/d)1/sqrt(x))^2
      <=16T*N sum_(d>=ceil G) d^(-2)
      <=32T*N/G
      <=32T exp((1-b)*T).                              (4)

The elementary series-tail bound sum_(d>=k)d^(-2)<=2/k holds for all integer k>=1. This pays all original orientations and exact integer boundary terms. The REAL gcd cut is strict inside the retained core; equality belongs to S_gcd and is paid.

Since the previous complete internal Q<=-D_secondary and complete odd-divisor P_-<=0 and the original endpoint error is at most 1/4, equations (2)-(4) yield, UNCONDITIONALLY in the ordinary mathematical source:

    E(T) <= R[a,b,c](T) - D_secondary(T)
          +32T exp((1+a)*T/2)
          +32T exp((1-b)*T)
          +4T^2 exp(c*T)+1/4,  T>=0.                 (5)

No Mertens power saving, Chowla averaged theorem, zeta zero-free result, independent-sign axiom, fictitious Gram approximation, or unconstrained source remainder is used in this comparison. (5) is a one-sided source upper, NOT an equality, nor a proof that R[a,b,c] is small.

## 4. Complete fixed-rate tradeoff and its boundary

Fix 1/2<=rho<1 BEFORE T and set

    a=2*rho-1, b=1-rho, c=rho.

All three are nonnegative, and

    (1+a)/2 = 1-b = c = rho.                           (6)

Write R_rho(T)=R[2rho-1,1-rho,rho](T). Then the exact source corollary is

    E(T)<=R_rho(T)-D_secondary(T)
              +(64T+4T^2) exp(rho*T)+1/4.              (7)

For any fixed epsilon>0, the PAID part is O_(rho,epsilon)(exp((rho+epsilon)*T)). This is a true strict-below-one payment when rho+epsilon<1; the sign-bearing R_rho(T) remains UNBOUNDED at this strength.

Examples (all real conditions apply to original integer m,n):
- rho=1/2: min(m,n)>1, gcd(m,n)<exp(T/2), gap>floor(exp(T/2)). The complete excluded source has <=(64T+4T^2)exp(T/2) allowance, plus the already-proved nonpositive entire cube/odd sectors.
- rho=2/3: min(m,n)>exp(T/3), gcd(m,n)<exp(T/3), gap>floor(exp(2T/3)). This is a balanced geometric cutoff with cost exponent 2/3.
- The previous rho-unbalanced choice a=1/2,b=1/4,c=1/4 recovers EXACTLY the earlier 3/4 paid estimate and prior `threeQuarterDenseCore`. Thus this increment is a genuine generalization, not a claim of dominating that previously selected residual on every pair.

If the low-index and gcd thresholds MUST use the same exponent a=b=s, the independent absolute payment has rate max((1+s)/2,1-s,c). The first two are both >=2/3 at the optimum s=1/3, obtained by solving (1+s)/2=1-s. This is a valid 2/3 minimax statement only for the COMMON-THRESHOLD family. **It is NOT a global optimum:** choosing independent thresholds allows the 1/2-rate special case, with a different and generally larger unpaid residual.

The 1/2 floor within THIS elementary absolute-payment method arises from the low-index sector: a>=0 gives (1+a)/2>=1/2. It is a method limitation, not a theorem that actual signed data cannot cancel faster. A simple hostile all-positive coefficient model has its unit-star absolute Gram mass of order sqrt(N) at T=log N: for n in [N/4,N/2], the true response kernel K_(log N)(1,n) is bounded below by c/sqrt N, so summing N/4 terms costs order sqrt N. This illustrates why replacing signed unit-star correlations by absolute values cannot remove that floor. The model is NOT claimed to equal actual Mobius signs.

The user-requested all-positive-rate terminal problem remains stronger. No fixed rho>=1/2 can pay its exponential error at every smaller delta>0; the previous polynomial-width gap decomposition remains the relevant all-rate-compatible source reduction. Changing rho with T without controlling the moving family of residual estimates also does not establish one fixed-good-scale all-positive-rate theorem.

## 5. Elementary original-Möbius obstruction to discarding negative correlations

Define R^+_rho(T) by summing exactly the SAME ORIGINAL masked ordered pair source as R_rho, but retaining only those original m,n with

    mu(m)*mu(n)>0.

This positive-only observable is NONNEGATIVE because K_T>=0. Replacing the full signed residual by R^+_rho, or by its termwise absolute sum, is an attractive but INVALID route to an every-positive-rate upper estimate.

**Theorem (ordinary unconditional mathematical proof):**
For each fixed rho in [1/2,1), there exist c_rho>0 and J_rho such that for all integers j>=J_rho,

    R^+_rho(j log 2) >= c_rho * 2^j.                     (8)

In particular R^+_rho(j log2) is not O(2^(theta j)) for ANY theta<1, and its absolute-sum majorant is not a fixed-rate sub-one or all-positive-rate supplier. The theorem says NOTHING about the potentially much smaller signed R_rho itself.

**Proof, with actual Mobius coefficients and WITHOUT PNT.**
Put N=2^j, T=log N, and I_N=[ceil(N/4),floor(N/2)] cap integers. Its cardinality is N/4+O(1). If n in I_N is nonsquarefree, some k>=2 has k^2|n, with k<=sqrt(N/2). The number of multiples of k^2 inside I_N is at most |I_N|/k^2+1. The elementary numerical series bound

    sum_(k>=2)1/k^2
       <=1/4+sum_(k>=3)1/[k(k-1)]
       =3/4

therefore implies

    # {n in I_N: mu(n)^2=1}
      >= (1/4)*|I_N| - sqrt(N/2)
      = N/16 - O(sqrt N).                              (9)

There is hence a set A_N of at least c*N ORIGINAL squarefree integers ALL with the SAME mu(n) sign (+1 or -1), by pigeonhole. Its number of distinct ordered pairs is Omega(N^2), and each original coefficient product is +1.

Only o(N^2) of these pairs violate the fixed-rho mask:

1. Short gap |m-n|<=floor(N^rho): at most O(N^(1+rho)) ordered pairs.
2. Large gcd>=N^(1-rho): dropping the true gcd equality, at most sum_(d>=N^(1-rho))floor(N/d)^2=O(N^(1+rho)) ordered pairs.
3. Equal cubeBase: at most 16*N ordered pairs, since a squarefree source base has at most four indices d,2d,3d,6d.
4. OddBaseRatio: comparable distinct base pairs e=k*d (or reverse) number at most sum_(d<=N)floor(N/d)=O(N log N); each base pair has at most sixteen original ordered lifts. This bound includes ALL odd-parity comparable pairs and never omits a mixed orientation.
5. The low-index test min(m,n)>N^(2rho-1) holds automatically in I_N for all large N, because rho<1 and 2rho-1<1.

Since rho<1, each exceptional count is o(N^2). Thus there are at least c'_rho N^2 distinct ordered pairs with mu(m)mu(n)=+1 that meet the COMPLETE true core mask.

Finally, for every n in I_N and every u in [log(3N/4),log N],

    r_n(u) >= 2*(sqrt(2)-2/sqrt(3))/sqrt(N)
            =: kappa/sqrt N >0,

because all such n are born before this window. Hence for every surviving m,n

    K_(log N)(m,n) >= kappa^2*log(4/3)/N =: c0/N.

Summing at least c'_rho N^2 genuine **positive** original-weighted pair terms proves (8) with c_rho=c'_rho*c0. This uses only squarefree arithmetic density by the above elementary union bound, the EXACT original causal response, and elementary pair counting. No PNT, RH, zero-free strip or independence assumption. QED.

Thus absolute values of R_rho are not merely known to have weak upper bounds: their actual finite positive part has provable leading rate ONE. Any valid strict-rate estimate for the remaining source must exploit signed cancellation **between the positive and negative contributions still INSIDE R_rho**, not simply take their absolute values.

## 6. Reusable positive-part checkerboard proof and optional arbitrary-prime packets

A separate pure real lemma strengthens the proof neighborhood for the preceding two-prime packet. For real t and a>=b,

    max(a-t,0)-max(b-t,0)
       = min(a-b,max(a-t,0)).                            (10)

This follows by the three mutually exclusive cases t>=a, b<=t<a, t<b. Consequently if

    a>=b, a>=c, c>=e, a+e>=b+c,

the first truncated increment in (10) dominates the second, so

    max(a-t,0)-max(b-t,0)-max(c-t,0)+max(e-t,0)>=0.   (11)

The new Lean candidate contains proof scripts `positivePart_increment` and `positivePart_checkerboard_nonneg` at EXACT finite algebra scope; native typechecking remains NOT_RUN. For ANY distinct genuine primes p,q and positive d coprime to p*q, let

    A=1/sqrt(d), B=A/sqrt(p),
    C=A/sqrt(q), E=A/sqrt(p*q).

Then B+C<=A+E since A+E-B-C=A*(1-1/sqrt(p))*(1-1/sqrt(q))>=0. The source positive-part identity `r_n(u)=2max(n^(-1/2)-exp(-u/2),0)` makes (11) exactly

    W_(p,q,d)(u)=r_d-r_(p*d)-r_(q*d)+r_(p*q*d)>=0.

The upper W<=r_d follows from the same four-corner antitonicity argument in the existing original (2,3) module. Thus the negative internal complete ordered Gram packet applies to ANY selected two-prime orbit, not only 2,3; the arithmetic orbit partition requires p,q distinct and coprime d. The source-specific sqrt/cast and ordinary Möbius multiplicativity Lean adapters are not supplied as newly checked proofs and are exposed in a separate `GeneralTwoPrimeCubeNonnegTarget`.

This is a reusable structural inequality, NOT a new independent proof of a global signed cancellation rate. If several fixed two-prime partitions are compared, each must first reconstruct the SAME original X and return the full other sectors; their negative credits must not be combined by addition unless a separate disjointness theorem is established. Taking a minimum of independently proved full-source upper certificates is valid; double subtraction is not.

## 7. Numerical hostile diagnostics, comparison and exact open frontier

Independent finite diagnostics of the ACTUAL mu by integer prime-factor sieve and the ORIGINAL closed causal Gram verified the full prior Q+P_-+R_other original pair reconstruction for N=12,25,50,100,160 at T=log(N+0.25), with floating differences below 1e-12; also Q+D_secondary<=0 and P_-<=0 in these examples.

For the strictly positive core, the original squarefree indices were counted without any random coefficient model. On the genuine source at N=256,512,1024,2048, both rho=1/2 and rho=2/3 produced surviving SAME-sign core pairs. At N=2048, a majority-sign population of 155 indices in [N/4,N/2] yielded 9,876 surviving unordered positive pairs for rho=1/2 and 5,447 for rho=2/3. This is finite combinatorial evidence only, not an asymptotic proof or exact real integral certification. The mathematical proof is (9) plus the o(N^2) exceptional bounds and uniform Gram lower.

The closest local sources are #1556 actual sparse Putnam gaps, #1406 signed endpoint, #1435 actual signed gcd octave outer sector, and the previous two-prime source at 805a1ee. Source-bound previous geometric 3/4 cut is recovered exactly from (5), while the optimized profile changes the unpaid mask and is not a bound on it. The independent geometric weak-energy tube source on current main is another finite selected-pair absolute payment with its own original Gram identity; it does not prove uniform signed dense arithmetic cancellation. These new comparisons must not be confused with prior fixed-form Chowla, logarithmically averaged two-point theorems or the conditional existing RH consumer.

Relevant established external context only (not an input to (5), (8) or (11)): Vinogradov–Korobov quantitative Mertens estimates as in Walfisz (1963), Section V.5; Ethan Simpson Lee and Nicol Leong, *New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function*, arXiv:2208.06141v5 (2026-09-09), https://arxiv.org/abs/2208.06141. Their exponential leading rate remains one and is NOT used as a fixed power saving in this work.

**Status and genuinely next independent theorem:** the publication provides actual signed original-source one-sided parameterized comparisons, an exact finite positive-part algebra and an elementary actual-squarefree positive-only refutation. To lower the exponential rate of the COMPLETE signed endpoint, prove cancellation in R_rho for a fixed rho<1 sufficiently to beat its paid term; to reach EVERY positive rate one must instead retain the existing all-rate-compatible polynomial-gap carrier and prove its full signed arithmetic estimate on ONE fixed AffineFrequent G. No such new arithmetic upper supplier has been established by this source. New Lean finite lemma proofs are SOURCE_PROOF_CANDIDATES, source-specific asymptotic and integral conclusions UNPROVED Lean Prop targets, native compilation/expected types/fresh kernel/audit NOT_RUN. No Noe runner, scheduler, proof capsule admission or root promotion was performed.
