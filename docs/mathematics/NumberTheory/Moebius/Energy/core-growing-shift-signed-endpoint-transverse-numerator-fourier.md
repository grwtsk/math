# Transverse clipping numerator and affine boundary collapse

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #934  
Parent issue: #927  
Parent draft PR: #932  
Parent revision: `cbb39f5cfeb63881ff5672436358e72210ff51f9`

This note records one exact finite reorganization of the transverse clipping numerator. It introduces no estimate of a Möbius transform, clipping numerator, boundary symbol, low mode, regular mode, zero mode, or complete endpoint packet.

## 1. Parent antiderivative equation

Let

\[
Y_j=2^{j+1},
\qquad
Q_j=2Y_j,
\qquad
u=r+s.
\]

The parent clipping-shear layer defines a strict sheared clipping coefficient

\[
C_j(x,h),
\]

its interior increment

\[
J_j(x,h),
\]

and its right-window boundary atom

\[
E_j(x,h).
\]

The cyclic forward difference is exact:

\[
C_j(x+1,h)-C_j(x,h)=J_j(x,h)+E_j(x,h).
\]

After the two-dimensional DFT,

\[
\bigl(e_{Q_j}(u)-1\bigr)\widehat C_j(u,s)
=
\widehat J_j(u,s)+\widehat E_j(u,s).
\]

The transverse-frequency split and geometry layers retained the numerator

\[
\widehat J_j(u,s)+\widehat E_j(u,s)
\]

as an opaque signed object. The present increment exposes both pieces without estimating either one.

## 2. Explicit reciprocal-drop interior

Write

\[
D_j(h)=\max(H_j+1,2^j-h),
\]

\[
U_j(h)=\min(Y_j-H_j,Y_j-h),
\]

and

\[
q_j(h)=\max(h,H_j),
\qquad
A_j=2^j+H_j-1.
\]

The inherited staircase coefficient is exactly

\[
w_j(x,h)
=
\Delta\!\left(\max(A_j,x+q_j(h))\right),
\]

where

\[
\Delta(a)=\frac1a-\frac1{a+1}.
\]

Define the explicit interior reciprocal-drop kernel by

\[
I_j^Q(x,h)=
\begin{cases}
\Delta\!\left(\max(A_j,x+q_j(h))\right),
&
\begin{array}{l}
1\le x,\ 1\le h,\ x+h+1<Y_j,\\
D_j(h)\le x<U_j(h),
\end{array}
\\[2mm]
0,&\text{otherwise}.
\end{cases}
\]

The source proves pointwise

\[
\boxed{I_j^Q(x,h)=J_j(x,h).}
\]

Thus the interior numerator is no longer represented through a nested clipping definition. Its exact support and reciprocal-drop value are visible in one formula.

## 3. Complete signed numerator

Define

\[
N_j^Q(x,h)=I_j^Q(x,h)+E_j(x,h).
\]

The source proves

\[
\boxed{N_j^Q=J_j+E_j}
\]

and therefore

\[
\boxed{N_j^Q(x,h)=C_j(x+1,h)-C_j(x,h).}
\]

The addition is kept signed. No triangle inequality separates the interior and boundary pieces.

## 4. Affine support of the right-window atom

The right-window condition is

\[
x+h+1=Y_j.
\]

Define the affine-line coordinate

\[
c_j=Y_j-1\pmod{Q_j}.
\]

Because the canonical representatives on the support satisfy

\[
x+h=Y_j-1<Q_j,
\]

there is no modular wrap-around. The source proves

\[
\boxed{x+h\ne c_j\Longrightarrow E_j(x,h)=0.}
\]

Thus the right-window correction is supported on one affine line in the doubled group.

## 5. One-variable boundary symbol

Parameterize the affine line by its difference coordinate:

\[
e_j(h)=E_j(c_j-h,h).
\]

On the ordinary boundary window

\[
1\le h,
\qquad
h+1<Y_j,
\]

its value is exactly

\[
\boxed{
e_j(h)
=-R_j(Y_j-h-1,h),
}
\]

where \(R_j\) is the parent clipping coefficient.

The boundary symbol remains arithmetic data. Its one-dimensional presentation is not a bound.

## 6. Generic affine-line DFT theorem

Let \(G=\mathbf Z/Q\mathbf Z\), let \(E:G\times G\to\mathbf C\), and suppose

\[
E(x,h)=0
\qquad\text{whenever}\qquad
x+h\ne c.
\]

Define

\[
e(h)=E(c-h,h).
\]

With the repository's `ZMod.dft` convention, the source proves

\[
\boxed{
\operatorname{DFT}_2(E)(u,s)
=
e_Q(-cu)\,\widehat e(s-u).
}
\]

