# Complete original signed Möbius dense profile: fixed 0.76 from independently checked OAI and candidate 0.7468 from merged PR103

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Source-specific derivation and Lean formalization assistance: OpenAI ChatGPT.

**Disposition.** Two explicitly SEPARATED analytic input chains control the SAME complete original signed geometric residual `profileCore (7/10) T` with a single constant at EVERY physical time and every index on ONE fixed dyadic grid. Track A uses the published OpenAI 2026 zeta theorem Re(s)>7/8 with a separately reported pinned Lean build and final-module kernel replay, plus a standard classical zero-free-to-Mertens analytic transfer which has NOT been formalized in local Lean. It yields a full residual two-sided fixed 0.76 rate. Track B uses the stronger external `GTimG/QuasiRiemannTracker` merged PR103 assertion, for which only author-reported local compilation and three-standard-axiom output, not a separately independently checked PR103 build or official CI receipt, were found; it yields a **CONDITIONAL** full residual 0.7468 rate, strictly below three quarters. Neither track produces a bound at EVERY positive exponential rate or proves RH. All new GRWTSK proof scripts are SOURCE_PROOF_CANDIDATES with compilation, expected types, fresh kernel checking and transitive axiom audit NOT_RUN.

## 1. Exact source and comparison: not a replacement signed Gram

Immutable source at the current repository:
- `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean` Git blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`, the original `moebiusReal n`, `mertensPrefix`, `pickupVelocity`, `wholePickup`, `pickupEnergy`, `pickupDiagonal`, `pickupCross` and true `pickupResponseGram T m n`. Original μ squareful zeros and both ordered off-diagonal pair orientations are unaltered.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusTwoPrimeSignedPacketCore.lean` blob `af6a0b8daa8684a36dfee6e0524b7e56578d432f`, complete 12-oriented true 2/3-squarefree cube Q and 16-edge ordered odd-divisor base packet P_-, with no double-subtracted prime credit.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusTwoPrimeRateFrontier.lean` blob `025e9343e5c4c819321706d49bc81a56aa68d960`, the ORIGINAL `geometricPairMask` and `profileCore`, preserving all true index gaps, gcds, original coefficient signs and births.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCompleteSignedProfileClassicalPNT.lean` blob `4b6f0f6c77f0e5fa5e8e3330dbdb233253628dac`, previous complete two-sided source comparison, kept as explicit **UNPROVED Lean proposition** `FullOriginalProfileTwoSidedBudgetTarget` despite a written ordinary mathematical proof.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDenseSlabSignedBalance.lean` blob `e71538f8da936afd646ce7e008cbc777670ef759`, prior source-specific elementary positive/negative population lower on a genuine dyadic index slab, carried to the full residual in the preceding `MoebiusCompleteSignedProfileClassicalPNT` review.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerPR103.lean` blob `10f2fba05c105c3e80b58ed9632901b5550444d9`, the original true `MertensExponentialEnvelopeAt`, explicit `ZeroFreeToMertensPowerBridge`, `PickupVelocityPowerEnergyTransfer`, and source-exact endpoint return with the original quarter-unit correction; separately visible external `ExternalPR103ZetaNonvanishing`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSevenEighthsSupercriticalRates.lean` blob `49f930e0125d672ee341c93905339a51ab733b22`, earlier complete endpoint (not complete geometric core) family for each exponent >3/4.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPR103ExactEnergyAbscissa.lean` blob `9a4ed819c1bb43e016f831d1f159fe1fd2a595eb`, earlier CONDITIONAL PR103 weighted energy-convergence ABSCISSA, which is not a finite-scale two-sided complete profile estimate.

Fix the ONE original geometric profile exponent ρ=7/10 and let `R(T)=profileCore (7/10) T`. By original exact signed bookkeeping, with `X=pickupCross`, `H=pickupEnergy`, `D=pickupDiagonal`,

    X(T)=H(T)-D(T)=Q(T)+P_-(T)+B_(7/10)(T)+R(T).

