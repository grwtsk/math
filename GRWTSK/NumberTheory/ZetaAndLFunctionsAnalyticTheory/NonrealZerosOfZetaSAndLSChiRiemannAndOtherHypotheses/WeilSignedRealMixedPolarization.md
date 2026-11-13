# Exact real signed Weil H1 continuity from quadratic polarization

**Mathematical source:** grwtsk contributors, November 13, 2026 (America/Los_Angeles).
**Maintained Lean candidate:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilSignedRealMixedPolarization.lean.
**Exact consumers:** the original real odd zeta physical form PhysicalSineNegativeReturn.zetaOddPhysicalValue; the primitive nonprincipal REAL conjugate-pair form PhysicalSineNegativeReturn.primitivePairedOddPhysicalValue; and the earlier WeilH1SineProjectionReturn.NativeH1ProjectionData continuity obligation for smooth supported real odd tests.

**Evidence:** COMPLETE_WRITTEN_REAL_CLASSICAL_PROOF; MANUAL_LEAN_SOURCE_CANDIDATE; LEAN_ELABORATION_NOT_RUN; FULL_PINNED_IMPORT_BUILD_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN. RH/Dirichlet GRH NOT PROVED. Novelty unassessed.

## 1. Actual source, not a positive comparator

At a fixed T>0, let f,g be real globally classical C1 functions with real L2 functions and first derivatives. For zeta they are supported in [-T,T]; the primitive paired source does not need support for the stated global mixed bound (though the eventual original sine projection uses supported tests). Put E(f)=int_R f(t)^2dt, D(f)=int_R f'(t)^2dt and N(f)=sqrt(E(f)+D(f)).

The unchanged real primitive paired form for genuine primitive nonprincipal chi modulo q uses:
- original gammaConstant(q,gammaParity chi),
- the original real mixed parityKernel(gammaParity chi,r) physical shift integral,
- every n in activePrimePowers(T) with the **signed** coefficient primeWeight(n)*Re(chi(n)),
- BOTH source correlations at +log n and -log n,
- no artificial pole in the primitive nonprincipal source.

The unchanged real odd zeta form uses gammaConstant(1,0), realMixedGammaEnergy(0,f,g), the original untwisted two-orientation primeWeight inventory and the original **NEGATIVE** odd pole -2*m(f)*m(g), m(f)=int_R f(t)*sinh(t/2)dt, whose compact support was proved essential in WeilExactZetaPoleH1.

Write the true real symmetric mixed sources, using the exact definitions from WeilSignedMixedPrimePoleH1.lean:

    B_pair,chi,T(f,g) =
      gammaConstant(q,a)*int_R f*g
      + realMixedGammaEnergy(a,f,g)
      - pairedMixedPrimeResponse(chi,T,f,g),

    B_zeta,T(f,g) =
      gammaConstant(1,0)*int_R f*g
      + realMixedGammaEnergy(0,f,g)
      - zetaMixedPrimeResponse(T,f,g)
      - 2*m(f)*m(g).

The previous source showed the exact diagonal identities

    B_pair,chi,T(f,f)=primitivePairedOddPhysicalValue chi hp hn T f,
    B_zeta,T(f,f)=zetaOddPhysicalValue T f.                  (S1)

This module keeps them unchanged and completes the real source bilinearity/polarization argument, preserving the real primitive pair versus complex individual character distinction.

## 2. Source-level real bilinearity, no secret improper integral

The preceding gamma module established absolute integrability of genuine mixed parity-weighted shift densities for classical real H1 pairs by original diagonal gamma polarization. This permits real mixed gamma additivity. Specifically, for each fixed r, the products of shifted differences are L1 by genuine L2 membership, so

    int_R Delta_r(f+g)*Delta_r h =
      int_R Delta_r f*Delta_r h + int_R Delta_r g*Delta_r h.

Multiplying by the original K_a(r) and integrating over positive r is valid since every mixed gamma density is now integrable. Thus

    Gamma_a(f+g,h)=Gamma_a(f,h)+Gamma_a(g,h),
    Gamma_a(cf,g)=c*Gamma_a(f,g)                               (S2)

for real scalar c. The second is proved in the preceding mixed gamma source; the first is new in this candidate. Real symmetry returns second-leg additivity without any complex-Hermitian inference.

