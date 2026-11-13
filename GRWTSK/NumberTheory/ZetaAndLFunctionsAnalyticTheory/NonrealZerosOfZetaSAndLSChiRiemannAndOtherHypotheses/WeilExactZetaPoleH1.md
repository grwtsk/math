# Exact supported sinh-pole moment for the original odd zeta Weil form

**Attribution:** grwtsk contributors. **Date:** November 13, 2026 (America/Los_Angeles).
**Maintained source:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilExactZetaPoleH1.lean.
**Precise consumer:** WeilSignedArithmeticH1Budget.SupportedOddPoleMomentBound and the original-source zetaOddPhysical_abs_H1_le.
**Assurance:** COMPLETE_WRITTEN_CLASSICAL_PROOF; MANUAL_LEAN_SOURCE_PROOF_CANDIDATE; LEAN_ELABORATION_NOT_RUN; FULL_PINNED_IMPORT_BUILD_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_REVIEW_NOT_RUN. RH/Dirichlet GRH NOT PROVED.

## 1. The actual signed zeta pole and source domain

The previously published original real odd zeta physical source is

    Q_zeta,T(f)
      = gammaConstant(1,0)*∫_R f²
        + Gamma_0(f)
        - primeEnergy(T,f)
        - 2*(∫_R f(t)*sinh(t/2)dt)².

The pole has the NEGATIVE sign in the real odd sector. It is not deleted, replaced by a positive kernel, or averaged away. The previous WeilSignedArithmeticH1Budget.lean formalizes a full diagonal absolute H1 budget conditional on

    SupportedOddPoleMomentBound T f :=
       (oddZetaPoleMoment f)² <= (sinh(T)-T)*physicalMass f.

The new candidate constructs precisely this statement for every real Lebesgue L2 function f pointwise supported in [-T,T], where T>0. No oddness, differentiability, arithmetic positivity or spectral-gap premise is required for the moment estimate itself. The actual zeta H1 consumer then supplies its already existing classical C1 hypotheses separately.

## 2. The *exact* compact pole profile

Let

    h_T(t) = 1_[-T,T](t)*sinh(t/2),
    G_T = ∫_R h_T(t)²dt.

This is the same bounded, zero-extended sinh profile used in the source's WeilOddPrimePoleOutput.lean for its scalar pole column. The candidate source defines sourceSinhWindow by the literal Icc indicator and proves real MemLp 2 from continuity of sinh on the compact interval, with the actual bound |sinh(t/2)|<=sinh(T/2) for |t|<=T.

Use the elementary hyperbolic identity

    sinh(t/2)² = (cosh(t)-1)/2.

The antiderivative is (sinh(t)-t)/2, and the source interval endpoints are -T and T. Ordinary pinned Mathlib FTC and sinh(-T)=-sinh T give the **exact** value

    G_T = ∫_(-T)^T sinh(t/2)²dt
        = sinh(T)-T.                                    (P-1)

The pinned Mathlib theorem Real.self_lt_sinh_iff shows G_T>0 for every T>0. This positivity concerns the profile norm only, not the full signed Weil quadratic form.

## 3. Cauchy-Schwarz by an integrated nonnegative square

For an arbitrary real supported L2 source f, put

    E = ∫_R f(t)²dt,
    m = ∫_R f(t)*h_T(t)dt,
    G = ∫_R h_T(t)²dt = G_T.

The actual original pole pairing equals m because f vanishes pointwise off [-T,T]. The three products f², f*h_T and h_T² are Lebesgue integrable by genuine L2 membership and its product integrability theorem.

Rather than divide by the possibly vanishing mass E, use the elementary nonnegative square

    0 <= ∫_R (G*f(t)-m*h_T(t))²dt.

Expanding with honest integrability and finite linearity yields

    0 <= G²*E - 2*G*m² + m²*G
       = G*(G*E-m²).

Because G>0, this forces

    m² <= G*E
       = (sinh(T)-T)*∫_R f(t)²dt.                      (P-2)

This proof includes f=0 automatically, with no division by E, without assuming the result as an axiom, and without replacing the real source with a finite matrix. The Lean source candidate proves (P-2) as supportedOddPoleMomentBound_of_L2, using sourceSinhWindow_sq_integral, genuine MemLp, real nonnegative-square integration, and the original_odd_pole_eq_window_pair source identity.

