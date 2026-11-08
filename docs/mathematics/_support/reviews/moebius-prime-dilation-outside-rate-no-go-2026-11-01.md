# Forced compensation: why the outside-prime-dilation all-rate upper bound fails

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Disposition: a complete ordinary finite source-identity proof and an unconditional analytic no-go argument using the classical prime number theorem (PNT); new Lean source proof candidates for the finite identities. No RH disproof, no RH proof, no accepted Lean compilation/kernel/axiom audit, and no executable PNT-to-credit Lean port.

## 1. Correction of the proposed next RH obligation

Inspected grwtsk/math/main at commit 8fc05445df78d75bb7c49106e34e95e6f97bbb60, source tree retaining Lean v4.34.1 and Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612. The predecessor MoebiusDenseReducedPrimeDilationCancellation.lean (blob 50f9ee06b3deea0321982c7e8cb8ba41bf9fc7e9) defines the *literal* original signed outside-prime-dilation packet and proposes its all-positive-rate upper control on a fixed covering set G as a sufficient condition for RH. The antecedent was explicitly not proved.

The key new finding is stronger: **that antecedent is mathematically false on every unbounded fixed scale set G**. The prime-dilation sector removed from the original signed source is exponentially negative, and the nonnegative COMPLETE source Gram forces the outside packet to compensate it positively. Thus the proposed outside-only bound is not merely an open hard arithmetic problem; it is an unsatisfiable strengthened criterion in the intended unbounded regime.

This does NOT refute the Riemann Hypothesis. It invalidates only the earlier practice of requiring subexponential growth of the positive complement after discarding a large negative packet. The correct fixed-G condition must retain the negative credit *with its sign*.

Original source dependencies:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSmallRationalSlopeAllRate.lean, blob e9d09a9e1eb69dd2c176f3e64b28228df0126f42: original complete four-sector decomposition and three paid absolute sparse bounds; source exact reduced-ratio core.
- MoebiusEndpointPutnamSmallRatioAllRate.lean, blob 4d2a3cdef5cae3643637cac342eeb48d586d9204: unchanged original endpointRelationCross and exact quotient sector.
- MoebiusEndpointPutnamSparseGapAllRate.lean, blob 2ccedc75331c8ec88956923f896083727d49ec4f: genuine sparse additive band.
- MoebiusDenseReducedPrimeDilationCancellation.lean, blob 50f9ee06b3deea0321982c7e8cb8ba41bf9fc7e9: actual sign μ(q)μ(pq)=-μ(q)^2, complete prime-dilation packet P, outside signed packet R, and true large-prime survival through the three filters.
- MoebiusDensePrimeStarCancellation.lean, blob 54629ac2b520545be119fb3d7b5e40235931513a, and its mathematical review blob 907c13cc3e16fe631d7b0466629faea87f1b471e: actual prime-star interval-integral and PNT estimate.
- GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PickupDyadicCoarseBounds.lean, blob 65f64b7919dc270abefacce86ef838e075ad36ae: original positivity of pickupEnergy, pickupCross_lower and exact diagonal payment.
- MoebiusDensePrimeStarForcedCompensation.lean, blob 9ef8997328238a25ea9818e35074a716415c6604: an independent n=1 composite countersector already shows the danger of treating prime negativity as net RH gain. The present result uses the WHOLE three-filter reduced core, not only that earlier additive-gap row.

A concurrent source at main commit 574fc11f42c5d0f38c2f520b432fa4d14bbf03be, MoebiusPrimeDilationPointSpectrumInterval.lean (blob 23b1fde44de5c8a9a81422207c253b0993edc30c), realizes a logarithmic interval of point eigenvalues on an explicitly nonseparable counting-l2 carrier. Its source review (blob c3c4b848d10fe4fcff287cab5a02dea3ec7fe1a9) correctly states that this spectrum provides no estimate of the original signed Möbius complement. It has no effect on the prime-dilation credit or the compensation theorem here; the newly corrected all-rate obligation remains an arithmetic statement, not a spectral reparametrization.

