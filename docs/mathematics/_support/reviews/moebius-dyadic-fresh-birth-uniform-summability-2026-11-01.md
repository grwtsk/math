# Original Möbius endpoint: uniformly summable near-critical causal birth strips across the entire fixed dyadic time decomposition

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Formalization assistance: OpenAI ChatGPT.
Mathematical disposition: **unconditional complete real-variable proof of a source-exact uniformly summable selected packet** and an exact fixed-grid bounded-error transport to a new complete signed residual. This does NOT prove a fixed exponent below one for the original endpoint, a power saving for the full signed remainder, all-positive-rate endpoint control, or the Riemann Hypothesis. It needs neither PNT nor a Mertens power saving. The selected-packet saving actually holds for any coefficient sequence bounded by one, so it is CAUSAL/GEOMETRIC and is not mislabeled genuine Möbius sign cancellation.
Formal status: finite source-mask Lean proof scripts WRITTEN as candidates; causal interval integration, full-source return and uniform-in-scale quantitative bounds remain UNPROVED Lean Props. Lean parsing, compilation, expected types, fresh kernel and transitive axiom audit NOT_RUN. The mathematics below is an ordinary proof and independent of that formal status.

## 1. Exact unchanged source and fixed scales

Canonical source:
- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, Git blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`: genuine integer Möbius coefficient `moebiusReal n`, original causal `pickupResponse n u`, `pickupResponseGram T m n`, `pickupCross`, diagonal `pickupDiagonal` and cumulative energy `pickupEnergy`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupEndpointQuadrature.lean`, blob `2606536c56bdcb33d120aeddfbcbeef793e31ba1`: the original five-moment signed `endpointSum`, including every birth and clipped last cell, and `|endpointSum(T)-pickupCross(T)|<=1/4` for all T>=0.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/GoodScaleEnergyCriterion.lean`, blob `ca3ae4975b20cf796a167308a9e87546c6001c41`: monotone original cumulative square energy, exact complete ordered off-diagonal identity, fixed-affine-good-scale conditional RH return.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelAnalyticGates.lean`, blob `b4bd9a83c83603faa5eff5326d9a99ec35dae2d4`: the original birth-value positive-part response, continuity, nonnegativity, and monotone response.
- Closest previous unconditionally paid original signed sectors: `MoebiusEndpointPutnamSparseGapYoung.lean` blob `6a424d78ae93cc82e35fae3bb3d20a5a3616c7b2`, the 2/3-prime cube and odd-base packets `MoebiusTwoPrimeSignedPacketCore.lean` blob `af6a0b8daa8684a36dfee6e0524b7e56578d432f`, and the fixed-rate geometric filtered source `MoebiusTwoPrimeRateFrontier.lean` blob `025e9343e5c4c819321706d49bc81a56aa68d960`. This NEW source defines an ALTERNATIVE time/index packet, not an additive negative credit that may be silently subtracted from overlapping previous sectors.

Put
    r_n(u)=2(n^(-1/2)-exp(-u/2)) if log n<=u, 0 otherwise
for n>=1, preserving its zero value exactly at birth. Write
    K_T(m,n)=integral_0^T r_m(u)r_n(u)du,
    X(T)=sum_(1<=m,n<=floor(exp T),m!=n)mu(m)mu(n)K_T(m,n),
    E(T)=endpointSum(T).

Fix ONCE the grid
    G={T_j=j log 2 : j=0,1,2,...}, N_j=2^j.
For every T>=0 there is T_j in [T,T+log2], so G is affinely frequent with alpha=1, beta=log 2, T0=0, independently of all later rate/precision parameters. At T_j, exp(T_j)=N_j exactly (not floating roundoff).

Fix ONCE 0<=lambda<=1, independent of j, of the target exponent delta, and of all source coefficients. For j>=3 choose
    h_j=floor(lambda*N_j^(2/3)/(j+1)),
    B_j={N_j-h_j+1,...,N_j}.
h_j may be zero at small j, in which case B_j is empty. For every j>=3, h_j<=N_j/2 because N_j^(2/3)<=N_j/2 when N_j>=8. Therefore all original n in B_j (if nonempty) satisfy n>N_j/2 and birth strictly later than T_(j-1). The physical time windows [T_(j-1),T_j] are consecutive with no overlap of positive measure.

