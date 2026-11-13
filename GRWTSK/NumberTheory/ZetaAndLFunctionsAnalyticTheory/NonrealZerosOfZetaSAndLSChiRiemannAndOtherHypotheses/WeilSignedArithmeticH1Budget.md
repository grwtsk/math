# Signed real Weil H1 budgets: complete classical mixed continuity and formal diagonal consumers

**Attribution:** grwtsk contributors. **Prepared:** November 13, 2026, America/Los_Angeles.
**Companion Lean candidate:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilSignedArithmeticH1Budget.lean.
**Exact original consumers:** PhysicalSineNegativeReturn.zetaOddPhysicalValue and primitivePairedOddPhysicalValue; WeilH1SineProjectionReturn.NativeH1ProjectionData on smooth real odd tests.

**Evidence classification:** COMPLETE_WRITTEN_REAL_CLASSICAL_SOURCE_ARGUMENT; MANUAL_LEAN_SOURCE_PROOF_CANDIDATE_FOR_DIAGONAL_BUDGETS; LEAN_ELABORATION_NOT_RUN; FULL_PINNED_IMPORT_BUILD_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN. RH/Dirichlet GRH NOT PROVED.

## 1. Preserve the actual physical Weil source

On a fixed support window T>0, take real C1 test functions f,g, together with their genuine first derivatives, supported in [-T,T]. No complex one-character source is identified with its real conjugate-pair average.

Let E(f)=int_R f(t)^2dt, D(f)=int_R f'(t)^2dt, and N(f)=sqrt(E(f)+D(f)). The previous WeilH1ShiftFTC.lean source candidate constructs the classical near-shift bound from FTC/Fubini and the preceding WeilGammaH1ShiftBudget.lean gives for every parity a in Nat

    0 <= Gamma_a(f)
       <= alpha*D(f)+beta_a*E(f),                     (1)
    alpha=7/12,
    beta_a=2*ExactGammaTail.tailUpper(a,1)
      =4*exp(-(a+1/2))/((a+1/2)*(1-exp(-2))).

Here Gamma_a is exactly the original parityKernel-weighted whole-line shift energy. Every integral is a genuine physical Lebesgue integral; it is not a matrix surrogate.

The original REAL primitive nonprincipal conjugate-pair value at character chi, conductor q and parity a=gammaParity(chi) is

    Q_pair,chi,T(f)
      = gammaConstant(q,a)*E(f)+Gamma_a(f)
        - sum_(n in activePrimePowers(T)) w_chi(n)*
            [int_R f(t)f(t+log n)dt
             +int_R f(t)f(t-log n)dt],               (2)
    w_chi(n)=primeWeight(n)*Re(chi(n)).

The original real odd zeta value is

    Q_zeta,T(f)
      = gammaConstant(1,0)*E(f)+Gamma_0(f)
        - primeEnergy(T,f)
        -2*[int_R f(t)*sinh(t/2)dt]^2,                (3)

where primeEnergy is the exact original 2*sum of positive von Mangoldt/sqrt(n) coefficients and forward whole-line correlations. The last pole has the ORIGINAL NEGATIVE sign. Nothing in this note replaces, averages or drops these terms.

## 2. A new Lean candidate for ALL actual signed paired prime powers

For every n, the original Dirichlet character satisfies |Re(chi(n))|<=||chi(n)||<=1, even when the value is zero at ramified n. The original primeWeight(n) is nonnegative. Thus

    |w_chi(n)|<=primeWeight(n).                       (4)

For real f in L2(R), the pre-existing source theorem OddSineForm.abs_integral_mul_translate_le_sq applies at BOTH shifts:

    |int_R f(t)f(t+log n)dt| <= E(f),
    |int_R f(t)f(t-log n)dt| <= E(f).

Applying the triangle inequality to every term, **without changing the sign of w_chi inside Q**, gives

    |P_pair,chi,T(f)|
       <= 2*sum_(n active)|w_chi(n)|*E(f)
       <= primeMass(T)*E(f),                          (5)
    primeMass(T)=2*sum_(n active)primeWeight(n).

The candidate Lean theorems abs_pairedPrimeWeight_le and abs_pairedPrimeResponse_le prove (4)-(5) with exact source activePrimePowers and signed pairedPrimeWeight. They do not assume positivity of the original prime response or a one-character real phase.

Combining the genuine gamma estimate (1), (5), the full conductor gammaConstant, and signed form (2) yields a complete **primitive diagonal absolute H1 budget** on the classical source carrier:

    |Q_pair,chi,T(f)| <=
       [|gammaConstant(q,a)|+primeMass(T)+beta_a]*E(f)
       +alpha*D(f).                                    (6)

