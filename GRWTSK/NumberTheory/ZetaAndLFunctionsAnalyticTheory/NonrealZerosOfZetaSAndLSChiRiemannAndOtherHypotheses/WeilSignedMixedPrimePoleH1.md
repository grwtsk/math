# Exact signed real mixed prime-power and zeta-pole source return

**Attribution:** grwtsk contributors. **Date:** 2026-11-13 (America/Los_Angeles).
**Maintained Lean source candidate:** GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilSignedMixedPrimePoleH1.lean.
**Exact consumer:** the missing original signed mixed arithmetic components of fixed-window real H1 continuity for PhysicalSineNegativeReturn.zetaOddPhysicalValue and primitivePairedOddPhysicalValue. The previously published WeilMixedGammaH1Polarization handles the genuine gamma component on the classical real H1 source class.

**Evidence:** COMPLETE_WRITTEN_CLASSICAL_SOURCE_ARGUMENT; MANUAL_LEAN_SOURCE_PROOF_CANDIDATE; LEAN_ELABORATION_NOT_RUN; FULL_PINNED_IMPORT_BUILD_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN. RH and Dirichlet GRH are UNPROVED.

## 1. The literal signed real source, not a replacement observation

For f,g in real L2(R), let

    C_r(f,g) = integral_R f(t)*g(t+r)dt,
    S_r(f,g) = C_r(f,g)+C_-r(f,g).

The original unmodified activePrimePowers(T) contains all n≥2 with n<exp(2T), including every prime power with nonzero von Mangoldt weight. The true primeWeight(n)=Lambda(n)/sqrt(n) is nonnegative. For a primitive nonprincipal character chi modulo q the original REAL conjugate-pair weight is

    w_chi(n)=primeWeight(n)*Re(chi(n)).

This can be negative or zero at ramified n. Do NOT substitute |chi(n)| or |w_chi(n)| in the physical form. Define the actual real mixed paired response

    P_chi,T(f,g) =
      sum_(n in activePrimePowers(T)) w_chi(n)*S_log(n)(f,g).  (P1)

For the untwisted zeta source, retain the exact positive coefficients and use

    P_zeta,T(f,g) =
      sum_(n in activePrimePowers(T)) primeWeight(n)*S_log(n)(f,g). (P2)

The source Lean candidate uses the original source activePrimePowers, pairedPrimeWeight, primeMass and primeEnergy definitions without modifying them.

## 2. Exact two-orientation symmetry and source diagonals

The fundamental whole-line translation change of variables yields

    C_r(g,f) = C_-r(f,g).                                (P3)

Therefore S_r(g,f)=S_r(f,g). Both orientations are NECESSARY for symmetric real primitive paired arithmetic; a single forward mixed correlation is not symmetric for arbitrary f,g.

On the diagonal, P3 gives C_-r(f,f)=C_r(f,f), so

    S_r(f,f)=2*C_r(f,f).

The original native physical quadratic terms return EXACTLY:

    P_chi,T(f,f) = SignedArithmeticH1Budget.pairedPrimeResponse chi T f,
    P_zeta,T(f,f)=OddSineForm.primeEnergy T f.               (P4)

The Lean candidates realCrossCorrelation_reverse, realSymmetricShift_symmetric, pairedMixedPrimeResponse_diag and zetaMixedPrimeResponse_diag express P3-P4, including the original pair's signed phases and the original untwisted zeta two-count. Further new realCrossCorrelation_add_left/add_right, realSymmetricShift_add_left/add_right and both original primitive/zeta mixed-prime response additivity theorems derive genuine real bilinear additivity from exact Lebesgue integral linearity and the unchanged finite prime-power inventory.

## 3. Mixed arithmetic bounds, exact source coefficient scope

The real L2 product Cauchy-Schwarz inequality gives for every r

    |C_r(f,g)| ≤ sqrt(E(f)*E(g)),
    E(f)=integral_R f(t)^2dt.

This is valid because Lebesgue translation preserves the L2 norm of g. A weaker elementary estimate, used in the new Lean candidate to avoid a separate square-root integration theorem, follows directly from

    2*|f(t)*g(t+r)| <= f(t)^2 + g(t+r)^2:

    |C_r(f,g)| ≤ (E(f)+E(g))/2.                        (P5)

Consequently the true two-orientation source satisfies

    |S_r(f,g)| ≤ E(f)+E(g).

The already maintained original abs_pairedPrimeWeight_le proves |w_chi(n)|≤primeWeight(n); applying it ONLY in a bound, not in P1, yields

    |P_chi,T(f,g)| ≤ primeMass(T)*(E(f)+E(g))/2,
    |P_zeta,T(f,g)|≤ primeMass(T)*(E(f)+E(g))/2,       (P6)

where primeMass(T)=2 sum_active primeWeight(n). The new Lean candidates abs_realCrossCorrelation_le_avg_mass, abs_realSymmetricShift_le_mass_sum and both mixed-prime balanced-budget theorems establish P5-P6 on the literal source.