Indeed, the unique contributing point in the \(x\)-sum is \(x=c-h\), and

\[
-hs-(c-h)u
=-cu-h(s-u).
\]

This is an exact finite reindexing and character identity.

## 7. Collapsed boundary transform

Applying the generic theorem to the endpoint boundary atom gives

\[
\boxed{
\widehat E_j(u,s)
=
e_{Q_j}(-c_ju)\,\widehat e_j(s-u).
}
\]

The right-window correction therefore has only one intrinsic boundary-symbol frequency, \(s-u\), together with a known affine phase.

This does not remove the boundary term. It only exposes its exact transform.

## 8. Complete numerator transform

Let

\[
\widehat I_j(u,s)
=
\operatorname{DFT}_2(I_j^Q)(u,s)
\]

and

\[
\widehat N_j(u,s)
=
\operatorname{DFT}_2(N_j^Q)(u,s).
\]

Finite linearity gives

\[
\widehat N_j(u,s)
=
\widehat I_j(u,s)+\widehat E_j(u,s).
\]

The source therefore proves the fully exposed formula

\[
\boxed{
\widehat N_j(u,s)
=
\widehat I_j(u,s)
+
e_{Q_j}(-c_ju)\,\widehat e_j(s-u).
}
\]

It also proves

\[
\boxed{
\widehat N_j(u,s)
=
\widehat J_j(u,s)+\widehat E_j(u,s).
}
\]

The first equality exposes structure; the second identifies it with the inherited numerator.

## 9. Exact nonzero resolvent

For every transverse frequency define

\[
\widehat C_j^{\mathrm{num-res}}(u,s)
=
\bigl(e_{Q_j}(u)-1\bigr)^{-1}
\widehat N_j(u,s).
\]

The source proves exact equality with the parent resolved transform:

\[
\boxed{
\widehat C_j^{\mathrm{num-res}}(u,s)
=
\widehat C_j^{\mathrm{res}}(u,s).
}
\]

For \(u\ne0\), it follows that

\[
\boxed{
\widehat C_j^{\mathrm{num-res}}(u,s)
=
\widehat C_j(u,s).
}
\]

At \(u=0\), no inversion theorem is asserted. The direct zero mode remains in the signed joint zero-mode packet.

## 10. Low and regular packets

The low and regular clipping packets are rebuilt using

\[
\widehat C_j^{\mathrm{num-res}}(u,s)
\]

instead of the parent resolved-transform name.

The source proves separately

\[
\boxed{
\mathcal C_j^{\mathrm{low,num}}(L)
=
\mathcal C_j^{\mathrm{low}}(L),
}
\]

and

\[
\boxed{
\mathcal C_j^{\mathrm{reg,num}}(L)
=
\mathcal C_j^{\mathrm{reg}}(L).
}
\]

No low-mode or regular-mode sum is estimated.

## 11. Complete packet

At the canonical logarithmic cutoff, define

\[
\mathcal P_j^{\mathrm{num}}
=
\mathcal Z_j
-
\mathcal C_j^{\mathrm{low,num}}
-
\mathcal C_j^{\mathrm{reg,num}},
\]

where \(\mathcal Z_j\) is still the joint bulk/direct-clipping-zero-mode packet.

The source proves

\[
\boxed{
\mathcal P_j^{\mathrm{num}}
=
\mathcal P_j^{\mathrm{geometry}}.
}
\]

Consequently,

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\,
\operatorname{coreGrowingShiftSignedEndpointTransverseNumeratorFourierPacket}(j).
}
\]

The all-scale proposition is exactly equivalent to the parent transverse-geometry proposition. No stronger arithmetic premise is introduced.

## 12. Remaining analytic obligations

The deterministic transformations now expose three distinct arithmetic objects:

1. the direct signed zero-mode packet;
2. logarithmically many low nonzero numerator modes;
3. regular numerator modes with the already proved scalar-resolvent envelope.

Within every nonzero numerator mode, the arithmetic content is now

\[
\widehat I_j(u,s)
+
e_{Q_j}(-c_ju)\widehat e_j(s-u).
\]

The unresolved work is to control this signed quantity without discarding the boundary symbol or replacing it by separate absolute masses.

## 13. Evidence and nonclaims

Evidence:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
TRANSVERSE_NUMERATOR_ESTIMATE_OPEN
```

No claim is made of:

- Lean elaboration;
- kernel acceptance;
- trust audit;
- external replay;
- an interior numerator estimate;
- a boundary-symbol estimate;
- a low-mode estimate;
- a regular-mode estimate;
- a direct zero-mode estimate;
- a joint signed estimate;
- a Chowla, corrected-Elliott, Gowers, large-sieve, or dispersion adapter;
- merge;
- proof or disproof of the Riemann Hypothesis.