Here Q is the COMPLETE internal cube packet, P_- the COMPLETE odd quotient source, B the exact original low-index/high-gcd/short-gap complementary signed packet in the order fixed by `geometricPairMask`. The prior independently established ordinary source inequalities, for EVERY T>=0, give

    0<=D(T)<=2*T^2,
    -D(T)<=Q(T)<=0,
    |P_-(T)|<=16*T*(1+T)*exp(T/2),
    |B_(7/10)(T)|<=(64*T+4*T^2)*exp((7/10)*T).

Consequently the TRUE COMPLETE signed R (not a subset or positive model) satisfies the two-sided inequality

    |R(T)| <= H(T)+4*T^2
            +16*T*(1+T)*exp(T/2)
            +(64*T+4*T^2)*exp((7/10)*T).                (1)

The 2T² diagonal appears twice only because Q is now bounded ABSOLUTELY for a two-sided comparison: one D from X=H-D, one from |Q|<=D. They represent separate terms in the original exact decomposition; no actual physical original diagonal has been inserted into an index twice. All true signs, pair orientations and squareful zero source terms survive until their exact coefficient vanishes.

## 2. Track A: established published OAI theorem, full core at exponent 0.76

The primary 2026 theorem is OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re s>7/8* (September 30, 2026), https://github.com/openai/math/tree/main/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026, with exact Lean result
`OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re` from
`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`,
`lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean`, blob `46c67f4000906b1391a471d6e6396ac0da3c16a5`.
An independent `tomoto0/quasi-riemann-hypothesis-7-8-verification` report `lean/lean_build_report.md` Git blob `350be16589ef5454f57a7555d6bc51730d98aec6` records 2,924 imported Lean modules successfully compiled at this OAI revision, exact source statement and three standard foundational axioms, and a successful final 2-module leanchecker replay. Full separate 2,924-module replay timed out; official Mathlib cached `.olean` artifacts were used. This independently reported technical checking is not human review of the entire manuscript, nor native checking of the NEW GRWTSK script. Challenge statements under `ComparatorChallenges` with `sorry` are NOT the real OAI proof files.

A known, separately standard classical Perron/contour zero-free→Mertens theorem (e.g. E. C. Titchmarsh, *The Theory of the Riemann Zeta-Function*, 2nd ed. rev. D. R. Heath-Brown), at strict theta=22/25=0.88>7/8=0.875, gives ONE C_A>=0 with

    |M(x)|<=C_A*x^(22/25) for ALL x>=1.                  (2)

The theorem is standard accepted ANALYSIS but its proof has NOT been ported into pinned local Lean; `ZeroFreeToMertensPowerBridge` remains an **explicit hypothesis** in the new formal script, not a claimed local kernel lemma.

The exact source defines `pickupVelocity(u)=exp(-u/2)M(exp u)`. For s_A=2*(22/25)-1=19/25=0.76,

    H(T)=pickupEnergy(T)
      <= (4*C_A^2/s_A^3)*(exp(s_A*T)-1)
      <= 10*C_A^2*exp(s_A*T), EVERY T>=0.              (3)

This is the original complete signed pickup amplitude squared as a WHOLE, not the positive diagonal alone. It follows by the direct twice-integrated causal inequality (integrating exp((theta-1/2)u), squaring the full primitive, integrating its square).

## 3. Track B: merged external PR103, full core at 0.7468 if its theorem is accepted

