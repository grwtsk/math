# Damped triadic flux on the completed reciprocal lines

Version: `critical-triadic-flux/0.1.0`  
Date: 2026-10-15  
Human mathematical direction: R.A. Jacob Martone.  
Research synthesis and exact finite implementation: OpenAI ChatGPT.  
Status: written mathematics and exact finite computation. No native Lean admission, no uniform flux bound, and no proof of RH.

## 1. Purpose

The existing repository reduces the Riemann hypothesis to uniform control of the literal completed vertical-line masses

\[
V_\sigma(T)=\int_0^T e^{-2\sigma u}W(u)^2\,du,
\qquad \sigma>0,
\]

where `W = wholePickup` is the exact closed-prefix Möbius pickup. It is enough to control the countable cofinal family

\[
\sigma_k=\frac1{k+1},\qquad k\ge1.
\]

This note converts that positive energy problem into a **one-sided signed triadic flux problem**. It uses the endpoint-defect recurrence already present in the repository and the finite Möbius-filtered `(+,+,-)` moment architecture of GRL-CAS3.

The resulting premise is stronger than RH but weaker than the previously proposed quartic `L²` supplier: it does not square the complete triadic moment and does not take absolute values termwise.

## 2. Exact endpoint variables

Write

\[
M_n=\sum_{m\le n}\mu(m),
\qquad
A_n=\sum_{m\le n}\frac{\mu(m)}{\sqrt m},
\]

and define the endpoint defect

\[
Q_n=A_n-\frac{M_n}{\sqrt n}.
\]

This is the repository's `criticalEndpointDefect n`; for `n≥1`,

\[
Q_n=\frac12W(\log n).
\]

Let

\[
g_n=\frac1{\sqrt n}-\frac1{\sqrt{n+1}}.
\]

The exact recurrence is

\[
\boxed{Q_{n+1}=Q_n+M_ng_n.}
\tag{2.1}
\]

The newly arriving coefficient `μ(n+1)` cancels between the two prefixes. This cancellation is essential: the increment is controlled by the old full Mertens prefix, not by one isolated Möbius coefficient.

## 3. General damping weights

Fix `σ>0`. Put

\[
v_{\sigma,n}=\frac{n^{-2\sigma}}{2\sigma},
\qquad
w_{\sigma,n}=v_{\sigma,n}-v_{\sigma,n+1}.
\]

Then

\[
\boxed{
w_{\sigma,n}
=\int_{\log n}^{\log(n+1)}e^{-2\sigma u}\,du.
}
\tag{3.1}
\]

Define the endpoint energy through `N` by

\[
E_{\sigma,N}=\sum_{n=1}^NQ_n^2w_{\sigma,n}.
\]

The boundary weight `v_{σ,N+1}` must remain in the exact finite identity below.

## 4. Finite signed Abel identity

Using (2.1),

\[
Q_{n+1}^2-Q_n^2=2Q_nM_ng_n+(M_ng_n)^2.
\]

Finite summation by parts gives

\[
\boxed{
\begin{aligned}
E_{\sigma,N}
+Q_N^2v_{\sigma,N+1}
={}&F_{\sigma,N}+R_{\sigma,N},\\[2mm]
F_{\sigma,N}
={}&\sum_{n=1}^{N-1}
\frac{(n+1)^{-2\sigma}}{\sigma}
Q_nM_ng_n,\\[2mm]
R_{\sigma,N}
={}&\sum_{n=1}^{N-1}
\frac{(n+1)^{-2\sigma}}{2\sigma}
(M_ng_n)^2.
\end{aligned}}
\tag{4.1}
\]

Here `F` is the **signed triadic flux** and `R` is a nonnegative correction. Deleting either the correction or the terminal boundary changes the finite identity.

The identity is an instance of the abstract formula

\[
\sum_{n=1}^N q_n^2(v_n-v_{n+1})+q_N^2v_{N+1}
=q_1^2v_1+
\sum_{n=1}^{N-1}(2q_n\delta_n+\delta_n^2)v_{n+1},
\]

with `q₁=0` and `δₙ=Mₙgₙ`.

## 5. The positive correction is unconditional

The existing elementary bounds give

\[
|M_n|\le n
\]

and

\[
0\le g_n\le\frac1{\sqrt n\,(n+1)}.
\]

Hence

\[
(M_ng_n)^2\le\frac{n}{(n+1)^2}\le\frac1{n+1}.
\]

Therefore

