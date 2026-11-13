# Native odd sine H2 spectral tails from the true second derivative

**Attribution:** grwtsk contributors. **Date:** 2026-11-13 (America/Los_Angeles).
**Exact maintained consumer:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilOddSineH2SpectralTail.lean.
**Proof status:** written analytic derivation and MANUAL_LEAN_SOURCE_PROOF_CANDIDATE. Lean elaboration/build/kernel/transitive axiom audit and independent mathematical review NOT_RUN. RH and Dirichlet GRH remain UNPROVED.

## 1. Identity and domain

The original project normalizes the zero-extended odd Dirichlet sine basis by

    s_n(t) = 1_[-T,T](t) * sin(pi*n*t/T)/sqrt(T), n >= 1, T > 0.

For a real odd f in C_c^2((-T,T)), let second=f'' be its genuine whole-line classical second derivative. Both f and f' vanish at t=±T (indeed in neighborhoods of those endpoints), so integration by parts twice creates NO boundary term:

    c_n(second) = integral_(−T)^T f''(t)*s_n(t)dt
                = - (pi*n/T)^2 * c_n(f).                 (H2-Green)

The compactly supported f'' is also real odd and L2, and the original repository's hasSum_source_sineCoefficient_sq (OddSineParseval) applies to f''. In Lean the precise identity (H2-Green) is the explicit SourceSecondSineGreen input: it is NOT silently constructed from an L2 hypothesis, and its real Sobolev/endpoint formalization remains to be done.

The source mode index is zero-based: sourceModeFrequency T i = OddOutputTrace.frequency T (i+1) = pi*(i+1)/T. Both functions are the actual existing source normalization, not new spectral eigenvalues.

## 2. Nonasymptotic finite fourth-moment bound

The source_sine_bessel theorem already present in WeilPhysicalSineNegativeReturn.lean supplies for every finite integer N

    sum_(i=0)^(N-1) c_(i+1)(second)^2 <= ||second||_2^2.

Substitute (H2-Green) with the original coefficients:

    sum_(i=0)^(N-1) lambda_(i+1)^4 * c_(i+1)(f)^2
        <= ||f''||_2^2.                                (H2-1)

The new Lean theorem finite_fourth_sine_bessel proves (H2-1), conditional only on the exactly named SourceSecondSineGreen (and actual odd L2 support of second). Neither source sign nor any infinite weighted Fourier completeness is assumed.

## 3. Finite high-frequency H1/L2 estimates

Let M be a finite retained dimension. For each N (including N<=M), define high sums of the original coefficients

    L_(M,N) = sum_(n=M+1)^N c_n(f)^2,
    D_(M,N) = sum_(n=M+1)^N lambda_n^2*c_n(f)^2,

with empty sums zero. Frequencies are positive and monotone, so for n>=M+1,

    lambda_(M+1)^4*c_n(f)^2 <= lambda_n^4*c_n(f)^2,
    lambda_(M+1)^2*lambda_n^2*c_n(f)^2 <= lambda_n^4*c_n(f)^2.

Summing these pointwise estimates and using (H2-1) yields FOR EVERY N

    lambda_(M+1)^4*L_(M,N) <= ||f''||_2^2,             (H2-2)
    lambda_(M+1)^2*D_(M,N) <= ||f''||_2^2.             (H2-3)

The new Lean theorem finite_high_mode_spectral_bounds proves both finite estimates on literal Fin N sums, without invoking a new completion theorem or an infinite spectral measure. Its corollary finite_high_derivative_tail_le exposes the exact positive-frequency denominator of (H2-3).

The numerator is the genuine physical L2 mass of second; the high derivative-weighted sum is *spectral*, NOT falsely identified with the physical gradient error by this file. Establishing that last equality requires additional Green/orthogonal cosine analysis.

## 4. Written completion to physical H1 convergence (not yet a Lean theorem)

For f real odd smooth compactly supported in (-T,T), f' is even and has mean zero:

    integral_(-T)^T f'(t) dt = f(T)-f(-T) = 0.

