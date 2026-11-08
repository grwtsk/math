# Complete original signed Möbius geometric core: classical rate-one upper and full opposing-sign balance

Local attribution: grwtsk contributors. Research date: 2026-11-01. Mathematical derivation and source formalization assistance by OpenAI ChatGPT.
Status: complete ordinary mathematical source comparison and unconditional classical analytic corollary; Lean finite decomposition proof candidate, source-specific integral and asymptotic theorem targets UNPROVED IN LEAN. No strictly sub-one bound, all-positive-rate RH input, or RH theorem is asserted. Pinned Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; native compilation, expected types, fresh kernel, full transitive axiom and unsafe audit NOT_RUN.

## Original source and exact terminal representation

Use the unmodified GRWTSK.RiemannHypothesis.CCC.moebiusReal and its true pickupResponse, pickupResponseGram, pickupEnergy, pickupDiagonal and pickupCross in `MertensPrimitive.lean` blob 45e06c371d67bcf8c939d20a95fcbc63570546fa. At every physical horizon T>=0, with original integer inventory 1<=m,n<=N=floor(exp T),

    H(T)=pickupEnergy(T)=D(T)+X(T)
    0<=D(T)<=2T^2,
    X(T)=sum_(m,n<=N,m!=n)mu(m)mu(n)K_T(m,n),

where K_T(m,n)=integral_0^T r_m(u)r_n(u)du with the ORIGINAL birth cutoffs.

The prior source `MoebiusTwoPrimeSignedPacketCore.lean`, blob af6a0b8daa8684a36dfee6e0524b7e56578d432f, defines the true disjoint 2/3-squarefree orbit {d,2d,3d,6d}, complete internal signed packet Q(T), and the complete odd-Möbius-parity divisor-base signed packet P_-(T). Its ordinary paper proof establishes

    X(T)=Q(T)+P_-(T)+R_other(T),              (1)
    -D(T)<=Q(T)<=0,
    -16T(1+T)exp(T/2)<=P_-(T)<=0.           (2)

The entire original positive diagonal is retained in the first bound. Every ordered original cross term occurs exactly once in (1); nothing is classified as a negative original edge before its COMPLETE orbit packet is formed.

The subsequent exact source `MoebiusTwoPrimeRateFrontier.lean`, blob 025e9343e5c4c819321706d49bc81a56aa68d960, selects the original still-unpaid signed profile R_rho(T)=profileCore rho T for each 1/2<=rho<1. It keeps only true pair terms with distinct cube bases, without oddBaseRatio, min(m,n)>exp((2rho-1)T), gcd(m,n)<exp((1-rho)T), and |m-n|>floor(exp(rho T)). The complement B_rho(T)=R_other(T)-R_rho(T) is the complete EXACT actual short-gap, low-index and large-gcd original signed source in that prescribed precedence. Its existing original integrated Young/Gram, harmonic and gcd sum proofs give the absolute TWO-SIDED allowance

    |B_rho(T)|<= (64T+4T^2)exp(rho T).       (3)

The signed-source endpoint is E(T)=endpointSum T and |E-X|<=1/4, as in `PickupEndpointQuadrature.lean` blob 2606536c56bdcb33d120aeddfbcbeef793e31ba1. This quarter unit is an observation error, NOT a signed arithmetic saving. The original prime-bank negative dilation credit is a DIFFERENT decomposition; the present Q and P_- are not subtracted on top of that credit.

## Unconditional complete-source absolute signed upper

The source equalities yield

    R_rho(T)=X(T)-Q(T)-P_-(T)-B_rho(T)
            =H(T)-D(T)-Q(T)-P_-(T)-B_rho(T).

Using only the actual square energy H>=0, original D>=0 and (1)-(3), we get

    |R_rho(T)|
       <= |H-D|+|Q|+|P_-|+|B_rho|
       <= H+D+D+16T(1+T)exp(T/2)
                      +(64T+4T^2)exp(rho T)
       <= H(T)+4T^2+16T(1+T)exp(T/2)
                      +(64T+4T^2)exp(rho T).            (4)

