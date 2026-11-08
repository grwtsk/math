# Original Möbius pickup: unconditional rate-one Gram ceiling and balanced prime-dilation return

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Classification: complete elementary mathematical argument, Lean SOURCE_PROOF_CANDIDATE, independently executed finite diagnostic; all Lean compilation, expected types, fresh kernel and transitive axiom facets NOT_RUN. No claim of Riemann Hypothesis or an all-positive-rate estimate.

## 1. Source atlas and exact mathematical consumer

The inspected main was grwtsk/math@390c113801a89c5eed241864187477035a5f484d. Its unchanged pinned toolchain is Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The original signed arithmetic source is the exact GRWTSK.RiemannHypothesis.CCC pickup, not a hypothetical trace or randomized coefficient model.

Original source and closest prior modules:

- GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean, Git blob 45e06c371d67bcf8c939d20a95fcbc63570546fa. The exact definitions are moebiusReal, mertensPrefix, pickupVelocity, wholePickup, pickupEnergy, pickupDiagonal and pickupCross, with all original integer cutoff and signed pair orientations.
- GRWTSK/MeasureAndIntegration/FiniteResponseSum.lean, blob 15402baec3be3c090a23f9ac1943124e16357dd0: original closed-prefix finite response, velocity interval-integrability and integrated arithmetic identity.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusVerticalLineMonotonicity.lean, blob c136f9d2850e978cedee333c821932d59d7b5388: uses the original wholePickup continuity and completed vertical-line energy.
- GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PickupDyadicCoarseBounds.lean, blob 65f64b7919dc270abefacce86ef838e075ad36ae: prior Lean-source candidate bound pickupEnergy(T)<=2 exp(T) T^2 and complete upper at every rate delta>1.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEllipticSignedRateBoundary.lean, blob 7db3dc0bf5655c96f201e045f63708d48d84e7e3: its review lists the stronger elementary 4(exp(T)-1) ceiling as a PAPER result, explicitly not yet a new Lean source proof; this increment supplies that actual source-oriented Lean candidate.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPrimeDilationOutsideRateObstruction.lean, blob dc3d52a4b2633ee17e79dc19ab193f79b3d11c65: exact signed R-credit correction and balanced fixed-G criterion. Its published review blob d158be6599c32061e6340beed9ac3c23d8d4f244 proves the outside-only condition false on unbounded sets using the classical PNT and true prime-dilation source.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSmallRationalSlopeAllRate.lean, blob e9d09a9e1eb69dd2c176f3e64b28228df0126f42: original exhaustive additive-gap, integer-ratio, rational-slope, and reduced-ratio dense-core partition. The first three sectors have absolute bound 32/epsilon^2 exp(epsilon*T) EACH.

The concurrent grwtsk/math@390c1138 also contains a source-bound two-sided PNT estimate in balanced original Möbius rectangles, MoebiusBalancedTwoSidedPNTDense.lean, source blob 8abba800d86af6cee6065b11dfff52713ae85785 on concurrent main 95605caffbc55583747219cded41d3d0fe8957fc (the originally inspected historical blob was bb65dcc3dddaecd2b8d875e3889efab9a1e891eb). Its classical quantitative Mertens-to-rectangle bound is a complete PAPER argument and an unproved Lean Prop gate, rather than a full original endpoint energy theorem. This increment is the different all-index finite Volterra/energy consumer, not a copy of those dyadic rectangle estimates.

The concurrent main commit 4afcd66e2f7a84bdc7cfbb39b4b07bba9cadfe75 adds MoebiusCausalMertensSquareBridge.lean (blob be156509d9679a22b52b32d087f87d8449a047ef). That source directly proves candidate finite Abel summation and real-response-drop facts, while keeping the full integrated Mertens-square upper and classical logarithmic-power result as unproved Lean Propositions. This review reuses that noncircular work; the new source candidate below has a different consumer: the complete original physical-time energy upper with explicit constant 4 and the already-defined balanced prime-dilation signed return. The previously communicated Stieltjes/Volterra identity is not claimed as newly authored here.

## 2. The original source and a completely elementary proof

For u real let M(e^u)=sum_(1<=n<=floor(exp u)) mu(n). The literal original source DEFINES

    pickupVelocity(u) = exp(-u/2) M(exp u),
    wholePickup(T)   = integral from 0 to T pickupVelocity(u) du,
    pickupEnergy(T)  = integral from 0 to T wholePickup(u)^2 du.

There are no hidden sign replacements or summation conventions. The already maintained elementary bound for the ACTUAL three-valued integer Moebius function is |M(x)|<=x for x>=0 (at x<1 the source sum is empty). Therefore for every real u,

    |pickupVelocity(u)|
      <= exp(-u/2)*exp u = exp(u/2).                         (1)

