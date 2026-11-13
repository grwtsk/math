# Native finite-sine return of negative physical Weil tests

Attribution: grwtsk contributors. Date: 2026-11-13 (America/Los_Angeles). 
Exact consumer: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilPhysicalSineNegativeReturn.lean.
Status: written analytic transfer and manual conditional Lean proof candidate. No RH/Dirichlet-GRH proof.

## 1. Source identity and the additional return

The earlier WeilAdaptiveAllModeGrowth.lean directly assumes an exponentially negative vector in the native finite sine matrix. The new formalization begins with a negative real odd physical source test f and the ORIGINAL sine coefficient vector

    x_i = integral_R [1_[-T,T](t)*sin(pi*(i+1)*t/T)/sqrt(T)]*f(t) dt.

The imported OddSineParseval.hasSum_source_sineCoefficient_sq establishes exact Lebesgue Parseval for real odd supported L2 f. The new Lean theorem source_sine_bessel applies the nonnegative partial-sum comparison, proving FOR ALL M:

    sum_(i<M) x_i^2 <= integral_R |f(t)|^2 dt.                 (1)

This is an unconditional source-basis statement, NOT an assumption about the sign of the Weil quadratic form. It avoids introducing an unproved normalization of a matrix eigenvector.

The complete real odd zeta physical value is defined from the EXISTING shiftedOddCoreEnergy T 0 f and the negative pole correction -2*(integral f(t)*sinh(t/2) dt)^2. Both signed pole orientations are therefore retained, not discarded. For primitive nonprincipal chi, the source is the gammaConstant(q,gammaParity chi) Lebesgue mass plus the full parityKernel translation energy minus every native activePrimePowers(T) contribution paired with real character weight pairedPrimeWeight chi n and BOTH translation orientations. There is no zeta pole in the latter sector. These are literal original source expressions, not positive graph comparisons. Source completion and exact L-function identification remain the prior analytical obligations.

## 2. The precise remaining analytic projection proposition

For a physical source Q_T and its exact finite sine matrix A_(T,M), the source-only condition NativeProjectedEnergyUpper says:

    for every epsilon>0, there exists M such that
    quadratic(A_(T,M), sineCoordinates T M f) <= Q_T(f)+epsilon.     (2)

It is NOT asserted for arbitrary L2 tests. The following derives (2) on the smooth compact odd H2 test class analytically from the source's H1 continuity and the exact matrix entry identity.

Let f be real odd smooth and compactly supported in (-T,T), T>0, and put

    s_n(t)=1_[-T,T](t)*sin(n*pi*t/T)/sqrt(T);
    f_M=sum_(n=1)^M <f,s_n>*s_n;
    omega=pi*(M+1)/T.

Twice integrate by parts, using f(+-T)=0 and the sine Dirichlet spectrum, and apply Parseval. The zero extension of f_M is H1 (its endpoint values are zero). For D=||f''||_2,

    ||f-f_M||_2 <= omega^(-2)*D,
    ||f'-f_M'||_2 <= omega^(-1)*D,
    e_M=||f-f_M||_H1 <= sqrt(omega^(-4)+omega^(-2))*D.      (3)

The published WeilH1SourceContinuity.md, Section IV, gives fixed-window H1 continuity for the genuine source. One valid nonnegative coefficient is

    C_chi,T = |gammaConstant(q,a)|+primeMass(T)
              +8*exp(-1/2)/(1-exp(-2))+7/12
              +(zeta ? 4*sinh(T) : 0).

In the supported H1 carrier the written source inequality is

    |Q_T(u)-Q_T(v)| <= C_chi,T*(||u||_H1+||v||_H1)*||u-v||_H1.   (4)

The exact finite algebra identity still required for a full Lean proof is

    Q_T(f_M) = quadratic(A_(T,M), coefficient_vector(f_M)).        (5)

This comes from expansion of the literal sine integrals for gamma, prime powers and the two signed zeta pole moments. Previous source modules contain the constituent product, shift, Bessel and pole identities. Full (4)--(5) in this exact combination is WRITTEN but NOT Lean kernel-checked; hence the new Lean interface deliberately keeps (2) as an explicit supplier rather than calling it proved. Equations (3)--(5) show Q_T(f_M)->Q_T(f), so the analytic return is valid on this specified smooth test class without a spectral gap or positivity assumption.

## 3. Explicit finite dimension preserving negative source energy

Suppose Q_T(f)<=-d with d>0, and put

    H=||f||_H1,  D=||f''||_2, C=C_chi,T>0,
    eta=min(1, d/(4*C*(2*H+1))).

Choose any M with

    pi*(M+1)/T >= max(1, sqrt(2)*D/eta).                  (6)

Since omega>=1, (3) gives e_M<=eta. The true H1 continuity (4) yields

    |Q_T(f_M)-Q_T(f)|<=C*e_M*(2*H+e_M)
                      <=C*eta*(2*H+1)<=d/4.

Therefore

    Q_T(f_M)<=-3*d/4<0.                                  (7)

Equation (5) identifies the negative value with the EXACT native finite matrix. The coefficient norm is at most the physical L2 norm by (1). In particular, if ||f||^2<=K and K>0 then the normalized matrix Rayleigh quotient is at most -3d/(4K); the vector is nonzero because its matrix value is negative. The new Lean theorem instead retains the RAW unnormalized vector, saving the need to construct an inverse square-root normalization in Lean.

