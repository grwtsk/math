# A cubic ceiling on the local Jensen circles

This note advances the actual circle-modulus supplier for the local count in #189/#261. Its result is a classical, unconditional inequality for the actual Riemann zeta function. It is a written mathematical derivation, **not a Lean-accepted result**. The accompanying Lean increment establishes proof drafts for the finite Euler--Maclaurin identity, its power specialization, the full disk geometry, and the norm algebra. It does **not** yet formalize the infinite remainder's convergence/holomorphy or its identification with `riemannZeta` by analytic continuation. Existing Jensen and prime-consumer hypotheses remain unchanged.

Reviewed parent: `3ffdcef557222c92baafe6b71992aef8ffd799c9` (PR #293). The maintained mathematical source, exact complex zero locations, analytic multiplicities, band conventions, selected heights, kernels and arithmetic observables are retained. Mathlib is pinned to `db584cd6d46c92f209a44c0f1c829460d327499d`; Lean is `leanprover/lean4:v4.33.0`. All new Lean proof scripts are **NOT_RUN / NOT_KERNEL_AUDITED**.

## 1. Result and exact domain

For an integer N >= 2, retain

\[
c_N^\pm=2\pm i(N+3/2),\qquad v=N+2.
\]

Every point s in either closed disk of radius 3 satisfies

\[
\boxed{|\zeta(s)|\le (N+2)^3.}
\]

In particular this is an all-point bound on the two outer circles used by `LocalJensenCount`. It is not a bound extrapolated from samples, and it does not assert that either disk is zero-free. It uses no RH assumption and no numerical zero data. The disks are pole-free for N >= 2. Their low-stage analogues N=0,1 contain the pole and are outside the claim.

Combining this ceiling with the established ordinary-mathematical center floor |zeta(c_N^pm)| >= 1/4 and the maintained analytic Jensen estimate yields

\[
\boxed{\operatorname{bandMass}(N)\le
\frac{2[\log 4+3\log(N+2)]}{\log(6/5)}.}
\]

This counts analytic multiplicities over both signs in N < |Im rho| <= N+3. The written estimate is unconditional; **the repository does not yet have a Lean theorem discharging the circle ceiling from this note**.

## 2. A finite identity before any continuation

Use the normalized Bernoulli polynomials on 0 <= u <= 1:

\[
b_1(u)=u-1/2,\quad b_2(u)=(u^2-u+1/6)/2,\quad
b_3(u)=u(u-1/2)(u-1)/6.
\]

Their derivatives satisfy b_1'=1, b_2'=b_1, b_3'=b_2. Their endpoint values are

\[
b_1(0)=-1/2,\ b_1(1)=1/2,\quad
b_2(0)=b_2(1)=1/12,\quad b_3(0)=b_3(1)=0.
\]

For a complex-valued C^3 function f on a neighborhood of a unit cell, direct differentiation gives

\[
\frac{d}{du}\{b_1f-b_2f'+b_3f''\}=f+b_3f'''.
\]

Thus the fundamental theorem of calculus gives the exact one-cell identity

\[
f(0)=\int_0^1 f(u)\,du+
\frac{f(0)-f(1)}2+
\frac{f'(1)-f'(0)}{12}+
\int_0^1 b_3(u)f'''(u)\,du.
\]

In particular, the sign of the remainder is positive at this generic stage. For f(t)=t^{-s}, its third derivative is -s(s+1)(s+2)t^{-s-3}, which produces the negative sign below. The normalized b_3 already contains 1/3!; inserting another factor 1/6 is incorrect.

Let L >= 2 be an integer and define the actual finite remainder

\[
R_L(s)=\sum_{k=1}^{L-1}\int_0^1 b_3(u)(k+u)^{-s-3}\,du.
\]

Apply the one-cell identity to t -> (k+t)^(-s) and add the cells. Every adjacent endpoint telescopes, giving, for s != 1,

\[
\sum_{k=1}^{L-1}k^{-s}
=\frac{1-L^{1-s}}{s-1}+\frac{1-L^{-s}}2
+\frac{s}{12}(1-L^{-s-1})-s(s+1)(s+2)R_L(s).
\tag{1}
\]

The upper endpoint L occurs in three terminal powers. None is discarded at finite scope. This is the q=1, z=-s specialization of the accompanying `finite_power_sum` draft. There is no division by s or s+1, so their zero values are not excluded. Only the logarithmic primitive at s=1 requires separate treatment.

## 3. The actual infinite remainder and its domain

The factorization gives

\[
|b_3(u)|=\frac{u(1-u)|u-1/2|}{6}\le\frac{1}{48}
\qquad(0\le u\le1).
\tag{2}
\]

Define the independently specified remainder, not a difference chosen to force a zeta identity,

\[
R(s)=\sum_{k=1}^{\infty}\int_0^1 b_3(u)(k+u)^{-s-3}\,du
=\int_1^\infty b_3(\{t\})t^{-s-3}\,dt.
\]

All positive-axis powers use the real logarithm: t^z = exp(z log t). The two displayed definitions agree by absolute integrability and the disjoint unit-cell partition; values at integer endpoints do not change the integral.

For sigma=Re s > -2, (2) yields

\[
\sum_{k=1}^{\infty}\int_0^1|b_3(u)(k+u)^{-s-3}|\,du
\le\frac1{48}\int_1^\infty t^{-\sigma-3}\,dt
=\frac1{48(\sigma+2)}.
\tag{3}
\]

This proves absolute convergence, not merely conditional convergence of a grouped expression. It also gives a complete tail bound at every integer L >= 1:

\[
|R(s)-R_L(s)|\le
\frac{L^{-\sigma-2}}{48(\sigma+2)},
\tag{4}
\]

where R_1=0. The omitted infinite tail has not been identified with a finite sample.

On any compact subset of Re s > -2, choose epsilon>0 so that sigma+2 >= epsilon throughout it. The integrands are dominated by t^(-1-epsilon)/48. Parameter derivatives insert powers of log t, and these too are integrable against that bound (or after replacing epsilon by epsilon/2). Standard dominated holomorphic integration, equivalently normal convergence of the entire cell integrals, therefore proves that R is holomorphic on Re s > -2.

For Re s > 1, all three terminal powers in (1) tend to zero. The genuine Dirichlet series tends to zeta(s), and (3)--(4) give convergence of the remainders. Hence

\[
\zeta(s)=\frac1{s-1}+\frac12+\frac{s}{12}
-s(s+1)(s+2)R(s).
\tag{5}
\]

Both sides of (5) are holomorphic on the connected punctured half-plane {Re s > -2} minus {1}. The identity theorem extends the equality from the open region Re s > 1 to that whole domain. Alternatively, multiply by s-1 and use the actual pole-normalized zeta function to remove the puncture. This continuation transfers an **identity between specified analytic functions**, not an inequality inferred from bounded values in a smaller half-plane.

Equation (5) is the n=1 specialization of the classical Euler--Maclaurin representation in NIST DLMF 25.2.10. The finite derivation above fixes the signs, factorial and endpoint conventions independently. No original-theorem claim is made.

## 4. Every point of both disks

Suppose |s-c_N^pm| <= 3. Then

\[
\operatorname{Re}s\ge-1,\qquad
|\operatorname{Im}s|\ge N-3/2\ge1/2.
\]

Consequently |s-1| >= 1/2, so |(s-1)^(-1)| <= 2. In particular s != 1 and (5) applies. From (3), |R(s)| <= 1/48 because sigma+2 >= 1.

For j=0,1,2,

\[
|s+j|\le |c_N^pm|+3+j
\le 2+(N+3/2)+3+j
\le N+17/2\le 3(N+2)=3v.
\]

No bound on an omitted imaginary component is assumed; this is the full complex norm. Therefore (5) gives

\[
|\zeta(s)|\le2+\frac12+\frac{3v}{12}
+\frac{(3v)^3}{48}
=\frac52+\frac v4+\frac9{16}v^3.
\]

For v>=4, v^3>=16v. Thus

\[
v^3-\left(\frac52+\frac v4+\frac9{16}v^3\right)
=\frac7{16}v^3-\frac v4-\frac52
\ge\frac{27}{4}v-\frac52>0.
\]

This proves the promised ceiling (N+2)^3 simultaneously throughout both closed disks, in particular at every outer-circle point. The constant is deliberately coarse, not optimal.

## 5. Consequences and remaining analytic obstruction

The elementary center floor comes from splitting zeta(s)=1+2^(-s)+sum_(n>=3)n^(-s) for Re s>=2: the second term has norm at most 1/4, and the complete remaining sum has norm at most 1/2 by comparison with 1/[n(n-1)]. Hence |zeta(s)-1|<=3/4 and |zeta(s)|>=1/4. Jensen on radii 5/2 and 3 now proves the displayed local multiplicity bound with the exact log(6/5) denominator.

Let J_N=2[log 4+3 log(N+2)]/log(6/5). The unchanged separation and finite principal-sum arguments give

\[
\delta_N\ge[4(J_N+1)]^{-1},\qquad
\left|\sum_{\rho\in\mathcal B_N}\frac{m(\rho)}{\sigma\pm iT_N-\rho}\right|
\le4(J_N+1)J_N.
\]

Thus the **written derivation** supplies logarithmic local multiplicity growth and a squared-logarithmic bound for this finite local principal sum. It does not control the full logarithmic derivative on the fixed strip. In particular, a zero-free exponential factor can leave the divisor unchanged while adding an arbitrarily large constant to a logarithmic derivative. A bound for the actual analytic regular/distant contribution is still needed before the horizontal-ray decay argument is complete.

## 6. Exact source status and next formalization boundary

The new Lean declarations cover the normalized polynomial derivatives and 1/48 bound; the exact generic one-cell identity; finite telescoping; the maintained `logPower` specialization with all terminal terms; full closed-disk geometry; pole-distance and cubic norm algebra; and synthetic controls.

They do **not** define or prove the actual infinite R(s), normal convergence, (5), or an unconditional `riemannZeta` circle ceiling. `norm_le_cube_of_cubic_identity` is only algebra with an explicit equality and remainder bound. It is not an axiom and is not applied to riemannZeta in this increment. The existing `bandMass_le_of_circle_bound` remains unchanged and still requires its circle suppliers in Lean.

The next bounded formalization is to assemble the complete cell sum, prove local uniform convergence on a half-plane covering Re s >= -1, and identify it with the actual pole-normalized zeta source. The inspected pinned `Complex.differentiableOn_tsum_of_summable_norm` is a possible supplier; its all-point majorant and summability hypotheses must actually be discharged. Exact-head elaboration and transitive trust auditing also remain unperformed. No build, replay, merge, worker action, hold release, issue closure, prime-distribution improvement, Legendre proof or RH proof is represented by this note.

## References

NIST Digital Library of Mathematical Functions, section 25.2(iii), equations 25.2.9--25.2.10: https://dlmf.nist.gov/25.2#iii . The displayed n=1 Euler--Maclaurin representation is classical.

Pinned Mathlib Jensen supplier: `Mathlib/Analysis/Complex/JensenFormula.lean`, `AnalyticOnNhd.sum_divisor_le`, revision `db584cd6d46c92f209a44c0f1c829460d327499d`.

Pinned Mathlib finite calculus supplier: `Mathlib/MeasureTheory/Integral/IntervalIntegral/FundThmCalculus.lean`, `intervalIntegral.integral_eq_sub_of_hasDerivAt`, same revision.

Pinned normal-convergence API inspected for the next increment: `Mathlib/Analysis/Complex/LocallyUniformLimit.lean`, `Complex.differentiableOn_tsum_of_summable_norm`, same revision. Inspection is not application or proof of its hypotheses.
