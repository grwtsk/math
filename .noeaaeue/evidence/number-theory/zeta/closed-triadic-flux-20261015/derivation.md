# Terminally compensated triadic flux

Version: `closed-triadic-flux/0.1.0`  
Date: 2026-10-15  
Human mathematical direction: grwtsk contributors.  
Research synthesis and exact finite implementation: OpenAI ChatGPT.  
Status: written mathematics and exact finite computation. No native Lean admission, no uniform arithmetic bound, no new zero-free region, and no proof of RH.

## 1. Purpose

The preceding damped-triadic-flux reduction introduced, for every positive damping `σ`, a signed interior flux `F_{σ,N}`, a nonnegative recurrence correction `R_{σ,N}`, a positive endpoint energy `E_{σ,N}`, and a terminal boundary charge `B_{σ,N}` satisfying

\[
E_{\sigma,N}+B_{\sigma,N}=F_{\sigma,N}+R_{\sigma,N}.
\]

The earlier sufficient condition bounded `F_{σ,N}` itself from above. That condition is stronger than the endpoint-energy problem because it leaves the positive terminal boundary on the opposite side of the identity.

The present contribution keeps the boundary seed as part of the signed flux. Define the **closed** or **terminally compensated** flux

\[
\boxed{\mathfrak F_{\sigma,N}=F_{\sigma,N}-B_{\sigma,N}.}
\]

Then

\[
\boxed{E_{\sigma,N}=\mathfrak F_{\sigma,N}+R_{\sigma,N}.}
\]

This removes an artificial extra obligation while preserving the exact finite identity, all Möbius signs, the recurrence correction, and the terminal endpoint.

## 2. Source variables

Retain the existing closed-prefix quantities

\[
M_n=\sum_{m\le n}\mu(m),
\qquad
A_n=\sum_{m\le n}\frac{\mu(m)}{\sqrt m},
\]

\[
Q_n=A_n-\frac{M_n}{\sqrt n},
\qquad
g_n=\frac1{\sqrt n}-\frac1{\sqrt{n+1}}.
\]

The repository identifies `Q_n` with one half of the literal pickup at `log n` and proves the exact recurrence

\[
\boxed{Q_{n+1}=Q_n+M_ng_n.}
\tag{2.1}
\]

No pointwise Mertens power saving is used.

Fix `σ>0` and put

\[
v_{\sigma,n}=\frac{n^{-2\sigma}}{2\sigma},
\qquad
w_{\sigma,n}=v_{\sigma,n}-v_{\sigma,n+1}.
\]

The weight is the exact logarithmic-cell mass

\[
w_{\sigma,n}
=\int_{\log n}^{\log(n+1)}e^{-2\sigma u}\,du.
\]

Define

\[
E_{\sigma,N}=\sum_{n=1}^{N}Q_n^2w_{\sigma,n},
\]

\[
F_{\sigma,N}
=\sum_{n=1}^{N-1}
\frac{(n+1)^{-2\sigma}}{\sigma}
Q_nM_ng_n,
\]

\[
R_{\sigma,N}
=\sum_{n=1}^{N-1}
\frac{(n+1)^{-2\sigma}}{2\sigma}
(M_ng_n)^2,
\]

and

\[
B_{\sigma,N}
=Q_N^2\frac{(N+1)^{-2\sigma}}{2\sigma}.
\]

## 3. Closed finite Abel identity

From (2.1),

\[
Q_{n+1}^2-Q_n^2
=2Q_nM_ng_n+(M_ng_n)^2.
\]

Finite summation by parts gives

\[
\boxed{
E_{\sigma,N}+B_{\sigma,N}
=F_{\sigma,N}+R_{\sigma,N}.
}
\tag{3.1}
\]

Hence, with

\[
\boxed{
\mathfrak F_{\sigma,N}
:=F_{\sigma,N}-B_{\sigma,N},
}
\tag{3.2}
\]

we obtain the exact closed identity

\[
\boxed{
E_{\sigma,N}
=\mathfrak F_{\sigma,N}+R_{\sigma,N}.
}
\tag{3.3}
\]

The boundary term has not been discarded; it has been assigned to the signed flux side. This is the discrete analogue of retaining boundary work in a closed energy balance.

