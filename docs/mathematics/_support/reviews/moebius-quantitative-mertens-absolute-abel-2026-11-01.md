# Classical quantitative Mertens input against the original sharp causal Abel envelope

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Classification: complete finite and elementary calculus mathematical argument; new Lean SOURCE_PROOF_CANDIDATE. The external Mertens theorem is an EXPLICIT proof premise, not an axiom or an imported kernel-proved result. No RH proof, new zero-free region or all-positive-rate signed source bound is claimed.

## 1. Pinning, source identity and external theorem classification

Initial inspected GRWTSK math main: a60b5815707417670d595e63f6496607366cd101. The prior current source at cedf6c48caabd9b2d92ec4e45da6355bee863d81 remains available. Toolchain leanprover/lean4:v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, root unchanged.

The original preserved coefficient is exactly CCC.moebiusReal(n), cast from Mathlib ArithmeticFunction.moebius n, with the three values -1,0,+1 (zero at squareful integers). The original finite prefix is M(n)=finiteMertensPrefix n, proved source-identical to CCC.mertensPrefix(n:ℝ) in MoebiusCausalMertensSquareBridge.lean (blob be156509d9679a22b52b32d087f87d8449a047ef). That same module defines, without proving, ClassicalMertensLogPowerInput:

  for every INTEGER A>=1 there exists a SINGLE C_A>=0 such that
  for every INTEGER n>=1,
       |M(n)| <= C_A*n/(1+log n)^A.                           (1)

A concurrent distinct source on current math main, MoebiusQuantitativeMertensEulerPrefix.lean (blob a3b95518661d541c9a13766466ba582109140fd1), defines the explicit finite-prime-bank `QuotientMertensLogPower A C` proposition for integer cutoffs floor(N/d) but REAL N/d denominators; MoebiusTwoCoordinateCausalAbel.lean (blob 03b2e02abcae65e9b07428d3ad2c81e65b2f5cbc) consumes it in signed rough/matched rectangles with independent finite Euler hypotheses. Neither declares or proves the complete all-n untagged `ClassicalMertensLogPowerInput` as an unconditional Lean theorem, and neither supplies the full physical-time single-coordinate sharp `absMertensDropWave` estimate derived here. The common classical Mertens input is a genuine mathematical dependency; the tagged rectangular and untagged whole-energy consumers are NOT redundant.

The newly published MoebiusCausalMertensSquareEnergyIntegration.lean (blob c01a1e892c14343aee002554172373e9190f6611) identifies the original full physical pickupEnergy with the finite original signed causal Gram integral and proves as source candidate the SHARPER energy inequality

  pickupEnergy(T) <= integral_0^T A_(floor exp T)(u)^2 du,
  A_N(u)=sum_(k=1..N)|M(k)| d_k(u),
  d_k(u)=r_k(u)-r_(k+1)(u)>=0.                               (2)

All original terminal births and both ordered cross terms remain included. In particular (2) is not the coarser Cauchy Mertens-square comparison.

The classical arithmetic source is distinct from the formalized endpoint. The modern external reference is Ethan Simpson Lee and Nicol Leong, "New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function", arXiv:2208.06141v5, revised 2026-09-09, https://arxiv.org/abs/2208.06141v5 and DOI https://doi.org/10.48550/arXiv.2208.06141. Its current v5 abstract gives bounds of the form x(log x) exp(-η (log x)^(3/5)(loglog x)^(-1/5)), and analogous classical-region bounds, not a universal particular numerical C_A. Such a bound implies (1) for each fixed A after paying small n by a larger constant. The relevant older classical exposition is A. Walfisz, Weylsche Exponentialsummen in der neueren Zahlentheorie (1963), §V.5 Satz 3. The logarithmic-power consequence is standard unconditional number theory, not an RH hypothesis or GRWTSK prior-art novelty. But it was NOT located as an already kernel-accepted theorem at this specific pinned Lean/Mathlib revision, and a full import of the external zero-free-region argument is NOT accomplished by this commit.

This new source imports the EXISTING proposition ClassicalMertensLogPowerInput and requires it as a named theorem parameter hClassical. There is NO new axiom, sorry, postulated instance or implicit unconditional theorem of (1). Consequently all formal conclusions below are CONDITIONAL LEAN SOURCE PROOF CANDIDATES, even though the arithmetic assumption (1) itself is independently established in ordinary mathematics.