The inequality is **sharp for the supported real L2 class**: choose f=h_T. Then m=E=G and both sides equal G². That saturating source has a jump at the support endpoints when T>0 and is not in the global H1 class; smooth compactly supported approximants can approach saturation in L2. Thus this is a sharp L2 continuity coefficient, not a smooth-source existence theorem or RH sign.

## 4. Direct return to the existing original zeta H1 diagonal budget

The previous zetaOddPhysical_abs_H1_le statement takes SupportedOddPoleMomentBound as one explicit input. The new direct consumer zetaOddPhysical_abs_H1_le_of_supported supplies that input from actual source support and L2 membership, while retaining the existing classical first derivative and whole-line L2 hypotheses for the gamma budget.

For T>0, real globally classical C1 f with derivative first, and f supported in [-T,T], the final *source-level theorem candidate* reads

    |zetaOddPhysicalValue(T,f)|
      <= [|gammaConstant(1,0)| + primeMass(T)
          + 2*ExactGammaTail.tailUpper(0,1)
          + 2*(sinh(T)-T)] * ∫_R f(t)²dt
          + (7/12)*∫_R first(t)²dt.                   (P-3)

There is no pole-moment hypothesis in P-3. The full negative real odd pole remains in zetaOddPhysicalValue, every active prime-power coefficient remains in primeMass, and the native parity-zero gamma energy retains the existing head/tail controls. This is a DIAGONAL ABSOLUTE H1 budget, not the sign Q>=0. The original complex one-character Dirichlet form is not identified with the real paired-character source.

The mixed real gamma/prime/pole bilinear continuity and polarization argument remains WRITTEN in WeilSignedArithmeticH1Budget.md; it is NOT promoted to a kernel-verified mixed Lean theorem merely by removing this pole premise.

## 5. Exact symbolic and hostile checks

For T=1 and the genuine supported real odd polynomial

    f(t)=t*(1-t²)^3 on [-1,1], zero outside,

exact SymPy integration gives

    E = 2048/45045,
    G = sinh(1)-1,
    m = -1320960*cosh(1/2)+2858496*sinh(1/2).

Numerically at 55-decimal precision,

    m = 0.05137363409615582277418826935404285744395537084403725171,
    m²/(G*E) = 0.3313295377583994971318669714370039061796896542451746425.

The exact symbolic integral G=sinh(T)-T was independently checked for positive symbolic T, including the full endpoint evaluation. The independent ratio is smaller than 1 with margin; this is noninterval numerical corroboration, NOT Lean compilation or a Weil positivity certificate.

A hostile boundary/domain check: removing the support condition would make the original sinh pole functional unbounded on all of L2(R), since sinh(t/2) grows exponentially at infinity. There is no fixed T-independent constant C such that |∫f*sinh(t/2)|²<=C*||f||² for every real L2 f. The explicit window and its growing norm G_T are essential.

## 6. Remaining assurance and research tasks

The new file is a manually drafted Lean source-candidate proof, not an accepted kernel object until actual elaboration with Lean 4.34.1 and the pinned Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612, followed by fresh kernel replay, transitive axiom audit and independent mathematical review. Prior imported Lean proof candidates retain their previous unverified assurance status.

Next precise formalization: introduce the true mixed real gamma form, prove integrability by weighted Cauchy-Schwarz from the existing diagonal gamma H1 bounds, and combine the genuine signed two-orientation prime translations and the now-controlled zeta sinh pole into fixed-window mixed H1 continuity. That analytic result can then supply the earlier NativeH1ProjectionData source-continuity field on actual compact smooth tests. The classical written argument is in WeilSignedArithmeticH1Budget.md, but has not yet been proved as Lean declarations.

**Conjecture-level obstacles remain entirely unresolved:** (i) exact completed L-function off-critical zero -> normalized exponentially negative original real odd physical Weil sources with all orbit, tail and L2/H2 costs charged; (ii) a global cofinal all-mode subexponential LOWER arithmetic budget for the *original signed* zeta and primitive-character Weil matrices. The supported pole moment estimate and any fixed-window H1 continuity theorem do not establish either. RH and Dirichlet GRH remain UNSOLVED.

Source references: WeilSignedArithmeticH1Budget.lean, WeilOddPrimePoleOutput.lean compact sinhWindow, PhysicalSineNegativeReturn.zetaOddPhysicalValue, Mathlib Real.sinh/cosh/FTC and real Lebesgue L2 integrability; WeilH1SourceContinuity.md Section IV. Attribution grwtsk contributors; novelty not claimed. No Noe proof automation, cross-chat messaging, browser workers, scheduler or background execution was invoked.