## 2. Exact finite signed identity, with every orientation

For each epsilon>0 and real T let A_epsilon(T)=putnamRateGapSet(epsilon,T) and Q_epsilon(T)=putnamSlopeParameterSet(epsilon,T). These are the original Finset.Icc positive integer cutoffs, respectively floor(exp(epsilon*T/2)) and floor(exp(epsilon*T/4)), not new parameters.

Write

    X(T) = pickupCross(T)
         = Σ_{1<=m,n<=floor(exp T),m!=n} μ(m)μ(n) K_T(m,n),

with the ORIGINAL causal-response Gram K_T(m,n)=∫_0^T r_m(u)r_n(u)du. For T>=0, every K_T(m,n)>=0 when both indices are positive, yet the Möbius coefficient products remain signed. The source definitions retain its complete ordered off-diagonal double sum and the original diagonal.

The prior exact source partition is

    X(T) = G_epsilon(T)+I_epsilon(T)+S_epsilon(T)+D_epsilon(T),

where G is the additive-gap sector, I the small exact-integer-ratio sector, S the small rational-slope sector after excluding the first two, and D the fully reduced-ratio dense core. The last prior source splits D=P+R where

    P_epsilon(T) = primeDilationCorePacket(A_epsilon,Q_epsilon,T) <= 0,
    R_epsilon(T) = outsidePrimeDilationCorePacket(A_epsilon,Q_epsilon,T).

Every original ordered pair is in exactly one sector. Define the **credit**
    
    B_epsilon(T) := -P_epsilon(T) >= 0.

The original source identity becomes

    R_epsilon(T)
      = B_epsilon(T)+X(T)-G_epsilon(T)-I_epsilon(T)-S_epsilon(T). (1)

This is exact for all real T, before any inequality, and is the source result supplied as Lean candidate outside_eq_credit_add_original_minus_sparse and its scheduled specialization. It does not substitute a positive surrogate for the original Möbius kernel or invent missing pair orientations.

## 3. New unconditional finite compensation inequality

The original actual energy is

    E(T) = ∫_0^T (Σ_{n<=floor(exp T)} μ(n)r_n(u))^2 du >= 0

for T>=0, and E(T)=X(T)+D0(T), where the full original diagonal D0(T) satisfies 0<=D0(T)<=2T^2. Thus X(T)>=-2T^2. The signed three sparse packets have independently proved original-source absolute envelopes at every positive epsilon:

    |G_epsilon(T)|, |I_epsilon(T)|, |S_epsilon(T)|
       <= (32/epsilon^2) exp(epsilon*T).

Substituting these exact facts into (1) gives the unconditional lower bound

    R_epsilon(T)
       >= B_epsilon(T)
           - 2T^2 - (96/epsilon^2)exp(epsilon*T).                (2)

The new Lean source proves this SOURCE-CORRECT finite inequality as scheduledOutside_forced_compensation, without assuming any prime-counting or all-positive-rate arithmetic hypothesis. A second finite theorem says that any credit larger than 2T^2 + (96/epsilon^2+C) exp(epsilon*T) forces R_epsilon(T)>C exp(epsilon*T) at that SAME original scale. The original signed source, matched indices, all absolute-sector payments and fixed-G conditions are unchanged.

This refutes a tempting but incorrect deduction: from P<=0 and X=P+R, one can say X<=R, but NOT that RH-strength control of X entails similarly strong control of R. The latter discards an indispensable negative term.

## 4. Classical unconditional PNT proves the outside-only all-rate criterion impossible

This step is a complete ordinary mathematical argument, separate from the new finite Lean source proof candidates. It invokes the classical prime number theorem (available independently of RH), not a new Mathlib import or unproved RH consequence.

Fix any 0<epsilon<1/2. For sufficiently large T, consider the genuine prime window

    W_T = {p prime : exp(T-3)<p<=exp(T-2)}.