For the original signed prime inventory the source already had realCrossCorrelation_add_left/add_right and paired/zeta MixedPrimeResponse_add_left/add_right. The new module proves the scalar law

    P_chi,T(cf,g)=c*P_chi,T(f,g),
    P_zeta,T(cf,g)=c*P_zeta,T(f,g)                       (S3)

directly from Lebesgue integral_const_mul and the unchanged finite sum. There is no pointwise replacement of negative paired weights with their absolute values.

For zeta, the original compact-support window makes the sinh pairing truly integrable. If f,g are both supported in [-T,T], the exact source profile h_T=1_[-T,T]sinh(t/2) and L2 product integrability yield

    m(f+g)=m(f)+m(g),  m(cf)=c*m(f).                    (S4)

The second equation holds for every real c, including zero and negative c, without dividing by source mass. The mixed zeta pole Z(f,g)=2*m(f)m(g) is consequently symmetric and bilinear, but it remains SUBTRACTED in B_zeta.

Combining (S2)-(S4) with ordinary real L2 pairing linearity proves the additivity, scalar homogeneity and real symmetry of the exact full B_pair and supported B_zeta. No new gamma kernel, spectral matrix, character phase, artificial positivity or source-averaging operation is inserted. On arbitrary non-H1 or nonsupported real functions these conclusions are NOT claimed; Lebesgue integrability and source support are genuine hypotheses.

## 3. Both original physical quadratic difference and polarization identities

A real symmetric bilinear form satisfies

    B(f+g,f-g)=B(f,f)-B(g,g).                            (S5)

Using the exact source diagonal returns (S1), the new candidate derives the genuine REAL primitive paired and odd zeta physical identities

    Q_pair,chi,T(f)-Q_pair,chi,T(g) =
      B_pair,chi,T(f+g,f-g),

    Q_zeta,T(f)-Q_zeta,T(g) =
      B_zeta,T(f+g,f-g).                                 (S6)

The signed zeta pole term and all prime-power orientations contribute on BOTH sides. Conversely, using the same real bilinearity gives

    4*B(f,g)=Q(f+g)-Q(f-g).                              (S7)

The Lean source contains direct source-candidate declarations primitiveRealPhysical_difference_eq_mixed, zetaRealPhysical_difference_eq_mixed, primitiveRealMixedWeil_eq_quadratic_polar, and zetaRealMixedWeil_eq_quadratic_polar. These are not abstract assumptions on a new B; their statements refer to the unchanged previously published original Weil physical values.

## 4. The decisive indefinite-form bound from diagonal H1 estimates

The existing source diagonal estimates prove that, on the intended classical source domain,

    |Q_pair,chi,T(f)| <= U_pair(f),
    |Q_zeta,T(f)| <= U_zeta(f),                         (S8)

with the exact weighted H1 budgets

    U_pair(f) = A_pair*E(f) + alpha*D(f),
    A_pair = |gammaConstant(q,a)|
             + primeMass(T)
             + 2*ExactGammaTail.tailUpper(a,1),
    a=gammaParity chi,

    U_zeta(f) = A_zeta*E(f) + alpha*D(f),
    A_zeta = |gammaConstant(1,0)|
             + primeMass(T)
             + 2*ExactGammaTail.tailUpper(0,1)
             + 2*(sinh(T)-T),

    alpha=7/12.                                          (S9)

All source constants are nonnegative and fixed for a given T and chi. The supported zeta coefficient is the EXACT sharp sinh L2 pole allowance; it is not a generic nonoptimal 4sinh(T) replacement or a sign cancellation. A and alpha can depend on T and q: nothing uniform over increasing windows is assumed.

The new source provides real physicalMass_parallelogram, physicalMass_scale, physicalWeightedBudget_parallelogram and physicalWeightedBudget_scale using the actual whole-line real Lebesgue E and D.

Now fix f,g. By (S7), triangle inequality and (S8), for EVERY real scalar s,

    4*|s B(f,g)|
       = |Q(sf+g)-Q(sf-g)|
       <= U(sf+g)+U(sf-g)
       = 2*(s^2*U(f)+U(g)).                             (S10)

The last equality is the actual H1 Pythagorean parallelogram, applied separately to f and its original first derivative. Importantly, sf±g remain in the same classical source class; for zeta they stay in the same supported window.

Thus

    2*|s B(f,g)| <= s^2*U(f)+U(g).                      (S11)