## 2. A sharp source-specific birth ramp and original integrated Gram payment

**Lemma 1: genuine original response ramp.** For n>=1 and u>=log n,

    0<=r_n(u)=2n^(-1/2)(1-exp[-(u-log n)/2])
             <=(u-log n)/sqrt(n).                  (1)

The last inequality is 1-exp(-t)<=t for t>=0. For every m>=1 and u real, 0<=r_m(u)<=2/sqrt(m) (the response is exactly zero before its own birth).

**Lemma 2: source Gram at one newborn index.** At T_j=log N_j and n in B_j, set s_n=T_j-log n. Using log(1+x)<=x and n>=N_j-h_j+1>N_j/2,

    0<=s_n=log(N_j/n)
         <=(N_j-n)/n
         <=h_j/(N_j-h_j+1)
         <=2h_j/N_j.                                (2)

The true original integrated kernel is nonnegative, and its entire source time support is [log(max(m,n)),T_j]. By (1), and allowing the longer [log n,T_j] interval as an upper bound,

    K_(T_j)(m,n)
      <= integral_(log n)^T_j (2/sqrt m)*
                             ((u-log n)/sqrt n)du
       =s_n^2/sqrt(m*n)
      <=4sqrt(2)*h_j^2/(N_j^(5/2)*sqrt m).          (3)

This estimate uses the actual source r_n, original true birth, the physical-time integral, and every original integer index. No Möbius estimate or sign hypothesis appears.

**The complete source newborn ordered-pair packet.** For j>=3 let C_j(lambda) be the original signed ordered sum at horizon T_j, with m,n in {1,...,N_j}, m!=n and at least one of m,n in B_j, retaining both orientations:

    C_j=sum_(m,n<=N_j, m!=n, (m in B_j OR n in B_j))
              mu(m)mu(n) K_(T_j)(m,n).              (4)

Because n in B_j is unborn at all u<=T_(j-1), the same C_j is the ORIGINAL signed cross-density integral on precisely the time cell [T_(j-1),T_j] with this mask. Set C_1=C_2=0.

The union of the two orientations is contained, with multiplicity <=2, in the union over n in B_j and m<=N_j; the original diagonal restriction only removes terms. By |mu|<=1, nonnegative original K, (3), and the exact elementary partial sum sum_(m=1..N)1/sqrt(m)<=2sqrt N,

    |C_j|
      <=2 sum_(n in B_j)sum_(m<=N_j)K_(T_j)(m,n)
      <=2*h_j*(4sqrt2*h_j^2/N_j^(5/2))*(2sqrt N_j)
       =16sqrt2*h_j^3/N_j^2
       <=24*h_j^3/N_j^2.                            (5)

The number 24 is a uniform numerical constant; no block-index, cutoff, Möbius correlation, conjectural uniformity or Euler-factor cost is hidden in it. For h_j=0, all these sums are empty and (5) holds with both sides zero.

## 3. Near-critical width and a uniform budget summable over ALL dyadic scales

The selected width satisfies h_j<=lambda*N_j^(2/3)/(j+1) for every j>=3. Thus

    |C_j(lambda)|
      <=24*lambda^3/(j+1)^3.                        (6)

The precise one-step exponent 3 is geometric: one new birth index count, two powers of the time-width/birth-ramp, and two denominator powers N_j. It is not a central-limit or random-sign exponent.

There is a simple exact rational telescope for every integer k>=4:

    1/k^3
      <=1/[k(k-1)(k+1)]
       =(1/2)[1/((k-1)k)-1/(k(k+1))].               (7)

Hence, for any integers 3<=J<=K,

    sum_(j=J..K) |C_j(lambda)|
       <=24*lambda^3 sum_(k=J+1..K+1)1/k^3
       <=12*lambda^3[
          1/(J(J+1))-1/((K+1)(K+2))]
       <=12*lambda^3/(J(J+1)).                     (8)

In particular

    sum_(j=3..infinity) |C_j(lambda)|
       <=lambda^3.                                  (9)

