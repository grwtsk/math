# Variational physical H1 projection return for the original Weil odd sine source

**Source attribution:** grwtsk contributors. **Date:** 2026-11-13 (America/Los_Angeles).
**New Lean source:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilOddSineVariationalH1.lean.
**Mathematical consumer:** WeilH1SineProjectionReturn.NativeH1ProjectionData, on exactly the original zero-extended sineCoefficients/finiteSine and zeta or primitive nonprincipal paired-character physical Weil forms.

**Evidence:** COMPLETE_WRITTEN_CLASSICAL_VARIATIONAL_ARGUMENT; MANUAL_LEAN_SOURCE_PROOF_CANDIDATE; LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN. RH AND DIRICHLET GRH NOT PROVED.

## 1. The original projection and a new unconditional orthogonality return

Fix T>0 and any real whole-line L2 test f. Let s_n(t) be exactly OddRootProjection.zeroExtendedSine T n, and c_n=OddSineParseval.sineCoefficient T f n. Put

    p_M = sum_(n=1)^M c_n * s_n,
    e_M = f - p_M.

The new theorem finiteSine_cross_eq_dot uses the source's exact sineCorrelation_self_zero and sineCorrelation_zero_shift and finiteSine_product integral, proving

    integral_R finiteSine(T,x)*finiteSine(T,y)
        = sum_(i<M) x_i*y_i.                              (V1)

OddSineL2Projection.integral_cross_finiteSine supplies

    integral_R f*finiteSine(T,y)=sum_(i<M) y_i*c_(i+1).   (V2)

Subtracting these exact original-source equalities proves (with no oddness or arithmetic hypothesis)

    integral_R e_M*finiteSine(T,y)=0
    for EVERY finite coefficient vector y of dimension M.     (V3)

The candidate Lean theorem nativeResidual_orthogonal_finiteSine gives this genuine physical orthogonality. It applies in particular to the original projected second derivative combination

    p_M,second = sum_(n<=M) -(pi*n/T)^2*c_n*s_n.

Thus integral_R e_M*p_M,second=0. This step is not a claim that a replacement matrix is positive: it is ordinary exact L2 Fourier orthogonality for the original sine modes. The candidate def projectedSecondMode is an actual finiteSine with those coefficients.

## 2. Physical first-derivative profile and precise remaining variational IBP

For T>0, define each interior derivative mode by

    d_n(t) = 1_[-T,T](t)*(pi*n/T)*cos(pi*n*t/T)/sqrt(T),

where endpoint values have no effect on Lebesgue integrals. The true finite-sine derivative profile is p_M,first=sum_(n<=M)c_n*d_n. On each open subinterval of (-T,T), d_n is the classical derivative of s_n. Define

    L_M = integral_R (f - p_M)^2,
    G_M = integral_R (first - p_M,first)^2.

If first=f' and second=f'' with sufficient support and C2 regularity, G_M is the genuine squared physical H1 derivative error; this Sobolev-domain identification is NOT proved by a definition.

The remaining source-specific variational equation is

    G_M = -integral_R e_M*(second - p_M,second).          (V4)

It follows analytically from integration by parts for e_M with e_M(±T)=0: integrate the derivative square as minus the inner product against e_M'', with e_M''=second-p_M,second in (-T,T). For f a supported real odd C2 test, this is a legitimate classical interval identity. The Lean file retains V4 as the explicit NativeVariationalIBP premise; it does not infer it from L2 data or an arbitrary error budget. Using (V3), a new candidate Lean theorem physical_variation_eq_neg_source_second simplifies V4 to

    G_M = -integral_R e_M*second.                        (V5)

No cosine-Parseval theorem is needed.

## 3. The L2 tail RATE is returned from the previous genuine Fourier source

Previous source results:
- WeilOddSineL2Projection.source_sine_L2_residual_identity proves L_M = integral f² - sum_(n<=M)c_n².
- WeilOddSineParseval.hasSum_source_sineCoefficient_sq proves sum_(n>=1)c_n² = integral f² for real odd supported L2 f.
- WeilOddSineH2SpectralTail.finite_high_mode_spectral_bounds proves, under SourceSecondSineGreen, for every finite N and w=pi*(M+1)/T,

    w^4 * sum_(M<n<=N)c_n² <= integral_R second².       (V6)

For N>=M the high finite sum is exactly the difference between the original first-N and first-M coefficient partial sums. Take N->infinity in (V6), using the genuine HasSum convergence and the closed order inequality. The nonnegative partial sum bounds pass to the physical residual:

    w^4 * L_M <= integral_R second².                    (V7)

The new candidate theorem physical_L2_fourth_moment_rate expresses this step. It is an actual original-source derivation, not a new L2 rate premise. SourceSecondSineGreen itself is supplied for classical tests by WeilOddSineClassicalGreen.sourceSecondSineGreen_of_classical_C2 (also presently an uncompiled Lean candidate).

## 4. A square-completion proof of the sharp PHYSICAL derivative bound

For any real L2 e and second, and any w>0, the pointwise nonnegative square

    (w²*e(t) + second(t))² >= 0

