# Complete cubic remainder: normal convergence and sharp tails

Parent: math PR #294, commit `9a3e69aaae8fb10f5b4830e5c26b371a100d2b64`.
Owners: #189 and #261 under #257. Mathlib pin: `db584cd6d46c92f209a44c0f1c829460d327499d`.

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. The declarations are proof drafts,
not elaborated or kernel-accepted results. No Lean/Lake execution, transitive trust audit,
external replay, worker action, merge, hold release or issue closure accompanies this note.

## 1. The source is the maintained cell integral

Retain `third(u)=u(u-1/2)(u-1)/6`, `logPower(t,z)=exp(z log(t))`, and
`CubicPowerSummation.cellRemainder`. Define only the complete cell sum

\[
r_k(s)=\int_0^1 b_3(u)(k+1+u)^{-s-3}\,du,
\qquad R(s)=\sum_{k=0}^{\infty}r_k(s).
\]

Thus r_k(s) is literally `cellRemainder (k+1) (-s)`; the factor 1/3! is already
inside b3. The remainder is not defined by subtracting a desired zeta value.
All powers on the positive axis retain the real logarithm and full complex s.
The sum is a total definition in Lean, but every convergence and norm result
below carries its proved domain. No conclusion follows from the mere presence
of a `tsum` term outside that domain.

## 2. Exact cell masses before infinite summation

Fix sigma0 > -2, p=sigma0+2>0, q>=1, and Re(s)>=sigma0. At every u in [0,1],

\[
|b_3(u)(q+u)^{-s-3}|\le \frac1{48}(q+u)^{-p-1}.
\]

The sign of log(q+u) is why q>=1 is explicit in this half-plane comparison.
The real helper identifies the positive integral exactly:

\[
A(q,p)=\int_0^1(q+u)^{-p-1}\,du
=\frac{q^{-p}-(q+1)^{-p}}p.
\]

For every finite K,

\[
\sum_{k<K} A(q+k,p)
=\frac{q^{-p}-(q+K)^{-p}}p\le\frac{q^{-p}}p.
\]

The terminal term is retained in the equality and dropped only after its
nonnegativity is established. The nonnegative bounded-partial-sums theorem
derives summability. No unjustified infinite sum or unreported observed tail
is used as a premise.

Consequently the sum of the integrals of the absolute densities is finite.
This is stronger than absolute convergence of the signed cell values: spatial
cancellation within a cell is not being used to justify infinite regrouping.
The new formal definition is the cell sum. Its equivalence to a single
improper periodic-Bernoulli integral is not a declaration in this increment;
that optional measure-partition adapter is not needed to use the cell sum.

## 3. Complete and uniform omitted-cell bounds

The resulting bound is

\[
|R(s)|\le\frac1{48(\operatorname{Re}s+2)},\qquad \operatorname{Re}s>-2.
\]

If N cells are included, the first omitted left endpoint is N+1. With
P_N(s)=sum_{k<N} r_k(s), the exact split and complete tail bound are

\[
R(s)=P_N(s)+\sum_{k\ge0}\operatorname{cellRemainder}(N+1+k,-s),
\]
\[
|R(s)-P_N(s)|\le
\frac{(N+1)^{-\sigma_0-2}}{48(\sigma_0+2)}
\quad(\operatorname{Re}s\ge\sigma_0>-2).
\]

The same budget works for every imaginary coordinate. It is uniform on each
fixed smaller half-plane, not a bound uniform as sigma0 decreases to -2.
On the domain Re(s)>=-1 needed by the Jensen disks this simplifies to

\[
|R(s)-P_N(s)|\le\frac1{48(N+1)},\qquad |R(s)|\le\frac1{48}.
\]

An empty prefix has budget 1/48, not zero. A one-cell prefix has budget 1/96.
A separately certified finite evaluation |P_N(s)-v|<=epsilon gives the total
error epsilon plus the complete omitted-cell allowance. No numerical
evaluator or enclosure for v is constructed by this theorem.

## 4. Holomorphy with its analytic suppliers discharged

Each cell is entire in s. Differentiating its actual integrand gives

\[
r_k'(s)=-\int_0^1 b_3(u)\log(k+1+u)(k+1+u)^{-s-3}\,du.
\]

On the fixed finite spatial cell the logarithm is bounded. An explicit
neighborhood in s supplies an integrable derivative bound; continuity
supplies the measurable/integrable inputs to the pinned parametric-interval
integral theorem. The derivative sign and logarithmic factor are retained.

For every fixed sigma0>-2, the summable sequence A(k+1,sigma0+2)/48 bounds all
cell norms simultaneously on Re(s)>=sigma0. Pinned Mathlib's Weierstrass
sum theorem then yields differentiability on Re(s)>sigma0. Choosing sigma0
strictly between -2 and a given real part yields holomorphy on Re(s)>-2.
The differentiated-cell `HasSum` is likewise obtained from the same normal
convergence theorem, rather than an assumed derivative interchange.

In particular R is analytic at s=1. Its bound there is 1/144. This does not
remove the pole of zeta: the independent rational term 1/(s-1) is a separate
part of the eventual Euler--Maclaurin source identity.

## 5. Exact boundary of this increment

The new declarations supply the complete specified cell remainder, absolute
spatial mass, sharp full-tail bounds, prefix convergence, cell derivatives,
and holomorphy. They do NOT yet establish

\[
\zeta(s)=\frac1{s-1}+\frac12+\frac{s}{12}-s(s+1)(s+2)R(s).
\]

The remaining actual-source identification must use #294's finite telescope,
prove the three terminal powers vanish on Re(s)>1, identify the same partial
sums with the genuine Dirichlet series, and then apply an identity theorem on
the appropriate domain (or to the existing pole-normalized zeta source).
The classical target is DLMF 25.2.10. An analytic bound on R by itself cannot
replace that identity; distinct analytic functions may satisfy the same bound.
No division through s(s+1)(s+2) may be used at its zeros.

Accordingly, the existing Lean Jensen circle-ceiling supplier remains a
hypothesis. The prior written cubic ceiling remains valid at its written
scope, but is not silently upgraded by this increment. Full logarithmic-
derivative regular/distant estimates, growing-height contour decay, complete
zero-count/source comparison, certified zero evaluation, and all-interval
prime margins remain separate obligations.

## 6. Verification scope

The companion checker exercises exact rational cell integrals and dominating
mass telescopes. Optional mpmath checks exercise complex finite-cell norms,
signed parameter derivatives and finite omitted-cell comparisons. Neither
verifies an infinite theorem, a zeta identity or Lean elaboration. The static
manifest retains all inherited exact-type, module-coverage and transitive
trust requirements and is not an execution receipt.

References: NIST DLMF 25.2.10; the four pinned Mathlib files bound in the static
manifest; unchanged `CubicPowerSummation` and `CubicEulerMaclaurin` at the parent.
