# Geometric waveforms, source-extracted overlap, and arithmetic applications

Local mathematical attribution: grwtsk contributors.

## Scope and prior mathematics

Base: grwtsk/math@2645371d54bf02c1b6ab50f6111563304a6742b9. Lean v4.33.0; Mathlib db584cd6d46c92f209a44c0f1c829460d327499d. This increment extends the existing subject families through five additive leaves; it changes no old mathematical file, root import or dependency pin. The historical source/acceptance distinctions in rh-confluence-diffusion-reconciliation.md remain intact.

Starting objects are the actual normalized compact source and its translated Gram family in Analysis/InnerProductSpace/DilationGram.lean, and the strict prime-power expression in NumberTheory/Chebyshev/CorrelationPairing.lean. The existing concrete weak-derivative and polynomial-normalization proofs are reused. The separate pickup-energy route consumes the existing ResponseBudgetIdentification and good-scale implications. No new analytic RH return is requested or postulated.

All new declarations are SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay and complete transitive axiom audit: NOT_RUN. Mathematical formulas below describe the authored proof scripts and their elementary derivations, not a claim of executed Lean acceptance.

## 1. A normalization correspondence that can actually be completed

The Gram family defines its normalization by the squared integral of the actual residual. The original prime-pairing family prescribes the explicit rational polynomial Z(A). SourceWaveformComparison first proves, for positive A, equality of the concrete residual with the existing zero-extended explicit weak-derivative dilationTest, including both support endpoints. It then applies the existing evaluated polynomial integral to obtain, for A>=1:

integral |sourceResidual(A,x)|^2 dx = SourcePairing.sourceNormalization(A),
normalizedSource(A) = normalizedTest(explicitSecondDerivative,A),
correlation(A,t) = sourceCorrelation(explicitSecondDerivative,A,t).

No normalization is chosen to force agreement. The independent source definitions are compared using their actual formulas. This permits the earlier Gram theorems to be used on the original prime-power source without a new normalization hypothesis.

## 2. Shared geometric form

For a finite indexed family of real locations l_i and signed real weights c_i, and a measurable real profile q with integrable q^2, define

W(u)=sum_i c_i q(u-l_i),
K_q(l,r)=integral q(u)q(u-(l-r)) du.

TranslatedWaveform proves the full ordered Gram identity

integral W(u)^2 du = sum_i sum_k c_i c_k K_q(l_i,l_k).

Repeated locations retain their multiplicities through the index family. There is no coefficient-only energy substitution and no omitted mixed term. Taking l_n=log n and q=the existing normalizedSource is exactly the old weightedSource, not a new model.

For integrable q, the inherited positive-imaginary Fourier convention gives

F_+(W)(xi)=F_+(q)(xi) sum_i c_i exp(i xi l_i).

The finite sum/integral exchange has its integrability proof. Translation of every location by d intertwines exactly with W(u-d), and the full-line energy is unchanged. This does not make a fixed-observer signed pairing invariant. The generic additive-map theorem transports each of the core and both residuals separately; no heat semigroup or arithmetic heat intertwiner is asserted.

## 3. Exact three-part overlap, not assumed matching weights

For two finite mode sets S,T and complete atoms g_i,a_i in one additive carrier:

C = sum_(S intersect T) g_i,
R_G = sum_(S minus T) g_i,
R_A = sum_(T minus S) a_i + sum_(S intersect T)(a_i-g_i).

Then W_G=C+R_G and W_A=C+R_A. The core is anchored to the actual first-source atoms on the intersection. It is not an average; common labels do not assert common coefficients, positions or actions. Such mismatches are retained in R_A. This is a common-reference decomposition; on an intersection with unequal atoms, the shared form does not claim the two original numerical contributions are identical.

Any additive readout L satisfies

L(W_A)-L(W_G)=L(R_A)-L(R_G).

For the Hermitian norm-square readout:

||W_A||^2-||W_G||^2
 = 2 Re<C,R_A-R_G> + ||R_A||^2-||R_G||^2.

This computed defect is signed. Neither remainder is assumed orthogonal to the core or to the other remainder. The theorem applies to norm-square energy, not automatically to every indefinite operator form. A different readout must use its own polarization or source identity.

## 4. Logarithmic arithmetic spectrum and its convergence domain

LogarithmicWaveform uses Mathlib's exact LSeries.term, including its zero term at n=0. For n>0 it proves

a(n)/n^(sigma+it) = a(n) exp(-sigma log n) exp(-it log n).

Absolute summability is independent of t at fixed sigma. Under actual LSeriesSummable at sigma, a finite core plus the complementary subtype sum reconstructs the infinite waveform. Its tail is bounded by the full sigma-dependent sum of absolute damped coefficients. No uniformity as sigma approaches 1 is inferred.

Four concrete specializations directly reuse the pinned Mathlib:

- coefficients 1: zeta(s);
- coefficients mu: 1/zeta(s), including its nonvanishing prerequisite;
- coefficients vonMangoldt: -zeta'(s)/zeta(s);
- coefficients chi*vonMangoldt: -L'(s,chi)/L(s,chi), for positive modulus.