This is a TRUE bound on the complete original residual, not just a one-sided selected source or its positive counterpart. All negative credits remain distinct; (4) is allowed to pay their magnitudes only for this two-sided comparison. No Mertens arithmetic premise of any kind is used in (4).

## Independent classical Mertens PNT transfer to the COMPLETE core

An established UNCONDITIONAL consequence of the Vinogradov–Korobov/Walfisz quantitative Mertens theorem is, for every fixed integer A>=1 and all sufficiently large x,

    |M(x)|<=C_A*x/(1+log x)^A,               (5)

where M(x)=sum_(1<=n<=floor x)mu(n). This theorem is not an RH-equivalent power-saving hypothesis, a fixed-width global zeta zero-free strip, or a newly imported Lean theorem.

The source's actual primitive is
    wholePickup(t)=integral_0^t exp(-u/2)M(exp u)du.

Finite integral splitting and (5) show for each fixed A a constant D_A and all sufficiently large T that

    H(T)=int_0^T wholePickup(u)^2du
        <=D_A exp(T)/(1+T)^(2A).             (6)

The complete real-variable proof already appears in `moebius-causal-mertens-square-abel-global-pnt-2026-11-01.md` and the original rate-profile review `moebius-signed-endpoint-vinogradov-korobov-rate-profile-2026-11-01.md`. Its source-specific Lean import of the external classical theorem remains unproved; the mathematical assertion is established classical number theory and elementary transfer, not a new global zero-free theorem.

Fix any eta in (0,1/2] and beta>0. For EVERY rho in [1/2,1-eta], the non-energy terms in (4) have at most exp((1-eta)T) times a polynomial in T, since exp(T/2) is also no larger than exp((1-eta)T). For any desired beta, choose A sufficiently large in (6). Standard exponential domination absorbs the two paid strict-power terms and polynomial D, uniformly in rho. Thus there exist C_(eta,beta),T0_(eta,beta) with

    forall rho in [1/2,1-eta], forall T>=T0,
       |R_rho(T)| <= C_(eta,beta)*exp(T)/(1+T)^beta. (7)

This is an UNCONDITIONAL classical-theorem-assisted saving for the FULL original still-unpaid signed geometric core. It is uniform in rho away from 1, and valid at all real T sufficiently large, in particular on the SAME fixed dyadic j log2 scale set. Its LEADING EXPONENTIAL RATE IS ONE.

