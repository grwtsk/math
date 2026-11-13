# Classical source proof of the native odd-sine variational identity

**Attribution:** grwtsk contributors. **Date:** 2026-11-13 (America/Los_Angeles).
**Source candidate:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilOddSineVariationalIBP.lean.
**Exact consumer:** the prior WeilOddSineVariationalH1.NativeVariationalIBP and the sharp physical H1 projection theorem.
**Evidence:** COMPLETE_WRITTEN_CLASSICAL_ARGUMENT; MANUAL_LEAN_SOURCE_CANDIDATE; LEAN_ELABORATION_NOT_RUN; FULL_PINNED_IMPORT_BUILD_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_REVIEW_NOT_RUN; RH_NOT_PROVED; DIRICHLET_GRH_NOT_PROVED.

## 1. The original source and conditions

Fix T>0 and let f, first, second be real whole-line functions with first=f', second=f'', and second continuous. Assume f(-T)=f(T)=0 and f and first vanish pointwise outside [-T,T]. These conditions hold for genuinely compactly supported C2 source tests; the explicit first-support condition ensures the whole-line derivative residual has no exterior contribution.

The source's original sine is

    s_n(t) = 1_[-T,T](t)*sin(pi*n*t/T)/sqrt(T).

Its coefficient is the literal sineCoordinates. With c_n the coefficient of the n-th mode and w_n=pi*n/T, define smooth INTERIOR profiles:

    p(t)    = sum_(n<=M) c_n*sin(w_n*t)/sqrt(T),
    p1(t)   = sum_(n<=M) c_n*w_n*cos(w_n*t)/sqrt(T),
    p2(t)   = sum_(n<=M) -c_n*w_n^2*sin(w_n*t)/sqrt(T).

On the support interval these coincide with the ORIGINAL nativeProjection, nativeProjectedDerivative, and projectedSecondMode. Off the support the latter source functions vanish by definition. This distinction avoids differentiating a piecewise derivative profile at its boundary: the Mathlib derivative theorems are applied only to the smooth interior expressions.

## 2. The actual two derivatives and integration by parts

Finite-sum differentiation, using the exact sine/cosine derivatives and the pinned Mathlib HasDerivAt.fun_sum theorem, yields p'=p1 and p1'=p2 everywhere for the smooth interior profiles.

Let e=f-p, g=first-p1 and h=second-p2. Then e'=g, g'=h. The endpoint values e(-T)=e(T)=0 because f vanishes there and sin(±n*pi)=0 for every original retained sine mode. No independent endpoint condition on first is used in the integration by parts.

Mathlib intervalIntegral.integral_mul_deriv_eq_deriv_mul, with u=e, v=g, u'=g and v'=h, gives

    integral_(-T)^T e(t)*h(t)dt
      = [e(t)*g(t)]_(-T)^T
          - integral_(-T)^T g(t)^2dt
      = -integral_(-T)^T g(t)^2dt.                   (V-IBP)

This is the complete classical proof of the original variational identity on the interval. It is independent of cosine completeness, Weil positivity or zeros of L-functions.

## 3. Whole-line return, keeping support and source identity explicit

On the window [-T,T] the physical residual equals e, the physical derivative difference equals g and the physical second difference equals h. Outside the window, f and the actual zero-extended finite sine vanish, so the physical residual is zero; the actual derivative profile also vanishes outside and first is zero by hypothesis, so its squared physical derivative error vanishes there.

The candidate Lean helper wholeLine_integral_eq_interior checks BOTH these conditions: equality to an interior expression on the window and zero physical integrand outside. It converts the genuine whole-line Lebesgue integral into the finite interval integral without imposing global differentiability on the zero-extended trial.

Consequently V-IBP returns to the EXACT existing proposition

    NativeVariationalIBP T M f first second,

rather than to a new surrogate error notion. The new theorem nativeVariationalIBP_of_classical_supported has only original classical derivative, support, positivity of T, and zero endpoint premises.

