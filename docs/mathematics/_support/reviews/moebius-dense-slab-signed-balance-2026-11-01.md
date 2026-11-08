# Original signed Möbius dense slab: both signs have linear mass yet cancel to every logarithmic power

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Disposition: complete ordinary real-variable arithmetic proof for a STRICT PROPER SUBPACKET of the still-unpaid original signed dense source. The sign populations are linearly large from elementary squarefree parity; the formed signed residual is smaller than the natural linear scale by any fixed logarithmic power using ESTABLISHED classical quantitative Mertens (not an RH-sized power premise). This does NOT imply a fixed strict sub-one rate for the entire endpoint, the full residual, or RH.
Formal evidence: finite sign-splitting Lean SOURCE_PROOF_CANDIDATES; odd-squarefree counting, original Gram integration and quantitative Mertens transfer are named UNPROVED Lean Prop targets. Parsing, compilation, exact type check, fresh kernel and transitive axiom audit NOT_RUN.

## 1. Exact original mathematical objects and source pins

- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, Git blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`: actual integer-index `moebiusReal`, causal `pickupResponse`, physical `pickupResponseGram`, original complete `pickupCross` and original diagonal. All ordered cross terms retain coefficient mu(m)mu(n).
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelAnalyticGates.lean`, blob `b4bd9a83c83603faa5eff5326d9a99ec35dae2d4`: original response nonnegative, antitone in positive index and equal to the literal positive-part birth rule.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusTwoPrimeSignedPacketCore.lean`, blob `af6a0b8daa8684a36dfee6e0524b7e56578d432f`: true squarefree 2/3 `cubeBase`, full original odd-parity quotient relation, complete internal/odd signed credits and remaining nonodd inter-cube source.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusTwoPrimeRateFrontier.lean`, blob `025e9343e5c4c819321706d49bc81a56aa68d960`: exact `geometricPairMask`, `profileCore` and `positiveProfileCore`, with all genuine source cutoffs, gcd, additive gap and parity requirements.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean`, blob `2606536c56bdcb33d120aeddfbcbeef793e31ba1`: the source-specific quarter-unit chord defect and conditional fixed-good-scale RH consumer.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusTwoCoordinateCausalAbel.lean`, blob `03b2e02abcae65e9b07428d3ad2c81e65b2f5cbc`: existing source-candidate two-coordinate Abel under explicit external Mertens/PNT and Euler-factor premises. This note is a new direct original-source SLAB/CURRENT CORE specialization, not a discovery of the classical Mertens theorem or another standalone RH result.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareBridge.lean`, blob `be156509d9679a22b52b32d087f87d8449a047ef`: named `ClassicalMertensLogPowerInput`, which remains a separate UNPROVED Lean proposition despite its established unconditional mathematical truth.

Declared toolchain: Lean v4.34.1, `lean-toolchain` Git blob `ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` from `lake-manifest.json` blob `c8044c56be77c58e6f41cca024b25237c59e8c79`.

## 2. The EXACT signed slab and its positive/negative balance

Fix N=2^j, j>=5, T=j log 2=log N, and let
    I_N={n in Z: N/16<n<=N/4}.
For fixed 1/2<=rho<1 use the unchanged original mask from `geometricPairMask`:
    m != n,
    cubeBase(m) != cubeBase(n),
    NOT oddBaseRatio(cubeBase(m),cubeBase(n)),
    |m-n|>floor(N^rho),
    m,n>N^(2rho-1),
    gcd(m,n)<N^(1-rho).

For those m,n in I_N, let
    K_T(m,n)=integral_0^T r_m(u)r_n(u)du.
The ACTUAL source's signed slab is
    R_(rho,I)(T)=sum_(m,n in I_N, above mask) mu(m)mu(n)K_T(m,n).
Define its positive and negative masses, separately after the original complete source is formed:
    P_plus =sum_(mask,mu(m)mu(n)>0) mu(m)mu(n)K_T(m,n),
    P_minus=sum_(mask,mu(m)mu(n)<0) -mu(m)mu(n)K_T(m,n).

By finite trichotomy of the ACTUAL original coefficient product,
    R_(rho,I)(T)=P_plus-P_minus                         (1)
exactly, with the original two orientations and all squareful zero terms present. The new Lean source contains a generic real finite pair split and this precise original-source identity as candidate proof scripts.

## 3. Elementary ODD-squarefree pairs give BOTH Möbius signs linearly often, no PNT

Let J_N=(N/16,N/8] and L=|J_N|=N/16, with N divisible by 32. There are exactly L/2 odd integers in J_N. An odd n can fail to be squarefree only if divisible by k^2 for an ODD integer k>=3, k<=sqrt(N/8). At most L/k^2+1 members of J_N are divisible by k^2. Using only the elementary reciprocal bound

    sum_(odd k>=3) 1/k^2
       <=1/9+sum_(k>=5)1/[k(k-1)]
       =1/9+1/4=13/36,

and at most sqrt(N) candidate k, the number U_N of ODD SQUAREFREE n in J_N satisfies
    U_N >= L/2-(13/36)L-sqrt(N)
        =5N/576-sqrt(N).                                (2)

For every j>=16, N=2^j>=(1152/5)^2 and therefore
    U_N >= c0*N,   c0=5/1152.                          (3)

For each actual odd squarefree n in J_N, the original multiplicative Möbius coefficient obeys
    mu(n) in {-1,+1},
    mu(2n)=-mu(n),
because gcd(n,2)=1, mu(2)=-1 and mu is multiplicative on coprime integers. Both n and 2n belong to I_N, occupy disjoint halves and represent distinct ORIGINAL integer indices. Thus each of the two actual sign populations inside I_N has at least c0*N distinct elements, without assuming ordinary Chowla, PNT, RH or a fixed Mertens power saving.

This is a basic consequence of squarefree density and genuine Möbius parity, not a worldwide theorem-novelty claim.

## 4. The ORIGINAL mask removes only lower-order pairs

The two source sign populations each contain >=c0*N distinct original indices. Before masking there are >=2c0^2 N^2 opposite-sign ORDERED pairs and, for large N, >=c0^2 N^2 equal-sign distinct ORDERED pairs. Each discarded class in the exact source mask is paid separately by an upper COUNT of its entire original pair population:

1. Short additive gap |m-n|<=floor(N^rho): each of <=N rows has <=2floor(N^rho)+1 original neighbors, so <=3N^(1+rho) ordered pairs.
2. Large gcd>=N^(1-rho): write m=d*a,n=d*b and drop coprimality to get <=N^2 sum_(d>=ceil(N^(1-rho)))d^(-2)<=2N^(1+rho) ordered pairs.
3. Equal squarefree cubeBase: each true squarefree base has at most four orbit members d,2d,3d,6d, giving <=4N ordered source pairs (or <=16N conservatively).
4. OddBaseRatio: comparability of two positive bases d|e or e|d gives <=2sum_(d<=N)floor(N/d)<=2N(1+log N) ordered base pairs; each has <=16 ordered index lifts. Thus <=32N(1+log N) original pairs.
5. Diagonal m=n is excluded explicitly, at cost at most N pairs (also covered by short gaps). No active squareful coefficient has been discarded or renormalized.
6. The low-index test m,n>N^(2rho-1) is AUTOMATIC on I_N once N/16>N^(2rho-1); this holds eventually for every fixed rho<1.

For fixed rho<1 the total <=5N^(1+rho)+O(N log N)=o(N^2). Stronger: fix eta in (0,1/2] and allow ALL rho in [1/2,1-eta]. Then the excluded count is <=5N^(2-eta)+O(N log N), and the low-index test is automatic once N^(2eta)>16, UNIFORMLY in rho. Consequently for sufficiently large j depending only on eta there are >=c1*N^2 ordered genuine same-sign pairs and >=c1*N^2 ordered genuine opposite-sign pairs meeting the ENTIRE actual mask, with c1=c0^2/4>0 independent of eta and rho.

## 5. Each remaining pair has true, uniformly positive physical-time Gram weight

For every m,n in I_N and u in [log(N/2),log N], the original source response is already born and

    r_n(u)=2(n^(-1/2)-e^(-u/2))
          >=2*(2-sqrt 2)/sqrt(N)>0.

This is from n<=N/4 and u>=log(N/2), not a fitted positive replacement. Hence

    K_(log N)(m,n)
       >=4*(2-sqrt 2)^2*(log 2)/N
       =:k0/N,   k0>0.                                (4)

The complete remaining original pair source has both signed populations with mu(m)mu(n)=+1 or -1 on these active squarefree pairs, so

    P_plus(rho,j)>=c1*k0*N,
    P_minus(rho,j)>=c1*k0*N                           (5)

simultaneously for all rho in [1/2,1-eta] and all sufficiently large j. Set c=c1*k0. This is an UNCONDITIONAL lower for BOTH masses of the ACTUAL still-unpaid core, WITHOUT any analytic number-theory input. It strengthens the earlier positive-only obstruction, but does NOT assert that P_plus-P_minus has large size.

## 6. A GENUINE signed saving for this same unpaid slab, using classical PNT only

The stronger independent upper uses the known unconditional quantitative Mertens theorem: for EACH integer A>=1 a constant C_A exists with

    |M(x)|<= C_A*x/(1+log x)^A, x>=1,                 (6)

where M(x)=sum_(1<=n<=floor x)mu(n). This is the classical Vinogradov–Korobov/Walfisz estimate, or a much weaker consequence thereof, and does NOT assume M(x)=O(x^theta) for theta<1. It has an explicit Prop interface `ClassicalMertensLogPowerInput` in the existing Lean source, but that external theorem is NOT imported as a kernel-checked Lean proof.

Let X=N/16 and Y=N/4. Define the full original signed causal slab amplitude
    S_N(u)=sum_(X<n<=Y)mu(n)*r_n(u).
Let A_N(k)=sum_(X<n<=k)mu(n)=M(k)-M(X) for X<=k<=Y. For sufficiently large N, since log X is comparable to log N, (6) gives

    max_(X<=k<=Y)|A_N(k)|
       <=C'_A*N/(1+log N)^A,
    C'_A=(5/16)*2^A*C_A.                              (7)

Finite signed Abel at the exact original terminal Y, with NONNEGATIVE source response drops and no omitted birth term, yields for all u<=T

    |S_N(u)|<=max|A_N(k)|*r_(X+1)(u).                  (8)

Indeed the finite Abel weights r_k-r_(k+1)>=0 plus r_Y>=0 sum to r_(X+1). All original r_n are continuous, with r_n=0 before their true birth. For u<=T, 0<=r_(X+1)(u)<=2/sqrt(X+1)<=8/sqrt N, and S_N(u)=0 before log(X+1). Therefore the ORIGINAL complete double ordered Gram INCLUDING DIAGONAL obeys exactly

    B_N(T):=sum_(m,n in I_N)mu(m)mu(n)*K_T(m,n)
           =integral_0^T S_N(u)^2du
           >=0

and, by (7)-(8) and the at-most-log16 active physical-time support,

    B_N(T)
      <=64(log16)*(C'_A)^2*N/(1+log N)^(2A).         (9)

This is a genuine two-sided signed cancellation transfer: the *whole formed double sum* is controlled by the true Mertens prefixes in two arithmetic coordinates. Its original diagonal is not removed until the subsequent exact mask comparison.

Every pair in I_N has |mu(m)mu(n)|<=1 and, because both births are after log X, the exact source kernel satisfies

    0<=K_T(m,n)<=4(log16)/sqrt(m*n)
                <=64(log16)/N.                       (10)

The signed full slab B_N and the EXACT masked slab R_(rho,I) differ by the omitted original pairs, including the paid diagonal. By (10) and section 4, for every fixed rho<1 (uniformly over rho<=1-eta),

    |R_(rho,I)(T)|
       <=B_N(T)+64(log16)/N*[5N^(1+rho)+O(Nlog N)]
       <=C''_A N/(1+log N)^(2A)
          +320(log16)N^rho+O(1+log N).                 (11)

Since rho<=1-eta, for each fixed eta>0 and each fixed beta>0, the power term N^(1-eta) and logarithmic error can be absorbed into C_(eta,beta)*N/(1+log N)^beta. Choose any integer A with 2A>=beta, and get the source-exact UNCONDITIONAL mathematical theorem

    forall eta in (0,1/2], beta>0,
    exists C_(eta,beta),j0:
    forall rho in [1/2,1-eta], j>=j0,
    |R_(rho,I)(j log 2)| <= C_(eta,beta)*2^j/(1+j)^beta. (12)

The constants may depend on eta,beta and the classical quantitative Mertens constants; they do NOT depend on j or on rho within the prescribed compact range.

This is a fully signed upper estimate for a specific large populated subset of the PREVIOUSLY UNPAID original dense core, not for its whole. The leading exponential rate is STILL ONE. The all-positive-rate terminal bound is not obtained by selecting A depending on j without new quantitative control on C_A.

## 7. Quantitative cancellation between the two enormous signed populations

The exact source identity (1), actual independent two-sided population bounds (5), and source signed estimate (12) imply

    |P_plus-P_minus|/(P_plus+P_minus)
       <=(C_(eta,beta)/(2c))*(1+j)^(-beta)            (13)

uniformly for rho in [1/2,1-eta], for every fixed beta>0. Both numerator components are >=c*N, yet their difference is O(N/(log N)^beta) for every fixed beta.

This is a mathematical cancellation result for the ORIGINAL causal Gram, not merely the existence of both signs or an arbitrary formal decomposition. It demonstrates the kind of signed compensation the remaining global estimate needs, while preserving the distinction between:
- **proper-slab** signed cancellation at the classical rate-one level, which is established here;
- **complete** original dense signed R_rho on a fixed affinely frequent G with a fixed strict rho<1, which is OPEN;
- **every-positive-rate complete** original endpoint bound, also OPEN;
- exact native Lean verification for the new source, NOT_RUN.

## 8. Independent finite diagnostics and hostile boundaries

Independent source diagnostic: a separate integer Möbius sieve produced true mu(n) for all n<=4096; the original geometric mask, gcd, source cubeBase, and oddBaseRatio were evaluated without a randomized sign proxy. On N=256,512,1024,2048,4096 for rho=1/2 and rho=2/3 both selected sign populations were nonempty, and actual source integrated causal Gram was evaluated by its exact antiderivative formula in double precision. At N=4096 the actual slab contains 232 mu-positive and 235 mu-negative indices; the rho=1/2 ordered selected source had 90,816 positive and 91,092 negative pairs, with weighted masses approximately 197.1345 and 197.6596; the formed signed sum was approximately -0.5250. At rho=2/3 the positive/negative ordered pair counts were 47,540 / 47,816, weighted masses approximately 95.4883 / 96.0918 and signed difference approximately -0.6035. These are finite NUMERICAL observations only, not a proof of the asymptotic or interval-certified real bounds.

Independent physical-time check: at N=256,512,1024, the complete UNMASKED ordered original Gram matrix sum agreed with a separately numerically integrated original signed causal waveform squared to absolute errors respectively <1e-15, 1e-14 and 1e-14. This is a floating identity check, NOT kernel validation. The mathematical proof is the exact finite integral interchange in section 6.

Hostile controls:
- An arbitrary all-+1 sequence has the same response monotonicity and positivity but has no Mertens prefix saving, and its slab Gram has leading order N. The signed estimate (12) genuinely uses the ACTUAL Mobius arithmetic.
- The signs of mu(n),mu(2n) are opposite only when n is odd and squarefree. Including even n without checking coprimality would invalidate the source sign injection.
- A fixed rho<1 versus a varying rho approaching 1 is a serious quantifier boundary: (12) is UNIFORM only while 1-rho>=eta>0. It does not automatically permit eta→0 as N grows.
- The current and prior positive/negative subsets have source-specific support masks. Never move a bound from the slab to the full dense remainder without an explicit complement estimate.
- The only classical input is unconditional quantitative Mertens at leading exponent ONE. No RH-equivalent Mertens power or global fixed-width zero-free strip is assumed. All classical arithmetic constants remain independent of j and of rho in compact ranges.
- A logarithmically small relative imbalance is not a fixed power improvement in N. The estimate N/(log N)^A cannot be compared above by C N^theta for theta<1 at all large N.
- A different complete 2/3-prime packet source partition or bank credit cannot be subtracted from the selected slab twice.

### Contemporary exact-source comparison (other current main work)

A newly published concurrent source `MoebiusStrongPacketEnergyReturn.lean` and its mathematical review `moebius-strong-pnt-mertens-one-rate-2026-11-01.md` at commit `aa0bb9907f1202d57df2a965ffc546281d585d3c` derive `|S_epsilon(T)|=o(exp T)` and the classical stretched-exponential **rate-one** upper for the entire original geometry-defined signed strong packet, by global original Mertens/PNT energy. The subsequent `MoebiusClassicalMertensRealQuotientBridge.lean` at `d382581f26f019b3e96d215063eb23e73c535f60` supplies an additional candidate precise real-floor quotient transfer of the same independently established arithmetic input. These overlap in METHOD and RATE with the slab's conditional classical Abel transfer; neither source is a proof of a fixed exponent below one or an all-positive-rate global supplier. The genuinely distinct result of this note is the *simultaneous leading-order lower bounds on BOTH signs* for the precisely masked original strong-core slab and uniform quantitative near-balance of those populations. It is not presented as a stronger global PNT theorem.

## 9. Source formalization, literature and next mathematical obligation

New source proof candidate `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDenseSlabSignedBalance.lean` defines the exact slab index set, original geometric pair mask, original Möbius Gram term, formed signed slab, positive/negative slab masses, and the original odd-squarefree seed source. Its `real_pair_signed_split` and `signedSlab_eq_positive_sub_negative` are finite proof scripts, with compilation and expected-interface checks NOT_RUN. `OddSquarefreeSeedsLinearTarget`, `OriginalSlabFullGramSquareTarget`, `BothOriginalSignsLinearUniformTarget`, `UniformSlabLogPowerTransferTarget`, and `UniformRelativeSignedBalanceTarget` are UNPROVED named Lean propositions, not assumptions promoted as theorems. They retain all true source parameters and arithmetic dependencies.

Classical arithmetic background: Arnold Walfisz (1963), *Weylsche Exponentialsummen in der neueren Zahlentheorie*, Section V.5, Satz 3; Ethan Simpson Lee and Nicol Leong, *New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function*, arXiv:2208.06141v5 (2026-09-09), https://arxiv.org/abs/2208.06141. The classical Mertens theorem and its constants are NOT imported as a checked Lean theorem. The elementary squarefree density argument is standard inclusion-exclusion/union counting; mathematical novelty outside the source-specific original-mask comparison is NOT asserted.

The genuine next task is to find the source-exact bridge that extends (12) to **all dyadic blocks at all depths and all unmatched pair orientations** without losing uniformity or increasing the rate-one boundary. The full original R_rho and the polynomial-gap all-positive-rate original signed core remain OPEN. The canonical Riemann Hypothesis remains OPEN, and no current source publication or mathematical proof at this proper-slab scope changes that state.

No native Lean/Lake/elan binary was found in the working container and no remote Noe runner, CI, scheduler or proof capsule admission was dispatched. A new source and documentation publication has a separate immutable Git identity; Lean parsing, compilation, exact types, independent kernel replay and full transitive axiom audit all NOT_RUN.
