# Exact pole–gamma mean cancellation for short-window zeta Weil positivity

By grwtsk contributors. Edition 1, 2026-11-12 (America/Los_Angeles).
MSC2020: 11M26 (primary), 11M06, 42A38, 47A63.

**Status:** WRITTEN analytical source argument plus a locally EXECUTED exact-Fraction scalar certificate. Source-to-analytic-equation formalization, Lean elaboration, complete build, fresh kernel replay, transitive axiom audit, independent mathematical review and complete repository validation: **NOT_RUN**. Originality: **UNASSESSED**. This supplies only explicitly bounded support for the unchanged arithmetic Weil form. Neither RH nor primitive Dirichlet GRH is proved.

## Exact consumer, normalization, and original source

The consumer is the zeta restriction of `WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`, via the *actual* local Weil nonnegativity premise on all complex tests in a specified interval. It does **not** supply the universal `hpositive` required for RH. Unlike the earlier two-dimensional exponential endpoint certificates, the present bounds apply to the **full native form domain** and all complex functions in it.

Fix `L>0`. Let `V_(L,1/2)` consist of complex `f in L²((0,L))` whose zero extension to all of `R` has finite original gamma energy

    Gamma(f) = integral_0^infinity k(s) ||f(.+s)-f||²_2 ds,
    k(s) = exp(-s/2)/(1-exp(-2s)),
    K(t) = integral_t^infinity k(s) ds.

The native conductor-one physical quadratic form, inner product conjugate-linear in the first argument, is **unchanged**:

    Q_zeta,L(f)=c_zeta ||f||²+Gamma(f)
              - <f,P_(zeta,L) f>+<f,R_L f>,
    c_zeta = -log(pi)-EulerGamma-pi/2-3log(2),
    P_(zeta,L) = sum_(2<=n, log n<L) Lambda(n)/sqrt(n)
                    [T_(log n)+T_(log n)^*],
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2)
            =2 cosh((x-y)/2).

The entire prime-power inventory and **both actual zeta pole orientations** remain in the definition; for `L<log(2)` the **literal** prime operator vanishes because there is no active `n`. No analytically continued zeta is replaced by its Dirichlet series outside convergence, and no claim of a nonnegative pole operator is made.

## WZPG-v1-1: retain the negative gamma rank-one term

The whole-line zero extension and Tonelli yield the exact decomposition

    Gamma(f) = integral_(0<x<y<L) k(y-x)|f(y)-f(x)|² dxdy
             + integral_0^L [K(x)+K(L-x)]|f(x)|² dx.       (1)

This identity holds for every `f` in the original logarithmic form domain; no H¹ boundary regularity is assumed. The kernel `k` is positive and decreasing. Thus `k(y-x)>=k(L)` in the interior, and the all-pairs identity

    integral_(x<y) |f(y)-f(x)|² dxdy
          = L||f||² - |integral_0^L f(x) dx|²

implies

    Gamma(f) >= integral_0^L [K(x)+K(L-x)+Lk(L)]|f(x)|² dx
                      - k(L)|integral_0^L f|².            (2)

Since `k` decreases, `K''=-k'>0`; hence `K(x)+K(L-x)>=2K(L/2)` by Jensen. Therefore

    Gamma(f) >= [2K(L/2)+Lk(L)]||f||²
                      - k(L)|integral_0^L f|².            (3)

The negative mean-square is **not** dropped. (2) is the actual WSR1/WeilGammaPhaseCoercivity source inequality, reused here rather than counted as a new independent proof.

## WZPG-v1-2: exact signed two-pole contribution to the SAME mean moment

For compact support, `R_L` is bounded and selfadjoint. Define `J_L` as the rank-one constant-kernel operator, so that

    <f,J_L f> = |integral_0^L f|².

The *actual* two-pole kernel has `R_L(x,y)=2 cosh((x-y)/2)`, and so

    <f,R_L f> = 2|integral_0^L f|² + <f,(R_L-2J_L)f>.

For all `x,y in (0,L)`,

    |2(cosh((x-y)/2)-1)| <= 2(cosh(L/2)-1).

Cauchy–Schwarz in `L²((0,L))` therefore gives the **one-sided signed** estimate

    <f,R_L f> >= 2|integral_0^L f|²
                       - e_L ||f||²,
    e_L = 2L(cosh(L/2)-1).                               (4)

This is a SOURCE-EXACT lower bound for the real pole form, **not** a declaration that the pole operator is positive. The correction `e_L` is essential: for the odd test `f(x)=x-L/2`, its integral is zero but the exact centered decomposition

    <f,R_L f> = 2|integral f(x)cosh((x-L/2)/2)dx|²
               -2|integral f(x)sinh((x-L/2)/2)dx|²

is strictly negative. This is an explicit hostile check against replacing the whole pole term by `+2J_L` without a negative-error budget.

When `L<log2`, adding (3) and (4) to the actual scalar yields, **for every original complex test**,

    Q_zeta,L(f) >= A(L)||f||² + (2-k(L))|integral_0^L f|², (5)

    A(L) = c_zeta + 2K(L/2) + Lk(L)
                 - 2L(cosh(L/2)-1).

For `k(L)<=2`, the remaining rank-one term is nonnegative, proving the **actual original arithmetic** lower sign `Q_zeta,L(f)>=A(L)||f||²`. This is the new return: the positive constant-moment pole component compensates the gamma mean penalty *before* either operator is replaced by a separate norm bound.

## WZPG-v1-3: two rationally certified support endpoints