For a real indefinite B this remains true: the absolute source diagonal budget, not positivity of Q, is doing the work. Set A=U(f)>=0, C=U(g)>=0, b=B(f,g). The right side of (S11) implies that s^2*A+2s*b+C>=0 for every real s. If A=0, choosing s with opposite sign to b forces b=0. If A>0, evaluate at s=-b/A. The discriminant is nonpositive, so

    B(f,g)^2 <= U(f)*U(g).                              (S12)

No division by E(f), no spectral-positivity assumption, and no separate gamma/prime/pole mixed Cauchy estimates are required. The new **LOCAL source-level** lemma physical_mixed_sq_le_of_scaled_diagonal proves the elementary real discriminant argument, with exact physical weighted H1 mass and derivative mass. It deliberately asks for source diagonal bounds only on sf±g rather than assuming a bounded form on all of L2.

The new Lean source-candidate specializations

    primitiveRealMixedWeil_sq_le_H1_budget,
    zetaRealMixedWeil_sq_le_H1_budget

consume the EXISTING actual source diagonal estimates and the new actual source bilinearity. Their statements are exactly (S12), with coefficients (S9), rather than assumptions of the desired mixed H1 product bound.

## 5. Quantitative genuine REAL fixed-window physical H1 continuity

Apply (S12) to f+g and f-g, using (S6). This yields the new final Lean-source candidate statements

    (Q_pair(f)-Q_pair(g))^2
         <= U_pair(f+g)*U_pair(f-g),

    (Q_zeta(f)-Q_zeta(g))^2
         <= U_zeta(f+g)*U_zeta(f-g).                    (S13)

Both source-specific functions preserve the same original test and derivative class, and zeta support is charged on both f and g. The exact candidate declarations are primitiveRealPhysical_difference_sq_H1_continuity and zetaRealPhysical_difference_sq_H1_continuity.

For the ordinary real physical H1 norm N(f)=sqrt(E(f)+D(f)), each original U from (S9) satisfies U(f)<=C*N(f)^2 with C=max(A,alpha), because E,D are nonnegative. The H1 triangle inequality gives N(f+g)<=N(f)+N(g). Taking nonnegative square roots in (S13) gives the standard fixed-window locally Lipschitz statement

    |Q(f)-Q(g)|
       <= C*(N(f)+N(g))*N(f-g).                        (S14)

S13 is an exact squared quantitative continuity statement which already forces Q(f_n)->Q(f) when f_n->f in genuine physical H1, with f_n in the same classical supported source class. The square-root-normalized S14 is a COMPLETE WRITTEN classical consequence, but is not a separate generated Lean declaration here. This is nevertheless far stronger than a uniform finite-dimensional rate: the RHS uses the original f±g and their genuine first derivatives.

These estimates are FIXED-WINDOW, REAL test statements. They provide only the physical H1 continuity ingredient of the previous NativeH1ProjectionData.source energy return; connecting its full class and norm conventions still requires a separate verified consumer. No source sign, finite certificate or root displacement is inferred from an absolute upper bound.

## 6. Independent symbolic and numerical source checks

Use two different real odd compact C2 test functions at T=1,

    f(t)=t*(1-t^2)^3 on [-1,1], zero elsewhere,
    g(t)=t*(1-t^2)^4 on [-1,1], zero elsewhere.

The actual original real L2 data, computed by exact SymPy integration, are

    E(f)=2048/45045,
    E(g)=65536/2078505,
    D(f)=3072/5005,
    D(g)=131072/255255,
    int_R f*g =4096/109395.

All real mixed prime integrals retain the literal native active powers 2,3,4,5,7 and, in the real primitive nonprincipal character modulo 3, the true signed weights chi(2)=-1, chi(3)=0, chi(4)=1, chi(5)=-1, chi(7)=1. Independently integrated original whole-line correlations at 55-digit mpmath yield:

| Actual source component | Zeta real odd | Primitive real pair mod 3 |
|---|---:|---:|
| P(f,f) | -0.038210210989251376 | +0.018150806125486957 |
| P(g,g) | -0.022534025332704066 | +0.014440003417426012 |
| P(f,g) | -0.029340830696090928 | +0.016321608792851887 |

The genuine original parity gamma values from the previous source check are

    Gamma_0(f)=0.21132524025843143444,
    Gamma_0(g)=0.14963820216910556781,
    Gamma_1(f)=0.06965049468776827777,
    Gamma_1(g)=0.05120576016217636496.

