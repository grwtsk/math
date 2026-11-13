# Native real mixed Weil gamma: exact source polarization, integrability and H1 Cauchy bound

**Attribution:** grwtsk contributors. **Date:** 2026-11-13 (America/Los_Angeles).
**Maintained Lean source candidate:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilMixedGammaH1Polarization.lean.
**Concrete mathematical consumer:** the gamma component of the original fixed-window signed Weil physical H1 mixed-continuity theorem for real odd zeta and primitive nonprincipal REAL conjugate-pair Dirichlet sectors. Uses the exact parityKernel, and the already maintained WeilGammaH1ShiftBudget and WeilH1ShiftFTC results.

**Assurance:** COMPLETE_WRITTEN_REAL_CLASSICAL_ANALYSIS; MANUAL_LEAN_SOURCE_PROOF_CANDIDATE; LEAN_ELABORATION_NOT_RUN; FULL_PINNED_IMPORT_BUILD_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN. RH and Dirichlet GRH UNPROVED.

## 1. Actual source, domain and original parity

Let a be the unchanged natural gamma parity index (0 for zeta; gammaParity chi for a primitive nonprincipal character). The original source kernel is

    K_a(r) = exp(-(a+1/2)*r)/(1-exp(-2*r)),   r>0.

For two real globally C1 functions f,g whose real functions and first derivatives belong to L2(R), define

    Delta_r f(t) = f(t+r)-f(t),
    E_r(f)       = integral_R Delta_r f(t)^2 dt,
    C_r(f,g)     = integral_R Delta_r f(t)*Delta_r g(t) dt,

    Gamma_a(f)   = integral_(r>0) K_a(r)*E_r(f) dr,
    Gamma_a(f,g) = integral_(r>0) K_a(r)*C_r(f,g) dr.

The mixed gamma source is the genuine whole-line shift product, not a periodic model, normalized matrix, different gamma operator, or complex magnetic form. Every inner product is finite for fixed r because shifts preserve L2. The existing classical H1 bound from WeilH1ShiftFTC and WeilGammaH1ShiftBudget guarantees Gamma_a(f), Gamma_a(g), Gamma_a(f+g) and Gamma_a(f-g) are nonnegative and finite. The real classical source class is closed under addition, subtraction and scalar multiplication with the true derivatives.

The new Lean candidate provides a source-specific ClassicalRealH1 structure only for these classical derivative facts; it does not treat an arbitrary L2 function as H1 or silently construct a weak derivative.

## 2. Exact mixed polarization licenses the singular gamma integral

For each r, the real scalar identity

    (Delta_r(f+g))^2 - (Delta_r(f-g))^2
       = 4*Delta_r f * Delta_r g

holds pointwise. By whole-line finite L2-product integrability it can be integrated in t:

    C_r(f,g) = [E_r(f+g)-E_r(f-g)]/4.              (MG-1)

Multiplying by the UNCHANGED K_a(r) preserves this equality for every r. Its right side is the difference of two genuine integrable diagonal gamma densities, divided by four. Therefore the left side is integrable on (0,infinity) without any new mixed singular majorant assumption. Integrating gives the exact identity

    Gamma_a(f,g) =
       [Gamma_a(f+g)-Gamma_a(f-g)]/4.             (MG-2)

The new source candidates mixedShift_eq_polar, realMixedGammaDensity_eq_polar, realMixedGammaDensity_integrableOn and realMixedGammaEnergy_eq_polar express this entire source return, with the old realGammaEnergy functions on both sides.

The parallelogram identity, again proved by actual pointwise squares and first t- then r-integral linearity, is

    Gamma_a(f+g)+Gamma_a(f-g)
       = 2*(Gamma_a(f)+Gamma_a(g)).              (MG-3)

Crucially the gamma positivity is used only on diagonals. Mixed Gamma_a(f,g) itself can be negative.

## 3. Honest balanced H1 mixed source bound

Both Gamma_a(f+g) and Gamma_a(f-g) are nonnegative, so MG-2 and MG-3 give

    |Gamma_a(f,g)|
       <= [Gamma_a(f)+Gamma_a(g)]/2.             (MG-4)