This is uniform over ALL dyadic levels and all complete original integer inventories. The infinite signed series sum_j C_j converges absolutely with the explicit tail (8). The full strength of (9) holds for EVERY sequence of coefficients |a_n|<=1, so it is a causal source budget, not Möbius-specific arithmetic cancellation. It is not a model replacing the original Möbius source: each application uses its literal mu(n).

Take lambda=1/2 FIXED once: the newborn layer width grows like (1/2)N_j^(2/3)/(j+1), and (9) becomes an entire-grid absolute allowance <=1/8. Taking lambda=1 yields the convenient full near-critical width and allowance <=1. For any desired preset error epsilon>0, taking a fixed lambda=min(1,epsilon^(1/3)) makes the newborn allowance <=epsilon, but the remaining residual itself then changes: no uniform RH inference is obtained by tuning lambda.

## 4. Exact complete dyadic time decomposition, both original orientations, fixed grid

Define the complete original signed off-diagonal source on time cell j>=1 by

    X_j=integral_(T_(j-1))^(T_j)
          sum_(1<=m,n<=N_j,m!=n)
                 mu(m)mu(n)r_m(u)r_n(u)du.           (10)

All m,n>N_j have un-born response at every u in this cell, so (10) is IDENTICAL to the appropriate restriction of the original complete ordered pickupCross, not a changed or diagonal-normalized finite function. Finite integration and the original full source identification give

    X(T_J)=sum_(j=1..J) X_j, for every J>=0.        (11)

For j>=3 partition the exact original finite ordered source in X_j by whether m in B_j or n in B_j; call the remaining signed original source R_j(lambda). For j=1,2 set R_j=X_j and C_j=0. These are literal complementary pair masks, so

    X_j=C_j(lambda)+R_j(lambda),                     (12)
    X(T_J)=sum_(j=1..J)R_j(lambda)+sum_(j=3..J)C_j(lambda).  (13)

Nothing is removed from the original cross except the explicitly summed C_j; the remaining R_j retains ALL original odd/even, squarefree zero, prime-cofactor, diagonal exclusion, birth and off-diagonal pair data without another sign assignment.

Use the independently published original endpoint quadrature inequality |E(T)-X(T)|<=1/4. Combining (8)-(13),

    |E(T_J)-sum_(j=1..J)R_j(lambda)|
       <=1/4+lambda^3, for EVERY J>=0.             (14)

For lambda=1/2 this becomes a **uniform 3/8 complete-endpoint source comparison** on the SAME fixed affine-covering dyadic grid, regardless of the size of J. There is no finite-number-of-blocks penalty J, J^2 or e^(delta T), and no delta-dependent choice of G or lambda.

## 5. Exact terminal quantifiers and what this DOES NOT solve

Define the actual cumulative retained residual
    R_cum(lambda,J)=sum_(j=1..J) R_j(lambda).
The uniform absolute difference (14) proves for ANY fixed lambda in [0,1], on the one predetermined grid G,

    forall delta>0, exists C_delta >=0, forall large J:
       E(T_J)<=C_delta*exp(delta*T_J)
    IFF
    forall delta>0, exists D_delta >=0, forall large J:
       R_cum(lambda,J)<=D_delta*exp(delta*T_J).      (15)

For the forward direction, use R_cum<=E+1/4+lambda^3; the reverse is identical. The bounded initial J range can be absorbed. The grid coverage is alpha=1 and beta=log2. Therefore (15) preserves the ORIGINAL every-positive-rate RH arithmetic obligation; it does NOT prove either side. In particular this theorem may NOT be presented as a cancellation bound for R_cum.

The classical unconditional prime-number theorem and Vinogradov–Korobov estimates yield an e^T times logarithmic/stretched-exponential saving for the FULL signed endpoint; they do NOT imply a fixed exponential rate theta<1. By the existing source Laplace/zero-free comparison, any genuine fixed theta<1 on this adequately covering grid would force a fixed global zero-free strip for the Riemann zeta function. This is an outstanding mathematical problem and is not resolved by (14). The present theorem isolates a growing set of ACTUAL near-terminal ORIGINAL PAIRS whose total cost is bounded independently of ALL scales, leaving the complete signed long/old arithmetic correlations as the research frontier.

## 6. Independent checks, prior comparison, assurance and next original-source consumer

