# Full original causal Möbius energy integration from exact Mertens-Abel drops

Local mathematical attribution: grwtsk contributors. Research date: November 1, 2026.
Disposition: complete ordinary finite and real-variable mathematical argument; 441-line Lean SOURCE_PROOF_CANDIDATE, with no compilation, exact-type check, fresh-kernel replay or transitive axiom audit. No RH or BSD proof.

## 1. Original source and the completed mathematical obligation

The source under examination is the ACTUAL GRWTSK.RiemannHypothesis.CCC.moebiusReal n = ArithmeticFunction.moebius n, original pickupResponse n u and pickupResponseGram T m n, original wholePickup u, original nonnegative pickupEnergy T and the full signed ordered off-diagonal pickupCross T. These definitions are maintained in GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean (blob 45e06c371d67bcf8c939d20a95fcbc63570546fa). Every zero at a squareful integer and every birth at log n is retained.

The direct finite antecedent is GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareBridge.lean (blob be156509d9679a22b52b32d087f87d8449a047ef), which defines finitePickup N u = sum_(1<=n<=N) mu(n)r_n(u), finiteMertensPrefix k = M(k), and responseDrop k u = r_(k+1)(u)-r_(k+2)(u). Its Lean candidate source proves exact Abel transport, nonnegative response drops, nonzero generic terminal face, zero terminal at N=floor(exp T) and the pointwise signed and squared inequalities. Its prior named OriginalCausalMertensSquareEnergyTarget was only a defined PROP, not a proved Lean theorem.

The OTHER existing Lean source that unlocks the time integration is LiouvilleCausalPhysicalGramIntegrability.lean (blob e23f62fc60ce5867e4c183117162c59ff4989b6f), which, despite its subject folder name, contains source-actual CCC.pickupResponse_continuous and CCC.pickupResponse_product_intervalIntegrable for every positive integer label, across the actual causal birth. It imports LiouvillePrimeOverlapReconstruction.lean (blob 47228aca1eb9cdacae84d90974f2b2245674725e), which already proves the generic integrate_finite_double_sum interval-Fubini theorem from per-term source integrability. The older original pickupEnergy_eq_diagonal_add_cross and pickup_full_gram_split identify the complete signed source's physical energy and FULL finite ordered Gram. The companion MoebiusBalancedEndpointRateOne.lean (blob c178ccb3f90f1e1b811a2386d3bdb09cba04d82a) supplies a separate elementary source-upper bound 4(exp T-1), not the same energy-to-Mertens-square identity.

The environment is Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. All imported mathematical definitions and historical source statuses remain unchanged. No new root import, dependency pin, synthetic kernel, random Möbius signs or assumption about an RH zero is introduced.

## 2. Identity of original physical energy with fixed-cutoff signed response

For every T>=0 let N=floor(exp T). Original complete Gram is

    G_T = sum_(1<=m,n<=N) mu(m)mu(n) K_T(m,n),
    K_T(m,n)=int_0^T r_m(u)r_n(u)du.

The source already proves pickupEnergy(T)=pickupDiagonal(T)+pickupCross(T)=G_T. The present source reindexes the original finite Icc 1 N exactly as range N under j->j+1, and uses the ACTUAL finite source c_N(u)=sum_(j=1..N)mu(j)r_j(u). Every r_j(u) is continuous at u=log j and hence all finite products are interval integrable. The inherited finite double-sum interchange proves

    int_0^T c_N(u)^2 du
      = sum_(m,n<=N) mu(m)mu(n)*int_0^T r_m(u)r_n(u)du
      = G_T
      = pickupEnergy(T).                                        (1)

This equality does not assume that a chosen substitute response equals wholePickup: it identifies the original energy through the ALREADY PUBLISHED complete original signed Gram and pays its entire diagonal and both off-diagonal orientations. The finite sum is exact even when N=0 (outside nonnegative horizons), and the global horizon N=floor(exp T) keeps the original cutoff with no endpoint approximation. This is the new declaration pickupEnergy_eq_integral_finitePickup.

## 3. Two unconditional majorants, including the sharper one

