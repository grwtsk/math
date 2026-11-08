# Original Möbius causal Mertens-square integration: exact source references and boundaries

Local mathematical attribution: grwtsk contributors. Date: 2026-11-01.
Classification: mathematical finite/real-variable bridge, Lean SOURCE_PROOF_CANDIDATE and no new RH arithmetic supplier.

## Primary GRWTSK original-source dependencies

1. GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean — Git blob 45e06c371d67bcf8c939d20a95fcbc63570546fa. Original functions moebiusReal, mertensPrefix, wholePickup, pickupResponse, pickupResponseGram, pickupFullGram, pickupDiagonal, pickupCross and pickupEnergy. Exactly the original integer-indexed signed source with full diagonal and both ordered off-diagonal orientations.

2. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareBridge.lean — Git blob be156509d9679a22b52b32d087f87d8449a047ef. Actual finite Mertens prefix, original causal finite response, exact Abel telescope with a retained terminal, original nonnegative response drops, finite L1 and weighted-square Cauchy inequalities, and previously only DEFINED OriginalCausalMertensSquareEnergyTarget.

3. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleCausalPhysicalGramIntegrability.lean — Git blob e23f62fc60ce5867e4c183117162c59ff4989b6f. Original source theorem pickupResponse_continuous for all positive integer labels, across their actual birth, and pickupResponse_product_intervalIntegrable for the same physical interval.

4. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeOverlapReconstruction.lean — Git blob 47228aca1eb9cdacae84d90974f2b2245674725e. The existing generic integrate_finite_double_sum for actual interval-integrable terms; this is finite Fubini, not an unqualified infinite rearrangement.

5. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelAnalyticGates.lean — Git blob b4bd9a83c83603faa5eff5326d9a99ec35dae2d4. Actual source original response nonnegativity and index antitonicity; the d_k(u)=r_k(u)-r_(k+1)(u) are nonnegative with exact terminal telescope.

6. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusBalancedEndpointRateOne.lean — Git blob c178ccb3f90f1e1b811a2386d3bdb09cba04d82a. Existing original source identity pickupEnergy_eq_diagonal_add_cross and elementary rate-one 4(exp T-1) consumer. This prior source is not modified or reclassified by the new increment.

7. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusBalancedTwoSidedPNTDense.lean — source subject distinct: original two-sided tagged balanced DYADIC rectangle and classical PNT log-power paper argument. Not an assertion about the full time-integrated causal energy. Its current blob should be recorded from the publication source head.

## Pinned math and external classical input

Lean v4.34.1; Mathlib git revision d13f23b723b8a846827a245b89c10fc7d3f11612. Finite square Cauchy: Mathlib/Algebra/Order/BigOperators/Ring/Finset.lean Git blob c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7. The original source uses intervalIntegral.integral_finsetSum, integral_mono_on and integral_const_mul only after the actual integrability premises.

Standard independent arithmetic result: Vinogradov–Korobov classical Mertens logarithmic-power envelope |M(x)|<=C_A*x/(1+log x)^A for each fixed integer A>=1, reviewed in Arnold Walfisz, Weylsche Exponentialsummen in der neueren Zahlentheorie, 1963, §V.5 Satz 3. Contemporary discussion: Ethan Simpson Lee and Nicol Leong, New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function, https://arxiv.org/abs/2208.06141. The result is NOT used in the new unconditional energy integration theorem and has NOT been imported as a locally kernel-checked source.

## Mathematical output, types and necessary proof distinction

New maintained source: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareEnergyIntegration.lean. Expected declaration namespace GRWTSK.NumberTheory.Moebius.CausalMertensSquareEnergyIntegration, including:
- finitePickup_eq_original_closed_inventory
- finitePickup_continuous
- pickupEnergy_eq_integral_finitePickup
- absMertensDropWave_nonneg and absMertensDropWave_continuous
- pickupEnergy_le_integral_absMertensDrops
- pickupEnergy_le_MertensSquareGramDrop
- originalCausalMertensSquareEnergyTarget (the prior exact named proposition)
- original_GramDrop_nonneg.

The exact mathematical theorem is, for each T>=0, N=floor(exp T), M(k)=sum_(n<=k)mu(n), K_T the ORIGINAL full causal Gram:

    pickupEnergy(T)
      <= integral_0^T (sum_(k<=N) abs(M(k)) * [r_k(u)-r_(k+1)(u)])^2du
      <= sum_(k<=N) M(k)^2[K_T(1,k)-K_T(1,k+1)].

The first positive budget is SHARPER; the second weighted Cauchy budget has an explicit half-exponent loss and is not an RH-strength supplier by itself. The full energy is obtained from the already maintained complete original signed Gram equality, not a newly asserted pointwise wholePickup identity. No new Mertens arithmetic estimate is proved. The separate classical PNT rate-one logarithmic upper is an ordinary independent source analysis, not a fresh Lean theorem. The all-positive-rate signed RH supplier remains open.

Mathematical ordinary derivation WRITTEN. Exact rational finite Abel checks: 14,140 PASS (SHA256 46b83474d01297b2a5960eb4756185a6981e2b242137344b4a0a81fe5d040c26). High precision original-source integral/Gram check: 247 PASS, /mnt/data/mobius_causal_energy_integration_preflight.py (SHA256 0334444a2226bddb3f5b1546c42ad627daec1a847b713cb1a48bfa1aa5bae24b); not a certified interval enclosure. Lean compilation NOT_RUN; expected types NOT_RUN; fresh kernel NOT_RUN; transitive axiom audit NOT_RUN; quantitative Mertens port NOT_FORMALIZED; all-positive-rate RH arithmetic and canonical RH UNPROVED. No native runner or remote CI dispatched.

No prior proof acceptance record, original theorem namespace, public root import, external adapter or dependency pin is altered.
