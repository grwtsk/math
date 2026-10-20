# Full fixed-strip logarithmic-derivative budget from a Gamma disk

Parent math revision: `d652dd779a4d7ecc3d03149033dfcdf55c4cd8b7` (draft PR #300).
Mathlib revision: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Owners: #189 / #261, under #257.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. The ordinary derivation below is accompanied by uncompiled Lean proof scripts. No executed diagnostic assertions, numerical samples, static-parser passes, Lean acceptance or external replay are represented by this increment. These are classical complex-analysis estimates, not a prime-distribution improvement.

## 1. Target and unchanged source

Write A(s)=zeta'(s)/zeta(s), and retain the actual selected heights T_N=`separatedHeight N`, with N+1<T_N<N+2. The preceding central estimate is

    |A(sigma+iy)| <= B_N, 0<=sigma<=2, |y|=T_N, N>=2,
    B_N=80 H_N+Q_N[4(J_N+1)+1],
    H_N=log 4+3 log(N+2),
    J_N=2 H_N/log(6/5), Q_N=H_N/log(12/11).

The canonical zero sets, analytic multiplicities, selected heights, tent kernel, signed correction and arithmetic observable are unchanged. N here indexes heights, not arithmetic square intervals.

A sharp digamma asymptotic is unnecessary for the remaining negative segment. A linear height budget is already small relative to the T_N^2 denominator in the horizontal-ray estimate. Rather than introducing an unproved digamma-series identity, the new source applies the existing normalized-logarithm construction directly to the actual Gamma function.

## 2. A uniform Gamma ceiling on a fixed positive strip

Define the fixed real constant

    C = 2 + Gamma(1/2) + Gamma(9/2) >= 2.

For x>0 and 1/2<=sigma<=9/2,

    x^(sigma-1) <= x^(-1/2)+x^(7/2).

Below x=1 the smaller exponent dominates; above one the larger exponent dominates. The source retains both densities instead of applying the exponent inequality in the wrong direction below one.

Using the actual absolutely convergent Euler integral and the norm of the positive-real-base complex power gives

    |Gamma(s)|
      <= integral_0^infinity exp(-x)x^(Re(s)-1) dx
      <= Gamma(1/2)+Gamma(9/2)
      <= C,
    1/2<=Re(s)<=9/2.

This is an all-height, all-point ceiling. Its inputs are the actual Gamma source and real-strip membership, not sampled values or an externally supplied bound.

## 3. A quantitative anchor before constructing the logarithm

Let z=1/2+it. The same ceiling applies to Gamma(1-z). The exponential definition of sine gives

    |sin u| <= exp(|Im u|).

The actual Gamma reflection formula therefore gives

    pi = |Gamma(z)| |Gamma(1-z)| |sin(pi z)|
       <= |Gamma(z)| C exp(pi |t|).

Sine nonvanishing is justified before multiplying through: both Gamma factors have positive real part and are nonzero. The argument never uses Gamma's assigned value at a pole.

Two exact recurrences give

    Gamma(5/2+it)=(3/2+it)(1/2+it)Gamma(1/2+it),
    |Gamma(5/2+it)| >= (3/4)|Gamma(1/2+it)|.

Since 3*pi/4>=1, this proves the uniform quantitative floor

    exp(-pi |t|)/C <= |Gamma(5/2+it)|.

The floor is positive at each finite height. It is not a height-independent positive floor; its exponential decrease is retained.

## 4. Convert the modulus bounds to a digamma bound

For fixed real t, set

    g_t(w)=Gamma(5/2+it+w), |w|<2.

This disk lies in 1/2<Re(s)<9/2, so g_t is holomorphic and nonzero there. Invoke the existing normalized primitive construction for its actual logarithmic derivative. It produces L_t with

    L_t(0)=0,
    g_t(w)=g_t(0) exp(L_t(w)),
    L_t'(w)=g_t'(w)/g_t(w).

The source ceiling and center floor give the all-point bound

    Re L_t(w) <= log(C/[exp(-pi |t|)/C])
               = 2 log C+pi |t| =: G(t).

No global branch of log Gamma is asserted or supplied. The normalized logarithm is constructed separately on each translated disk.

Borel-Caratheodory on radius two bounds |L_t| by 14 G(t) on radius 7/4. A Cauchy circle of radius 1/4 around any point of radius at most 3/2 lies inside that middle disk. Consequently

    |L_t'(w)| <= 56 G(t), |w|<=3/2.

For 1<=Re(s)<=4, take t=Im(s). Then s-(5/2+it) is real and has norm at most 3/2. Logarithmic differentiation of the actual translated Gamma source yields

    |digamma(s)| <= 56[2 log C+pi |Im(s)|],
    1<=Re(s)<=4.

The new Lean `norm_digamma_le` has only this real-domain input. It does not assume a digamma series, a Gamma lower bound, a logarithm, or a derivative estimate. The bound is deliberately coarse, not a claim of sharp logarithmic growth.

## 5. Retain the cotangent and reflected-zeta contributions

The actual cotangent identity is

    cot z=(exp(2iz)+1)/(i[1-exp(2iz)]).

For Im(z)>=1, the exponential coordinate has modulus at most 1/2. The numerator is at most 3/2 and the denominator at least 1/2. Oddness gives the same bound for Im(z)<=-1. In particular, if |Im(s)|>=1,

    |(pi/2) cot(pi s/2)| <= 3*pi/2.

No real-axis pole or principal-value convention enters this estimate.

For -3<=sigma<0 and s=sigma+iy, the existing source-bound differentiated functional equation is

    -A(s)=-log(2pi)+digamma(1-s)+A(1-s)-(pi/2)cot(pi s/2).

All four contributions remain. The reflected point satisfies 1<Re(1-s)<=4. Its digamma term is now covered by the derived positive-strip estimate. Its zeta logarithmic derivative lies either in the existing central strip [1,2] or in Re>=2, where the unchanged actual Mangoldt line mass M_0 supplies a bound. Thus |A(1-s)|<=B_N+M_0 at the same absolute selected height.

Define

    S_N = B_N+M_0+|log(2pi)|+56 G(T_N)+3*pi/2.

The new `norm_logDeriv_fixedStrip` takes only

    N>=2, -3<=sigma<=2, |y|=T_N

and concludes |A(sigma+iy)|<=S_N. Actual nonvanishing on the negative nonreal segment is derived before the functional equation is used. For nonnegative sigma, the old central theorem and S_N>=B_N suffice. No quotient, count bound, Gamma estimate or source equality is a new application premise.

The maintained even-shift theorem then supplies the whole horizontal ray:

    |-A(sigma+iy)| <= S_N+2M_0+(2-sigma)/2, sigma<=2.

This retains the affine real-shift cost; it does not assert a bound uniform over all negative real coordinates.

## 6. The remaining limit is now elementary, but is not a new Lean declaration here

The source supplies the exact algebraic identity

    S_N = B_N + A_0 + 56*pi*T_N,
    A_0 = M_0+|log(2pi)|+112 log C+3*pi/2.

The previous `budget_eq_quadratic` writes B_N=alpha H_N^2+beta H_N for fixed positive constants alpha and beta. In ordinary mathematics, N+1<T_N<N+2 and log(N+2)/(N+1)->0 imply

    S_N/T_N^2
      = alpha(H_N/T_N)^2 + beta(H_N/T_N)/T_N
        + A_0/T_N^2 + 56*pi/T_N -> 0.

For each fixed tent geometry, the earlier ray-pair inequality therefore has a vanishing right-hand side once this scalar limit is formally connected to it. That is the next bounded formalization. This increment does NOT contain a Lean normalized-rate theorem, an actual ray-limit theorem, or a height-infinite zero-to-prime identity. A written scalar limit is not a kernel-accepted contour limit.

Canonical nontrivial-zero summability/counting at each consumer's exact scope, the complete source identity, certified finite evaluation and strict positive margins for every required arithmetic interval remain separate. Fixed-geometry contour decay alone does not prove Legendre or RH.

## 7. Source and verification boundary

The increment contains five new Lean modules (including an isolated root and eight source controls), this note, and a static target. Existing mathematical files, branches, public imports and target dispositions are not changed. The old central theorem remains restricted to [0,2]; only the new theorem covers [-3,2].

Local container/Python execution was unavailable during this increment. No diagnostic pass count, numerical Gamma/zeta sample, source-hash comparison against local files, TOML parser pass, forbidden-token scan, Lean build, axiom audit or external replay is claimed. Source review and exact GitHub object/readback inspection are narrower than those checks. All scripts may need elaboration repair, including their inherited dependencies.

## References and exact source suppliers

- Pinned Mathlib `Analysis/SpecialFunctions/Gamma/Basic.lean`: Euler integrals, their absolute convergence, Gamma recurrence, and positive real Gamma values.
- Pinned Mathlib `Analysis/SpecialFunctions/Gamma/Beta.lean`: actual Gamma reflection and nonvanishing for positive real part.
- Pinned Mathlib `Analysis/SpecialFunctions/Gamma/Digamma.lean`: digamma is the logarithmic derivative of actual Gamma.
- Pinned Mathlib `Analysis/SpecialFunctions/Trigonometric/Cotangent.lean`: actual exponential ratio for cotangent.
- Pinned Mathlib `Analysis/Complex/BorelCaratheodory.lean` and `Analysis/Complex/Liouville.lean`: the normalized logarithmic and Cauchy derivative estimates.
- Existing `NormalizedDiskLogarithm`, `LeftLogDerivative`, `HorizontalLogDerivative` and `JensenCentralLogDerivative` at the parent revision: unchanged analytic constructor and zeta interfaces.

The initially considered classical digamma series (NIST DLMF 5.7.6) is NOT used or assumed by the new Lean route. Its derivative-limit justification is consequently not an outstanding premise of the new strip theorem.