## 2. Exact original response-drop first moment

The original causal response is r_n(u)=2max(n^(-1/2)-exp(-u/2),0) for positive integer n. Its source-specific nonnegative index monotonicity and continuity were already proved as candidate mathematical sources. Therefore

  0 <= r_n(u) <= 2/sqrt(n),
  d_k(u)=r_k(u)-r_(k+1)(u)>=0.

If r_(N+1)(u)=0 (the source horizon N=floor exp u has exactly this property), the FULL original drop telescope gives

  sum_(k=1..N)d_k(u)=r_1(u)<=2.                             (3)

For the first positive moment use exact discrete summation by parts with the constant coefficient 1:

  sum_(k=1..N) k d_k(u)
    =sum_(n=1..N) r_n(u)-N*r_(N+1)(u)
    =sum_(n=1..N) r_n(u).                                  (4)

The elementary reciprocal-square-root comparison
  1/sqrt(n+1) <=2(sqrt(n+1)-sqrt(n))
is true even at n=0, since sqrt(n+1)^2-sqrt(n)^2=1 and the square roots are ordered. Telescoping yields
  sum_(n=1..N) 1/sqrt(n)<=2 sqrt(N).
Thus the ENTIRE original first moment satisfies

  0<=sum_(k=1..N) k d_k(u)<=4 sqrt(N).                      (5)

No Möbius cancellation, auxiliary prime density, geometric port, future label deletion or spectral positivity is used in (3)-(5). The new source supplies candidate proofs of r_n upper, reciprocal-sqrt telescoping, the weighted-drop identity and (5).

## 3. EXACT arithmetic-to-sharp-Abel logarithmic transfer

Fix A>=1 and a SINGLE C_A satisfying the genuine source arithmetic hypothesis (1). Take any u>=0 and put H=exp(u/4). For each positive integer k:

- If k<=H, the trivial ORIGINAL bound |M(k)|<=k<=H holds.
- If k>H, then log k>u/4, hence (1+u)^A <=4^A(1+log k)^A; the CLASSICAL input gives
  |M(k)|<=4^A C_A*k/(1+u)^A.

Without excluding any index, both cases combine into

  |M(k)|<=exp(u/4)+4^A C_A*k/(1+u)^A.                      (6)

This is a rigorous, explicit uniform bound for all k with NO assumption about the sign of M(k). Multiply (6) by the original nonnegative d_k(u), sum over the COMPLETE N indices, and use the source identities (3)-(5):

  A_N(u)
    <=2 exp(u/4)+4^(A+1) C_A sqrt(N)/(1+u)^A             (7)

whenever the exact future response r_(N+1)(u) is zero. For the dynamically born inventory N_u=floor(exp u), sqrt(N_u)<=exp(u/2), so

  A_(N_u)(u)
    <=2 exp(u/4)+4^(A+1) C_A exp(u/2)/(1+u)^A.            (8)

The original larger fixed horizon N_T=floor(exp T) has exactly the SAME envelope at earlier 0<=u<=T: the k≥N_u terms satisfy r_(k+1)(u)=r_(k+2)(u)=0, so their original d_(k+1) vanish individually. Thus the source's full signed horizon is untouched:

  A_(N_T)(u)=A_(N_u)(u), for 0<=u<=T.                    (9)

Together (8)-(9) give the precise formal theorem
  classicalMertens_to_original_sharp_pointwise
with one C_A independent of T,u. The preceding theorem
  absMertensDropWave_le_logarithmicDropBudget
also makes the direct source-specific finite weighted sum apparent, rather than hiding the independent input in a fitted numerical norm. It retains the actual original coefficient at every integer.

## 4. Integrated consequence, exact current Lean scope, and scalar integral

Define a globally continuous real profile using the harmless positive extension 1+max(u,0) of the physical denominator:

  B_(A,C)(u)=2 exp(u/4)
     +4^(A+1) C exp(u/2)/(1+max(u,0))^A.

On the physical interval u>=0 this is EXACTLY the right side of (8). Its extension outside u>=0 is solely for continuous interval integrability; it is not a changed physical pickup source. The source theorem
  classicalMertens_to_sharp_original_energy_envelope
proves, AS A LEAN SOURCE PROOF CANDIDATE,

  ClassicalMertensLogPowerInput ->
    for every A>=1, exists one C_A>=0, for every T>=0,
      pickupEnergy(T)<=int_0^T B_(A,C_A)(u)^2du.          (10)

