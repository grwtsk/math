# Quantitative fixed-window H¹ sine return for the original Weil source

**Attribution:** grwtsk contributors. **Date:** 2026-11-13 (America/Los_Angeles).
**Maintained Lean candidate:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilH1SineProjectionReturn.lean`.
**Mathematical consumer:** `WeilPhysicalSineNegativeReturn.NativeProjectedEnergyUpper`, on the original real odd zeta or primitive nonprincipal paired Dirichlet source.
**Status:** written conditional analytical consumer, manually authored Lean source candidate; Lean compilation, kernel checking, transitive axiom audit, and independent mathematical review NOT_RUN. Neither RH nor Dirichlet GRH is proved.

## 1. What is actually discharged, and what is not

The preceding `WeilGammaBlockReturn.lean` supplies candidate exact equalities of the physical form on each finite sine expansion with the original `zetaSineMatrix` or `primitivePairSineMatrix`. The earlier physical witness route still assumes `NativeProjectedEnergyUpper`, meaning that every fixed physical source f can be returned to a finite matrix to arbitrary positive source-energy accuracy. The new source replaces that opaque projection-accuracy hypothesis by explicit **test-specific H¹ estimates**, a frequency cutoff, and the inherited source-matrix equality. It does not obtain these H¹ estimates from arbitrary L² tests.

The source data structure `NativeH1ProjectionData Q T f` retains an H¹ norm upper bound H≥0, the physical Weil-form H¹ continuity coefficient C≥0, a second-derivative L² bound D≥0, and a supplied nonnegative sequence e_M of H¹ approximation-error allowances for the first-M Dirichlet sine projection. The structure does not itself define a Sobolev norm or establish that e_M is the actual error. Its two key source-specific assumptions are

    e_M <= 2D/omega_M                 when omega_M >= 1,
    |Q_T(P_M f)-Q_T(f)| <= C*(2H+e_M)*e_M,
    omega_M=pi*(M+1)/T, T>0.

Crucially, the first inequality is asserted **only when omega_M>=1**: the weaker bound 2D/omega_M is not a generally valid consequence of the standard sqrt(omega_M^-4+omega_M^-2) D estimate at small frequencies. The strict frequency gate fixes that low-mode trap.

The written argument establishing the inputs on real odd smooth compactly supported H² functions is classical:

1. The exact Dirichlet-sine spectral Parseval identity, twice integrated by parts, gives `||f-P_M f||_2 <= D/omega_M²` and `||(f-P_M f)'||_2 <= D/omega_M`. The endpoints of the sine polynomials vanish, so their whole-line zero extensions remain H¹ and no endpoint delta distribution is introduced.
2. Thus `e_M <= sqrt(omega_M^-4+omega_M^-2) D <= 2D/omega_M` for omega_M>=1. This is **not yet an imported Lean H¹ approximation theorem**.
3. The source-local `WeilH1SourceContinuity.md`, Section IV, proves in written mathematics the stated physical-form continuity bound with the original prime inventory, gamma kernel, conductor and parity. In the zeta case it retains the **negative odd pole**, and in the nonprincipal paired-character case it retains the exact real character weights. This is **not yet an imported Lean Sobolev theorem**.
4. The exact source-matrix identities are the manually drafted `WeilGammaBlockReturn.zeta_matrix_eq_physical` and `.primitive_matrix_eq_physical`, preserving the same source and test.

Consequently, this module's contribution is an exact **quantitative finite-mode consumer of those two written analytical inputs**, not a claim that they have already passed Lean kernel verification.

## 2. A constructive mode threshold

Let epsilon>0, T>0, H,C,D≥0. Define

    eta = min(1, epsilon / (1+C*(2H+1))) > 0,
    R   = max(1, 2D/eta).

Choose any natural M such that

    pi*(M+1) >= T*R.                                       (A)

Then omega_M>=R≥1, so e_M≤2D/omega_M≤eta≤1. The physical continuity inequality yields

    |Q_T(P_M f)-Q_T(f)|
       <= C*(2H+e_M)*e_M
       <= C*(2H+1)*eta
       <= (1+C*(2H+1))*eta
       <= epsilon.

Thus, without any minimax principle or spectral-gap premise,

    Q_T(P_M f) <= Q_T(f) + epsilon.                         (B)

Under the original finite-sine matrix/source equality, (B) is precisely the missing `NativeProjectedEnergyUpper` for that fixed f and support. Since `M` can be chosen using `M+1 >= T*R/pi`, the existential quantifier has a concrete witness; it may depend on the character, zero, physical test and desired energy tolerance. No one cutoff sequence is presumed to work for every hypothetical zero.

The new Lean source has `exists_sine_cutoff`, `physical_energy_upper_at_cutoff` and `native_projected_energy_upper_of_h1` for the scalar and source-generic steps, followed by actual zeta and primitive-source consumers. The exact-sector consumers use the inherited unmodified matrix definitions rather than a surrogate operator.

## 3. Quantitative negativity survives projection