The stronger real classical norm-PRODUCT bound, obtained by applying the ordinary L2 Cauchy inequality to each of the exact original translated correlations, is

    |P_chi,T(f,g)|, |P_zeta,T(f,g)|
      ≤ primeMass(T)*sqrt(E(f)*E(g)).                 (P7)

P7 is a COMPLETE WRITTEN classical consequence, but NOT a Lean declaration supplied by this module. There is no claim of a new independent complex one-character Dirichlet character phase identity.

## 4. Original signed zeta odd pole: exact mixed product

The literal real odd zeta physical value has the NEGATIVE pole

    -2*m(f)^2,    m(f)=integral_R f(t)*sinh(t/2)dt.

Its real mixed bilinear term must therefore be

    -Z(f,g),     Z(f,g)=2*m(f)*m(g).                   (Z1)

Z is symmetric and Z(f,f)=2*m(f)^2. The new Lean source defines precisely this positive-magnitude mixed response and keeps the negative sign reserved for the full Weil source assembly.

The already published ExactZetaPoleH1.supportedOddPoleMomentBound_of_L2 proves, for T>0, and real L2 f supported [-T,T],

    m(f)^2 ≤ G_T*E(f),    G_T=sinh(T)-T>0.             (Z2)

Apply Z2 independently to supported f and g and multiply the two nonnegative inequalities:

    Z(f,g)^2 ≤ 4*G_T^2*E(f)*E(g).                     (Z3)

This is the candidate Lean theorem zetaMixedPoleResponse_sq_le. It is source-exact with the original compact sinh profile, no deletion of the negative zeta pole, no unbounded whole-line sinh test, and no division by either potentially zero source mass.

The conventional absolute norm-PRODUCT bound

    |Z(f,g)| ≤ 2*(sinh(T)-T)*sqrt(E(f)*E(g))          (Z4)

follows by nonnegative square roots in ordinary real mathematics. This is a written inference, not a separate Lean theorem here.

## 5. Complete written fixed-window real mixed Weil H1 continuity

The preceding WeilMixedGammaH1Polarization source gives the GENUINE mixed gamma term

    Gamma_a(f,g)= integral_(r>0) K_a(r)*
                   integral_R Delta_r f(t)*Delta_r g(t)dt dr,

with original a=0 for zeta and a=gammaParity(chi) for primitive pairs. It proves source integrability, symmetry, and a squared Cauchy bound

    Gamma_a(f,g)^2
      ≤ [alpha*D(f)+beta_a*E(f)]*
        [alpha*D(g)+beta_a*E(g)],                  (G1)