Exact merged PR103 source:
- Repository `GTimG/QuasiRiemannTracker`; pull request #103, merged at commit `8b1a0167c8e324099884152181e3fb2206510e88`.
- `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`, blob `808d04cec892449707d23e81f94179e2738fdf1a`; `Candidate.bound` has the literal theorem type `DirichletCharacter.LFunction χ s ≠ 0` for every positive modulus/character and `Re s>theta0`, excluding the principal pole. It invokes `Qrh.PositiveGap.bound`.
- `Candidate/Local/Qrh/PositiveGap/BestEndpoint.lean` blob `f10432357d29670effde475b951a8af275f32d6a`, which retains the final return proof structure; `Candidate/Local/Qrh/PositiveGap/SourceComposition.lean` blob `d063b79acd04ce1f78484c9c3b00d1e3c0b1fb89` supplies the finite source step.
- PR103 description reports 237 Lean source modules compiled in isolation locally in 207 s, `#print axioms Candidate.bound` showing only standard foundational axioms, and 450 local tests passed. Its own description notes official Comparator/Lean/NanoDa/con-ron admission remains a SEPARATE step. A live query for GitHub Actions runs attached to the merge commit returned an empty array; no independent pinned PR103 compilation/kernel acceptance receipt was found in this turn. A signed MERGE commit is provenance, not verification.
- The source is compatible in mathematical TYPE with the already named GRWTSK `ExternalPR103ZetaNonvanishing` after the modulus-one Dirichlet-L/zeta adapter, but that adapter was NOT replayed locally. The other explicit trust gates are the standard contour `ZeroFreeToMertensPowerBridge` and physical-time integral `PickupVelocityPowerEnergyTransfer`.

The external rational threshold is

    theta0 =
      2804966284017490358030969257914123810640482798488248385236764587735806455694206308975383836842958115341512355256943573632654341
      /
      3211614609922119834694179379888743028634953588197852962423516288191911449231164741438582626063161096341458934143644085157872271
      ≈0.873381966613207519929026778642.

Its exact causal-energy abscissa is `r0=2theta0-1≈0.746763933226415039858053557284`. The earlier `MoebiusPR103ExactEnergyAbscissa` source already records that exact CONDITIONAL analytic threshold; we do NOT claim novelty for this rational computation or the standard map.

Choose theta_B=4367/5000=0.8734, with the STRICT verified rational inequality `theta0<theta_B` (gap about 0.0000180334), and s_B=2*theta_B-1=1867/2500=0.7468. If the PR103 theorem is accepted and adapted, the same standard classical contour gives `|M(x)|<=C_B*x^theta_B`, for one source constant C_B independent of x,j. Then the exact original energy satisfies

    H(T)<= (4*C_B^2/s_B^3)*(exp(s_B*T)-1)
         <=10*C_B^2*exp(s_B*T).                         (4)

The original complete endpoint also satisfies `endpointSum(T)<=10*C_B² exp(s_B T)+1/4`, and the existing conditional strong-packet source supplies its analogous rate with independently paid diagonal/gap/weak terms. Again, this is **CONDITIONAL on externally claimed PR103**, not a freshly accepted local or independent PR103 proof.

## 4. Two-sided complete-core strict exponent with exact rational constants

For EVERY s>7/10 and s>1/2, the elementary exponential series estimate

    exp(v)>=1+v+v²/2 for v>=0

implies for all a>0,T>=0

    T <= exp(a*T)/a,
    T² <= 2 exp(a*T)/a².                                (5)

Apply (5) to the original paid terms of (1), with a=s, s-1/2, and s-7/10 respectively. Then for H(T)<=A exp(sT),

    |R(T)| <= ( A + K_geom(s) ) exp(sT),                (6)

where the completely explicit, scale-independent original-source payment is

    K_geom(s)=8/s²+
      16/(s-1/2)+32/(s-1/2)²+
      64/(s-7/10)+8/(s-7/10)².                          (7)

Exact rational evaluation gives

    4/(19/25)^3 < 10,
    K_geom(19/25) < 4000,                               (8)

and

    4/(1867/2500)^3 < 10,
    K_geom(1867/2500) < 6000.                           (9)

They were independently evaluated as exact rational inequalities, not floating tolerances; decimal diagnostics are 3837.6505... and 5624.6265... respectively.

Consequently the ORIGINAL **COMPLETE FORMED SIGNED** geometric dense source `profileCore (7/10) T` satisfies, under Track A,

    |profileCore (7/10) T|
       <=(10*C_A²+4000)*exp((19/25)*T), ALL T>=0,     (10)

and, conditional on the separately unreplayed Track B,

    |profileCore (7/10) T|
       <=(10*C_B²+6000)*exp((1867/2500)*T), ALL T>=0. (11)