The proof of (1)-(9) is direct calculus and an exact reciprocal finite telescope, independent of source-specific zeta estimates. A second independent finite diagnostic used the actual integer Möbius sieve through N=16,384. For j=3,...,14 the exact integer critical h_j was obtained by integer cube-root comparisons rather than floating floor. The two separate evaluations of C_j (complete original ordered-pair causal Gram by Gaussian quadrature; and the ORIGINAL sum-of-waves source square with all diagonal and birth jumps retained, integrated across successive original integer birth subcells) agreed for j<=10 with absolute errors <1e-18. The first 12 true source packet values satisfy (5), and their total observed sum of absolute values is approximately 2.06e-5, while the sum of their rigorously derived 24h_j^3/N_j^2 allowances is approximately 0.677. These are NOT certified interval enclosures, not large-N evidence and NOT a Lean check; the actual mathematical proof is (1)-(14).

Separately, exact rational/integer arithmetic for j=3,...,80 confirmed h_j<=N_j/2, source birth support in the correct dyadic cell, each h_j^3/N_j^2<=lambda^3/(j+1)^3, and the partial uniform upper <=lambda^3, for lambda=1, 1/2 and 1/4. These checks are finite diagnostics; (7) is the actual infinite proof.

Nearest existing source comparison:
- The old Putnam short-ADDITIVE-gap packet pays |m-n| small via diagonal/Young and does not pay an ORIGINAL pair with a late newborn n and an arbitrarily distant earlier m. The present packet pays such long-gap pairs by their LITERAL causal birth ramp. It does not assert the pair-set complements or earlier credits are disjoint.
- The previous 2/3-prime checkerboard and odd-parity base-dilation packets are SIGNED negative observations; our present packet is source-absolute and time-cell selective, not another claim of arithmetic parity cancellation.
- The prior fixed-rate min-index/large-gcd geometric filters paid O(exp(rho T)) at a SINGLE horizon, with different residual masks for each rho. The new result pays a near-critical N^(2/3)/logN last-born source layer at EACH horizon and has a uniformly convergent sum across the ENTIRE fixed dyadic time decomposition.
- The existing classical Mertens-to-whole-pickup signed energy and strong-packet return are standard PNT at leading exponential rate one. They are neither assumed nor improved globally by the present source birth calculation.
- The earlier issue #1428 terminal far-strip calculation concerns a differently normalized quotient-prime mixed moment and a terminal power bound at its own source. No identity to the present literal 1..N original physical-time cross is asserted.

New Lean source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDyadicFreshBirthStrip.lean`. Written candidate finite theorem proofs `sourceCellCross_eq_fresh_add_residual` and `sum_source_cells_eq_fresh_add_residual`. Definitions `dyadicTime`, `dyadicUpper`, `fixedDyadicGrid`, `freshWidth`, `freshIndices`, `sourceCellPair`, `sourceCellCross`, `touchesFreshLayer`, `freshSliceCross`, `residualSliceCross`, `cumulativeResidual`. Exact meaningful UNPROVED Lean targets `OriginalDyadicCrossPartitionTarget`, `PerCellFreshPhysicalBoundTarget`, `PerCellFreshBoundTarget`, `UniformFreshTailTarget`, `UniformEndpointResidualDefectTarget`, `FixedGridResidualAllRatesIffTarget`. These targets are NEVER axioms or completed theorem scripts.

The source dependency environment is Lean `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` from existing `lake-manifest.json`. No local Lean/Lake executable was found in the container. Lean parsing/elaboration, expected types, pinned compilation, fresh independent kernel replay, transitive axiom/opaque/private/unsafe audit remain NOT_RUN. No Noe native execution, scheduler, controller, root import or other repository was changed. Any future native acceptance must bind this exact source blob, its entire changed dependency closure and the immutable environment pins.

**Precise unfinished arithmetic step:** prove a NONCIRCULAR strictly-sub-one upper on R_cum(lambda,J) for a fixed lambda (e.g., 1/2), with constants independent of J on this SAME predetermined affine-frequent dyadic G; ultimately prove its every-positive-rate bound. This is a valid source-exact successor to the endpoint programme, but is still a RH-strength missing arithmetic supplier. No global fixed-power saving or RH has been proved here.
