# Exponential loss in the original zeta termwise H1 absolute budget

Attribution: grwtsk contributors. Date: November 13, 2026, America/Los_Angeles.
Maintained role: original-source analytic obstruction and route-selection evidence for RP-OC-02, before attempting a global growing-window signed Weil lower bound.
Exact consumers: WeilSignedArithmeticH1Budget.zetaOddPhysical_abs_H1_le; WeilExactZetaPoleH1.supportedOddPoleMomentBound_of_L2; WeilSignedRealMixedPolarization.zetaRealPhysical_difference_sq_H1_continuity; and the original zeta physical source WeilPhysicalSineNegativeReturn.zetaOddPhysicalValue.
Evidence: COMPLETE_WRITTEN_ELEMENTARY_PROOF and EXACT_SYMBOLIC_POLYNOMIAL_CHECK. No new Lean declarations. Lean compilation/kernel checking of the cited historical source candidates NOT_RUN. This note does not prove RH or Dirichlet GRH.

## 1. The precise original source and the limitation being tested

For a real test f supported in [-T,T], the original odd zeta physical quadratic source contains a NEGATIVE pole contribution

    Pole_T(f) = -2*m(f)^2,
    m(f) = integral_R f(t)*sinh(t/2) dt.

Its signed prime-power and positive gamma contributions remain distinct and are NOT analyzed or removed here.

The prior fixed-window diagonal H1 absolute budget uses

    |Q_zeta,T(f)| <= A_zeta(T)*E(f) + (7/12)*D(f),

    A_zeta(T) =
      |gammaConstant(1,0)|
      + primeMass(T)
      + 2*ExactGammaTail.tailUpper(0,1)
      + 2*(sinh(T)-T),

    E(f)=integral_R f(t)^2 dt,
    D(f)=integral_R f'(t)^2 dt.

All displayed summands of A_zeta are nonnegative for T>0: the absolute conductor constant by definition, primeMass by the original von Mangoldt coefficient theorem, tailUpper(0,1) by the positive exponential numerator and denominator, and sinh(T)-T by the real sinh lower comparison.

The last term is the SHARP supported-L2 cost of the original negative pole. It is NOT a favorable lower bound for the signed full Weil form; it is an absolute majorant component.

### Unavoidable exponential growth of this particular coefficient

For every T>=4,

    A_zeta(T) >= 2*(sinh(T)-T)
              = exp(T)-exp(-T)-2*T
              >= exp(T)/2.                            (E1)

Elementary proof of the last inequality: at T>=4, the positive exponential Taylor lower bound gives

    exp(T) >= 1+T+T^2/2+T^3/6
           >= 1+5*T
           >= 2+4*T
           >= 2*exp(-T)+4*T.

Rearrange to obtain exp(T)/2 >= exp(-T)+2T, establishing (E1). No prime number theorem or zero-free region enters.

Equation (E1) is a statement about the CURRENT ABSOLUTE continuity coefficient. It does NOT prove that every possible continuity coefficient or the complete signed Q_zeta has this growth, since arithmetic and archimedean terms can cancel in Q.

## 2. A single explicit smooth odd family with constant H1 AND H2 norms

Define a real compactly supported polynomial bump

    b(u) = u^3*(1-u)^3  for 0<=u<=1,
           0            otherwise.

Because b, b' and b'' vanish at 0 and 1, its zero extension is globally C2, with compact support. It is nonnegative and not identically zero.

For each T>=2, set

    f_T(t) = b(t-(T-1)) - b(-t-(T-1)).                (E2)

This is an honest real odd function:
f_T(-t)=-f_T(t). Its two disjoint supports are [T-1,T] and [-T,-T+1], so f_T belongs to C_c^2(R), its values and first two derivatives vanish at +/-T, and its topological support is contained in the CLOSED interval [-T,T]. Its support touches +/-T, so f_T is NOT compactly supported inside the OPEN interval (-T,T). For a strict interior C_c^2((-T,T)) source, choose any fixed 0<epsilon<1/2 and replace each occurrence of T-1 in (E2) by T-1-epsilon. For T>=3 the two shifted supports lie strictly inside (-T,T), all Sobolev masses in (E4) stay EXACTLY the same, and the pole lower bound in (E6) becomes exp(T-1-epsilon)/39200. Thus the exponential obstruction persists on the stricter open-window test class.

The elementary exact polynomial integrals are

    integral_0^1 b(u)du        = 1/140,
    integral_0^1 b(u)^2du     = 1/12012,
    integral_0^1 b'(u)^2du    = 1/770,
    integral_0^1 b''(u)^2du   = 2/35.                (E3)

Because the two translates are disjoint, their whole-line squared masses add without a cross term. Consequently

    ||f_T||_L2^2     = 1/6006,
    ||f_T'||_L2^2    = 1/385,
    ||f_T''||_L2^2   = 4/35,

    ||f_T||_H1^2
      = ||f_T||_L2^2+||f_T'||_L2^2
      = 83/30030,

    ||f_T||_H2^2
      = ||f_T||_L2^2+||f_T'||_L2^2+||f_T''||_L2^2
      = 703/6006.                                    (E4)

All five quantities in (E4) are INDEPENDENT OF T. In particular, control of both first and second physical derivatives alone does not suppress a growing-window zeta pole.

## 3. Lower growth of the ORIGINAL signed zeta pole on this family