Every p in W_T is in the original endpoint inventory: 1 and p are positive and <=floor(exp T). For the original A and Q schedules, any p in W_T eventually satisfies p>floor(exp(epsilon*T/2))+1, hence also exceeds all positive parameters of Q. The already published actual arithmetic lemma largePrimeDilation_survives_bounded_filters, specialized to q=1, proves that both ordered original edges (1,p) and (p,1) belong to P_epsilon, not to any of the previously paid sparse sectors. Their coefficient products are exactly μ(1)μ(p)=-1.

The ORIGINAL real-time response for n>=1 is r_n(u)=2(n^(-1/2)-exp(-u/2)) for u>=log n and zero before its birth. On [log(4p),T], we have r_1(u)>=1 and r_p(u)>=p^(-1/2). Since p<=exp(T-2), the interval has length at least 2-log 4>0. Therefore

    K_T(1,p) >= (2-log 4)/sqrt(p)
               >= (2-log 4)*exp(1-T/2).

Classical PNT gives

    #W_T ~ (e-1)exp(T-3)/T,

so for all sufficiently large T,

    #W_T >= (e-1)exp(T-3)/(2T).

Every other member of the prime-dilation packet is nonpositive, hence the credit B is AT LEAST both ordered terminal prime-star contributions:

    B_epsilon(T) >= 2Σ_{p∈W_T} K_T(1,p)
      >= c exp(T/2)/T,

where the explicit positive constant is

    c = (2-log 4)(e-1)exp(-2) > 0.                             (3)

Combining (2) and (3), for each fixed 0<epsilon<1/2 and all sufficiently large T,

    R_epsilon(T)
       >= c exp(T/2)/T - 2T^2 - (96/epsilon^2)exp(epsilon*T). (4)

Because epsilon<1/2, the first term dominates BOTH negative allowances. Consequently

    liminf_(T→∞) R_epsilon(T)/exp(epsilon*T) = +∞.               (5)

The liminf statement means the ratio tends to +∞, not merely that the remainder sometimes becomes positive. Indeed the finite source inequality gives a uniform lower bound for all sufficiently large real T. No Mertens/RH cancellation has been assumed.

For any fixed unbounded set G⊆[0,∞), (5) contradicts the previous OutsidePrimeDilationAllRateOn G at this one epsilon: for every proposed nonnegative C,R there exists an actual T∈G with T>=R and R_epsilon(T)>C exp(epsilon*T). Therefore

    for every unbounded G⊆[0,∞):
       NOT OutsidePrimeDilationAllRateOn G.                     (6)

The previous conditional theorem riemannHypothesis_of_outsidePrimeDilation_good_scales is logically a valid implication but, when G has the required unbounded coverage, its antecedent is impossible. It is not a useful proof strategy. This correction must not be mistaken for a disproof of RH, or for a rejection of the mathematical prime-dilation sign theorem.

The analysis could alternatively use appropriately strong classical Chebyshev prime-counting bounds; the PNT version above is chosen for explicit constants and transparent quantifiers. The analytic (3)→(6) step has not been promoted to a checked Lean theorem; the kernel-accepted status of Mathlib/PNT does not transfer automatically to this new weighted-response statement.

## 5. Repaired quantifier: keep the necessary negative compensation

The meaningful compensated source is

    C_epsilon(T) := R_epsilon(T)-B_epsilon(T).

By (1), this is EXACTLY the original dense reduced-ratio core D_epsilon(T). It is not a new proof and receives no free cancellation allowance. The new Lean candidate statement scheduledOutside_sub_credit_eq_original_core records the literal equality.

The corrected on-one-fixed-G all-positive-rate criterion is

    ∀ epsilon>0, ∃ C,R>=0, ∀ T∈G with T>=R:
       R_epsilon(T)-B_epsilon(T) <= C exp(epsilon*T).          (7)