\[
\begin{aligned}
R_{\sigma,N}
&\le\frac1{2\sigma}
\sum_{n=1}^{N-1}(n+1)^{-1-2\sigma}\\
&\le\frac1{2\sigma}
\int_1^\infty x^{-1-2\sigma}\,dx
=\boxed{\frac1{4\sigma^2}}.
\end{aligned}
\tag{5.1}
\]

No cancellation estimate for `M_n` is used.

## 6. The signed one-sided supplier

Define

\[
\mathsf{DampedTriadicFluxUpper}(\sigma)
\]

to mean that there is a nonnegative constant `C_σ` such that

\[
\boxed{F_{\sigma,N}\le C_\sigma\quad\text{for every }N\ge1.}
\tag{6.1}
\]

This is a one-sided bound on the complete signed sum. It is not absolute summability and it is not a diagonal estimate.

From (4.1), the terminal boundary is nonnegative, so (5.1) and (6.1) imply

\[
\boxed{
E_{\sigma,N}\le C_\sigma+\frac1{4\sigma^2}.
}
\tag{6.2}
\]

This is the first gain over the earlier quartic supplier: no Cauchy--Schwarz square of the signed triadic source has been introduced.

## 7. Exact logarithmic-cell reconstruction

For

\[
u\in[\log n,\log(n+1)],
\]

set

\[
h_n(u)=\frac1{\sqrt n}-e^{-u/2}.
\]

The closed-prefix source identity gives

\[
\boxed{W(u)=2\bigl(Q_n+M_nh_n(u)\bigr).}
\tag{7.1}
\]

The event at the upper endpoint causes no discontinuity because the new pickup response is zero at its arrival time.

Moreover,

\[
0\le h_n(u)\le g_n.
\]

Let

\[
D_{\sigma,n}
=\int_{\log n}^{\log(n+1)}
e^{-2\sigma u}h_n(u)^2\,du.
\]

Then

\[
0\le D_{\sigma,n}\le g_n^2w_{\sigma,n}.
\tag{7.2}
\]

The elementary inequalities `(x+y)²≤2x²+2y²` and `x²≤2(x+y)²+2y²` give the two-sided cell comparison

\[
\boxed{
\begin{aligned}
B_{\sigma,n}
&\le8Q_n^2w_{\sigma,n}+8M_n^2D_{\sigma,n},\\
Q_n^2w_{\sigma,n}
&\le\frac12B_{\sigma,n}+2M_n^2D_{\sigma,n},
\end{aligned}}
\tag{7.3}
\]

where

\[
B_{\sigma,n}=
\int_{\log n}^{\log(n+1)}e^{-2\sigma u}W(u)^2\,du.
\]

Thus the endpoint energy and the actual completed vertical-line mass differ only by the deterministic within-cell drift.

## 8. The within-cell drift is unconditionally summable

Since

\[
\log(1+1/n)\le1/n,
\]

we have

\[
w_{\sigma,n}\le n^{-1-2\sigma}.
\]

Together with `|M_n|≤n` and the gap estimate,

\[
M_n^2D_{\sigma,n}
\le M_n^2g_n^2w_{\sigma,n}
\le n^{-2-2\sigma}.
\]

Consequently

\[
\boxed{
\sum_{n\ge1}M_n^2D_{\sigma,n}
\le1+\frac1{1+2\sigma}.
}
\tag{8.1}
\]

Combining (6.2), (7.3), and (8.1), every finite horizon satisfies

\[
\boxed{
V_\sigma(T)
\le8\left(
C_\sigma+\frac1{4\sigma^2}
+1+\frac1{1+2\sigma}
\right).
}
\tag{8.2}
\]

For an arbitrary `T`, extend the nonnegative integral only to the next logarithmic endpoint. No cell is omitted.

Conversely, the second inequality in (7.3) and (8.1) show that uniform control of `V_σ` bounds the endpoint energy. Thus endpoint-energy summability and vertical-line uniformity are equivalent for each fixed positive `σ`; the flux bound is a sign-sensitive sufficient supplier for both.

## 9. Exact triadic moment

The source architecture requires an oriented ternary face rather than three pairwise quantities. Define finite Laurent polynomials

\[
\begin{aligned}
A_n(z)
&=\sum_{1\le a<n}
\mu(a)\left(a^{-1/2}-n^{-1/2}\right)z^a,\\
B_n(z)
&=\sum_{1\le b\le n}\mu(b)z^b,\\
C_n^-(z)
&=\sum_{c=2}^{2n-1}z^{-c}.
\end{aligned}
\]

Normalized Haar orthogonality on the unit circle gives

\[
\boxed{
\int_{\mathbb T}A_n(z)B_n(z)C_n^-(z)\,dm(z)
=Q_nM_n.
}
\tag{9.1}
\]

