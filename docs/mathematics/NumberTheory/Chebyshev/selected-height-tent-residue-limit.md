# Selected-height tent residue limit

Parent math revision: `dacb16b01352b6513c00093f60de6a37a1f440c0` (draft PR #301).
Mathlib revision: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Owners: #189 / #261, under #257.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. The Lean scripts and their entire inherited stack remain uncompiled. No executed diagnostic assertions, numerical samples, automated static checks or external replay are represented here. The new conclusions are classical analysis, not new prime-distribution estimates.

## 1. Retain the exact source and index separation

For fixed tent geometry h>0 and a=x-h>1, retain the normalized triangular Mellin kernel M_(x,h), the actual integrand

    F_(x,h)(s) = -zeta'(s)/zeta(s) * M_(x,h)(s),

and the independently specified signed correction C(x,h). Let T_N=separatedHeight N. The same actual zero inventory supplies N+1<T_N<N+2 and boundary avoidance. No new height sequence or observed zero file is introduced.

The contour-height index N is independent of the arithmetic square-interval index n. The negative-odd left-cutoff limit has already been taken at each fixed height to define actual horizontal rays. This increment takes a subsequent height limit. It does not exchange limits without a theorem and does not select a diagonal left-cutoff schedule.

## 2. Discharge the scalar growth condition

Retain

    H_N = log 4 + 3 log(N+2),
    B_N = alpha H_N^2 + beta H_N,
    alpha = 8/[log(12/11) log(6/5)],
    beta = 80 + 5/log(12/11),
    S_N = B_N + A_0 + 56 pi T_N,
    A_0 = M_0 + |log(2pi)| + 112 log C_Gamma + 3pi/2,
    C_Gamma = 2 + Gamma(1/2) + Gamma(9/2).

Here S_N is literally the existing stripBudget, and M_0 is the existing actual Mangoldt line mass. Their mathematical suppliers are unchanged.

Pinned Real.tendsto_pow_log_div_mul_add_atTop, evaluated at N+2 with affine denominator x-1, gives log(N+2)/(N+1)->0. The positive lower bound T_N>N+1 then gives H_N/T_N->0 by squeezing. Also 1/T_N->0. Consequently

    B_N/T_N^2 = alpha(H_N/T_N)^2 + beta(H_N/T_N)(1/T_N) -> 0,
    S_N/T_N^2 = B_N/T_N^2 + A_0/T_N^2 + 56pi/T_N -> 0.

The new ReflectedStripDecay module implements these implications without a supplied growth-rate premise. It also transports fixed real coefficients:

    [(S_N+c)d+e]/T_N^2 -> 0.

The coefficients c,d,e are fixed as N grows. This theorem does not permit substituting unbounded index-dependent geometric constants.

## 3. Both actual horizontal rays vanish separately in norm mass

The existing horizontal rays are literal absolutely convergent integrals

    H_(x,h)(y) = integral_(-infinity)^2 F_(x,h)(sigma+iy) d sigma.

The old affine real-shift cost has already been integrated into two fixed geometric constants D_0=horizontalBudget(x,h) and D_1=shiftMomentBudget(x,h). The new scalar definition is

    E_N(x,h) = [(S_N+2M_0)D_0 + D_1]/T_N^2
             = affineRayBudget(x,h,S_N+2M_0)/T_N^2.

For N>=2 and either y=+T_N or y=-T_N, actual fixed-strip control supplies every pointwise premise of the old ray inequality:

    integral_(-infinity)^2 |F_(x,h)(sigma+iy)| d sigma <= E_N(x,h).

The new source proves E_N>=0 on the geometric domain and E_N->0. Hence the full norm integral tends to zero for EACH sign, and even for any sequence choosing either sign at each N. The two low indices N=0,1 are discarded only through an explicit eventual N>=2 argument; their pointwise bounds are not asserted.

It follows that

    H_(x,h)(T_N)->0,
    H_(x,h)(-T_N)->0,
    [H_(x,h)(T_N)-H_(x,h)(-T_N)]/(2pi i)->0.

Separate convergence is not inferred from cancellation between the rays. The top-minus-bottom orientation, vertical differential, both signed strips, and extra affine-shift moment D_1 remain.

The quantitative combined bound is

    |[H_(x,h)(T_N)-H_(x,h)(-T_N)]/(2pi i)| <= E_N(x,h)/pi.

There is no growing left-cutoff or contour-width factor. The constants still depend on fixed x,h; no uniform estimate over all arithmetic intervals is proved.

## 4. The complete finite residue expressions converge to the arithmetic source

Let

    Z_N(x,h) = sum_(rho in heightHead(T_N)) m(rho) M_(x,h)(rho).

This notation in the note denotes the existing finite expression, not a new zero observable or a fitted spectral family. Full complex locations, both height signs, actual positive analytic multiplicities and closed cutoff membership are unchanged.

The already derived fixed-height formula is

    R(T_N)/(2pi) = h-Z_N(x,h)+C(x,h)
                  +[H_(x,h)(T_N)-H_(x,h)(-T_N)]/(2pi i),

where R is the upward right parameter integral. Thus the new source bounds the exact finite-right-integral defect by E_N/pi.

For a fixed n>=2, set x=squareCenter n and h=squareRadius n. The existing actual Perron/right-line theorem gives R(T_N)/(2pi)->W_n, where W_n is the unchanged squareTentMangoldt n. Subtracting the now vanishing literal horizontal correction gives

    h-Z_N(x,h)+C(x,h) -> W_n,
    Z_N(x,h) -> h+C(x,h)-W_n.

These are the new finite_residues_tendsto_squareSource and selected_zero_sums_tendsto declarations. Their application inputs are only n and n>=2. No source equality, zero-count bound, quotient, growth rate, summability or prime margin is supplied by the caller. The inherited proofs themselves still require exact-head elaboration and trust review.

This supplies the selected-height smoothed explicit-formula limit at SOURCE-DRAFT scope. It is not the unsmoothed Chebyshev staircase identity, a formula at every arbitrary cutoff sequence, or an evaluated numerical certificate.

At a finite height, the bound E_N/pi controls the difference from the FINITE RIGHT INTEGRAL. Replacing that integral by W_n also requires its truncation error:

    |W_n-[h-Z_N+C]| <= |W_n-R(T_N)/(2pi)| + E_N/pi.

This increment uses the established convergence of the first term; it does not supply a new certified numerical bound for it. Reporting E_N/pi alone as the full arithmetic truncation error would be invalid.

## 5. The unordered sum is deliberately a separate theorem

The new selected_heightHead_tendsto_atTop proves that every finite subset of actual zero points is eventually included in the same selected heads. It is derived from exact heightHead membership and T_N->infinity, by induction on the finite subset.

Cofinality transports an ALREADY Summable family to its tsum. It does not turn convergence along one cofinal sequence into convergence of the full finite-subset net. The new square_source_eq_tsum_of_summable therefore retains the explicit premise

    Summable (rho -> m(rho) M_(x,h)(rho)).

Only with that premise does it conclude

    W_n = h - tsum_(rho : ZeroPoint) m(rho) M_(x,h)(rho) + C(x,h).

No existing canonical prime-consumer premise was edited or weakened. The next mathematical supplier is genuine canonical zero-family summability from the actual local counting estimate and inverse-height kernel decay, followed by the correctly scoped complete tail estimate.

The source controls include the synthetic sequence (-1)^k. Its even initial segments are cofinal among finite subsets and their sums are zero, while the absolute mass is 2N and the terms do not tend to zero. The source therefore proves that this family is not Summable. This is a summation-order control, not a model of actual zeta zeros.

## 6. Verification and preserved boundaries

The increment contains five Lean modules, this note, and a static target. Manual inventory: one definition and 37 theorem declarations, including nine controls; 38 public names. These counts are not parser-verified or kernel-accepted result counts.

Container and Python calls failed with service-unavailable errors during preparation. No local numerical checker, TOML parser, forbidden-token scanner, local byte-hash comparison, Lean build, axiom audit or external replay was executed. Git object identities, exact-head source readback and additive comparison are narrower than those checks. All new and inherited proof scripts may require elaboration repair.

No worker action, build request, deployment, execution-hold release, merge or issue closure is included. No actual zero enumeration, zero-value evaluation or prime certificate is produced.

The remaining boundaries are genuine unordered/absolute zero-family convergence at the exact consumer scope; effective finite-right and omitted-zero budgets; a certified finite evaluator; and strict positive prime margins with the required all-interval quantifiers. The selected-height explicit formula alone proves neither Legendre nor RH.

## Pinned source suppliers

- Mathlib Analysis/SpecialFunctions/Log/Basic.lean, revision db584cd6d46c92f209a44c0f1c829460d327499d: tendsto_pow_log_div_mul_add_atTop.
- Existing ReflectedStripBudget and JensenCentralLogDerivative: the full source bound and exact scalar decomposition.
- Existing TentHorizontalRayMajorant and TentHorizontalRays: complete norm-mass bounds, literal absolutely convergent rays and fixed-height oriented identity.
- Existing SeparatedContourHeights and SeparatedTentContours: the unchanged selected heights, exact canonical membership and actual arithmetic right-line limit.

The inherited target obligations remain in force. A successful source transport or Git mergeability result is not Lean acceptance.