The nonconstant normalized cosine modes cos(pi*n*t/T)/sqrt(T), n>=1, form an orthonormal basis for even mean-zero L2((-T,T)). Integration by parts gives their coefficients of f':

    integral_(-T)^T f'(t)*cos(pi*n*t/T)/sqrt(T) dt
       = (pi*n/T)*c_n(f).

Thus the actual derivative of the finite sine synthesis has precisely the first M coefficients in the cosine basis. Parseval on this actual cosine basis gives

    ||f' - (P_M f)'||_2^2
       = sum_(n>M) lambda_n^2*c_n(f)^2.               (H2-4)

On the other hand, the already published WeilOddSineL2Projection.lean gives the exact physical L2 residual as the unweighted tail of the actual sine coefficients,

    ||f-P_M f||_2^2 = sum_(n>M) c_n(f)^2.              (H2-5)

Passing N->infinity through the monotone nonnegative finite sums in (H2-2)/(H2-3), and using (H2-4)/(H2-5), gives the classical quantitative estimate

    ||f-P_M f||_H1^2
       <= (lambda_(M+1)^(-4) + lambda_(M+1)^(-2))*||f''||_2^2.

This is EXACTLY the analytic estimate required by the existing WeilH1SineProjectionReturn.NativeH1ProjectionData for real compact smooth odd tests, with correct physical boundary conditions. The cosine Parseval and integration-by-parts formalization of (H2-Green)/(H2-4) have NOT been supplied as Lean proofs in this change; the SOURCE LEAN FILE only proves the finite spectral estimates from the specified Green input.

## 5. Independent source coefficient diagnostics

For T=1, f(t)=t*(1-t^2)^3 supported in [-1,1], f=f'=0 at both endpoints, and

    f''(t)=-18*t+60*t^3-42*t^5, for |t|<=1,
    ||f''||_2^2=1024/77=13.2987012987012987...

At 60-decimal mpmath precision, direct Lebesgue integration of c_n(f) and c_n(f'') for the first 24 original modes gave maximum |c_n(f'')+n²*pi²*c_n(f)| ≈6.22e-61.

For finite N=24, the following are the actual left sides of (H2-2)/(H2-3), both smaller than 1024/77:

| M | lambda_(M+1)^4 * L_(M,24) | lambda_(M+1)^2 * D_(M,24) |
|---:|---:|---:|
| 0 | 4.428767198050 | 6.057827091238 |
| 1 | 8.286830039414 | 8.587947082607 |
| 2 | 1.095860019404 | 1.164562244696 |
| 4 | 0.068408641406 | 0.076049081350 |
| 8 | 0.002801059077 | 0.003275316541 |
| 16 | 0.000093420090 | 0.000109724803 |

For the same test, the derivative cosine-Parseval residual at M=1,2,4,8,16 was below the bound ||f''||²/lambda_(M+1)² in every case. These are independent numerical sanity checks, not rigorous outward-rounded intervals or Lean kernel evidence. The f'' identity was checked directly at the same original source normalization; no alternative Fourier convention was used.

## 6. Exact remaining obligations

- **Now formalized at source-candidate level:** fourth weighted Bessel finite moment and all finite high-frequency L2/derivative-spectral tail bounds on the true sineCoordinates, assuming the named second-derivative sine Green identity.
- **Still needed for actual physical H1 convergence:** formal integration by parts proving SourceSecondSineGreen for the chosen smooth supported source domain and a physical cosine/derivative Parseval theorem yielding (H2-4). The original full Weil physical H1 mixed continuity is written in WeilH1SourceContinuity.md, but still unverified in Lean.
- **Still decisive for RH/GRH:** actual off-line zero -> exponentially negative real odd physical Weil tests at arbitrary large T, and global all-dimension cofinal subexponential arithmetic lower bounds for the ORIGINAL signed Weil forms. Neither premise is supplied by the present finite spectral bounds.

The source retains the actual zeta signed pole, character gamma/conductor and prime-power data in its downstream consumers; they are not touched here. Classical Fourier/Dirichlet Green identities are existing mathematics, with no novelty claim. No Noe proof automation, cross-chat messaging, scheduling, or background execution was invoked.