If `Q_T(f) <= -d` for some d>0, replace epsilon in (A) by d/4. Every sufficiently large M then satisfies

    Q_T(P_M f) <= -3d/4 < 0.                               (C)

With the original matrix identity,

    quadratic(A_(T,M), sineCoordinates(T,M,f)) <= -3d/4.

The imported exact odd-sine Parseval/Bessel theorem `source_sine_bessel` additionally gives, when f is a supported odd L² test and `||f||²<=K`,

    sum_(i<M) sineCoordinates(T,M,f)[i]² <= K.              (D)

The source adds `native_negative_at_cutoff_of_h1`, `zeta_negative_matrix_at_cutoff` and `primitive_negative_matrix_at_cutoff`. They retain **both the strict negative margin and the actual coefficient mass**. This eliminates a separate normalization or eigenvector choice. It does not construct a negative physical test from a hypothetical off-line zero, and does not prove a lower bound on the complete Weil form.

## 4. Independent arithmetic and Fourier check

The test `f(t)=t(1-t²)^3` for |t|≤1, extended by zero, is real odd, H² and genuinely compactly supported. Direct exact rational polynomial integration gives

    ||f||_2²    = 2048/45045,
    ||f'||_2²   = 3072/5005,
    ||f''||_2²  = 1024/77.

An independently executed 60-digit mpmath check used the actual sine coefficients (no model matrix) and the true fixed-window zeta continuity coefficient suggested by the written H¹ source analysis:

    gammaConstant(1,0) = -5.37218341922566558...,
    primeMass(1)        =  5.85246836435281803...,
    C_zeta,1            = 22.120497162097058...,
    H                  =  0.811943261103791...,
    D                  =  3.64673844670841....

For epsilon=1, formula (A) permits M=137, with eta≈0.01693719 and an upper error bound `2D/omega≈0.01682309`; the resulting *bound on the possible source-energy perturbation* is at most 0.61475, below epsilon. This is an intentionally conservative cutoff, not an optimal spectral computation.

| M | Retained L² fraction | Actual H¹ error | Sharp H¹ bound | 2D/omega bound |
|---:|---:|---:|---:|---:|
| 1 | 0.883053939317 | 0.472072316072 | 0.587701287725 | 1.16079289991 |
| 2 | 0.996945168831 | 0.115106162258 | 0.389102887786 | 0.773861933276 |
| 4 | 0.999975285705 | 0.0175881087741 | 0.232628555921 | 0.464317159966 |
| 8 | 0.999999903594 | 0.0020258352815 | 0.129057630960 | 0.257953977759 |
| 16 | 0.999999999740 | 0.000202686643305 | 0.0682939038015 | 0.136563870578 |

All numerical inequalities held with substantial slack, and the polynomial norms were independently recomputed as exact rational fractions. These numerical experiments are **not certified interval evaluations**, do not establish the full physical Weil-form sign for this test, and are not Lean verification. The previously written continuity coefficient is used as an input rather than silently certified by the numerical experiment.

## 5. Audit boundaries and remaining obligations

- **Written analytic proof to formalize in Lean:** Sobolev sine coefficient derivative Parseval/IBP, true finite H¹ approximation on the odd supported source domain, and the fixed-window full physical Weil-form H¹ continuity inequality. These must retain the actual signed zeta pole, every prime power, gamma parity and conductor, and show their relevant integrals are genuine and finite.
- **Kernel/build:** pinned Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, full import elaboration, fresh kernel replay, and transitive axiom audit have not been run in the available environment. No passing CI status is inferred from static source checks.
- **Root-specific analytic bridge still open:** hypothetical off-critical zero -> compact negative REAL ODD physical Weil tests with the claimed exponential growth and bounded L² norm, retaining the completed source and full zero orbit. The physical test must also have the smoothness needed above, with its own H,C,D allowances paid.
- **Decisive arithmetic estimate still open:** universal cofinal all-dimension original Weil-form lower budgets with subexponential logarithmic rate. Local finite support positivity, finite Gram certificates, and the present projection theorem do not discharge this condition.

Attribution and primary sources: grwtsk contributors' WeilOddSineProjection/WeilOddSineParseval/WeilH1SourceContinuity/WeilGammaBlockReturn and WeilPhysicalSineNegativeReturn; the supplied Noeaaeue 07-GLOBAL-RH-GRH-ROUTES.md, src.lower-growth (2026-11-05); Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1, equations (3.19)--(3.20); Connes, arXiv:2602.04022v1 §4.1. No novelty assertion.

**Status summary:** manual SOURCE_PROOF_CANDIDATE; complete elementary real-variable cutoff proof; actual-sector conditional root source consumer; independent polynomial/Fourier diagnostics PASS (not certified); Lean elaboration/kernel/audit/independent review NOT_RUN; RH and Dirichlet GRH NOT_PROVED. Canonical Noe proof-automation skill was unavailable at the latest checked main revision; no dependent Noe automation or background runtime was invoked.
