# Classical two-integration-by-parts return to native Weil sine coefficients

**Attribution:** grwtsk contributors. **Date:** 2026-11-13 (America/Los_Angeles).
**Maintained source:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilOddSineClassicalGreen.lean.
**Exact mathematical consumer:** OddSineH2SpectralTail.SourceSecondSineGreen and its genuine finite fourth-moment/derivative-tail consumers; subsequent H1 approximation in WeilH1SineProjectionReturn.
**Status:** complete written classical calculus proof, MANUAL_LEAN_SOURCE_PROOF_CANDIDATE. No Lean build, elaboration, fresh kernel checking, axiom audit or independent mathematical review performed. RH/GRH NOT PROVED.

## 1. Remove the preceding Green source supplier

The immediately previous WeilOddSineH2SpectralTail.lean assumes

    SourceSecondSineGreen T f second :=
      forall k, c_(k+1)(second) = -omega_(k+1)^2*c_(k+1)(f),

where c_n(g) is the ACTUAL source sineCoefficient defined with normalized zeroExtendedSine, and omega_n=OddOutputTrace.frequency T n=pi*n/T.

For T>0, let f, first, second be real functions satisfying

    forall t, HasDerivAt f (first t) t,
    forall t, HasDerivAt first (second t) t,
    Continuous second,
    f(-T)=f(T)=0.

These are direct classical C2 hypotheses with actual derivatives, not the Green identity itself. The source candidate proves both

    integral_(-T)^T [cos(omega_n*t)/sqrt(T)]*first(t)dt
        = omega_n*c_n(f),                                   (G1)

and

    c_n(second) = -omega_n^2*c_n(f).                        (G2)

The hypotheses require **NO first(-T)=first(T)=0**. They are therefore strictly weaker endpoint conditions for the Green equation than requiring f and first to vanish near both boundaries. Later, when a globally C2 source is zero-extended outside [-T,T], differentiability may itself force the stronger trace, but it is not used in this coefficient proof.

### Genuine integration by parts, twice

Let s_n(t)=sin(omega_n*t)/sqrt(T), k_n(t)=cos(omega_n*t)/sqrt(T) inside the window. Their classical derivatives are

    s_n'=omega_n*k_n,
    k_n'=-omega_n*s_n,

and s_n(-T)=s_n(T)=0 by sin(n*pi)=0. With f(-T)=f(T)=0, the pinned Mathlib lemma intervalIntegral.integral_mul_deriv_eq_deriv_mul gives

    integral_(-T)^T k_n(t)*first(t)dt
      = [k_n(t)*f(t)]_(-T)^T - integral_(-T)^T k_n'(t)*f(t)dt
      = omega_n*integral_(-T)^T s_n(t)*f(t)dt.             (G3)

Applied again to s_n and first,

    integral_(-T)^T s_n(t)*second(t)dt
      = [s_n(t)*first(t)]_(-T)^T - integral_(-T)^T s_n'(t)*first(t)dt
      = -omega_n*integral_(-T)^T k_n(t)*first(t)dt
      = -omega_n^2*integral_(-T)^T s_n(t)*f(t)dt.         (G4)

Each product is interval-integrable by classical derivative continuity and continuous sine/cosine factors. No extra term at either endpoint has been discarded. On the actual basis, the whole-line coefficients are equal to these interval integrals because zeroExtendedSine is the indicator of the same [-T,T] interval times s_n. The source Lean candidate states and proves this exact source conversion via sineCoefficient_eq_interval_modeSin, then returns (G1)/(G2) to SourceSecondSineGreen.

The proof uses real differentiation, the exact library IBP theorem at Mathlib pin d13f23b723b8a846827a245b89c10fc7d3f11612, and source-specific normalized sine moments. It neither assumes Fourier completeness nor produces a new operator or source L-function.

## 2. Same-source finite spectral bounds without a Green premise

Applying the new sourceSecondSineGreen_of_classical_C2 theorem to the already published finite_high_mode_spectral_bounds yields a direct consumer for actual C2 functions with the true second derivative: if second is real odd, L2, and supported in [-T,T], then for every finite retained M and finite total N,

    omega_(M+1)^4 * sum_(M<n<=N) c_n(f)^2
          <= ||second||_2^2,
    omega_(M+1)^2 * sum_(M<n<=N) omega_n^2*c_n(f)^2
          <= ||second||_2^2.

The previous SourceSecondSineGreen input is now constructed from classical derivative and endpoint conditions, rather than assumed in that consumer. The hypotheses on second still remain exactly those required to invoke the original odd sine Bessel inequality. There is no promotion to nonodd second derivatives or infinite-dimensional positivity.