The previous ORIGINAL parity-dependent diagonal upper estimate is

    0 <= Gamma_a(f)
       <= alpha*D(f)+beta_a*E(f),
    alpha=7/12,
    beta_a=2*ExactGammaTail.tailUpper(a,1)
      = 4*exp(-(a+1/2))/((a+1/2)*(1-exp(-2))),
    D(f)=integral_R f'(t)^2dt,
    E(f)=integral_R f(t)^2dt.

Substituting the bounds for f and g gives

    |Gamma_a(f,g)| <=
       (7/24)*(D(f)+D(g))
         + ExactGammaTail.tailUpper(a,1)*(E(f)+E(g)).  (MG-5)

The Lean candidate establishes MG-5 as abs_realMixedGammaEnergy_H1_bound. This bound is useful for symmetric control, but is not alone the normalized product estimate in two test norms.

## 4. Stronger Cauchy and norm-product H1 continuity without square roots in Lean

The source scaling is exact:

    Gamma_a(c*f)=c^2*Gamma_a(f),
    Gamma_a(c*f,g)=c*Gamma_a(f,g),

and the genuine addition formula obtained from MG-2/MG-3 is

    Gamma_a(f+g)=Gamma_a(f)+Gamma_a(g)+2*Gamma_a(f,g).

Thus nonnegativity of Gamma_a(u*f+g) for EVERY real scalar u gives

    0 <= u^2*A+2*u*B+C,
    A=Gamma_a(f), B=Gamma_a(f,g), C=Gamma_a(g).

The elementary discriminant argument is complete, INCLUDING the A=0 case: if A=0 and B is nonzero, choose u=-(C+1)/B to make the right side strictly negative. If A>0 choose u=-B/A and multiply by A to obtain A*C-B^2>=0. Hence

    Gamma_a(f,g)^2 <= Gamma_a(f)*Gamma_a(g).    (MG-6)

The candidate Lean theorem realMixedGammaEnergy_sq_le_diag formalizes this source-specific nonnegative-quadratic argument rather than assuming an unrelated abstract gamma Cauchy lemma.

Using the two actual diagonal H1 budgets yields a mixed PRODUCT bound with no unverified square-root normalization in the theorem statement:

    Gamma_a(f,g)^2
      <= [alpha*D(f)+beta_a*E(f)]*
         [alpha*D(g)+beta_a*E(g)].                (MG-7)

This is the exact candidate theorem realMixedGammaEnergy_sq_le_H1_product. Both factors are nonnegative, because each bounds a nonnegative original diagonal gamma energy. The zeta and primitive-sector adapters preserve a=0 and a=gammaParity chi, respectively.

Let N(f)=sqrt(E(f)+D(f)) and Cgamma(a)=max(alpha,beta_a). Since both gamma budgets are bounded by Cgamma(a)*N(f)^2, MG-7 implies the standard physical norm PRODUCT continuity bound

    |Gamma_a(f,g)| <= Cgamma(a)*N(f)*N(g).       (MG-8)

MG-8 is a complete written real-variable inference. MG-7 is the stronger source-comparable Lean statement, requiring no new Hilbert-space operator. The exact Q product has NOT been asserted for a complex individual character; this is the ORIGINAL real gamma kernel common to real zeta and the real primitive paired source only.

An independent proof route is direct weighted Cauchy-Schwarz on the product measure K_a(r)dr dt, justified by the finite diagonal energies. The polarization/discriminant route is retained in source so that the entire argument is visible through the original separately bounded gamma diagonal.

## 5. Independent exact-polynomial and high-precision hostile checks

Use T=1 and real smooth odd compact sources

    f(t)=t*(1-t^2)^3 on [-1,1], zero outside,
    g(t)=t*(1-t^2)^4 on [-1,1], zero outside.

Exact SymPy source integrals give

    E(f)=2048/45045,     D(f)=3072/5005,
    E(g)=65536/2078505, D(g)=131072/255255,
    integral_R f(t)*g(t)dt = 4096/109395.