The infinite gamma tail is evaluated exactly by elementary convergent functions:

    K(t) = atanh(exp(-t/2)) + atan(exp(-t/2)).             (6)

Put `z=exp(-L/4)`. Then

    k(L)=z²/(1-z⁸),
    2K(L/2)=2(atanh(z)+atan(z)),
    e_L=L(z^(-2)+z²-2).

The adjacent, independently runnable `WeilZetaPoleGammaCancellation.py` computes **outward rational intervals** from (6), Machin's `pi=16atan(1/5)-4atan(1/239)`, `log 2=2atanh(1/3)`, a positive atanh series for `log pi` and `log 100`, and the Euler–Mascheroni harmonic enclosure

    H_100-log(100)-1/200 <= EulerGamma
      <= H_100-log(100)-1/200+1/80000.

All finite-series remainders have explicit signed rational bounds. The strict checks are

    k(2/7)<2,      A(2/7)>1/50,
    k(7/24)<2,     A(7/24)>1/1000,
    7/24<log(2).

The script also confirms the `2/7<log2` inequality and rejects optimized Python mode so its assertions cannot be skipped. These are finite exact-rational inequalities; the checker does **not** independently formalize Tonelli, source identification, or an all-window theorem. The computed diagnostic decimal lower bounds are approximately `A(2/7)>0.0230387` and `A(7/24)>0.00195099`; neither displayed decimal participates in a sign comparison.

**Theorem (two uniform bounded-support results, all original tests).** Without RH/GRH or a zero-free input:

1. For every `0<L<=2/7` and every `f in V_(L,1/2)`, `Q_zeta,L(f)>=(1/50)||f||²`.
2. For every `0<L<=7/24` and every `f in V_(L,1/2)`, `Q_zeta,L(f)>=(1/1000)||f||²`.

**Proof of universal smaller-support quantifier.** Apply (5) only at the corresponding rational endpoint `L0`. If `0<L<=L0`, extend the given test by zero from `(0,L)` to `(0,L0)`. Its *whole-line* zero extension is unchanged, hence so is its `Gamma`, `L²` norm and both-pole correlation integral; the scalar is identical and the actual prime sum is zero in both cases because `L0<log2`. Therefore `Q_zeta,L(f)=Q_zeta,L0(f_extended)`. The fixed-endpoint inequality from (5) applies without any claim that `A(L)` is monotone, and proves the stated results. The zero test gives equality. QED.

## WZPG-v1-4: audit, prior art and unsupplied premises

**Scope separation.** This is the conductor-one zeta source, with both pole orientations and original gamma tail. It does **not** supply the full-form positivity of all primitive characters or an all-height modulus-independent estimate. The separate WFLB primitive-character bound through `log2+1/32`, with its genuinely active n=2 phase, remains unchanged. Nor does the present fixed short-window result turn the WED1024 zeta exponential endpoint certificate (through `log1024`) into all-test positivity: its orthogonal complement and mixed couplings remain open.

**False shortcut excluded.** The pole operator itself is indefinite. Equation (4) is a comparison with a positive rank-one mean term **and a proven negative error**. Any calculation replacing `R_L` by `2J_L` without `e_L`, or treating `Gamma` as positive after dropping its negative mean in (3), is invalid. The rapid decline of `A(L)` as `L` increases also prevents interpreting these endpoints as an all-window positivity claim. Numerically `A(3/10)<0`, so this particular coarse comparison cannot establish positivity on the full test domain up to `L=3/10`, although this is **not** a counterexample to Weil positivity or RH.

**Relationship to earlier maintained arguments:**
- `WeilShortWindowRankOne.md` (WSR1-v1-3) supplies the source identity (2).
- `WeilShortWindowConvexGammaExtension.md` supplies Jensen's boundary coercivity for the literal gamma kernel.
- `WeilZetaPoleRankOneReturn.md` establishes the exact signed cosh/sinh moment decomposition of the original zeta pole form.
- `WeilFirstPrimeLogBarrier.md` previously reached full-test zeta support `L<=1/5` with margin `1/200`, while WED1024 covers only the two-dimensional endpoints up to `log1024`.

**Classical comparison:** Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I* (Rendiconti Lincei 11 (2000), 183–233), §12 Theorem 12, proves an inequality yielding small-support positivity, with reference to Yoshida's earlier work. Our contribution is an explicit local normalization-specific pole–gamma cancellation and rational endpoints; no claim is made that small-window Weil positivity or this proof method is new. Full independent prior-art search/review is `UNASSESSED`.

**Evidence and provenance:** Source-only written proof `WZPG-v1-1` through `WZPG-v1-4`, plus the explicit scalar fixture. No new Lean declarations, no `sorry`/`admit`, no new research axiom, no root import, change of mathlib/Lean pin, or change of the canonical RH/GRH target. Initial inspected `grwtsk/math/main` commit `4aaf5eea7f62c1f8f2e54d2f29c93c5750ebc8cd`, root tree `4374392afb759f588f6074c37bdbffd8d7b8cb4f`, Lean `leanprover/lean4:v4.34.1`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Mathematical coordination issue `#1801`. A local trusted Noe skill checkout was not present, and canonical `noe-proof-automation` and `noe-math-chat-bridge` skills at Noe main `45b0447fd8f061f8d041b8ef21ed5c29ccfdbd3d` returned HTTP 404; no covered proof automation was attempted. Ordinary source edits and publication do not invoke Noe. Elaboration, full build, kernel replay, transitive axiom audit, independent review and repository-wide validation are `NOT_RUN`. Novelty `UNASSESSED`.