The actual gamma constants for these two sectors are the source digamma values:
gammaConstant(1,0)=log(1/pi)+digamma(1/4) and
gammaConstant(3,1)=log(3/pi)+digamma(3/4).

Original physical Q differences assembled from 55-digit prime integrations and previously reported gamma evaluations rounded to about 20 significant decimal digits:

    Q_zeta(f)-Q_zeta(g) ≈ +0.00000399559679828620252,
    Q_real-pair-mod3(f)-Q_real-pair-mod3(g)
                      ≈ -0.00104051734267709419682.

Independently evaluating the original mixed prime correlation with actual f+g and f-g gives P_zeta(f+g,f-g)=P_zeta(f,f)-P_zeta(g,g) to 3.2e-58, and the same identity for the real primitive pair to working precision. Including the actual mixed gamma difference, conductor scalar pairing and signed zeta pole, the source equality (S6) for both sectors agrees to working precision.

An independent mixed-source comparison gives

    B_zeta(f,g)≈0.00000473839196766347473309,
    B_real-pair-mod3(f,g)≈0.000159138440609694188673.

With the original source weights (S9), the ratios B(f,g)^2/[U(f)U(g)] are approximately 2.34e-11 for zeta and 6.62e-8 for the primitive real pair, both within (S12). The original diagonal budgets are conservative: this is an absolute-continuity check, not a lower sign certificate. The independently measured paired Q difference can be negative; no positivity is asserted. An exact hostile algebra check uses the indefinite symmetric form B(x,y)=x_1*y_1-x_2*y_2 on R^2 with U(x)=x_1^2+x_2^2: Q(0,1)=-1, so B is NOT positive, but |Q(x)|<=U(x) and B(x,y)^2<=U(x)U(y) hold. At x=(1,1), y=(1,-1) the latter is saturated (4=2*2). This demonstrates that the Cauchy conclusion comes from an ABSOLUTE diagonal bound and real bilinearity, not a secretly positive Weil form.

**Hostile source boundaries:** If f is a discontinuous indicator, it is not in classical H1; if f is not supported in the zeta source window, its signed sinh pole moment may fail to be bounded in terms of E. If negative chi weights are replaced by absolute weights inside Q, or if the negative zeta pole is removed, S1/S6 no longer return to the original source. If T or q vary without paying A(T,q), S14 gives no uniform bound. The primitive REAL conjugate-pair source is not a formal proxy for the individual COMPLEX character Dirichlet GRH criterion.

All numerical calculations here are NONCERTIFIED high-precision corroboration, not interval certification, formal Lean proof or independent full source review.

## 7. Verification status and remaining RH/GRH mathematics

The new Lean file contains the actual C1 source bilinearity candidates, exact physical source return and polarization, the real signed indefinite quadratic Cauchy proof, the original H1 weighted budget parallelogram and scaling, and both real sector-specific squared continuity statements. Structural checks such as balanced comments/brackets/parentheses and no uncommented sorry/admit/axiom are NOT Lean compilation. No local lean, lake or elan executable was available. The pinned Lean 4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 build and kernel/axiom checks have NOT_RUN. All previously imported candidate source lemmas remain at their own unverified assurance status.

**Next verification priority:** obtain actual source-bound pinned Lean elaboration and repair any type/proof errors rather than treating successive unchecked scripts as accepted theorem progress; then connect the exact supported C1 real continuity to the earlier H1 finite-sine source matrix energy-return consumer, including gamma and prime/pole source equality. Extension to the full one-character complex Weil criterion requires independent Hermitian proof, not real averaging by assumption.

**Two decisive unproved RH and GRH obstacles remain:**
1. Source-exact hypothetical completed off-critical zero -> exponentially negative actual supported physical Weil test with complete zero orbits, smoothing and tail charges, and controlled L2/H2 mass.
2. Uniform cofinal all-dimension lower subexponential arithmetic budget on the ORIGINAL signed zeta and primitive Dirichlet Weil matrices along growing support windows.

S14 is continuity, not a positive universal arithmetic sign or an off-line root contradiction. Neither root-level premise follows from the current source. RH and Dirichlet GRH remain UNSOLVED. The argument is classical real Hilbert-space analysis; novelty not claimed.

No Noe proof automation, cross-chat messages, browser workers, scheduler or background task was invoked. The repository's ordinary authorized source-publication route is not proof acceptance.
