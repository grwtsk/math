# Canonical finite divisor removal and the central logarithmic derivative

Research owner: #189. Legendre consumer: #261, under #257.
Reviewed parent: `7eec6d8ec8e11f4c87041827dd1b126b5c3dfca9` (#299).
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.** This note describes the mathematical argument implemented by the accompanying unelaborated Lean scripts. It is not an execution or acceptance record. Finite diagnostics do not validate the universal analytic statements. No new prime-distribution result or originality claim is made.

## 1. The remaining quotient obligation

The prior normalized-logarithm consumer requires an extended quotient g for

\[
f(w)=\zeta(c+w),\qquad
P(w)=\prod_{\rho\in\operatorname{diskHead}(N,c)}
 B_{3,\rho-c}(w)^{m(\rho)},
\qquad B_{3,a}(w)=\frac{3(w-a)}{9-\overline a w}.
\]

It requires g holomorphic in the outer disk and continuous on its closed boundary, nonzero throughout the inner open disk of radius 11/4, and f=gP on the entire closed outer disk of radius 3. These are separate facts: totalized f/P equals zero at the removed centers and does not automatically have the correct analytic extension.

The new finite removal theorem constructs g instead of assuming it. The canonical specialization supplies all of its source, exact-order and coverage hypotheses. The old general quotient/logarithm consumers are retained unchanged.

## 2. Local exact-order cancellation

For selected distinct locations a_i and natural multiplicities m_i>0, write

\[
u_i(w)=\frac3{9-\overline{a_i}w},\qquad
B_{3,a_i}(w)=(w-a_i)u_i(w).
\]

Because |a_i|<=11/4<3, every u_i is analytic and nonzero on a neighborhood of each point of the closed radius-three disk. In particular, isolate one selected factor:

\[
P(w)=(w-a_i)^{m_i}d_i(w),\qquad
d_i(w)=u_i(w)^{m_i}\prod_{j\ne i}B_{3,a_j}(w)^{m_j}.
\]

The finite product identity holds exactly. Injectivity of the location map ensures d_i(a_i) is nonzero. Equal imaginary heights do not imply equal locations and are not used for this injectivity.

The actual analytic order supplies a neighborhood factorization

\[
f(w)=(w-a_i)^{m_i}A_i(w),\qquad A_i(a_i)\ne0.
\]

On the punctured neighborhood, f/P=A_i/d_i. This ratio is analytic at a_i and has nonzero value A_i(a_i)/d_i(a_i). Under-removal would leave a zero; over-removal would leave a pole. Exact equality of the two orders is what supplies both regularity and nonvanishing.

## 3. One global extension, not unrelated local choices

Let U be the closed radius-three disk and let F=f/P be the literal raw quotient. The source first proves that F is meromorphic on U using analyticity of f and P. It then uses the pinned upstream normal-form construction

\[
g=\operatorname{toMeromorphicNFOn}(F,U).
\]

This construction alone is not a proof that g is analytic: a meromorphic function can have genuine poles. The local matching argument supplies that proof. At every selected a_i, the normal form agrees on a full neighborhood with A_i/d_i, by the upstream uniqueness theorem for meromorphic normal forms with punctured agreement. Thus g is analytic and nonzero at every removed point. Away from the selected set, F is already analytic, and normal-form uniqueness gives g=F locally.

These local statements concern the SAME g. They prove neighborhood analyticity on every point of the closed disk, including its boundary. Therefore g is holomorphic in the open outer disk and continuous on its closure. The factorization f=gP holds away from roots by cancellation, and at roots because both f and P vanish. No division at a zero is used to deduce this equality.

The implementation does not assert that g is nonzero on the entire outer disk. Zeros outside the selected inner disk may remain and are compatible with the required boundary maximum-modulus argument.

## 4. The actual canonical source supplies completeness

Retain the existing signed centers

\[
c_N^\pm=2\pm i(N+3/2),\qquad N\ge2.
\]

The radius-three disks avoid the pole and have |Im(s)|>=1/2 at every point. An actual zeta zero in the translated inner disk therefore cannot be a negative-even trivial zero and cannot be the pole. It is a canonical `ZeroPoint`.

The unchanged exact membership theorem for `diskHead` then includes it. The selected centered locations are rho-c, an injective map of the full complex points. Multiplicities remain `analyticOrderNatAt riemannZeta rho`; the inherited theorem proves finiteness and positivity before this natural conversion. Translation of the inherited local factorization preserves exactly the same exponent.

Completeness now proves inner nonvanishing: at a selected root g is nonzero by exact-order cancellation; at every other inner point, f is nonzero and P is nonzero, so g=f/P is nonzero. No observed zero list or numerical root-count certificate is substituted for the canonical inventory.

## 5. The former conditional central bound is instantiated

Apply #299 to the constructed g. Its boundary maximum-modulus argument and the actual cubic zeta ceiling give |g|<=(N+2)^3; its center comparison retains |g(0)|>=1/4. The existing disk primitive constructs L with

\[
L(0)=0,\qquad g(w)=g(0)e^{L(w)},\qquad
\operatorname{Re}L(w)\le H_N=\log4+3\log(N+2).
\]

There is still no global log(zeta) across its zeros. This is the normalized logarithm of the zero-removed quotient on the inner disk.

Set J_N=2H_N/log(6/5) and Q_N=H_N/log(12/11), retaining their distinct inventories and radii. The new `norm_logDeriv_central` proof draft takes only

\[
N\ge2,\qquad0\le\sigma\le2,\qquad |y|=T_N
\]

and concludes

\[
\left|\frac{\zeta'(\sigma+iy)}{\zeta(\sigma+iy)}\right|
\le80H_N+Q_N\,[4(J_N+1)+1].
\]

The matching center is selected from the sign of y inside the proof. No g, L, neighborhood factorization, analytic extension, modulus ceiling, center floor or nonvanishing hypothesis is supplied by the caller. Actual selected-height avoidance and multiplicity separation are inherited.

The bound includes the full analytic contribution and both pieces of each Blaschke logarithmic derivative, not only a finite principal sum. Algebraically the budget is

\[
\frac8{\log(12/11)\log(6/5)}H_N^2+
\left(80+\frac5{\log(12/11)}\right)H_N.
\]

The quadratic identity is a separate source declaration, not a formal limit theorem.

## 6. Controls and remaining boundary

For f(w)=(w-1)^2, the normalized extended quotient is ((9-w)/3)^2. Its value at one is 64/9, while the raw totalized quotient at one is zero. Source controls also retain an omitted inner root, a root outside the inner disk that legitimately remains, repeated-location rejection, equal heights at distinct points, and rejection of real part -3 by the central domain.

The completed exact checker uses Gaussian-rational polynomial expansion and repeated division to recover multiplicities independently. It verifies finite rational identities and removable-center values in synthetic models. It does not evaluate actual zeta, produce a zero inventory, or prove the analytic normal-form construction.

The estimate still covers only [0,2], not [-3,0). Extension to the negative-real-part strip and the growing-height horizontal limit remain necessary for the full contour argument. Canonical global zero convergence/counting as required by each consumer, the infinite zero-to-prime formula, certified finite evaluation, and all-interval positive prime margins remain separate. No existing canonical prime-consumer premise is removed or weakened.

All new and inherited scripts still require exact-head elaboration, exact public-type inspection, transitive import/axiom/native audit, and independent replay. No Lean/Lake execution, worker action, merge, issue closure, hold release, Legendre proof or RH proof occurs here.

## Pinned sources

Mathlib `Analysis/Meromorphic/NormalForm.lean`, blob `1c64648a3556483c6e950777c449b74cc842fda9`: global normal form, punctured agreement, and local uniqueness. `Analysis/Meromorphic/Basic.lean`, blob `687bf41ab709b02a6fd69a78252371032d0d54f7`: meromorphic quotients. `Analysis/Analytic/Constructions.lean`, blob `a4823d7cdda8e314158bb4b5aff320cf02499038`: analytic finite products and quotients. The source-bound canonical factorization and the old normalized-logarithm estimates remain imported rather than duplicated.