integrates to

    0 <= w^4*integral e² +
         2*w²*integral e*second + integral second².    (V8)

All products are integrable by the physical L2 hypotheses; no square-root normalization, complex coercion, or conditional gamma sign is used. Combine (V5), (V7) and (V8):

    0 <= (integral second²) - 2*w²*G_M
           + (integral second²),

so

    w²*G_M <= integral_R second².                        (V9)

The new candidate physical_gradient_young_bound formalizes this exact weighted-square argument, and physical_H1_error_le_of_green_and_variational combines it with (V7). The actual claimed estimate (within its declared analytic source assumptions) is

    L_M + G_M <= (w^(-4)+w^(-2))*integral_R second².     (V10)

The final candidate physical_H1_error_le_of_classical_C2_and_variational replaces SourceSecondSineGreen with the *true* first and second derivative and endpoint hypotheses in WeilOddSineClassicalGreen. At that point the remaining unproved physical analytic premise is exactly V4: NativeVariationalIBP, rather than separately assumed L2 and derivative-rate budgets. The gamma/prime/pole continuity bound remains independently necessary to transfer H1 convergence to Weil-form convergence.

## 5. Independent numerical checks of the whole physical identity

Take T=1 and f(t)=t(1-t²)^3 for -1<=t<=1, zero otherwise. Its first/second derivatives are continuous on the line and the endpoint traces of f and f' are zero. Exact polynomial integration gives

    integral_R f² = 2048/45045,
    integral_R (f')² = 3072/5005,
    integral_R (f'')² = 1024/77.

Compute c_n by independently integrating the true normalized original sines (T=1), construct p_M and its true cosine first derivative and sine second derivative, then calculate physical L_M, G_M, the variational discrepancy G_M+integral e_M*(second-p_M,second), and the orthogonality integral e_M*p_M,second. At 65 decimal digits:

| M | L_M | G_M | w^4 L_M / ||f''||² | w² G_M / ||f''||² |
|---:|---:|---:|---:|---:|
| 0 | 0.045465645466 | 0.613786213786 | 0.333022533 | 0.455520203 |
| 1 | 0.005317028134 | 0.217535243468 | 0.623130774 | 0.645773372 |
| 2 | 0.000138889871 | 0.013110538719 | 0.082403537 | 0.087569639 |
| 4 | 0.000001123651 | 0.000308217919 | 0.005144011 | 0.005718583 |
| 8 | 0.000000004383 | 0.000004099625 | 0.000210643 | 0.000246445 |

Every displayed ratio is less than 1. Direct quadrature gives |G_M+integral e_M*(second-p_M,second)| below 2e-65 for these M and |integral e_M*p_M,second| below 4e-66. This is an independent **noncertified numerical sanity check** of normalization and variational signs; it is NOT a passing formal proof, an arithmetic Weil positivity certificate, or evidence of an off-critical zero.

### Hostile boundaries

Oddness is needed for the full L2 Parseval tail but not for finite-mode residual orthogonality. If f is even and not zero, the odd sine basis does NOT approximate f at all; no all-L2 convergence is asserted. Smoothness/zero endpoint traces are needed for V4: a discontinuous hard cutoff has no H1 weak derivative profile to justify integration by parts. The positive gamma jump energy and the signed zeta pole/prime-power terms remain in the true Weil form, not inside the elementary H1 estimate.

## 6. Evidence status and outstanding research-level problems

**What the new Lean candidate provides:** exact original finite-mode cross orthogonality, original projected-second orthogonality, a real-L2 weighted-square inequality, physical L2-rate return via previously sourced finite fourth moments and actual sine Parseval, and the H1 error bound with only the explicitly stated NativeVariationalIBP premise (plus actual classical C2/odd/support source conditions). Full Lean elaboration and kernel certification have NOT been performed; the candidate is not an accepted formal theorem.

**Immediate formal task:** prove NativeVariationalIBP directly by derivative of the original finite sine synthesis and pinned Mathlib intervalIntegral.integration-by-parts, with true support and endpoint traces; then verify actual H1 continuity of the zeta and primitive paired-character physical forms, all gamma parity/conductor terms, all active prime powers, and BOTH signed zeta pole orientations.

**Decisive open RH/GRH mathematics:** produce source-exact exponentially negative physical tests from any hypothetical off-critical zero with all tails charged and appropriate L2/H2 control, and prove a cofinal all-dimension subexponential signed arithmetic lower bound for the original Weil matrices. Neither is obtained here. The finite-sine H1 estimate alone is not an RH/GRH proof.

Primary maintained sources: WeilOddSineProjection, WeilOddSineForm, WeilOddSineParseval, WeilOddSineL2Projection, WeilOddSineH2SpectralTail, WeilOddSineClassicalGreen, WeilH1SineProjectionReturn and WeilH1SourceContinuity.md. Standard classical analytic input: real Hilbert-space orthogonal projection, integration by parts and Parseval. No novelty asserted. No Noe proof automation, cross-chat messaging, scheduler, browser worker or background execution invoked.
