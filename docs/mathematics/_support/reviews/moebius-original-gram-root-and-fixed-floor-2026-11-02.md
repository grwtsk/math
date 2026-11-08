# Original causal Gram root envelope and fixed gcd floor gate

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-02, America/Los_Angeles.
Status: mathematical elementary proofs and authored pinned Lean proof candidates. Lean/Mathlib compiler, exact interfaces, fresh independent kernel replay and transitive axiom audit NOT_RUN. RH and the signed all-positive-rate problem remain OPEN.

## 1. Current source and immediate verification blocker

Read current grwtsk/math main and issue #1566. The current target is MoebiusCompleteHighGcdDivisorCover.lean blob 354af0c431832b883974a3157e1000eb4f046a1f, which reduced the complete original high-gcd absolute price to DivisorCoverRootTailTarget. The earlier fixed-cutoff scalar FixedGcdRatioTarget in MoebiusFixedSublinearCompensatedEndpoint.lean blob f2d9748589f5999ff667486538968d7eff5a753f is still unproved in pinned Lean. No local lean/lake/elan binary or managed Noe checkout exists in this tool host; GitHub statuses/workflow runs for prior sieve closure commit 082ed6fdfc854e804845f4b2395eae194b0df73d were empty. These are limitations: no kernel claims can be made by the current source publication.

## 2. Exact original causal response bound

Use the literal if-at-birth response
 r_n(u)=2*((sqrt n)^(-1)-exp(-u/2)) if log n<=u, else 0.
The preexisting true positive-part identity from LiouvilleDoubleAbelAnalyticGates.lean, blob b4bd9a83c83603faa5eff5326d9a99ec35dae2d4, says for n>=1
 r_n(u)=2*max((sqrt n)^(-1)-exp(-u/2),0).
As exp(-u/2)>=0 and sqrt n>0,
 0<=r_n(u)<=2/sqrt n for EVERY real u.

For m,n>=1 and T>=0, the original causal Gram is the interval integral
 K_T(m,n)=integral_0^T r_m(u)r_n(u)du.
Thus pointwise 0<=r_m*r_n<=4/sqrt(mn). Pinned Mathlib intervalIntegral.norm_integral_le_of_norm_le_const yields
 |K_T(m,n)|<=4*T/(sqrt m*sqrt n).
Since |mu(k)|<=1 for the genuine original arithmetic Möbius function (pinned ArithmeticFunction.abs_moebius_le_one),
 |sourceKernel(T,m,n)|<=4*T/(sqrt m*sqrt n). (A)

The new authored Lean proof candidates pickupResponse_nonneg_le_two_root, pickupResponseGram_abs_le_root and sourceKernel_abs_le_root use exactly these source and pinned-library APIs, not a surrogate physical norm or an RH assumption.

## 3. Original fixed-cutoff ratio gate

For T>=4, the elementary sqrt property gives sqrt T<=T/2, so y:=T-sqrt T>=2. Set x=exp y. By Real.add_one_le_exp(y), x>=1+y>=3>=2.
For x>=2, Nat.lt_floor_add_one(x) implies
 x < floor x + 1,
 floor x > x-1 >=x/2.
Consequently, with D_*(T)=max(1,floor x),
 D_*(T)>=x/2, while N(T)=floor(exp T)<=exp T.
Since exp T=x*exp(sqrt T), dividing by positive D_*(T) yields exactly
 N(T)/D_*(T)<=2*exp(sqrt T). (B)

The new authored theorem fixedGcdRatio_proof supplies the PREEXISTING exact proposition FixedGcdRatioTarget. Its Lean body uses the checked pinned library names Real.sq_sqrt, Real.add_one_le_exp, Nat.lt_floor_add_one, Nat.floor_le, and div_le_iff₀. Compilation has not been executed.

## 4. Source-bound consumer with fewer arithmetic premises

The new authored endpointSum_le_fixedPlain_of_divisorCover_only consumes only DivisorCoverRootTailTarget (the genuine elementary positive multiples sum) and calls fixedGcdRatio_proof without an extra floor/ratio assumption.

For T>=4 the mathematical conditional bound is
 endpointSum(T)<=fixedPlainLowGcdCross(T)+32*T*exp(sqrt T)+1/4.
The still UNPROVED DivisorCoverRootTailTarget is the remaining finite source counting obligation in this elementary return, not a signed correlation premise. The latter is separate and RH-strength: PlainLowGcdEveryRateDyadic.

## 5. Finite diagnostics

Independent computations using actual original Mobius signs and closed birth-window causal Gram integrations at N=8,16,36,60, with fixed D_*(log N)=1,3,5,7, respectively, found:
 (N,D,absolute offdiagonal gcd>D,complete gcd>D including diagonal,positive all-divisors cover)
 (8,1,0.03491530,0.38838471,0.39076296)
 (16,3,0.02446105,0.15524859,0.15822087)
 (36,5,0.12792492,0.55513466,0.57356397)
 (60,7,0.19187470,0.60861477,0.63586591).
No sampled Gram entry exceeded the new pointwise upper (A); every positive divisor cover exceeded its actual original high-gcd absolute packet; all were below the 16*T*N/D root-tail allowance. These are numerical diagnostics, not certified interval arithmetic, kernel checks or asymptotic proofs.

## 6. Verification and next step

The Lean proofs in this publication are source proof candidates ONLY. The tool host has no local Lean/Lake/Elan installation, and no native Noe checkout. GitHub actions for the previous sieve closure commit showed zero workflow runs and zero commit statuses. No execution, scheduling or bypass was performed. The pinned environment is Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

Next compile these exact source bytes through an authorized Noe managed contract/profile, verify expected-type declarations, fresh kernel and axioms. On the mathematical side finish the finite positive divisible-multiples sum in DivisorCoverRootTailTarget and the genuinely open signed low-gcd arithmetic estimate. Neither is claimed proved here.