For 0<=r<=2 the exact source mixed shift is a polynomial,

    C_r(f,g)
      = r^2*(63*r^15-2176*r^13+34272*r^11-339456*r^9
          +3111680*r^7-5601024*r^6+6336512*r^4
          -6266880*r^2+3342336)/6126120.

For r>=2, C_r(f,g)=2*integral_R f*g. Independent t-variable quadrature at r=0.1,0.5,1.3,1.9 agrees with the symbolic expression to the expected 50-digit working accuracy. The original physical gamma integral was evaluated with 55-digit mpmath across the true singular head (where the polynomial contains r^2) and exponentially decaying tail. Results:

| a | Gamma_a(f) | Gamma_a(g) | Gamma_a(f,g) |
|---:|---:|---:|---:|
| 0 | 0.21132524025843143444 | 0.14963820216910556781 | 0.17564300925888068071 |
| 1 | 0.06965049468776827777 | 0.05120576016217636496 | 0.05886462073462667808 |

The normalized gamma Cauchy ratios Gamma_a(f,g)/sqrt(Gamma_a(f)Gamma_a(g)) are 0.987720215798859073 (a=0) and 0.985672950858825634 (a=1), both below one. The squared actual mixed value and diagonal gamma product are, respectively:

| a | Gamma_a(f,g)^2 | Gamma_a(f)*Gamma_a(g) |
|---:|---:|---:|
| 0 | 0.030850466701515244532 | 0.031622329025225969937 |
| 1 | 0.0034650435742314410332 | 0.0035665065261588014135 |

Direct gamma integrations of f+g and f-g independently satisfy MG-2 and MG-3 at working precision. The larger H1-budget products in MG-7 are approximately 0.292167350092691 (a=0) and 0.125066366260026 (a=1), safely above the actual mixed squares.

**Hostile sign check:** for g=-f, the mixed gamma is -Gamma_a(f)<0 despite both diagonal energies being nonnegative. Any proof that replaces the mixed integrand by a positive shift square would change the original source and is invalid. Neither gamma positivity nor Cauchy supplies positivity for the FULL signed Weil form, which subtracts every original signed prime term and includes the negative real odd zeta pole.

All numerical diagnostics are NONCERTIFIED floating-point calculations and do not establish any theorem by themselves.

## 6. Exact remaining formal and conjecture-level obligations

The gamma component of the real fixed-window mixed Weil form now has a complete written and MANUAL Lean source-candidate integrability, source polarization, positivity, Cauchy, and H1 product-budget proof. The remaining source-specific mixed form inputs are:
- preserve every two-orientation primitive signed pairedPrimeWeight in an exact mixed prime correlation bilinear bound, and the untwisted zeta primeEnergy mixed return;
- preserve the two original real odd zeta pole orientations in the mixed moment -2*m(f)*m(g) with the previously published exact compact sinh profile bound;
- combine these with conductor gammaConstant and native mixed gamma, prove exact real bilinearity and identify the diagonal with the ORIGINAL physical zeta/primitive values, then prove Q(f)-Q(g)=B(f+g,f-g) with its fixed-window H1 continuity budget;
- validate all these exact source and imported candidate declarations under pinned Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, actual elaboration, fresh kernel replay, transitive axiom audit, independent analytical review. These checks were NOT_RUN. No passing CI claim.

The real primitive conjugate-pair form is not asserted to represent the full original complex one-character Dirichlet GRH criterion. Nor does fixed-window H1 continuity supply either decisive conjecture-level premise: (i) a hypothetical off-critical completed zeta/L zero yielding exponentially negative original physical real odd tests with all orbit/tail and L2/H2 allowances; and (ii) universal cofinal all-M subexponential original signed arithmetic LOWER budgets. Both remain UNPROVED. RH and Dirichlet GRH remain unsolved; no mathematical novelty claimed.

No Noe proof automation, cross-chat messaging, worker, scheduler or background job was invoked. Git publication of an uncompiled Lean candidate is not formal proof acceptance.
