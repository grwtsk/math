# Endpoint clipping shear and transverse finite difference

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #904  
Parent issue: #884  
Parent draft PR: #888  
Parent revision: `4a2750ae0d7f4a07561bcdf6f9b1e3933cd89f52`

This note records one exact finite reorganization of the signed endpoint packet. It introduces no analytic estimate and does not discharge the surviving arithmetic premise.

## 1. Starting point

The parent doubled-convolution branch writes the complete endpoint packet as

\[
\mathcal P_j
=
\mathcal B_j^{1\mathrm D}
-
\mathcal C_j^{2\mathrm D},
\]

where:

- \(\mathcal B_j^{1\mathrm D}\) is the one-frequency packet obtained by diagonalizing the difference-only bulk on the doubled cyclic group;
- \(\mathcal C_j^{2\mathrm D}\) is the exact lifted left-endpoint clipping correction.

The bulk is already supported on the frequency relation

\[
r+s=0.
\]

The clipping correction remains an endpoint-dependent two-coordinate kernel. The purpose of this increment is to put it in coordinates adapted to the same transverse frequency \(u=r+s\).

Write

\[
Y=2^{j+1},
\qquad
Q=2Y,
\qquad
h=y-x.
\]

The parent difference interval is

\[
[D_j(h),U_j(h)),
\]

with

\[
D_j(h)=\max(H+1,2^j-h),
\qquad
U_j(h)=\min(Y-H,Y-h).
\]

The ordinary clipping coefficient is

\[
R_j(n,h)
=
\operatorname{Closed}_j
\bigl(h;D_j(h),\min(n,U_j(h))\bigr).
\]

Equivalently,

\[
R_j(n,h)
=
\sum_{N\in[D_j(h),\min(n,U_j(h)))}
 w_j(N,h).
\]

## 2. Exact ordinary successor difference

Define

\[
I_j(n,h)=
\begin{cases}
 w_j(n,h),&D_j(h)\le n<U_j(h),\\
 0,&\text{otherwise}.
\end{cases}
\]

The source proves the exact identity

\[
\boxed{
R_j(n+1,h)-R_j(n,h)=I_j(n,h).
}
\]

There are three exact regions.

If \(n<D_j(h)\), both clipping intervals are empty.

If \(D_j(h)\le n<U_j(h)\), the interval gains exactly the endpoint \(n\).

If \(U_j(h)\le n\), both intervals have saturated at the full difference interval.

The lower cutoff satisfies

\[
2\le D_j(h),
\]

so

\[
R_j(0,h)=R_j(1,h)=0.
\]

This eliminates a spurious left boundary when the coefficient is zero-padded in the left-endpoint coordinate.

## 3. Strict sheared zero padding

On ordinary coordinates define

\[
C_j^0(n,h)=
\begin{cases}
R_j(n,h),&1\le n,\ 1\le h,\ n+h<Y,\\
0,&\text{otherwise}.
\end{cases}
\]

The support condition \(n+h<Y\) is exactly the strict right-endpoint condition for the pair \((n,n+h)\).

Define the zero-padded interior increment

\[
J_j^0(n,h)=
\begin{cases}
I_j(n,h),&1\le n,\ 1\le h,\ n+h+1<Y,\\
0,&\text{otherwise},
\end{cases}
\]

and the right-window atom

\[
E_j^0(n,h)=
\begin{cases}
-R_j(n,h),&1\le n,\ 1\le h,\ n+h+1=Y,\\
0,&\text{otherwise}.
\end{cases}
\]

Then

\[
\boxed{
C_j^0(n+1,h)-C_j^0(n,h)
=
J_j^0(n,h)+E_j^0(n,h).
}
\]

The boundary term is forced by the strict endpoint window. It is not an error term and is not discarded.

## 4. Doubled cyclic sheared kernel

The ordinary functions are transferred to \(\mathbf Z/Q\mathbf Z\) through canonical representatives:

\[
C_j^Q(x,h)=C_j^0(x_{\mathrm{val}},h_{\mathrm{val}}),
\]

with analogous definitions for \(J_j^Q\) and \(E_j^Q\).

Let

\[
\Delta_x C_j^Q(x,h)
=
C_j^Q(x+1,h)-C_j^Q(x,h).
\]

Because the support lies in the initial endpoint window and \(Q=2Y\), cyclic wrap at \(Q-1\) contributes zero. The source therefore proves

\[
\boxed{
\Delta_x C_j^Q
=
J_j^Q+E_j^Q.
}
\]

There is no left-window atom because \(R_j(0,h)=R_j(1,h)=0\).

## 5. Exact inverse shear

The parent doubled clipping kernel is

\[
K_{j,\mathrm{clip}}^Q(x,y).
\]

The source proves pointwise

\[
\boxed{
K_{j,\mathrm{clip}}^Q(x,y)
=
C_j^Q(x,y-x).
}
\]

The cases are exact:

- for \(x<y<Y\), the doubled difference has canonical representative \(y-x\);
- on the diagonal, the difference is zero and the positive-difference support vanishes;
- for \(y<x<Y\), the reverse difference lies in \([Y,Q)\);
- outside the initial window, the strict sheared support vanishes.