The candidate Lean theorem primitivePairedPhysical_abs_H1_le implements (6). It has NO additional source prime or gamma budget premise beyond genuine classical C1/L2 derivative data and the imported SOURCE_CANDIDATE results. The point is control, NOT a sign: an absolute upper bound does not prove Q>=0.

## 3. The real odd zeta pole: exact optimal Cauchy budget

For supported real L2 f define m(f)=int_R f(t)*sinh(t/2)dt. Because f is supported on [-T,T], Cauchy-Schwarz on the actual source interval gives

    |m(f)|^2 <= E(f)*int_(-T)^T sinh(t/2)^2dt.

Using sinh(t/2)^2=(cosh t-1)/2 and elementary integration,

    int_(-T)^T sinh(t/2)^2dt
       = sinh(T)-T.                                    (7)

For T>0 this is positive, so the **full negative signed odd zeta pole** is charged with its sharp fixed-window absolute bound

    |-2*m(f)^2|
       =2*m(f)^2
       <=2*(sinh(T)-T)*E(f).                           (8)

This budget is sharper than the earlier generic two-exponential-moment bound 4*sinh(T)*E(f) in WeilH1SourceContinuity.md §IV. It is NOT a replacement pole sign or a pole-neutral restriction.

The new Lean source keeps the exact classical-supported moment statement as the explicit predicate SupportedOddPoleMomentBound T f. The theorem zetaOddPhysical_abs_H1_le proves (with that one named supplied moment input)

    |Q_zeta,T(f)| <=
       [|gammaConstant(1,0)|+primeMass(T)
        +beta_0+2*(sinh(T)-T)]*E(f)
        +alpha*D(f).                                   (9)

The proof of (7)-(8) here is COMPLETE WRITTEN classical analysis, but a formal Lean kernel-checked Cauchy moment and endpoint integral proof has NOT been supplied. Consequently the zeta Lean theorem is correctly CONDITIONAL on SupportedOddPoleMomentBound. The original negative pole is never deleted.

## 4. Full real MIXED bilinear continuity: written mathematical completion

For two real classical tests f,g on the SAME support window define the genuinely mixed physical gamma form

    G_a(f,g)=int_(r>0) K_a(r)*
                int_R [f(t+r)-f(t)]*[g(t+r)-g(t)]dt dr.

It exists absolutely by weighted Cauchy-Schwarz: the diagonal energies Gamma_a(f), Gamma_a(g) are finite by (1), and K_a(r)>=0 for r>0. Integrability of the product on (0,infinity)xR follows from Cauchy-Schwarz against the positive weighted product measure. More explicitly,

    |G_a(f,g)| <= sqrt(Gamma_a(f)*Gamma_a(g))
      <= C_gamma(a)*N(f)*N(g),                         (10)
    C_gamma(a)=max(alpha,beta_a).

The last step uses alpha*D+beta_a*E <= max(alpha,beta_a)*(D+E).

For a primitive chi, the EXACT paired prime bilinear term is

    P_chi,T(f,g)=sum_(n active) w_chi(n)*
       [int_R f(t)g(t+log n)dt
        +int_R f(t)g(t-log n)dt].

Each translated mixed correlation is bounded in modulus by sqrt(E(f)E(g)) (ordinary L2 Cauchy-Schwarz + Lebesgue translation invariance), so the same original prime inventory satisfies

    |P_chi,T(f,g)|<=primeMass(T)*N(f)*N(g).           (11)

For the original zeta signed pole, (7) yields

    |2*m(f)*m(g)|
      <=2*(sinh(T)-T)*N(f)*N(g).                     (12)

The conductor gammaConstant term has bound
|gammaConstant(q,a)*int_R f*g|<=|gammaConstant(q,a)|N(f)N(g).

These four components combine into **actual source-specific mixed real symmetric bilinear forms** B_pair,chi,T and B_zeta,T, with their diagonals EXACTLY equal to (2)/(3). They satisfy

    |B_pair,chi,T(f,g)|<=C_pair,chi,T*N(f)*N(g),
    |B_zeta,T(f,g)|<=C_zeta,T*N(f)*N(g),              (13)

where

    C_pair,chi,T =
      |gammaConstant(q,a)|+primeMass(T)+max(alpha,beta_a),
    C_zeta,T =
      |gammaConstant(1,0)|+primeMass(T)
      +max(alpha,beta_0)+2*(sinh(T)-T).

The real primitive pair is invariant under swapping f and g because each prime term contains BOTH translation orientations (interchanged by t↦t±log n). The gamma and zeta moment forms are symmetric. Thus, with Q(f)=B(f,f), the exact algebraic identity is

    Q(f)-Q(g)=B(f+g,f-g).