The original odd moment is exactly

    m_T = integral_R f_T(t)*sinh(t/2)dt
        = 2*integral_0^1
            b(u)*sinh((T-1+u)/2)du.                 (E5)

Both pieces in (E2) contribute with the SAME positive sign: f_T is odd and sinh is odd, so their product is even. This sign accounting is essential.

For T>=2, 0<=u<=1 implies x=T-1+u>=1. Using the exact identity

    sinh(x/2) = (exp(x/2)/2)*(1-exp(-x))

and exp(-x)<=exp(-1)<1/2, one has

    sinh((T-1+u)/2)
      >= exp((T-1+u)/2)/4
      >= exp((T-1)/2)/4.

Inserting into (E5) with the exact nonnegative bump mass 1/140 gives

    m_T >= exp((T-1)/2)/280,

    |Pole_T(f_T)| = 2*m_T^2
      >= exp(T-1)/39200.                             (E6)

Normalize by the two FIXED physical Sobolev norms (E4):

    |Pole_T(f_T)| / ||f_T||_H1^2
      >= (429/46480)*exp(T-1),

    |Pole_T(f_T)| / ||f_T||_H2^2
      >= (429/1968400)*exp(T-1).                      (E7)

This is an explicit exponential lower bound for the OPERATOR MAGNITUDE OF THE ISOLATED NEGATIVE POLE on expanding support windows, tested on uniformly bounded real odd C2 sources. It remains valid with the ORIGINAL zeta pole sign: Pole_T(f_T)<=-exp(T-1)/39200.

There is no assumption on primes, unverified zeros, the RH/GRH sign, a substitute kernel or an auxiliary matrix.

## 4. Independent mathematical diagnostics

The rational integrals in (E3) were separately evaluated exactly by SymPy. Direct 65-decimal mpmath integration of the actual source moment (E5) gives the following non-certified spot checks:

| T | Actual m_T | Actual 2*m_T^2 | Guaranteed lower exp(T-1)/39200 |
|---:|---:|---:|---:|
| 2 | 0.011788229391340801 | 0.000277924704365742 | 0.000069343924 |
| 4 | 0.040001672554001528 | 0.003200267614235118 | 0.000512386146 |
| 6 | 0.111663383165259584 | 0.024937422279823155 | 0.003786049977 |
| 8 | 0.304609535806531600 | 0.185573938608541313 | 0.027975336 |

These checks only verify normalizations and provide sanity tests. The proof of (E3)-(E7) is elementary and does not rely on decimal sampling. The displayed decimals are not outward-rounded certified intervals or formal Lean kernel evidence.

## 5. Consequence for RP-OC-02 and the cofinal RH/GRH strategy

The original real zeta source is

    Q_zeta,T(f) =
      gammaConstant(1,0)*E(f)
      + Gamma_0(f)
      - primeEnergy(T,f)
      + Pole_T(f),

where the original pole is NEGATIVE as in (E6).

The fixed-window H1 continuity theorem is valuable for approximating a physical source by the literal finite sine projections, but the technique that separately replaces each signed term by its absolute magnitude incurs the exponential growing-window cost (E1)/(E7). It therefore CANNOT, by itself, establish a cofinal subexponential LOWER bound for the complete original arithmetic Weil matrices: the growing pole must be explicitly canceled, compensated, or treated with additional structure.

**Do not infer a full-form exponential lower bound or a contradiction.** In Q_zeta the gamma and prime-power contributions can have either compensating influence. This note proves only the loss in the isolated pole/termwise absolute budget. A separate source-exact cancellation theorem might yield a better bound for the COMPLETE signed form.

The primitive nonprincipal REAL conjugate-pair source has no zeta pole; this obstruction is zeta-specific. The full individual COMPLEX character GRH criterion is still distinct from a real-pair model. Neither is resolved by (E1)-(E7).

A useful next route is therefore a signed joint estimate on the actual prime/pole/gamma sum, or a direct proof of source-specific cancellation along the chosen cofinal windows, rather than another absolute norm bound. The decisive source-exact off-critical-zero-to-negative-physical-test amplifier and the full all-mode original signed arithmetic cofinal lower budget are still UNPROVED. RH and Dirichlet GRH remain UNSOLVED.

## 6. Assurance, limitations, and provenance

This document introduces NO Lean source candidate and NO uncompiled proof declarations. It is a complete stand-alone elementary mathematical note with exact rational integrations and source checks; it is not a formalized Lean theorem. The cited existing source modules and their transitive imports remain uncompiled in this environment. There is no toolchain-provided kernel acceptance, transitive axiom audit or independent full mathematical review.

Pinned source: grwtsk/math main, Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, as checked for this revision. No existing original signed Weil source, matrix, prime, gamma, pole, conductor, or build configuration is modified by this note.

Source pointers: WeilSignedArithmeticH1Budget.zetaOddPhysical_abs_H1_le; WeilExactZetaPoleH1.sourceSinhWindow_sq_integral and supportedOddPoleMomentBound_of_L2; WeilSignedRealMixedPolarization.zetaRealPhysical_difference_sq_H1_continuity; WeilPhysicalSineNegativeReturn.zetaOddPhysicalValue; WeilLowSchurEnclosure.primeMass_nonneg.

No Noe proof automation, cross-chat messaging, browser worker, scheduler or background action. Novelty not asserted.