This is the requested quantitative arithmetic input attached to the SHARPER original absolute-prefix envelope, not the weaker Mertens-square Cauchy budget. It uses the PREVIOUSLY PUBLISHED source identification and original full signed Gram integration to identify the true physical energy; no new complete Gram or causal kernel is inserted.

The last elementary scalar integration is tracked as a SEPARATE named source PROP TimeProfileRateOneIntegralTarget and is NOT claimed as a new Lean checked theorem. A complete ordinary proof, with a concrete valid constant, is as follows. For A>=1,C>=0,T>=0 put D=4^(A+1) C. The scalar inequality (a+b)^2<=2a²+2b² gives

  B_(A,C)(u)^2 <=8 exp(u/2)+2D² exp(u)/(1+u)^(2A), u>=0.

Split J_A(T)=int_0^T exp(u)/(1+u)^(2A)du at T/2.
On [0,T/2], J_early<=exp(T/2); on [T/2,T], since 1+u>=(1+T)/2,
  J_late<=2^(2A)*exp T/(1+T)^(2A).
The elementary e^v>=1+v with v=T/(4A), together with 4A>=1, yields
  (1+T)^(2A)<= (4A)^(2A) exp(T/2),
so
  exp(T/2)<= (4A)^(2A) exp T/(1+T)^(2A).
Also int_0^T exp(u/2)du=2(exp(T/2)-1).
Therefore the following EXPLICIT positive constant suffices for the scalar target:

  K_(A,C) =16(4A)^(2A)
       +2*4^(2A+2)*C²*((4A)^(2A)+2^(2A)),

and for all T>=0,

  int_0^T B_(A,C)(u)^2du
     <= K_(A,C)*exp T/(1+T)^(2A).                          (11)

The term K_(A,C) is large but depends only on the fixed arithmetic A,C, not on N,T or any selected prime bank. Combining (10)-(11) and the original source identity pickupCross=pickupEnergy-pickupDiagonal with pickupDiagonal>=0 gives the classical rate-one arbitrary log-power conclusion for the entire original signed pickupCross. The new Lean theorem
  originalRateOneLogPower_of_classical_and_integral
spells out BOTH premises (ClassicalMertensLogPowerInput and the currently unproved TimeProfileRateOneIntegralTarget). It does not silently assert (11) or import an external PNT proof. Thus the remaining local Lean work is (i) a source-checked proof of elementary scalar (11) and (ii) a genuine proof/import of the classical quantitative arithmetic input. The source transfer between them is present as candidate code.

**No all-positive-exponent RH bound follows:** exp(T)/(1+T)^β remains exponentially larger than exp(δT) for any fixed δ<1 at large T. Even an accepted proof of (11) plus (1) would not prove RH.

## 5. Independent finite diagnostics and hostile controls

The independent Python/mPMath reference /mnt/data/mobius_quantitative_mertens_absolute_abel_preflight.py (SHA256 a70574c889fe1cbdc3892bb2486443d08485146aa0196e834916d0a457b04ebf) passed 16,129 high-precision finite checks across original Möbius signs, A=1,2,3,5,8, true 55-digit physical causal responses, 12 tested original integer horizons, 4 inside-horizon times, exact dropped-tail behavior and full finite physical energy at N=3,7,19,47. It checked (3)-(10) numerically and used an exact-integer Möbius sieve and original original causal response formula. The locally fitted C_A was computed ONLY over n<=420 for each A: it is NOT evidence that an independent fixed all-n C_A has been certified. No floating-point result is promoted to a kernel proof or a certified enclosure.

For N=47 at logarithmic terminal height, the original complete signed energy is approximately 0.7811724498284 and the existing sharper absolute-prefix energy bound is approximately 5.667231309869. The explicit profile bound constructed with a fitted local C is much larger (approximately 2298545.174238 for A=3). This is an expected nonsharp sufficient envelope, not a failed inequality. At N=1 the full causal energy and sharp envelope are zero. The final scalar profile bound was proved analytically in §4, not by these finite tests.

**Hostile test 1:** A bound obtained by choosing a different C_A for every observed N does NOT instantiate ClassicalMertensLogPowerInput: its existential C_A must precede the universal n quantifier. The source theorem preserves this order.