Since N is the standard H1 norm, N(f+g)<=N(f)+N(g), and from (13)

    |Q(f)-Q(g)|<=C*(N(f)+N(g))*N(f-g).               (14)

This is a COMPLETE WRITTEN mathematical proof of the FIXED-window mixed real classical H1 continuity for the original real odd zeta source and primitive nonprincipal REAL conjugate-pair source. It does NOT claim a completed complex one-character GRH Weil criterion, extension to abstract Sobolev classes, or universal arithmetic positivity. For the complex one-character source, the original phases and antilinear-first convention need their own Hermitian statement; this real-paired sector cannot silently be substituted for them.

**Formal boundary:** equations (10)-(14), including the explicit real mixed gamma and signed arithmetic bilinearity, are NOT Lean theorems in the new module. To upgrade them, formalize mixed product integrability/polarization, source-specific mixed translations, and the supported zeta sinh Cauchy/endpoint integral. The new source candidate proves only the correctly scoped DIAGONAL consequences and preserves those missing formal obligations.

## 5. Hostile tests and comparison

The gamma kernel is nonnegative but the FULL signed arithmetic forms need not be. Replacing pairedPrimeWeight by abs(pairedPrimeWeight) INSIDE Q would change the source. Equations (5)/(11) take absolute values only in inequalities, not definitions.

A real odd f can make -2*m(f)^2 strictly negative. Omitting this term would give a false zeta source return and falsely improve positivity. The exact optimal Cauchy coefficient sinh(T)-T tends to zero cubically as T→0, while the old 4*sinh T allowance is looser; neither controls growth as T→infinity without paid support dependence.

Even when (14) holds, it only states continuity at fixed finite T and fixed chi. The constants C(T,q) can grow with T and depend on the conductor. They do NOT supply a uniform lower spectral bound along increasing windows, much less the cofinal all-dimension subexponential LOWER arithmetic budget needed for RH/GRH.

For the original supported odd polynomial f(t)=t(1-t^2)^3 on [-1,1], exact symbolic integration gives E=2048/45045 and the pole-profile mass sinh(1)-1. Independent 70-digit direct quadrature gives m(f)≈0.051373634096155823 and m(f)^2/(E*(sinh(1)-1))≈0.33132953775839950, confirming that the pole Cauchy allowance is nonvacuous. For the genuine primitive real nonprincipal character modulo 3, the active prime powers 2,3,4,5,7 contribute their actual signed weights (with zero at 3); direct original-source correlation integration gives paired prime response ≈+0.0181508061254869566, versus the absolute primeMass(1)*E budget ≈0.26608625175257124. The previous original-source 45–60-digit gamma evaluations at parity zero and one lie below the diagonal gamma budgets used in (6)/(9). All of these are non-certified numerical checks, not interval certificates, Lean verification or evidence of a global arithmetic sign.

## 6. Exact next formal and root-level obligations

1. Formalize the supported real zeta sinh moment Cauchy bound (7)-(8) on the actual source support, removing the last named pole premise from the zeta diagonal Lean theorem.
2. Prove native mixed gamma absolute integrability and the weighted Cauchy-Schwarz inequality on the true parity kernel, and native real signed mixed prime/zeta-pole polarization, returning (13)-(14) to Lean.
3. Formally connect the fixed-window mixed continuity to the prior classical sine H1 projection theorems and NativeH1ProjectionData without reintroducing an opaque energy-return assumption; validate with actual pinned Lean elaboration and kernel checking.

These are elementary analytical/formalization gaps, not yet RH or Dirichlet GRH. The decisive UNPROVED conjecture-level premises remain: (i) hypothetical off-critical zero -> exponentially negative fully sourced real physical tests with all zero-orbit/tail charges and bounded L2/H2 normalization; (ii) universal cofinal all-dimensional subexponential LOWER arithmetic budgets for the original signed zeta and primitive character Weil forms. None of the estimates here proves either.

**Primary internal source:** WeilH1SourceContinuity.md §IV, WeilH1ShiftFTC.lean, WeilGammaH1ShiftBudget.lean, WeilOddSineForm.abs_integral_mul_translate_le_sq, WeilLowSchurEnclosure.primeMass, WeilGammaData.gammaParity/gammaConstant, and PhysicalSineNegativeReturn.lean. This is classical Hilbert-space/Sobolev analysis with no novelty claim. The original real-paired versus complex one-character distinction is retained.

No automated Lean proof execution, Noe workers, cross-chat messaging, scheduling or background task was invoked. Git publication does not establish Lean kernel acceptance.