The new declarations BalancedPrimeDilationAllRateOn and balancedPrimeDilationAllRateOn_iff_original_core prove that (7) is definitionally the existing DenseReducedRatioCoreAllRateOn G criterion, using the same ORIGINAL math source and no stronger assumptions. The inherited conditional RH consumer accepts (7) when G has the exact required AffineFrequent coverage. But (7) remains **UNPROVED**, exactly as the original RH-strength dense-core source did.

A genuinely new arithmetic contribution must therefore estimate positive composite/rough/matched interactions *against* the negative prime-dilation credit as a joint signed covariance, not demand that the positive outside sector itself be subexponential. The existing prime-star composite compensation source and small-gcd/critical-smooth analyses offer concrete pieces; no independent all-rate joint bound follows from them yet.

## 6. Independent finite diagnostics and source acceptance

The source-preserving Python reference at /mnt/data/mobius_outside_forced_compensation_check.py (SHA256 250c0f9799b6310763f5692b80382a62ff16dddb2eb853cb5ab2cc0a4dd6c472) checks the exact Möbius coefficients, three disjoint sparse edge sectors, prime-dilation source signs, and the endpoint energy through two independent formulas: the explicit original causal Gram integral and a time-domain integration over integer birth intervals. It verifies the finite compensation inequality and actual terminal-prime-band inclusion at eligible positive cutoffs.

For epsilon=1/4 and T=log N, double-precision reference values include:

| N | Negative prime-dilation credit B | Positive signed outside R | Complete original signed X | Original diagonal D0 |
|---:|---:|---:|---:|---:|
| 80 | 26.60655 | 21.27935 | -12.00520 | 13.17780 |
| 600 | 106.43876 | 109.78237 | -29.76848 | 33.34204 |
| 2000 | 232.60026 | 237.78886 | -44.63631 | 50.08165 |
| 6000 | 431.79879 | 438.72763 | -61.12657 | 68.42914 |

These are exploratory double-precision values, NOT exact-rational interval certificates, all-rate asymptotics, or Lean kernel checks. The analytic no-go (4)–(6) is a separate PNT-supported theorem, not an inference from the table. The earlier prime-dilation source's exact integer checks (1,575,656 assertions, SHA256 5d9d4be27186c629eef80e18283eb87c2501f7a2e4333df744c353adf7cc4a73) remain finite arithmetic diagnostics.

The new source candidate GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPrimeDilationOutsideRateObstruction.lean exports primeDilationCredit, primeDilationCredit_nonneg, outside_eq_credit_add_original_minus_sparse, outside_lower_of_credit_with_original_sparse, scheduledCredit, scheduledOutside, scheduledOutside_eq_credit_add_original_minus_sparse, scheduledOutside_forced_compensation, outside_exceeds_rate_of_prime_credit, scheduledOutside_sub_credit_eq_original_core, BalancedPrimeDilationAllRateOn, balancedPrimeDilationAllRateOn_iff_original_core, and riemannHypothesis_of_balanced_prime_dilation_good_scales. All statements are SOURCE_PROOF_CANDIDATES. The analytic no-go using PNT and the weighted original terminal band is deliberately documented here but NOT claimed as an accepted Lean theorem.

Status: complete ordinary finite argument; unconditional PNT-based analytic obstruction; Lean source proof candidate; finite diagnostics pass; COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN; corrected joint signed arithmetic supplier OPEN; canonical Riemann Hypothesis OPEN; no native verifier, CI, scheduler or unauthorized external mathematical execution dispatched.

## 7. Single next true proof obligation

Prove for each positive rate epsilon an independent upper bound on the **NET** complete signed source R_epsilon(T)-B_epsilon(T) on one fixed AffineFrequent scale set, with all original signed pairs, prime powers, short/rough/mixed sectors and causal time endpoints. This is the original noncircular dense-core RH-strength problem. Any attempted decomposition must explicitly show the positive composite-sector compensation and bound its residual against the genuine negative prime-dilation packet, rather than setting either sign sector to zero. The correction provides a source-specific obstruction and a mathematically honest way to organize that research, not a solution of RH.
