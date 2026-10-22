# Transverse zero, low, and regular frequency split

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #915  
Parent draft PR: #908  
Parent revision: `0a9c48648261477ab9d25cac4565a4424b8183d1`

This note records one exact finite reorganization of the RH-E02 signed endpoint packet. It introduces no arithmetic estimate.

## 1. Starting point

The parent clipping-shear layer works on the doubled cyclic group

\[
\mathbf Z/Q_j\mathbf Z,
\qquad
Q_j=2Y_j,
\qquad
Y_j=2^{j+1}.
\]

The bulk contribution is already one-frequency. The clipping correction is represented by the sheared transform

\[
\widehat C_j(u,s),
\qquad
u=r+s,
\]

and obeys the exact finite-difference equation

\[
\bigl(e_{Q_j}(u)-1\bigr)\widehat C_j(u,s)
=
\widehat J_j(u,s)+\widehat E_j(u,s).
\]

Here:

- \(e_{Q_j}\) is Mathlib's standard additive character;
- \(J_j\) is the strict interior clipping increment;
- \(E_j\) is the explicit right-window boundary atom.

The multiplier vanishes at \(u=0\). Consequently, the zero mode cannot be reconstructed by division and must remain a direct signed contribution.

## 2. Circular transverse distance

Define

\[
d_j(u)
=
\min\bigl(u_{\mathrm{val}},(-u)_{\mathrm{val}}\bigr).
\]

The source proves

\[
\boxed{
d_j(u)=0
\iff
u=0,
}
\]

\[
\boxed{
d_j(-u)=d_j(u),
}
\]

and

\[
\boxed{
2d_j(u)\le Q_j.
}
\]

Thus \(d_j(u)\) is the canonical distance from \(u\) to the cyclic origin and lies in the endpoint half-window:

\[
d_j(u)\le Y_j.
\]

No ordering is imposed directly on the cyclic group. All comparisons are made through canonical representatives.

## 3. Exact character geometry

Define the transverse multiplier

\[
m_j(u)
=
e_{Q_j}(u)-1.
\]

Injectivity of the standard additive character gives

\[
\boxed{
m_j(u)=0
\iff
u=0.
}
\]

The source then proves the exact norm identity

\[
\boxed{
\lVert m_j(u)\rVert
=
\left\lVert
2\sin\left(
\frac{\pi d_j(u)}{Q_j}
\right)
\right\rVert.
}
\]

Equivalently,

\[
\boxed{
\lVert m_j(u)^{-1}\rVert
=
\left\lVert
2\sin\left(
\frac{\pi d_j(u)}{Q_j}
\right)
\right\rVert^{-1}.
}
\]

This is only an identity. The branch proves no lower bound for the sine, no upper bound for the inverse, and no small-divisor sum.

## 4. Zero, low, and regular frequencies

For an arbitrary natural cutoff \(L\), define

\[
Z_j=\{0\},
\]

\[
\operatorname{Low}_j(L)
=
\left\{
u\ne0:
d_j(u)\le L
\right\},
\]

and

\[
\operatorname{Regular}_j(L)
=
\left\{
u:
L<d_j(u)
\right\}.
\]

The source proves exact pairwise disjointness and the partition

\[
\boxed{
\mathbf Z/Q_j\mathbf Z
=
Z_j
\sqcup
\operatorname{Low}_j(L)
\sqcup
\operatorname{Regular}_j(L).
}
\]

Therefore every finite frequency sum decomposes as

\[
\sum_u F(u)
=
F(0)
+
\sum_{u\in\operatorname{Low}_j(L)}F(u)
+
\sum_{u\in\operatorname{Regular}_j(L)}F(u).
\]

The low set explicitly excludes zero. Both low and regular modes therefore have nonzero multiplier.

## 5. Exact transverse reindexing

The parent clipping packet is

\[
Q_j^{-2}
\sum_{r,s}
\widehat f_j(-r)
\widehat f_j(-s)
\widehat C_j(r+s,s).
\]

Using

\[
u=r+s,
\qquad
r=u-s,
\qquad
-r=s-u,
\]

the source proves the exact reindexing

\[
\boxed{
Q_j^{-2}
\sum_{r,s}
\widehat f_j(-r)
\widehat f_j(-s)
\widehat C_j(r+s,s)
=
Q_j^{-2}
\sum_{u,s}
\widehat f_j(s-u)
\widehat f_j(-s)
\widehat C_j(u,s).
}
\]

No Fourier coefficient is replaced by a norm or absolute value.

## 6. Exact nonzero resolvent

For every transverse mode, define the formal resolved kernel

\[
\widehat C_j^{\mathrm{res}}(u,s)
=
m_j(u)^{-1}
\left(
\widehat J_j(u,s)
+
\widehat E_j(u,s)
\right).
\]

For \(u\ne0\), the multiplier is nonzero and the parent antiderivative equation gives

\[
\boxed{
\widehat C_j^{\mathrm{res}}(u,s)
=
\widehat C_j(u,s).
}
\]

The right-window atom remains inside the numerator. It is not discarded or estimated separately.