For every T>=0 the true source velocity is interval-integrable. Its entire signed primitive obeys

    |wholePickup(T)| <= integral_0^T |pickupVelocity(u)|du
                     <= integral_0^T exp(u/2)du
                     = 2(exp(T/2)-1).                        (2)

Nothing is dropped before the absolute value of the COMPLETE single signed primitive is taken. The physical event convention is the source's closed integer cutoff, not a discretized surrogate. Equation (2) gives

    wholePickup(u)^2 <= 4 exp u       (u>=0),

so finite integration gives the new formally stated **unconditional** source ceiling

    pickupEnergy(T)
       = integral_0^T wholePickup(u)^2 du
       <= 4(exp T-1),                                     (3)

with the correct zero-horizon initial condition. This replaces the previous source-bound coefficient 2 exp(T) T^2 as a stronger rate-one estimate for large horizons. It does not imply any energy rate delta<1.

The original exact finite causal Gram identity is

    pickupEnergy(T) = pickupDiagonal(T) + pickupCross(T),

and pickupDiagonal(T)>=0 for T>=0, with every original squarefree self-term retained. Consequently

    pickupCross(T) <= 4(exp T-1).                          (4)

This is a real estimate for the original SIGNED ordered off-diagonal kernel, not the result of deleting all negative ordered pairs. It proves no further nontrivial arithmetic cancellation: (1) uses only |mu(n)|<=1.

For a separate source-faithful check, genuine finite summation by parts gives for T>=0 the exact identity

    wholePickup(T) = integral_1^(exp T) M(x) x^(-3/2) dx.  (5)

Indeed the original closed response is
wholePickup(T)=2*(sum_(n<=exp T) mu(n)/sqrt(n)
  - M(exp T)/sqrt(exp T)).
The usual Stieltjes summation-by-parts formula
sum_(n<=X) mu(n)/sqrt(n)
  = M(X)/sqrt X + (1/2)integral_1^X M(x)x^(-3/2)dx
cancels the source terminal M(X)/sqrt X exactly. Equation (5) is NOT claimed as novel: the existing MoebiusCriticalIntervalBlocks and LogarithmicMertensBoundary sources already contain closely related original Mertens-Volterra identities. It is exposition of why every birth, sign and endpoint in (1)-(3) corresponds to the actual arithmetic source.

## 3. New direct consequence for the balanced signed reduced-ratio core

Fix epsilon>0 and T>=0. The previous three-filter Putnam theorem gives the exact complete source split

    pickupCross(T)
     = Gap(epsilon,T)+Ratio(epsilon,T)+Slope(epsilon,T)+Dense(epsilon,T).

Each paid sector has its own absolute bound (32/epsilon^2)exp(epsilon*T); the three terms and BOTH mixed orientations are separately retained. The prime-dilation source then splits

    Dense(epsilon,T)
     = P_primeDilation(epsilon,T)+R_outside(epsilon,T),
     P_primeDilation<=0,
     B_credit:=-P_primeDilation>=0.

The companion correction proves by the ORIGINAL finite source identity

    Dense(epsilon,T) = R_outside(epsilon,T)-B_credit(epsilon,T).

Combine (4) with the three sparse lower bounds. For the exact original parameters A=putnamRateGapSet(epsilon,T) and Q=putnamSlopeParameterSet(epsilon,T), the source gives the completely unconditional rate-one conclusion

    R_outside(epsilon,T)-B_credit(epsilon,T)
       <= 4(exp T-1)+(96/epsilon^2)exp(epsilon*T).          (6)

This is **not** an outside-only bound, which the previous review proves mathematically impossible on unbounded scales at each fixed epsilon<1/2. Both the potentially exponentially negative credit and the potentially exponentially positive outside residual stay in the SAME signed expression.

The new Lean candidate declaration scheduled_balanced_upper_rate_one uses the unchanged original theorems, and adds no supplier field whose hypotheses would already assert (6).

At epsilon=1 the right side is O(exp T), and at every epsilon>0 it is O(exp(max(1,epsilon)*T)). For epsilon in (0,1), (6) does not imply O(exp(epsilon*T)). Thus the genuinely hard all-positive-rate RH condition and cofinal zero-count route remain open. The new exact coefficient 4 does not change the critical abscissa barrier one.

## 4. Independent classical logarithmic savings: valid paper consequence, NOT a Lean theorem here

The source derivation (5) allows existing unconditional classical estimates to be transported without renaming the Möbius carrier. For any prescribed A>0, an independently established bound of the familiar form

    |M(x)| <= C_A*x/(1+log x)^A   (x>=1)

implies the source inequality

    |pickupVelocity(u)| <= C_A exp(u/2)/(1+u)^A  (u>=0).