**Hostile test 2:** Plain PNT M(x)=o(x) does not on its own grant arbitrary logarithmic-power bounds. The stronger Vinogradov–Korobov/Walfisz input is separately required.

**Hostile test 3:** If one replaces the true Mertens M(k) by arbitrary noncancelling prefixes M(k)=k, (3)-(5) still hold but a UNIFORM classical logarithmic-power hypothesis cannot hold. The arithmetic saving is neither topological nor a consequence of positive Gram alone.

**Hostile test 4:** A hypothetical RH-equivalent M(k)=O(k^(1/2+δ)) would produce stronger decay via the sharp L1 envelope, but such an assumption is NOT the classical input and is not proved or smuggled into this result.

## 5a. Alternative single-kernel integral estimate (ordinary mathematics)

This derivative-free calculation avoids the early/late physical-time split and supplies a second explicit constant for the same scalar target; it is **NOT** a Lean proof term. Put B=2A>=2 and D=4^(A+1)*C. For all s>=0,

  1+s <= 2B*(1+s/(2B)) <= 2B*exp(s/(2B)),

by the elementary exp(x)>=1+x inequality. For 0<=u<=T and s=T-u,

  (1+T)/(1+u)=1+s/(1+u)<=1+s,

so

  exp(u)/(1+u)^B
    <= (2B)^B*exp(T)/(1+T)^B * exp(-s/2).

Integrating s from 0 to T yields the uniform convolution estimate

  int_0^T exp(u)/(1+u)^B du
    <= 2*(2B)^B*exp(T)/(1+T)^B.

Applying the same bound to s=T gives

  exp(T/2) <= (2B)^B*exp(T)/(1+T)^B.

Since (2exp(u/4)+D*exp(u/2)/(1+u)^A)^2
  <= 8exp(u/2)+2D^2*exp(u)/(1+u)^B,

and int_0^T exp(u/2) du <= 2exp(T/2), the complete scalar conclusion holds with

  K_alt(A,C)=(16+4*D^2)*(4A)^(2A),
  D=4^(A+1)*C.

The two explicit K choices in this review are independent valid ordinary
mathematical estimates; K_alt is designed to simplify the missing Lean
integration proof, not to optimize constants. This does not prove the
classical Mertens input, the all-positive-rate signed bound or RH.

### Source-level elaboration orientation correction

The newly rebased source proof candidate adds `symm` immediately before
`Finset.sum_subset hsubset` in
`absMertensDropWave_horizon_eq_dynamic`: the actual lemma states the
sum over the smaller set equals the sum over the larger set when added
terms vanish, while the goal has the opposite orientation. This is a
source-script correction, not a compiler pass; all Lean verification
facets remain NOT_RUN.

## 6. Precise acceptance and research frontier

The maintained source file is GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusQuantitativeMertensAbsoluteAbel.lean. It uses the same original three-valued arithmetic coefficients, original physical response, exact finite-index inventory, original Gram and complete signed pickupEnergy/pickupCross. New candidate source declarations include originalPrefix_logPower_of_classical, absMertensDropWave_le_logarithmicDropBudget, pickupResponse_le_two_inv_sqrt, invsqrt_range_sum_le_two_sqrt, weightedDropMoment_eq_response_sum_sub_terminal, weightedDropMoment_le_four_sqrt, original_prefix_early_late_logBound, absMertensDropWave_le_logPower_split, responseDrop_zero_of_future, absMertensDropWave_horizon_eq_dynamic, logPowerTimeProfile_continuous, classicalMertens_to_original_sharp_pointwise and classicalMertens_to_sharp_original_energy_envelope. A separately defined but UNPROVED elementary calculus target TimeProfileRateOneIntegralTarget and a proved CONDITIONAL two-input consumer originalRateOneLogPower_of_classical_and_integral remain explicit.

MATHEMATICAL FINITE AND ORDINARY SCALAR PROOFS WRITTEN. LEAN SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN. CLASSICAL_MERTENS_INPUT_UNVERIFIED_IN_LOCAL_LEAN; SCALAR_TIME_PROFILE_INTEGRAL_NOT_FORMALIZED; RH_SIGNED_ALL_POSITIVE_RATE_UNPROVED; CANONICAL_RIEMANN_HYPOTHESIS_UNPROVED. No native runner/CI/scheduler or proof-capsule automation was dispatched. Source no new axiom, sorry, root import or dependency pin change.