This is stronger than the previous classical PNT e^T/(log T)^A source conclusion for the complete profile, and does not discard any surviving signed long-gap pair. It is NOT an independent new zeta theorem: the improvement comes from applying a deep external fixed zero-free result to the actual original scalar source, then paying the previously derived original complete two-sided packet partition. The elementary `FullOriginalProfileTwoSidedBudgetTarget` and `PolynomialExponentialAbsorption` are still unproved-in-Lean interfaces, despite full ordinary paper proofs; the new module labels (10)-(11) as UNPROVED Lean target propositions rather than fabricated checked theorems.

## 5. Exponentially decaying relative signed imbalance across the complete source

By the earlier source-specific odd-squarefree parity argument in `MoebiusDenseSlabSignedBalance.lean`, and its full-population source containment proof in `MoebiusCompleteSignedProfileClassicalPNT.lean`, there exists an absolute c>0 such that for ALL sufficiently large J, with T_J=J log2, the same `profileCore (7/10) T_J` has BOTH ORIGINAL positive pair mass P_plus(T_J) and negative pair magnitude P_minus(T_J) at least c*2^J. This lower uses only true odd squarefree n and 2n, true index masks, and the original causal K_T; NO PNT or fixed zero-free theorem is needed for the lower. The exact finite source identity is

    profileCore (7/10) T = P_plus(T)-P_minus(T).

Combining these TWO independent kinds of source information with (10)-(11) gives the relative signed imbalance bounds

    |P_plus-P_minus|/(P_plus+P_minus)
       <= (10*C_A²+4000)/(2*c) * 2^(-6*J/25)        (12)

under the independently checked OAI 7/8 track (because 1-19/25=6/25), and

    <= (10*C_B²+6000)/(2*c) * 2^(-633*J/2500)      (13)

conditional on PR103 (because 1-1867/2500=633/2500).

Thus the FULL ORIGINAL two-sided remaining dense source has not only a strict-power signed upper but exponentially small *relative* imbalance between two linearly large true Möbius populations, for ONE fixed geometric mask and ONE fixed dyadic grid. This is a source-specific arithmetic consequence, not a central-limit or statistical-sign model. The absolute magnitude of each population may exceed cN; only its lower bound is used.

## 6. Every PR103 fixed rate above its exact boundary, uniform over the COMPLETE dyadic energy decomposition

Let `r0=2theta0-1≈0.7467639332`. For any FIXED real `r>r0` with r<1 choose

    upper=(r+1)/2,
    theta=(theta0+upper)/2.

Then theta0<theta<upper<1, and `2theta-1=(r0+r)/2<r`. The external PR103 theorem and classical bridge give one C_theta for all x≥1 and original energy `H(T)<=A_theta*exp((2theta-1)T)`. Monotonicity in the target exponential rate yields the full original endpoint bound `endpointSum(T)<=K_r*exp(rT)`, for ONE K_r independent of T and all dyadic indices; for r>=1 enlarge the concrete 0.7468 bound.

At the SAME FIXED G={T_J=J log 2}, with fixed affine coverage alpha=1,beta=log2,T0=0, the ORIGINAL time-cell nonnegative energy

    H_j=int_(T_(j-1))^(T_j) wholePickup(t)^2dt

satisfies the SAME-source-constant envelope

    H_j <= (4*C_theta²/s²)*(1/s) *
               (2^(s*j)-2^(s*(j-1))),
    s=2theta-1,                                         (14)

and the exact complete interval sum telescopes to H(T_J). The 1/4 endpoint correction is applied ONCE at J, not at every dyadic block. This is a true no-J, no-J² full dyadic uniformity proof. It does not prove integrability or the endpoint upper at the unattained boundary r=r0.

The earlier `MoebiusPR103ExactEnergyAbscissa.lean` already gives a related conditional convergence abscissa bound at r0; its target is a Laplace energy convergence set, NOT the present complete original geometric R_(7/10) **finite-horizon signed** estimate, positive/negative mass balance or single-grid endpoint family. The current contribution is the concrete and continuum full-original-source return and the independently grounded two-track verification distinction.

## 7. Verification contract, hostile controls, and remaining gap