## 3. Further H1 upgrade: variational route avoids a new cosine Parseval theorem

There is a shorter **written** route to the physical H1 projection error than formalizing cosine completeness separately.

For the real odd supported C2 f with f(±T)=0, put p=P_M f and e=f-p on (-T,T). Each actual normalized sine basis element vanishes at ±T, so e also has zero endpoint traces. By the already-established L2 coefficient projection/orthogonality,

    integral_(-T)^T e(t)*s_n(t)dt=0, 1<=n<=M.             (V1)

The physical derivative calculation INSIDE the interval is exact:

    p''(t)=-sum_(n=1)^M omega_n^2*c_n(f)*s_n(t).         (V2)

Consequently integral e*p''=0 by (V1). Integration by parts on e' gives

    ||e'||_2^2
        = - integral_(-T)^T e(t)*e''(t)dt
        = - integral_(-T)^T e(t)*f''(t)dt
        <= ||e||_2*||f''||_2.                            (V3)

Only Dirichlet endpoint zero is needed; p' itself need not vanish at the boundaries. The previously proved physical L2 residual equals the unweighted sine tail. Passing finite N->infinity in the new fourth-moment bound gives

    ||e||_2 <= ||f''||_2 / omega_(M+1)^2.                (V4)

Combining (V3) and (V4) gives the sharp physical gradient estimate

    ||e'||_2^2 <= ||f''||_2^2 / omega_(M+1)^2.            (V5)

Together with the squared L2 error it yields

    ||f-P_M f||_H1^2
      <= [omega_(M+1)^(-4)+omega_(M+1)^(-2)]*||f''||_2^2. (V6)

This argument is classical and avoids demanding a new complete cosine basis theorem. **V1-V6 are a WRITTEN continuation, not claimed to be Lean declarations in this change.** The exact remaining formal steps are the physical derivative IBP, finite projection orthogonality inside the window (supported by existing sine inner products), and the finite-tail limit at the true L2 residual. They are distinct from the now directly constructed SourceSecondSineGreen.

## 4. Hostile endpoint test and exact coefficient sanity check

Take T=1, f(t)=t*(1-t^2) as a globally defined cubic polynomial. Its interval boundary values vanish, but first(t)=1-3t^2 has nonzero first(-1)=first(1)=-2. The correct identity still holds:

    c_n(f) = -12*(-1)^n/(n^3*pi^3),
    c_n(second) = 12*(-1)^n/(n*pi),
    integral_(-1)^1 cos(n*pi*t)*first(t)dt
       = -12*(-1)^n/(n^2*pi^2).

These are exact by elementary integration and (G3)/(G4). At 55 decimal digits, independent mpmath evaluation for n=1,...,5 yields zero or less than 3e-56 residual for each tested coefficient relation. This sanity check specifically tests the nonzero endpoint-derivative case; it is NOT a numerical zero list, Weil-form sign test, proof by sampling or certified interval computation. For the globally defined polynomial, f and second are not L2 on R; only the coefficient Green theorem (which integrates against a compactly supported sine) is being tested, **not** the later whole-line Bessel consumer.

## 5. Verification boundary and next tasks

**Proposed Lean declarations:** modeSin/modeCos and their derivative/endpoint results; sineCoefficient_eq_interval_modeSin; cosine_derivative_coefficient; sourceSecondSineGreen_of_classical_C2; finite_high_mode_bounds_of_classical_C2. They operate directly in the original Weil sine namespace and preserve all original source definitions. The proof bodies use the true Mathlib intervalIntegral.integral_mul_deriv_eq_deriv_mul theorem, whose signature was inspected at the exact Mathlib revision.

**Evidence:** COMPLETE_WRITTEN_GREEN_PROOF; MANUAL_LEAN_SOURCE_CANDIDATE; EXACT_INTERVAL_FORMULAS_CHECKED; 55-DIGIT_COEFFICIENT_DIAGNOSTIC_NOT_CERTIFIED; LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_REVIEW_NOT_RUN; RH_NOT_PROVED; DIRICHLET_GRH_NOT_PROVED.

**Next source-specific formal obligation:** (V1)-(V6), preferably via the direct variational identity rather than separate cosine completeness, and the full original physical Weil gamma/prime/pole H1 mixed continuity. The deeper zero-orbit-to-negative-physical-source amplification and global cofinal original arithmetic lower sign remain entirely unresolved. Nothing here proves an off-critical zero exists or does not exist.

Attribution: grwtsk contributors; novelty unassessed. No Noe proof automation, browser workers, cross-chat messaging, scheduling or background runtime invoked. Canonical noe-proof-automation SKILL.md was unavailable at the current main snapshot, so no dependent formal proof-execution workflow was started.
