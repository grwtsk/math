# Actual zeta identification of the cubic remainder

Mathematical owners: #189 and #261; program #257.
Reviewed parent: `8601bfe0881faa628235d5d6f209daa02cb9a1fd` (#295).
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.

This note connects the existing finite Euler--Maclaurin identity and complete
cell remainder to the actual Mathlib zeta function. It introduces no alternative
zeta definition, arbitrary analytic remainder, or additional source hypothesis.
The Lean declarations are proof drafts: neither they nor their inherited
imports have been elaborated or transitively audited in this increment.

## 1. The same finite inventory, followed by its genuine limit

Retain the normalized cubic and existing real-log positive-axis powers:

\[
b_3(u)=u(u-\tfrac12)(u-1)/6,\qquad
r_k(s)=\int_0^1b_3(u)(k+1+u)^{-s-3}\,du,\qquad R(s)=\sum_{k\ge0}r_k(s).
\]

The existing source supplies absolute convergence, holomorphy on Re(s)>-2,
and the complete bound |R(s)|<=1/[48(Re(s)+2)]. Its precise source is a cell
sum; a periodic improper-integral adapter remains unnecessary and unused.

For N terms let L=N+1 and P_N=sum_(k<N) r_k. The unchanged finite telescope gives

\[
\sum_{m=1}^{N}m^{-s}
=\frac{1-L^{1-s}}{s-1}+\frac{1-L^{-s}}2
 +\frac{s(1-L^{-s-1})}{12}-s(s+1)(s+2)P_N(s).
\tag{1}
\]

All three terminal powers remain at finite scope. In particular N=0 gives
an empty sum with L=1, not permission to drop terminal terms.

For a fixed complex exponent z with Re(z)<0, the exact norm of L^z is L^Re(z),
which tends to zero as N tends to infinity. When Re(s)>1 this applies separately
to z=1-s, -s and -s-1. The actual Dirichlet series is absolutely convergent in
that domain, and its positive-index terms agree exactly with the maintained
logPower. The finite remainder prefix converges to the already specified R.
Uniqueness of limits in (1), not a supplied equality, therefore yields

\[
\zeta(s)=(s-1)^{-1}+\tfrac12+\tfrac{s}{12}
-s(s+1)(s+2)R(s),\qquad \Re(s)>1.
\tag{2}
\]

This is the cubic instance of the classical Euler--Maclaurin representation
in NIST DLMF 25.2.10. No originality claim is made.

## 2. Continue regular functions across one

Define the independently specified regular expression

\[
A(s)=\tfrac12+\tfrac{s}{12}-s(s+1)(s+2)R(s).
\]

It is holomorphic on the open convex half-plane U={Re(s)>-2}. The source reuses
Mathlib's entire `riemannZeta₀`, which equals zeta(s)-(s-1)^(-1) away from one
and takes the Euler--Mascheroni constant at one. Equation (2) gives equality
of these two analytic functions on a neighborhood of 2. The identity theorem
on U then yields riemannZeta₀(s)=A(s) throughout U, including at one.

Only after this continuation does the raw-source theorem restore the pole:

\[
\boxed{\zeta(s)=(s-1)^{-1}+A(s),\quad\Re(s)>-2,\quad s\ne1.}
\tag{3}
\]

This continues an exact identity, not a magnitude inequality. It uses no global
branch of log(zeta), no division by s(s+1)(s+2), and no new pole normalization.
The existing multiplicative normalization remains
riemannZeta₁(s)=1+(s-1)A(s), with value one at s=1.
At s=1 the regular-part comparison gives gamma=7/12-6R(1), not a value for the
raw singular expression. At s=0 and s=-1, (3) gives -1/2 and -1/12 directly.
The boundary Re(s)=-2 is outside the proved remainder domain.

## 3. Discharge the disk ceiling and local count suppliers

For N>=2, retain c_N^pm=2 +/- i(N+3/2), the closed radius-three disks, and all
canonical zero identities. The existing geometry gives Re(s)>=-1,
|Im(s)|>=1/2, |(s-1)^(-1)|<=2, and |s+j|<=3(N+2) for j=0,1,2 at every disk point.
The independently proved remainder bound is at most 1/48 on these disks.
Applying the existing conditional norm algebra to the now-derived (3) yields

\[
\boxed{|\zeta(s)|\le(N+2)^3\quad (|s-c_N^\pm|\le3,\ N\ge2).}
\]

There is no supplied circle ceiling in the new theorem. The earlier generic
Jensen consumers remain unchanged; new application theorems supply both
all-point outer-circle ceilings and reuse the derived center floors 1/4.
Thus the actual both-sign analytic multiplicity count satisfies

\[
\boxed{\operatorname{bandMass}(N)\le J_N
=\frac{2[\log4+3\log(N+2)]}{\log(6/5)},\qquad N\ge2.}
\]

The band remains N<|Im(rho)|<=N+3. Full complex locations, positive analytic
multiplicities, and both signs remain explicit. The maintained selection then
has clearance at least 1/[4(J_N+1)], and its finite local principal sum has
norm at most 4(J_N+1)J_N. These statements do not estimate the full logarithmic
derivative's analytic regular or distant contributions.

## 4. Remaining boundaries

All new and inherited Lean scripts need exact-head elaboration and transitive
trust review. The local source identity above is an Euler--Maclaurin zeta
identity, NOT the infinite zero-to-prime tent explicit formula. The latter
still needs full fixed-strip logarithmic-derivative growth, horizontal-ray
decay, and complete canonical zero convergence/counting at its stated scope.
Certified numerical evaluation and all-interval prime margins remain separate.
No canonical prime-consumer hypothesis, public import root, execution hold,
worker state, or issue disposition is changed.

## Sources

NIST Digital Library of Mathematical Functions, equations 25.2.1 and 25.2.10:
https://dlmf.nist.gov/25.2.E1 and https://dlmf.nist.gov/25.2.E10.
Pinned Mathlib: `NumberTheory/Harmonic/ZetaAsymp.lean` for the actual entire
additive/multiplicative normalizations; `Analysis/Analytic/IsolatedZeros.lean`
and its imported uniqueness theorem for continuation;
`Analysis/SpecialFunctions/Pow/Asymptotics.lean` for terminal-power decay.
The preceding source and mathematical notes retain their exact historical scope.