Thus no wrapped reverse endpoint pair is admitted.

## 6. Generic finite shear theorem

For any kernel

\[
C:(\mathbf Z/Q\mathbf Z)^2\to\mathbf C,
\]

define its inverse shear

\[
K(x,y)=C(x,y-x).
\]

Using Mathlib's `ZMod.dft` sign convention, the source proves

\[
\boxed{
\widehat K(r,s)
=
\widehat C(r+s,s).
}
\]

Indeed, substituting \(h=y-x\) gives

\[
\begin{aligned}
\widehat K(r,s)
&=
\sum_{x,h}
 e_Q(-xr)e_Q(-(x+h)s)C(x,h)\\
&=
\sum_{x,h}
 e_Q(-x(r+s))e_Q(-hs)C(x,h).
\end{aligned}
\]

The first frequency is therefore the transverse frequency

\[
u=r+s.
\]

Applied to clipping,

\[
\boxed{
\widehat K_{j,\mathrm{clip}}^Q(r,s)
=
\widehat C_j^Q(r+s,s).
}
\]

## 7. Cyclic forward-difference multiplier

For a general cyclic kernel \(C(x,h)\), define

\[
\Delta_x C(x,h)=C(x+1,h)-C(x,h).
\]

The source proves

\[
\boxed{
\widehat{\Delta_x C}(u,s)
=
\bigl(e_Q(u)-1\bigr)\widehat C(u,s).
}
\]

Combining this with the exact pointwise split gives the clipping antiderivative equation

\[
\boxed{
\bigl(e_Q(u)-1\bigr)\widehat C_j^Q(u,s)
=
\widehat J_j^Q(u,s)+\widehat E_j^Q(u,s).
}
\]

No inverse multiplier is introduced.

## 8. The transverse zero mode

At \(u=0\),

\[
e_Q(0)-1=0.
\]

Hence the finite identity gives

\[
\boxed{
\widehat J_j^Q(0,s)+\widehat E_j^Q(0,s)=0.
}
\]

This is exact cancellation between the accumulated interior increment and the right-window atom.

It also shows why one cannot uniformly recover \(\widehat C_j^Q\) by dividing by \(e_Q(u)-1\): the zero mode must be treated separately, and near-zero transverse frequencies introduce a small divisor.

Neither issue is resolved in this increment.

## 9. Sheared clipping packet

The clipping packet is rewritten as

\[
\mathcal C_j^{\mathrm{shear}}
=
Q^{-2}
\sum_{r,s}
\widehat f_j(-r)
\widehat f_j(-s)
\widehat C_j^Q(r+s,s).
\]

The source proves

\[
\boxed{
\mathcal C_j^{\mathrm{shear}}
=
\mathcal C_j^{2\mathrm D}.
}
\]

The complete deterministic packet is therefore

\[
\mathcal P_j^{\mathrm{shear}}
=
\mathcal B_j^{1\mathrm D}
-
\mathcal C_j^{\mathrm{shear}}.
\]

It satisfies

\[
\boxed{
\mathcal P_j^{\mathrm{shear}}
=
\mathcal P_j^{\mathrm{double}}.
}
\]

Consequently,

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\,
\operatorname{coreGrowingShiftSignedEndpointClippingShearFourierPacket}(j).
}
\]

## 10. Source-facing interface

The new proposition is

`SubpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket`.

It is exactly equivalent to

`SubpolynomialCoreGrowingShiftSignedEndpointDoubledConvolutionFourierPacket`.

The proof-producing interface keeps separate obligations for:

- the exact clipping successor difference;
- exact shear reindexing;
- transverse DFT normalization;
- the cyclic forward-difference multiplier;
- right-window boundary preservation;
- transverse zero-mode preservation;
- low-anchor preservation;
- the signed bulk multiplier;
- joint bulk/clipping cancellation;
- all-scale uniformity;
- finite small-scale control.

No field asks for division by the transverse multiplier.

## 11. Current frontier

The deterministic clipping geometry is now reduced to

\[
\boxed{
\widehat C_j^Q(u,s)
\quad\text{with}\quad
(e_Q(u)-1)\widehat C_j^Q(u,s)
=
\widehat J_j^Q(u,s)+\widehat E_j^Q(u,s).
}
\]

The next bounded layer should separate:

1. the transverse zero mode \(u=0\);
2. low nonzero transverse frequencies, where \(|e_Q(u)-1|\) is small;
3. the remaining transverse frequencies, where exact character geometry gives a usable denominator;
4. the right-window atom, which must remain signed with the bulk and interior increment.

That future layer must not infer a subpolynomial estimate merely from the algebraic antiderivative identity.

## 12. Evidence and nonclaims

Evidence:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
TRANSVERSE_CLIPPING_ANTIDERIVATIVE_ESTIMATE_OPEN
```

No claim is made of:

- Lean elaboration;
- kernel acceptance;
- trust audit;
- external replay;
- a transverse zero-mode estimate;
- a small-divisor estimate;
- a right-boundary estimate;
- a joint signed bulk/clipping estimate;
- a Chowla adapter;
- a corrected-Elliott adapter;
- a Gowers, large-sieve, or dispersion theorem;
- merge;
- proof or disproof of the Riemann Hypothesis.