## 4. The correction remains unconditionally bounded

The elementary source bounds

\[
|M_n|\le n,
\qquad
0\le g_n\le\frac1{\sqrt n\,(n+1)}
\]

imply

\[
(M_ng_n)^2\le\frac1{n+1}.
\]

Therefore

\[
0\le R_{\sigma,N}
\le\frac1{2\sigma}
\sum_{n=1}^{N-1}(n+1)^{-1-2\sigma}
\le\boxed{\frac1{4\sigma^2}}.
\tag{4.1}
\]

This allowance is uniform in the horizon and contains no arithmetic cancellation premise.

## 5. Exact equivalence with endpoint-energy boundedness

Define

\[
\mathsf{ClosedDampedTriadicFluxUpper}(\sigma)
\]

to mean

\[
\exists C\ge0\ \forall N\ge1:
\mathfrak F_{\sigma,N}\le C.
\tag{5.1}
\]

Define

\[
\mathsf{DampedEndpointEnergyUniform}(\sigma)
\]

to mean

\[
\exists B\ge0\ \forall N\ge1:
E_{\sigma,N}\le B.
\tag{5.2}
\]

Equation (3.3) and (4.1) give both directions.

If (5.1) holds, then

\[
E_{\sigma,N}
\le C+\frac1{4\sigma^2}.
\]

Conversely, if (5.2) holds, then `R_{σ,N}≥0` and

\[
\mathfrak F_{\sigma,N}
=E_{\sigma,N}-R_{\sigma,N}
\le E_{\sigma,N}\le B.
\]

Thus

\[
\boxed{
\mathsf{ClosedDampedTriadicFluxUpper}(\sigma)
\iff
\mathsf{DampedEndpointEnergyUniform}(\sigma).
}
\tag{5.3}
\]

The uncompensated condition `F_{σ,N}≤C` is not used.

## 6. Exact return to the completed vertical line

For `u∈[log n,log(n+1)]`, set

\[
h_n(u)=\frac1{\sqrt n}-e^{-u/2}.
\]

The literal closed-prefix pickup satisfies

\[
W(u)=2\bigl(Q_n+M_nh_n(u)\bigr),
\qquad
0\le h_n(u)\le g_n.
\tag{6.1}
\]

Let

\[
D_{\sigma,n}
=\int_{\log n}^{\log(n+1)}
 e^{-2\sigma u}h_n(u)^2\,du,
\]

and let `B^{cell}_{σ,n}` be the exact pickup energy on that logarithmic cell. The elementary square identities give

\[
B^{cell}_{\sigma,n}
\le8Q_n^2w_{\sigma,n}+8M_n^2D_{\sigma,n},
\tag{6.2}
\]

\[
Q_n^2w_{\sigma,n}
\le\frac12B^{cell}_{\sigma,n}+2M_n^2D_{\sigma,n}.
\tag{6.3}
\]

The drift is unconditionally summable:

\[
\sum_{n\ge1}M_n^2D_{\sigma,n}
\le
\boxed{1+\frac1{1+2\sigma}}.
\tag{6.4}
\]

Therefore endpoint-energy boundedness implies uniform completed vertical-line mass, with the explicit sufficient constant

\[
V_\sigma(T)
\le8\left(B+1+\frac1{1+2\sigma}\right).
\tag{6.5}
\]

Conversely, if `V_σ(T)≤C` for every horizon, then applying (6.3) through the endpoint `log(N+1)` gives

\[
E_{\sigma,N}
\le\frac C2+2\left(1+\frac1{1+2\sigma}\right).
\tag{6.6}
\]

Hence, for every fixed positive damping,

\[
\boxed{
\mathsf{ClosedDampedTriadicFluxUpper}(\sigma)
\iff
\mathsf{DampedEndpointEnergyUniform}(\sigma)
\iff
\mathsf{VerticalLineUniformAt}(\sigma).
}
\tag{6.7}
\]

The analytic proof of the cell comparison is written here and in the preceding package; it has not been admitted as an active Lean theorem in this contribution.

## 7. Countable reciprocal family

Define

\[
\mathsf{ReciprocalClosedTriadicFluxUpper}
\]

by requiring (5.1) at every

\[
\sigma_k=\frac1{k+1},\qquad k\ge1.
\]