The new module `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusFixedPowerFullProfileBalance.lean` defines exact rational source rates and fullCoreProfile=7/10. Candidate finite theorem scripts: `verified_OAI_margin`, `PR103_candidate_margin`, `PR103_candidate_rate_comparison`, `OAI_complete_endpoint_rate`, `PR103_complete_endpoint_rate`, `PR103_endpoint_all_rates_above_exact`, `PR103_fixed_grid_above_exact`, `explicit_OAI_payment_checks`, `explicit_PR103_payment_checks`. Their source inputs `PublishedOAISevenEighths`, `ExternalPR103ZetaNonvanishing`, `ZeroFreeToMertensPowerBridge`, `PickupVelocityPowerEnergyTransfer` are VISIBLE; no external theorem is falsely locally replayed or imported as an axiom. For the full geometric core, `CompleteProfileSourceComparison` and `PolynomialExponentialAbsorption` plus `VerifiedOAICompleteCoreStrictSavingTarget`, `PR103CompleteCoreStrictSavingTarget`, `ExponentialRelativeBalanceTarget` are EXPLICIT UNPROVED Lean propositions, rather than unearned theorem/axiom statements.

Hostile controls:
- A fixed-power rate for the entire endpoint from a deep external theorem is NOT a new noncircular proof of the deep theorem, and a rate for selected newly born indices would not imply the result for this fully formed dense profile.
- Neither the existing PR103 abscissa transfer nor the new endpoint family reaches the Riemann Hypothesis. The original all-positive-rate endpoint requires every delta>0, including delta<r0, with one adequately covering scale set.
- The external OAI theorem has separately reported pinned kernel acceptance; PR103 has only author-reported local compilation and axiom check in its merge description, with no completed official GitHub Actions run observed at the inspected merge SHA. Do not merge their trust statuses.
- Taking a constant dependent on a dyadic index, or allowing profileCut rho to vary with J, would destroy the claimed uniformity. Here rho=7/10 is FIXED once, C_theta is GLOBAL, and G is FIXED once.
- Signed packet Q and P_- are formed on original complete source before taking signs. The old prime-bank credit is another decomposition; do not subtract it again. The full source excluded pair cost uses both orientations and the actual n≤floor(exp T) inventory.
- A relation between enormous positive and negative populations does not prove they individually have finite exponential upper bounds at s. Only their difference is bounded at s. Equation (12) uses the lower bound on their sum, not any invented upper.
- The exact `exp(v)>=1+v+v²/2` bound must be applied with v≥0 and strict s>rho to absorb the polynomial costs. At s=rho, the previously paid geometric terms cannot be absorbed with a scale-independent K. Choosing s=.76 or .7468 and rho=.7 leaves a genuine strict margin.
- PR103 merge provenance does not establish the fully imported library built or that no untrusted source was used; require independent source-bound full-closure replay before classifying Track B as accepted.
- No local Lean/Lake executable or permitted native verification was used here. New source parsing, elaboration/compilation, exact expected types, fresh kernel and complete transitive axiom/unsafe audit ALL NOT_RUN. Finite rational arithmetic checks are not a kernel certificate. Source publication belongs in math; native verification receipts belong in Noe.

Nearest external classical method background: E. C. Titchmarsh, *The Theory of the Riemann Zeta-Function*, second edition, D. R. Heath-Brown revised. Closest prior local proof `moebius-strong-fixed-power-pr103-2026-11-02.md` already published concrete 0.747 conditional endpoint; `moebius-pr103-exact-energy-abscissa-2026-11-02.md` already published the exact conditional Laplace abscissa r0; the current work makes source-specific COMPLETE R_(7/10) two-sided exponential saving and uniform sign balance quantitative at two explicit rates.

**Outcome:** An independently checked-source OAI-based full ORIGINAL signed dense-core strict 0.76 result with exponentially decaying relative sign imbalance, plus a conditional PR103-based further improvement to 0.7468 and an exact conditional all-rates-above-r0 endpoint/dyadic theorem. All-positive-rate and canonical RH OPEN.