Each statement includes actual summability and sigma>1. The general finite geometric logarithmic synthesis has transform F_+(q)(xi) times the finite arithmetic spectrum at t=-xi. The minus sign is necessary because the source Fourier convention and Dirichlet phase conventions are opposite.

For a finite geometric spectrum on S and a convergent arithmetic spectrum, first use the literal overlap with a chosen finite arithmetic set T. The two finite residuals remain separate, and the infinite complement of T remains an additional arithmetic-tail term. The estimate keeps R_A-R_G signed before taking its norm.

## 5. Concrete prime-power application and reverse transfer

Let I(A) be the original strict inventory: 2<=n<=floor(exp(2A)), n<exp(2A). Define p_n=Lambda(n)/sqrt(n) and

W_A(u)=sum_(n in I(A)) p_n normalizedSource(A,u-log n).

The new source proves the original primePowerContribution equals

P(A)=integral normalizedSource(A,u) W_A(u) du.

Its complete energy equals the old weighted Gram sum with the actual p_n. Its finite Fourier transform is the profile transform times the finite Lambda spectrum at sigma=1/2, t=-xi. This is a finite identity, not a convergent infinite log-derivative expansion at the critical line. Every prime power retains log p, the sqrt weight and the original strict endpoint.

For an independently specified geometric support S and weights g, let G(A) be its readout against the same normalized source. The source computes both residual waveforms and proves their readouts are their actual integrals against that observer. Thus

P(A)-G(A)=r_A(A)-r_G(A).

Keeping the original archimedean term unchanged gives

Q_src(A)=[arch(A)-2G(A)] + 2[r_G(A)-r_A(A)].

A geometric model lower bound L and one-sided difference r_A-r_G<=D give Q_src>=L-2D. The converse comparison uses the opposite one-sided residual difference and the same factor two. The uniform theorem constructs the actual all-real lower-bound witness from uniform model/defect inputs. It does not supply these arithmetic inputs. No independent main term, deleted diagonal, smooth work or cutoff contribution is redefined by this identity.

## 6. Immediate diffusion into the existing packet consumers

For an existing source-matched PacketModel, its complete atoms are coefficients(T,i) times vectors(T,i). Applying the same overlap formula yields

U_geom(T)=tail(T)+||W_G(T)||^2+energyDefect(T)+error(T)
         =tail(T)+||W_A(T)||^2+error(T).

Compare the previous upper expression U_old=tail+G*A_coeff+error. The new exact identity computes the entire improvement:

U_old-U_geom=G*A_coeff-||W_A||^2 >= 0,

where the inequality is the already supplied weighted Gram theorem. This is a rigorous nonnegative allowance removed from the sufficient estimate, not a proven asymptotic saving or a claim that choosing geometry changes the exact energy.

The actual source identity and packet return give pickupCross<=U_geom. Old regional estimates for U_old remain usable; a smaller independently established estimate for U_geom can now be used directly. The new consumers reuse the established subexponential, energy-abscissa and canonical RH return, including the fixed finite portfolio with heterogeneous Hilbert spaces and scale regions. Regional constants combine by the existing maxima and affine-coverage transport, not by multiplying the source. No regional budget, coverage witness or arbitrary increasing-family uniformity is manufactured.

The historical reflected-source Q_src and the pickupCross family remain distinct. The source-normalization comparison above identifies the named compact profile/correlation, not an unproved equality between these two RH-facing observables.

## 7. Measured coverage, provenance and verification

Implemented applications: actual profile normalization and correlation; arbitrary-location Gram and Fourier synthesis; four convergent arithmetic coefficient specializations; exact finite/infinite overlap with both residuals; original primePowerContribution and sourceQuadraticValue; existing packet majorant, same-region estimate transport, good-scale consumer and finite regional cover. This is not an exhaustive claim about every module or historical unpublished proof.

No new external paper theorem was imported. This increment uses existing GRWTSK proof terms and pinned Mathlib declarations; their source correspondence is recorded in docs/reference/literature/reading-background/geometric-waveform-source-correspondence-20261027.md. The existing large paper ledger is preserved, not replaced or truncated. No historical influence is inferred from shared structure. The previously supplied RadicalLogEntropy.sum_log_primeFactors remains separate; it is not duplicated or used as a cancellation premise.

Executed preflight: 1755 exact mathematical assertions, 10 lexical/static checks, and 21 separately labelled high-precision checks at 65 decimal digits. Exact controls include overlap/mismatch, mixed terms, signed transfer, Schur slack, rational box-profile Gram geometry, actual polynomial normalization algebra and prime-power phase fixtures. High-precision checks use literal strict prime-power inventories at A=1,1.5,2 and actual polynomial correlations/Gram energy. The archimedean term in the assembly fixture is a synthetic scalar, not an evaluated archimedean integral. Neither infinite Dirichlet evaluation nor an asymptotic estimate was tested. Diagnostics do not execute Lean.

New compilation, independent kernel replay, complete transitive axiom audit: NOT_RUN. No lean/lake/elan executable is available on the inspected PATH. These statuses do not overwrite any older source-bound verification. Source pins, every declaration and requested commands are recorded in the passive manifest/issue. Operational diagnostics remain outside math; no runner or workflow was dispatched. Git publication uses the authenticated connector's configured identity; no author/committer override is claimed.