The existing repository proves that uniform completed mass on this countable cofinal family supplies uniform mass at every positive damping and then the exact pinned `_root_.RiemannHypothesis` target.

Consequently,

\[
\boxed{
\mathsf{ReciprocalClosedTriadicFluxUpper}
\Longrightarrow
\mathsf{CriticalReciprocalVerticalLineUniform}
\Longrightarrow
\_root_.\mathsf{RiemannHypothesis}.
}
\tag{7.1}
\]

The first premise remains unproved.

## 8. Why compensation is mathematically necessary

The uncompensated flux condition can be strictly stronger than energy boundedness even under the same elementary increment envelope as the arithmetic source.

Fix `0<σ<1/2` and write `p=2σ∈(0,1)`. There exists a sequence `q_n`, with increments `δ_n=q_{n+1}-q_n`, such that

\[
|\delta_n|\le n^{-1/2},
\]

\[
\sum_n q_n^2\bigl(n^{-p}-(n+1)^{-p}\bigr)<\infty,
\]

\[
\sum_n \delta_n^2(n+1)^{-p}<\infty,
\]

but

\[
\sup_N q_N^2(N+1)^{-p}=\infty.
\]

A construction uses disjoint triangular pulses. Choose rapidly increasing `N_k`, set

\[
H_k=kN_k^{p/2},
\qquad
L_k=\left\lceil H_k\sqrt{2N_k}\right\rceil,
\]

and use increments `+(2N_k)^{-1/2}` for `L_k` steps, then the negative of that increment for `L_k` steps. The pulse returns to zero. At its peak the terminal boundary is bounded below by a constant multiple of `k^2`. Its endpoint-energy cost is bounded by

\[
O_p\bigl(k^3N_k^{(p-1)/2}\bigr),
\]

and its correction cost by

\[
O_p\bigl(kN_k^{-(p+1)/2}\bigr).
\]

Choosing `N_k` recursively makes both series summable while the peak boundary diverges.

Thus the uncompensated partial sums

\[
F_N=E_N+B_N-R_N
\]

can be unbounded even though the closed flux

\[
\mathfrak F_N=E_N-R_N
\]

is bounded. This counterexample concerns the abstract envelope, not the actual Möbius sequence. Its scope is exactly the proposed stronger intermediate supplier.

## 9. Triadic and primitive-radial content is unchanged

The interior source term remains

\[
Q_nM_n
=
\int_{\mathbb T}A_n(z)B_n(z)C_n^-(z)\,dm(z),
\]

with the literal signed `(+,+,-)` Fourier moment. Its primitive-radial decomposition retains

\[
\mu(da)\mu(db)
=
\mu(a)\mu(b)\mu(d)^2\mathbf1_{(d,ab)=1}.
\]

The compensated boundary is the exact endpoint seed `Q_N^2v_{σ,N+1}`. It is not a replacement for the ternary face moment; it is the boundary coordinate required to close the finite transport identity.

The reflection-orbit, local Taylor, Jensen, Frobenius, and source-derived flux quartics remain distinct objects.

## 10. Executed scope

The executable verifies:

- the general finite closed Abel identity over thousands of exact rational fixtures;
- nonnegativity of the correction and `closed flux ≤ endpoint energy`;
- the necessity of the terminal boundary in the open identity;
- the complete finite Möbius recurrence identity at several dampings and horizons;
- exact square factorizations for both logarithmic-cell comparisons;
- finite triangular-pulse controls demonstrating boundary amplification.

The long Möbius profiles are diagnostic only. They do not establish a uniform bound.

## 11. Smallest unresolved theorem

The corrected terminal frontier is:

> For every integer `k≥1`, there is a constant `C_k≥0` such that for every `N≥1`,
>
> \[
> \sum_{n=1}^{N-1}
> (k+1)(n+1)^{-2/(k+1)}Q_nM_ng_n
> -\frac{k+1}{2}(N+1)^{-2/(k+1)}Q_N^2
> \le C_k.
> \]

This is the **reciprocal closed triadic flux upper bound**. It retains the complete signed primitive-radial face moment and the terminal endpoint seed. It is exactly matched to the existing completed vertical-line criterion rather than being an artificially stronger open-flux condition.