alpha=7/12, beta_a=2*ExactGammaTail.tailUpper(a,1), and D(f)=∫(f')². For classical H1 tests, defining N(f)=sqrt(E(f)+D(f)) and Cgamma(a)=max(alpha,beta_a) gives the standard |Gamma_a(f,g)|≤Cgamma(a)N(f)N(g).

Combine the EXACT original real source pieces, not a toy positive form:

    B_pair,chi,T(f,g) =
      gammaConstant(q,a)*integral_R f*g
      + Gamma_a(f,g) - P_chi,T(f,g),

    B_zeta,T(f,g) =
      gammaConstant(1,0)*integral_R f*g
      + Gamma_0(f,g) - P_zeta,T(f,g) - Z(f,g).    (W1)

The real primitive paired source is defined only for genuine primitive nonprincipal chi, preserving q and a; zeta retains the negative signed odd pole.

The real mixed forms are symmetric. Each component is linear in either real leg by finite-sum and absolutely integrable product linearity. P3 is the only source-specific ingredient required to make the two-direction mixed prime terms symmetric. By P4 and Z1, their diagonals return to the **original** zetaOddPhysicalValue and primitivePairedOddPhysicalValue, respectively:

    B_pair,chi,T(f,f)=primitivePairedOddPhysicalValue chi hp hn T f,
    B_zeta,T(f,f)=zetaOddPhysicalValue T f.             (W2)

The new Lean source explicitly DEFINES primitiveRealMixedWeil and zetaRealMixedWeil by W1, and contains source-candidate theorems primitiveRealMixedWeil_diag, zetaRealMixedWeil_diag and their real symmetry. The gamma diagonal return is derived by genuine mixed-shift product versus square, while the zeta diagonal returns via the exact oddArchimedeanEnergy source identity and actual negative pole. This is a full ORIGINAL-SOURCE DIAGONAL AND SYMMETRY candidate, not an asserted formal continuity theorem.

Using the original signed source definitions, P7, Z4 and G1 yields the complete fixed-window real classical H1 product budgets

    |B_pair,chi,T(f,g)| ≤ C_pair(T,chi)*N(f)*N(g),
    |B_zeta,T(f,g)| ≤ C_zeta(T)*N(f)*N(g),          (W3)

with EXACT coefficient allowances

    C_pair(T,chi) =
      |gammaConstant(q,a)|+primeMass(T)+max(alpha,beta_a),

    C_zeta(T) =
      |gammaConstant(1,0)|+primeMass(T)
      +max(alpha,beta_0)+2*(sinh(T)-T).

Real bilinearity and symmetry imply the exact algebraic source identity

    Q(f)-Q(g)=B(f+g,f-g).

Using the H1 triangle inequality yields the required full real fixed-window continuity:

    |Q(f)-Q(g)| ≤ C(T,chi)*(N(f)+N(g))*N(f-g).     (W4)

**Evidence boundary:** W1, W2 and real symmetry are explicitly supplied as MANUAL LEAN SOURCE CANDIDATES in the new module, as are primitive/zeta prime additivity, P3-P6 and Z1-Z3. The H1 norm product estimates W3 and full continuity conclusion W4 are COMPLETE WRITTEN real classical mathematics, NOT Lean declarations in this module. The imported mixed gamma Lean file and earlier source files also remain UNCOMPILED candidates. A next module must close full mixed bilinearity/scalar homogeneity and real H1 norm-product comparison, then prove original signed source polarization Q(f)-Q(g)=B(f+g,f-g), before W4 may be called Lean verified.

This is ONLY the real odd zeta and REAL primitive conjugate-pair source, not the full COMPLEX individual-character GRH criterion. All constants depend on fixed T and q, and no growing-window cofinal arithmetic LOWER sign is inferred.

## 6. Exact independent polynomial checks and hostile signs

At T=1, take genuine supported real odd smooth tests

    f(t)=t*(1-t^2)^3,
    g(t)=t*(1-t^2)^4
    on [-1,1], zero outside.

SymPy symbolic integration gives E(f)=2048/45045 and E(g)=65536/2078505. On 0<=r<=2 the exact two-orientation mixed correlation is

    S_r(f,g)=
      -(r-2)^8*(63*r^9+1008*r^8+6896*r^7+25664*r^6
        +53568*r^5+56064*r^4+25344*r^3
        -3072*r^2-7168*r-1792)/6126120.

Symbolically S_r(f,g)=S_r(g,f) and S_r is zero for r>=2. Independent mpmath high-precision physical evaluations of this original integral at actual prime logarithms n=2,3,4,5,7, with the genuine weight Lambda(n)/sqrt(n), give

    P_zeta,1(f,g) ≈ -0.02934083069609092775905468737273459972924.

For the primitive nonprincipal real character modulo 3, the true signed weights include chi(2)=-1, chi(3)=0, chi(4)=1, chi(5)=-1, chi(7)=1, giving

    P_chi,1(f,g) ≈ +0.01632160879285188654566915185785496437401.

The independent primitive polarization P_chi(f+g)-P_chi(f-g)-4P_chi(f,g) is exactly zero within the symbolic polynomial evaluation. The native primeMass(1) is about 5.85246836435, and P_chi's BALANCED upper bound is primeMass(1)*(E(f)+E(g))/2 ≈0.22530832772237843. This uses no sign deletion in the actual response.

Direct source sinh moments are

    m(f) ≈ 0.05137363409615582277418826935404285744396,
    m(g) ≈ 0.03729752093094522266764405836039046046877.

Thus the genuine mixed zeta pole magnitude is

    Z(f,g)=2*m(f)*m(g)
       ≈0.003832218386000185911857191599572716410248.

The true squared pole magnitude is ≈0.00001468589775799787, while the supported source squared bound 4*(sinh 1-1)^2*E(f)*E(g)≈0.00017601364262150597, ratio ≈0.08343613335. In the original zeta Weil form this mixed pole is SUBTRACTED.

A hostile test: dropping the backward shift breaks P3 and can make the mixed prime response nonsymmetric; taking abs of negative pairedPrimeWeight inside W1 changes the source. Removing -Z from W1 changes the original zeta signed source. All checks here are reproducible non-certified symbolic/numerical diagnostics, NOT interval proof or Lean kernel evidence.

## 7. Remaining formal and conjecture-level obligations

1. Lean elaboration of the new signed real mixed prime/pole and full real mixed diagonal-return declarations and all imported gamma/pole source candidates against pinned Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; fresh kernel replay, transitive axiom audit, independent mathematical review (NOT_RUN).
2. Complete full mixed bilinearity/scaling and W3-W4 H1 continuity as Lean declarations from source-returned W1-W2, then attach to NativeH1ProjectionData with correct support/classical H1 domain.
3. Prove the separate complex individual-character Hermitian source continuity if needed for a full Dirichlet GRH consumer; the real-pair result cannot be substituted without an explicit criterion bridge.
4. Still OPEN root conjecture barriers: off-critical completed zero → exponentially negative original physical Weil tests with bounded source mass, complete zero orbits and tails; and a universal cofinal all-M original signed arithmetic subexponential LOWER budget. Fixed-window H1 continuity supplies neither.

RH and Dirichlet GRH remain unproved. No mathematical novelty asserted; source attribution grwtsk contributors. No Noe proof automation, cross-chat messaging, browser workers, schedulers or background execution were invoked. Manual authorized GitHub source publication alone does not certify a theorem.