The previous finite Abel identity is exact for all N:

    c_N(u) = M(N)r_(N+1)(u) +
              sum_(k=1..N) M(k)[r_k(u)-r_(k+1)(u)].

On any u<=T, N=floor(exp T) makes r_(N+1)(u)=0 because exp u<=exp T<N+1. Let d_k(u)=r_k(u)-r_(k+1)(u)>=0, inherited from the true source antitonicity. Then

    c_N(u)=sum_(k<=N) M(k)d_k(u).

Define the SHARPER original-source absolute-prefix envelope

    A_N(u)=sum_(k<=N)|M(k)|d_k(u)>=0.

The true signed triangle inequality gives |c_N(u)|<=A_N(u). Since both functions are continuous on [0,T], squaring and integrating (1) yields the unconditional original full-energy inequality

    pickupEnergy(T) <= int_0^T A_N(u)^2 du.                  (2)

This is now a named Lean theorem candidate pickupEnergy_le_integral_absMertensDrops. The absolute value is taken only AFTER the complete signed arithmetic source has been transformed exactly; it is not a claim that original off-diagonal Gram terms are nonnegative.

For a second, simpler but COARSER positive majorant, use the exact telescope sum_(k<=N)d_k(u)=r_1(u) (the future term is zero). Weighted Cauchy gives

    c_N(u)^2 <= r_1(u)*sum_(k<=N)M(k)^2 d_k(u).

Finite source integration then yields

    pickupEnergy(T)
      <= sum_(k<=N) M(k)^2 int_0^T r_1(u)d_k(u)du
      = sum_(k<=N) M(k)^2[
          K_T(1,k)-K_T(1,k+1)].                              (3)

The second equality uses only the ACTUAL original response Gram, with no independent Fubini or completion hypothesis: every sum is finite and each r_1*r_k product is interval integrable by the previously published source lemma. Each Gram difference is nonnegative from r_(k+1)>=r_(k+2)>=0; source declaration original_GramDrop_nonneg records that fact.

The source proves pickupEnergy_le_MertensSquareGramDrop and then directly provides a candidate theorem originalCausalMertensSquareEnergyTarget, discharging the prior named proposition OriginalCausalMertensSquareEnergyTarget as Lean source mathematics with no additional hypothesis. It has NOT been checked by Lean.

The exact inequality hierarchy is therefore

    pickupEnergy(T)
       <= int_0^T A_N(u)^2 du
       <= sum_(k<=N) M(k)^2 [K_T(1,k)-K_T(1,k+1)].             (4)

The last comparison is the same weighted Cauchy inequality applied to absolute M(k). Both RHS expressions use genuine arithmetic prefixes and genuine original causal response drops. A future formalization can record the last inequality separately if useful; it is already proved by ordinary finite Cauchy.

## 4. Quantitative loss and independent analytic comparison

A critical limitation: the second, Cauchy-square majorant (3) is not automatically an RH-strength supplier, and it is NOT even the strongest route to the classical PNT rate-one savings. The scalar original response has

    0<=r_1(u)<=2,
    0<=d_k(u)<=2[k^(-1/2)-(k+1)^(-1/2)]<=k^(-3/2),

hence

    0<=K_T(1,k)-K_T(1,k+1)<=2T/k^(3/2).

If one *hypothetically* inserts |M(k)|<=C_delta*k^(1/2+delta), then the RHS of (3) is only O_delta(T exp((1/2+2delta)T)). This is too coarse to certify all-positive-rate bounds as delta tends to zero. The lost half-exponent is created by pointwise weighted Cauchy, not by the Möbius signs. This observation is a genuine mathematical hostile check of the analytic consumer and prevents overclaiming that proving (3) alone would establish RH.

The sharper L1 envelope (2) can preserve the appropriate cancellation rate if an independent arithmetic input supplies it. For example, under the RH-strength hypothetical bound |M(k)|<=C_delta*k^(1/2+delta), the actual drops satisfy A_N(u)=O_delta(exp(delta u)) for delta>0 (a separate elementary summation argument), and (2) would imply pickupEnergy(T)=O_delta(exp(2delta T)) after paying constants. But that arithmetic hypothesis is ALREADY equivalent to RH and is NOT supplied here. This is a consistency test, not an independent proof of any zero claim.