## 4. Sharp H1 consumer and comparison

The previously published WeilOddSineVariationalH1 already proves the original source residual orthogonal to every finite sine direction, including the finite projected second derivative. It also derives the physical L2 fourth-moment rate from the actual source Parseval and finite spectral Bessel bounds, with no infinitely weighted Parseval input. Its completed-square estimate then gives the PHYSICAL H1 error inequality

    physicalL2Error(T,M,f) + physicalDerivativeError(T,M,f,first)
       <= (w^(-4)+w^(-2))* integral_R second(t)^2dt,
    w=pi*(M+1)/T.                                     (H1)

The new candidate physical_H1_error_of_classical_supported consumes the now constructed NativeVariationalIBP to deliver (H1) from actual classical hypotheses, supported odd f, and a supported odd L2 second derivative. Unlike the prior consumer, its theorem statement does NOT include a variational-identity premise or a separate L2 rate premise.

The mathematical route is classical Dirichlet Laplacian variational analysis on the unchanged original sine basis. It does not derive positivity of the signed arithmetic Weil form from H1 convergence; the original gamma/prime/pole form must be addressed separately.

## 5. Hostile boundary and independent direct checks

**Missing endpoint trace causes failure.** On [-1,1] consider the piecewise function f(t)=t, first(t)=1, second(t)=0 in the open interval and zero outside, with M=0. Its physical derivative energy equals 2 while minus the pairing with second equals 0. The omitted boundary term [f*f']_(-1)^1=2 accounts for the difference. This example is deliberately outside the theorem's globally differentiable zero-endpoint domain; it explains why one cannot omit its boundary hypotheses.

For a genuine supported real odd C2 test, use f(t)=t*(1-t^2)^3 on [-1,1], zero elsewhere. Its derivatives match continuously at the endpoints; exact polynomial integration yields

    integral f^2 = 2048/45045,
    integral (f')^2 = 3072/5005,
    integral (f'')^2 = 1024/77.

Independent 45-digit mpmath quadrature with the literal normalized sine modes gives the following physical first-derivative errors and rate ratios:

| M | Physical derivative squared error | w^2 * error / (1024/77) |
|---:|---:|---:|
| 0 | 0.61378621378621 | 0.4555202031 |
| 1 | 0.21753524346824 | 0.6457733723 |
| 2 | 0.013110538718912 | 0.08756963929 |
| 4 | 0.00030821791887003 | 0.005718582703 |
| 8 | 0.0000040996254361044 | 0.00024644483 |

At working precision, directly integrated derivative squares agreed with separately integrated minus-residual/second-difference pairings for each M. Every reported derivative ratio and the corresponding physical L2 fourth-moment ratio is below 1. These numerical checks corroborate normalization and signs only; they are NOT certified intervals, a kernel check or Weil-form arithmetic evidence.

## 6. Exact verification and missing mathematics

The candidate's source argument is complete on the declared classical supported C2 domain, but the generated Lean declarations have NOT been compiled or kernel checked against pinned Lean 4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Imported earlier candidate theorems retain their own unverified status, and a successful Git publication is not evidence of proof acceptance.

**Next analytic obligation:** the full fixed-window Weil physical form H1 continuity (true archimedean gamma jump kernel, conductor and parity, every active prime power, and both signed zeta pole orientations), as written but not formally checked in WeilH1SourceContinuity.md.

**Deep RH/GRH obligations still completely open:** (1) an actual off-critical completed L-function zero yielding exponentially negative original-source real odd physical Weil tests with all zero-orbit/tail allowances; (2) an unbounded cofinal all-dimension subexponential lower budget for the original signed arithmetic Weil forms. This ordinary Sobolev/Fourier theorem does not solve either.

No Noe proof automation, browser worker, cross-chat messaging, scheduling or background runtime was invoked. Novelty not asserted.