Every pair `(a,b)` contributes through the unique additive face `c=a+b`. The third channel is not decorative: it is the exact projector for the additive relation.

The flux therefore has the complete signed face representation

\[
\boxed{
F_{\sigma,N}
=\sum_{n=1}^{N-1}
\frac{(n+1)^{-2\sigma}g_n}{\sigma}
\int_{\mathbb T}A_nB_nC_n^-\,dm.
}
\tag{9.2}
\]

This is a signed `(+,+,-)` moment. Replacing it by a Hermitian absolute square changes the theorem.

## 10. Primitive-radial decomposition

For coprime positive `a,b`,

\[
\boxed{
\mu(da)\mu(db)
=
\mu(a)\mu(b)\mu(d)^2
\mathbf1_{(d,ab)=1}.
}
\tag{10.1}
\]

Hence

\[
\boxed{
Q_nM_n
=
\sum_{d=1}^{n-1}\mu(d)^2\Theta_{n,d},
}
\tag{10.2}
\]

where

\[
\Theta_{n,d}
=
\sum_{\substack{
1\le a\le\lfloor(n-1)/d\rfloor\\
1\le b\le\lfloor n/d\rfloor\\
(a,b)=1,\ (d,ab)=1}}
\mu(a)\mu(b)
\left(d^{-1/2}a^{-1/2}-n^{-1/2}\right).
\tag{10.3}
\]

The radial measure `μ(d)²` is nonnegative; every unresolved sign remains inside the primitive additive face. The condition `(d,ab)=1` is essential and cannot be deleted.

Applying the finite coprime projector

\[
\mathbf1_{(a,b)=1}=\sum_{q\mid a,\ q\mid b}\mu(q)
\]

expresses each `Θ_{n,d}` as a finite Möbius-filtered Fourier triadic moment. This is the exact primitive-radial form of the flux, with all floors and all divisor-index cross interactions retained.

## 11. Countable terminal criterion

Define

\[
\mathsf{ReciprocalTriadicFluxUpper}
\]

to mean

\[
\forall k\ge1,
\quad
\mathsf{DampedTriadicFluxUpper}\!\left(\frac1{k+1}\right).
\]

The preceding estimates give uniform completed mass on every reciprocal line. The repository already proves that the reciprocal family is equivalent to uniform control on every positive vertical line and that this implies the original pinned Mathlib Riemann-hypothesis proposition. Therefore

\[
\boxed{
\mathsf{ReciprocalTriadicFluxUpper}
\Longrightarrow
\mathsf{CriticalReciprocalVerticalLineUniform}
\Longrightarrow
\_root_.\mathsf{RiemannHypothesis}.
}
\tag{11.1}
\]

No witness of `ReciprocalTriadicFluxUpper` is supplied.

The single critical line `σ=1/2` remains insufficient for RH. It is only the first member of the required countable family.

## 12. Relation to the quartic route

The former source-derived quartic supplier controlled the square of a complete signed shell sum. The present route stops one level earlier:

\[
\text{signed primitive triadic moment}
\longrightarrow
\text{signed flux partial sum}
\longrightarrow
\text{endpoint energy}.
\]

Only the recurrence correction is squared, and that correction is unconditionally summable. This avoids paying for a positive quartic majorant of the entire source interaction.

The reflection-orbit, local Taylor, Jensen, and Frobenius quartics remain distinct objects. Nothing here supplies the source-positive Hermite sign required by the orbit-quartic route.

## 13. Verification scope

The executable verifies:

- finite Möbius radial factorization;
- endpoint-defect recurrence against the direct prefix definition;
- the finite `(+,+,-)` Fourier projector;
- primitive-radial and finite Möbius-projector decompositions;
- the complete finite Abel identity;
- exact controls showing that the correction, terminal boundary, coprimality gate, reflection multiplicity, and ternary interaction cannot be deleted.

Floating profiles through `N=200000` are diagnostic only. They check the finite Abel residual numerically and do not establish a uniform bound.

The inactive Lean candidates have not been elaborated, kernel checked, or axiom audited.

## 14. Resume theorem

The smallest unresolved theorem in this route is:

> For every integer `k≥1`, the signed primitive-radial triadic flux partial sums at `σ=1/(k+1)` are uniformly bounded above.

Equivalently, for each such `σ`, prove a constant `C_σ` such that

\[
\sum_{n=1}^{N-1}
\frac{(n+1)^{-2\sigma}g_n}{\sigma}
\int_{\mathbb T}A_nB_nC_n^-\,dm
\le C_\sigma
\]

for all `N`, while preserving every Möbius sign and every primitive-radial cross interaction.