## 4. Formal source-to-matrix and exponential-rate consequences

NegativePhysicalSourceFamily supplies for all sufficiently large cofinal supports T_j:
* a physical real odd L2 test f_j with correct support, ||f_j||²<=K;
* Q_(T_j)(f_j)<=-2*c*exp(a*T_j);
* the separately stated NativeProjectedEnergyUpper for that very source and test.

The Lean theorem negative_physical_to_bounded_raw uses epsilon=c*exp(a*T_j), the actual sineCoordinates, and theorem (1) to construct a native matrix vector of mass <=K and quadratic value <=-c*exp(a*T_j). The dimension can vary with the root, test, and stage.

The Lean theorem no_raw_sine_witness_above_budget_rate proves a contradiction with the PREVIOUS native all-dimension arithmetic lower budget whenever its logarithmic upper rate sigma satisfies sigma<a. Indeed the lower budget implies c*exp(a*T_j)<=B_j*mass<=B_j*K, while eventual dominance gives B_j<(c/K)*exp(a*T_j). No normalized vector is assumed.

physical_displacement_le_rate concludes the quantitative conditional result 2*b<=sigma for any off-critical root displacement b whose actual physical source supplies arbitrarily close exponents a<2*b. With sigma=0, the new conditional zeta RH, primitive nonprincipal DirichletCriticalLine and all-sector DirichletGRH consumers target the unchanged repository definitions. The principal primitive sector is kept as an explicit independent source supplier; the existing primitive reduction is reused.

**Unproved arithmetic facts remain exactly:** construct negative physical test families from each hypothetical off-critical zero with the true completed source, formalize (4)--(5) for those tests, and prove the all-M cofinal sublinear-log lower budget for the real original Weil forms. The present theorem proves none of those universally quantified source signs.

## 5. Independently checked smooth polynomial example

For the odd function f(t)=t*(1-t^2)^3 on [-1,1], zero outside, exact polynomial integrations give

    ||f||^2 = 2048/45045;
    ||f'||^2 = 3072/5005;
    ||f''||^2 = 1024/77.

At 65 decimal digits mpmath quadrature of the actual sine coefficients, with the Parseval difference used to compute the H1 error, gives:

| M | Retained L2 fraction | H1 projection error | RHS of (3) |
|---:|---:|---:|---:|
| 1 | 0.8830539393 | 0.4720723161 | 0.5877012877 |
| 2 | 0.9969451688 | 0.1151061623 | 0.3891028878 |
| 4 | 0.9999752857 | 0.0175881088 | 0.2326285559 |
| 8 | 0.9999999036 | 0.0020258353 | 0.1290576310 |
| 16 | 0.9999999997 | 0.0002026866 | 0.0682939038 |

The ten comparisons (finite coefficient mass <= true mass and H1 error <= RHS) passed with high precision. These are corroboration only, NOT certified intervals or Lean checks, and the sample is NOT a negative arithmetic Weil witness.

## 6. Evidence and primary sources

Original source consumers: WeilOddSineParseval.lean (source sine Parseval), WeilOddSineForm.lean (finite sine synthesis and L2 identity), WeilOddSineProjection.lean (literal source matrices), WeilOddHighComplement.lean (literal zeta gamma-minus-prime odd core), WeilH1SourceContinuity.md Section IV (written full physical H1 continuity), and WeilAdaptiveAllModeGrowth.lean (prior quantified exponential budget contradiction). The written off-critical selector and compactification appear in WeilOddRootProjection.lean and Noeaaeue 07-GLOBAL-RH-GRH-ROUTES.md, src.lower-growth, Sections 2--7.

External mathematics: Connes--Consani--Moscovici, Zeta Spectral Triples, arXiv:2511.22755v1 (3.19)--(3.20); Alain Connes, arXiv:2602.04022v1, Section 4.1; Suzuki, arXiv:2606.09096v3, Section 1.1 (Yoshida's odd-test criterion). Standard mechanisms: Fourier-Dirichlet H1 density, Parseval, Cauchy-Schwarz, strong Sobolev continuity and rational exponential comparison. No theorem-level novelty claim.

Assurance: MANUAL_LEAN_SOURCE_PROOF_CANDIDATE; ANALYTIC_PROJECTION_ARGUMENT_WRITTEN; BESSEL_SOURCE_PROOF_CANDIDATE; NEGATIVE_PHYSICAL_TO_RAW_PROOF_CANDIDATE; NUMERICAL_SAMPLE_PASS_NOT_CERTIFIED; LEAN_ELABORATION_NOT_RUN; FULL_BUILD_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN; UNIVERSAL_ARITHMETIC_SIGN_UNPROVED; ROOT_TO_NEGATIVE_SOURCE_UNPROVED; RH_NOT_PROVED; DIRICHLET_GRH_NOT_PROVED.

Canonical grwtsk/noeaaeue/noe-proof-automation SKILL.md was unavailable (GitHub 404) on main 7a904d11fb4d9495afd8bec89f108eeb1d686f10; no verified local checkout or Lean/Lake was present. No dependent proof automation, cross-chat messaging, scheduler or background job was invoked. Ordinary manual GitHub publication does not upgrade analytical or kernel assurance.