By contrast the independently established classical Vinogradov–Korobov/Walfisz bound |M(x)|<=C_A*x/(1+log x)^A, any A>=1, gives the previously reviewed GLOBAL source rate-one logarithmic upper pickupEnergy(T)=O_A(exp T/(1+T)^(2A)) most efficiently through the original pickupVelocity integral or the sharper A_N. The previous review moebius-causal-mertens-square-abel-global-pnt-2026-11-01.md records that complete ordinary analytic proof; the quantitative Mertens input and its Lean transfer are not imported and remain independent. The newer balanced dyadic two-sided PNT source treats original tag rectangles; it does not alter (1)-(4).

No external paper result is promoted as a new Lean theorem, no epsilon<1 exponential improvement is claimed, no covariance outside the exact source is dismissed, and the Riemann Hypothesis remains unresolved.

## 5. Finite diagnostics, hostile cases and verification boundary

The existing exact rational finite Abel/weighted-Cauchy test /mnt/data/mobius_causal_abel_exact_preflight.py, SHA256 46b83474d01297b2a5960eb4756185a6981e2b242137344b4a0a81fe5d040c26, was re-run and passed 14,140 exact rational finite assertions. It independently tests nonzero terminal faces, arbitrary {-1,0,1} coefficients, positive drops, and the source signed Cauchy inequality.

A new source-faithful mpmath 50-digit finite diagnostic at /mnt/data/mobius_causal_energy_integration_preflight.py, SHA256 0334444a2226bddb3f5b1546c42ad627daec1a847b713cb1a48bfa1aa5bae24b, passed 247 comparisons for genuine Möbius values, nine original physical horizons N in {1,2,3,5,7,11,19,31,47}, direct original velocity integration, the original full double Gram and both majorants. At N=47, the independent high-precision readings were

    exact-source complete energy:          0.781172449828436
    integrated absolute Mertens envelope: 5.667231309869320
    positive Mertens-square Gram budget:  7.785108882960400

The elementary exact source identity (1) was verified against directly integrated velocity, not merely against the same closed formula twice. These are numerical diagnostics, NOT certified interval enclosures, Lean evidence, a cofinal witness, or an asymptotic theorem. For N=1 the energy and both majorants are zero. For N=2 all three coincide, while for N>=5 the positive budgets are substantially larger than the actual energy. This demonstrates both correctness of the finite source relationship at tested points and the importance of keeping the losses explicit.

New source: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareEnergyIntegration.lean, expected namespace GRWTSK.NumberTheory.Moebius.CausalMertensSquareEnergyIntegration. Its principal declarations are finitePickup_eq_original_closed_inventory, finitePickup_continuous, pickupEnergy_eq_integral_finitePickup, absMertensDropWave_nonneg, pickupEnergy_le_integral_absMertensDrops, pickupEnergy_le_MertensSquareGramDrop, originalCausalMertensSquareEnergyTarget, and original_GramDrop_nonneg.

MATHEMATICAL FINITE AND INTEGRAL ARGUMENT WRITTEN. LEAN SOURCE_PROOF_CANDIDATE. COMPILATION_NOT_RUN. EXPECTED_TYPES_NOT_RUN. FRESH_KERNEL_NOT_RUN. TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Quantitative Mertens Lean supplier still NOT_FORMALIZED; all-positive-rate signed source, Liouville full weighted-prefix and strict cofinal zeta zero counts still UNPROVED. No native runner, remote CI, schedule or source mutation mechanism was dispatched.

## 6. Next mathematically noncircular supplier

The present result closes the *integration* between genuine original-source Abel drops and the complete physical pickupEnergy, but supplies no new RH-strength Möbius prefix bound. A genuinely noncircular next step would require arithmetic control of the original signed prefix at more than the classical PNT level, or a directly estimated complete signed packet on a fixed cofinal scale set, or effective complete zero-count data. Merely postulating M(k)=O(k^(1/2+delta)) for every delta>0 is the familiar RH criterion and is not an independent proof. The earlier PrimeDilation outside-only all-rate obstruction remains intact; the negative and positive compensating sectors must be considered together.