Integrating over [0,T/2] and [T/2,T], the early portion has at most O_A(exp(T/4)) and the latter O_A(exp(T/2)/(1+T)^A). Consequently

    |wholePickup(T)|
       = O_A(exp(T/2)/(1+T)^A),

and splitting the squared time integral similarly yields

    pickupEnergy(T)
       = O_A(exp T/(1+T)^(2A)).                            (7)

This source-specific conclusion is an **ordinary mathematical derivation** from classical unconditional Mertens estimates, not an original theorem about primes or RH. The classical Vinogradov--Korobov zero-free region supplies such logarithmic savings independently of RH. A relevant dated primary article is Ethan Simpson Lee and Nicol Leong, *New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function*, arXiv:2208.06141 version 5 dated September 9, 2026, https://arxiv.org/abs/2208.06141. Its unconditional explicit bounds include a saving in exp(-c(log x)^(3/5)(loglog x)^(-1/5)), with additional lower-order logarithmic factors depending on the version. The historical classical source is Walfisz, *Weylsche Exponentialsummen in der neueren Zahlentheorie* (1963), Section V.5, Satz 3.

Equation (7) is at exponent ONE with arbitrarily high fixed logarithmic powers, NOT subexponential in the required sense of an upper bound O(exp(delta*T)) for every delta>0. The external Mertens theorem has not been source-bound imported, compiled and kernel checked in this module; its arithmetic→real-square transfer is not exported as a Lean proof. The exact finite candidate (1)-(6) uses **no** external PNT/Vinogradov-Korobov hypothesis.

## 5. Independent finite numerical hostile controls

The accompanying reference script /mnt/data/mobius_balanced_rate_one_diagnostic.py, SHA-256 b6116f4a46df68470b3bda2690a75c346d5473e59a66fa575484275c93c567c4, ran successfully with 1,380 finite consistency assertions. It independently built the true Möbius signs by a sieve, the literal ordered original response Gram by the closed-form integral, and the entire physical-time energy by direct integration over ORIGINAL integer birth cells. It checked agreement between the two independent energy representations, source positivity, the exact initial endpoint, the new bound 4(exp T-1), the three paid source sectors and the exact balanced signed decomposition at epsilon=0.20,0.25,0.37,0.8,1.6. It also checked prime-dilation multiplicativity, squareful zero and both orientations.

Representative *double-precision* diagnostic results (the event cutoff can be 79 or 299 at the mathematical log due to floating rounding) are:

| T | floor(exp T) in executed double precision | Original energy | Original signed cross | Unconditional 4(exp T-1) ceiling |
| ---: | ---: | ---: | ---: | ---: |
| 0 | 1 | 0 | 0 | 0 |
| log 10 | 10 | 0.348198 | -2.070151 | 36 |
| log 40 | 40 | 0.689966 | -7.798489 | 156 |
| log 600 | 600 | 3.573562 | -29.768479 | 2396 |

The computed values are not exact real numbers, certified numerical enclosures or a proof of all horizons. The mathematical inequalities follow from the finite integral and actual source envelope, independently of the diagnostic. These checks are not Lean compilation, a fresh kernel replay or an axiom audit.

Hostile limits: replace the actual Möbius coefficients by all +1 and the same *elementary* source bound (1)-(3) remains valid, showing that this rate-one bound cannot be mislabeled nontrivial Möbius cancellation. At T=0, all integrals are 0 and the source cutoff includes index 1, with both true boundary terms paid. Removing the signed prime-dilation credit makes the false outside-only all-rate condition reappear.

## 6. Declaration correspondence, status, and precise next obligation

New subject module GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusBalancedEndpointRateOne.lean exports source proof candidates pickupVelocity_abs_le_exp_half, integral_exp_half, wholePickup_abs_le_two_exp_half, wholePickup_sq_le_four_exp, integral_exp, pickupEnergy_le_four_exp_sub_one, pickupCross_le_four_exp_sub_one and scheduled_balanced_upper_rate_one. No new theorem of the Riemann Hypothesis is declared or silently imported. The actual file and its frozen exact blob identity are recorded in the passive verification target. No source publication is inferred before committing and checking Git main reachability.

Source-only proof status remains SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. The only new unconditional quantitative claim is exponent-one with a correct original signed source and explicit constant, not a power-saving beyond exponent one. The PNT/Vinogradov-Korobov log-power transfer remains a separate paper proof and a specific Lean implementation obligation, not an axiom.

**Next decisive independent arithmetic supplier:** show for all delta>0, on a fixed suitably covering scale set, the complete balanced original pickupCross or equivalently R_outside-credit has a bound O(exp(delta*T)); this requires genuine signed covariance beyond classical Mertens PNT bounds. An independent strict cofinal two-unit complete zeta-zero certificate is the alternative route. Nothing in the current rate-one proof establishes either.