At \(u=0\), this resolved expression is not used. The direct clipping transform \(\widehat C_j(0,s)\) remains explicit.

## 7. Three clipping packets

The direct zero-mode clipping packet is

\[
\mathcal C_j^{0}
=
Q_j^{-2}
\sum_s
\widehat f_j(s)
\widehat f_j(-s)
\widehat C_j(0,s).
\]

The low nonzero packet is

\[
\mathcal C_j^{\mathrm{low}}(L)
=
Q_j^{-2}
\sum_{u\in\operatorname{Low}_j(L)}
\sum_s
\widehat f_j(s-u)
\widehat f_j(-s)
\widehat C_j^{\mathrm{res}}(u,s).
\]

The regular packet is

\[
\mathcal C_j^{\mathrm{reg}}(L)
=
Q_j^{-2}
\sum_{u\in\operatorname{Regular}_j(L)}
\sum_s
\widehat f_j(s-u)
\widehat f_j(-s)
\widehat C_j^{\mathrm{res}}(u,s).
\]

The source proves

\[
\boxed{
\mathcal C_j
=
\mathcal C_j^{0}
+
\mathcal C_j^{\mathrm{low}}(L)
+
\mathcal C_j^{\mathrm{reg}}(L)
}
\]

for every cutoff \(L\).

## 8. Signed zero-mode packet

Let the one-frequency doubled bulk packet be

\[
\mathcal B_j
=
Q_j^{-1}
\sum_s
\widehat f_j(s)
\widehat f_j(-s)
\widehat b_j(s).
\]

The source keeps the bulk and direct clipping zero mode together:

\[
\mathcal Z_j
=
Q_j^{-1}
\sum_s
\widehat f_j(s)
\widehat f_j(-s)
\left(
\widehat b_j(s)
-
Q_j^{-1}\widehat C_j(0,s)
\right).
\]

It proves

\[
\boxed{
\mathcal Z_j
=
\mathcal B_j-\mathcal C_j^0.
}
\]

This is the only zero-mode object consumed by the complete split packet. The branch does not require separate estimates of \(\mathcal B_j\) and \(\mathcal C_j^0\).

## 9. Complete cutoff-dependent packet

For every \(L\), define

\[
\mathcal P_j^{\mathrm{split}}(L)
=
\mathcal Z_j
-
\mathcal C_j^{\mathrm{low}}(L)
-
\mathcal C_j^{\mathrm{reg}}(L).
\]

The exact clipping decomposition gives

\[
\boxed{
\mathcal P_j^{\mathrm{split}}(L)
=
\mathcal P_j^{\mathrm{shear}}
}
\]

for every cutoff.

The canonical packet uses the existing logarithmic shift threshold

\[
L_j
=
\operatorname{logarithmicShiftThreshold}(j).
\]

Thus

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\,
\operatorname{coreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket}(j).
}
\]

## 10. Source-facing interface

The new all-scale proposition is

`SubpolynomialCoreGrowingShiftSignedEndpointTransverseFrequencySplitFourierPacket`.

It is exactly equivalent to

`SubpolynomialCoreGrowingShiftSignedEndpointClippingShearFourierPacket`.

The proof-producing interface keeps separate obligations for:

- circular-distance geometry;
- exact character norm identity;
- exact zero/low/regular partition;
- transverse packet reindexing;
- direct zero-mode preservation;
- low-mode preservation;
- regular-mode resolvent preservation;
- right-window boundary preservation;
- low-anchor preservation;
- signed bulk/clipping cancellation;
- all-scale uniformity;
- finite small-scale control.

No value of this interface is constructed.

## 11. Current obstruction

The exact denominator is now visible:

\[
\left\lVert
m_j(u)^{-1}
\right\rVert
=
\left\lVert
2\sin\left(
\frac{\pi d_j(u)}{Q_j}
\right)
\right\rVert^{-1}.
\]

The remaining analytic problem separates into three genuinely different obligations:

\[
\boxed{
\text{signed transverse zero mode},
}
\]

\[
\boxed{
\text{finitely many low nonzero modes},
}
\]

and

\[
\boxed{
\text{regular modes with an explicit small divisor}.
}
\]

The right-window atom remains present in both nonzero packets.

A subsequent deterministic layer may prove elementary lower bounds for the multiplier on the regular set and count the low set. That would still not estimate the arithmetic Fourier numerators.

## 12. Evidence and nonclaims

Evidence:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
TRANSVERSE_MODE_SPLIT_ESTIMATE_OPEN
```

No claim is made of:

- Lean elaboration;
- kernel acceptance;
- trust audit;
- external replay;
- a multiplier lower bound;
- an inverse-multiplier upper bound;
- a low-mode estimate;
- a regular-mode estimate;
- a boundary estimate;
- a zero-mode estimate;
- a joint signed arithmetic estimate;
- a Chowla adapter;
- a corrected-Elliott adapter;
- a Gowers, large-sieve, or dispersion theorem;
- merge;
- proof or disproof of the Riemann Hypothesis.