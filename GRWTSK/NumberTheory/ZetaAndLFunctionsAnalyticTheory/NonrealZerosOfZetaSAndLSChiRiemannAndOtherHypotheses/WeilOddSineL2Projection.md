# Exact physical L2 convergence of the original odd sine projection

**Attribution:** grwtsk contributors. **Date:** 2026-11-13, America/Los_Angeles.
**Maintained Lean candidate:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilOddSineL2Projection.lean.
**Exact mathematical consumer:** the literal test-dependent H1 sine approximation obligation in WeilH1SineProjectionReturn.NativeH1ProjectionData, specifically its physical Lebesgue L2 component.

**Evidence:** COMPLETE_WRITTEN_MATHEMATICAL_ARGUMENT; MANUAL_LEAN_SOURCE_PROOF_CANDIDATE; LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_REVIEW_NOT_RUN. RH and Dirichlet GRH NOT PROVED.

## 1. Reuse the same source, not a replacement basis

For T>0, let

    s_n(t) = 1_[-T,T](t)*sin(pi*n*t/T)/sqrt(T), n>=1

be exactly OddRootProjection.zeroExtendedSine T n. For real f in L2(R), define its actual coefficient c_n=integral_R s_n(t)*f(t)dt and

    P_M f(t) = sum_(n=1)^M c_n*s_n(t).

The Lean candidate reuses source definitions sineCoordinates and OddSineForm.finiteSine without a different Fourier normalization, periodization, primitive-character averaging, or arbitrary projection. The source sine coefficient is exactly sineCoefficient in OddSineParseval.

Finite integrability/linearity gives

    integral_R f(t)*finiteSine(T,x)(t) dt
       = sum_(i<M) x_i*c_(i+1)(f).                            (L2-1)

This holds for arbitrary real L2 f, not only for odd functions.

The already present OddSineForm.integral_finiteSine_sq gives

    integral_R finiteSine(T,x)(t)^2 dt = sum_(i<M) x_i².         (L2-2)

Choose x_i=c_(i+1)(f). Expanding (f-P_M f)², using (L2-1)/(L2-2) and the genuine Lebesgue integrals, yields the EXACT residual identity

    integral_R (f-P_M f)^2 = integral_R f² - sum_(n<=M) c_n(f)². (L2-3)

The Lean source contains candidate proofs integral_cross_finiteSine and source_sine_L2_residual_identity from original source imports.

## 2. Strong physical L2 convergence, with correct domain

If f is also odd and identically zero outside [-T,T], the original OddSineParseval.hasSum_source_sineCoefficient_sq asserts

    sum_(n>=1) c_n(f)² = integral_R |f|².                    (L2-4)

The Mathlib HasSum.tendsto_sum_nat theorem gives convergence of these actual positive-coefficient partial sums to integral_R |f|². Substitution into (L2-3) proves the candidate theorem

    integral_R (f-P_M f)^2 -> 0 as M -> infinity.          (L2-5)

The integral is nonnegative, so its square root is precisely ||f-P_M f||_2 and also tends to zero. No ground-state, compact-resolvent or arithmetic positivity input occurs. Hypotheses are actual real L2 membership, pointwise oddness, exact support, and T>0. Oddness is NOT omitted.

**Hostile even-function model.** Let f(t)=1-t² on [-1,1] and 0 elsewhere. This nonzero supported even test has every c_n(f)=0 because sine is odd. Thus P_M f=0 for all M, and the residual energy remains integral_{-1}^1(1-t²)^2 dt=16/15, not zero. The exact odd hypothesis is therefore necessary for completeness of this particular odd basis; no whole-L2 convergence is claimed.

## 3. Independent 50-decimal residual checks

For the real odd compactly supported polynomial f(t)=t(1-t²)^3 on [-1,1] and zero elsewhere, exact polynomial integration gives total energy 2048/45045. Independently compute (1) the physical residual integral of (f-P_M f)² with mpmath quadrature and (2) E-sum c_n² from separately integrated original sine coefficients. At 50 decimal digits, these agree as follows:

| M | physical residual integral | independent Parseval tail | discrepancy |
|---:|---:|---:|---:|
| 1 | 0.005317028133603650406 | 0.005317028133603650406 | about 6.3e-53 |
| 2 | 0.0001388898708692855854 | 0.0001388898708692855854 | about 5.1e-53 |
| 4 | 0.000001123651378659894598 | 0.000001123651378659894598 | about 3.5e-53 |
| 8 | 0.000000004383151650366276 | 0.000000004383151650366276 | about 7.5e-53 |

The even-function c_3 diagnostic is zero to displayed precision, and its exact energy is 16/15. These computations are independent normalization corroboration, not validated interval arithmetic, proof assistant verification, or numerical evidence of Weil-form positivity.

## 4. Remaining H1 and RH/GRH obligations

Strong physical L2 convergence is NOT strong H1 convergence. For the Weil gamma jump energy, the infinite-frequency multiplier grows with frequency; an L2-small tail need not have negligible gamma energy. To finish the H1 estimate on the intended smooth odd source class one must still formalize:

1. The derivative spectral identity for the original Dirichlet sine basis, including the endpoint-zero conditions and second-derivative integration by parts.
2. Weighted Parseval for the derivative, giving the quantitative bound ||f-P_M f||_H1 <= sqrt(omega_M^-4+omega_M^-2)*||f''||_2, with omega_M=pi*(M+1)/T.
3. The actual physical Weil H1 mixed bilinear continuity inequality, including all gamma and prime powers, conductor/parity and both signed zeta pole orientations. The mathematical argument and constants are in WeilH1SourceContinuity.md, but do not yet constitute kernel-checked Lean declarations.
4. Fresh Lean elaboration, kernel replay and transitive axiom audit at the repository's Lean 4.34.1 / pinned Mathlib revision.

The remaining deeper off-critical-zero-to-negative-physical-source amplification and the cofinal all-dimension subexponential arithmetic lower sign are independent missing mathematics. Local positive certificates and the present L2 convergence do not prove those obligations. All native zeta, primitive character and root predicates are unchanged.

**Primary sources:** the original OddSineParseval.hasSum_source_sineCoefficient_sq, OddSineForm.integral_finiteSine_sq and integral_finiteSine_product, and OddRootProjection.sineCoordinates/zeroExtendedSine; the existing WeilH1SineProjectionReturn.lean and WeilH1SourceContinuity.md. Fourier/Parseval completeness is established earlier mathematics. No novelty or RH/GRH claim. No Noe proof automation, cross-chat messaging, scheduling or background execution was invoked.