If the sharper unconditional classical Korobov–Vinogradov Mertens bound |M(x)|<=C x exp(-c (log x)^(3/5)/(loglog x)^(1/5)) is used instead of (5), the original energy has H(T)<=K exp(T-c' T^(3/5)/(log T)^(1/5)) at large T. The strict smaller-exponent packet allowances in (4) are absorbed uniformly for rho<=1-eta, yielding the analogous stretched saving

    |R_rho(T)|<=K_eta exp(T-c_eta*T^(3/5)/(log T)^(1/5)). (8)

The constants are not extracted from a checked external theorem; c_eta>0 exists by classical analysis. Neither (7) nor (8) implies |R_rho|=O(exp(theta T)) for theta<1.

## BOTH original positive and negative populations remain linearly large in the COMPLETE core

Define, at the exact unchanged ordered source support of R_rho, its true positive pair mass P_plus_full and negative magnitude P_minus_full. The new finite Lean source candidate proves the exact decomposition

    R_rho(T)=P_plus_full(rho,T)-P_minus_full(rho,T).     (9)

The preceding proper-slab source `MoebiusDenseSlabSignedBalance.lean`, blob e71538f8da936afd646ce7e008cbc777670ef759, and [its mathematical proof](moebius-dense-slab-signed-balance-2026-11-01.md), blob cfb1fffe1f94441f93819dd7e6bd504d984089cf, give, for N=2^j, all sufficiently large j and uniformly rho in [1/2,1-eta],

    P_plus_slab(rho,j)>=cN,
    P_minus_slab(rho,j)>=cN                    (10)

with c>0 from elementary odd-squarefree n and 2n opposite Möbius parity, the original geometric exception count, and a uniform positive physical Gram lower. No PNT is needed in (10).

The slab is literally a SUBSET of the full finite source support, with precisely the same original sign mask and kernel. Every individual selected positive source term remains nonnegative, and every individual negative magnitude is nonnegative. Therefore (10) transfers by finite term inclusion:

    P_plus_full(rho,j log2)>=cN,
    P_minus_full(rho,j log2)>=cN.             (11)

Using (7), (9), and (11) gives, for each eta,beta as above, uniformly on that full rho range,

    |P_plus_full-P_minus_full|
       /(P_plus_full+P_minus_full)
       <=C'_(eta,beta)/(1+j)^beta.           (12)

This is an explicit **relative signed cancellation theorem for the entire original residual population**, not just the selected slab. Both positive and negative masses can be of linear scale or greater; the mathematical proof only needs their uniform linear lower bounds. The estimates supply no fixed sub-one exponent for the source's formed signed difference.

## Independent scope and nearest sources

Closest prior published result `MoebiusStrongPacketEnergyReturn.lean` and its review at math commit `aa0bb9907f1202d57df2a965ffc546281d585d3c` already transport unconditional classical PNT to the COMPLETE geometric strong signed packet at rate one, using a different angular/weak/strong source partition. The subsequent `MoebiusClassicalMertensRealQuotientBridge.lean` at `d382581f26f019b3e96d215063eb23e73c535f60` supplies an integer-to-real Mertens quotient source candidate. These established source relationships overlap in classical arithmetic and rate with (7). The distinct useful contribution here is the exact *current* nonodd two-prime R_rho full-source return, two-sided budget (4), simultaneous linear lower masses for BOTH original Möbius signs via the new slab, and quantified relative balance (12) uniformly in the actual geometric parameter.

Changing rho with T outside any compact range rho<=1-eta requires another uniform theorem. Source sector bounds cannot be added across the old prime-bank credit and this two-prime cube partition. Upper/absolute source control on complete R_rho at classical rate one is not the RH-facing strict rho-rate bound: plugging (7) into the paid-rate upper leaves leading exponent one. A fixed strict power |R_rho(T)|=O(exp(theta T)) with theta<1 and theta>rho, or ultimately every-positive-rate complete polynomial-gap core upper, would require new arithmetic input.

Hostile control: replace actual mu by all +1. The source original Mertens bound (5) fails, and (7)-(12) no longer follow from the same logic. Replacing the signed residual by a positive-only sum also violates the signed upper: both actual positive and negative contributions are unavoidably large. Synthetic finite Gram or observed floating agreement never establishes (7) globally.

Formal source file `MoebiusCompleteSignedProfileClassicalPNT.lean` authors the finite true-source positive/negative split candidate `profileCore_eq_positive_sub_negative` with both original orientations. Named UNPROVED Lean Prop targets `FullOriginalProfileTwoSidedBudgetTarget`, `FullOriginalProfileAllLogPowerTarget`, `BothFullProfileSignsLinearTarget`, and `FullRelativeBalanceAllLogPowersTarget` retain all source-specific arithmetic and imported classical hypotheses. Lean parsing/compilation, exact expected types, fresh kernel and complete transitive axiom/unsafe audit NOT_RUN. No native/Noe runner, CI, scheduler, or root import change authorized or dispatched. RH and strict sub-one remain OPEN.

External classical references: Arnold Walfisz, *Weylsche Exponentialsummen in der neueren Zahlentheorie* (1963), Section V.5, Satz 3; Ethan Simpson Lee and Nicol Leong, *New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function*, arXiv:2208.06141v5 (2026-09-09), https://arxiv.org/abs/2208.06141. The accepted classical source is not claimed to be compiled or imported into this pinned Mathlib revision.
