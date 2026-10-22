# Transverse multiplier geometry and low-mode cardinality

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #927  
Parent draft PR: #922  
Parent revision: `8ff42f7da358d7bb49567e1fa3d2fd83277332e7`

This note records the elementary cyclic geometry that follows the exact transverse mode split from #915. It proves a scalar lower bound for the finite-difference multiplier, a scalar upper bound for its inverse on regular modes, and an unconditional count of low modes. It introduces no estimate for an arithmetic Fourier numerator or for the complete signed packet.

## 1. Parent transverse equation

Let

\[
Q_j=2^{j+2}
\]

be the doubled cyclic modulus and let

\[
u=r+s
\]

be the transverse frequency. The parent source defines the circular distance

\[
d_j(u)=\min\bigl(u_{\mathrm{val}},(-u)_{\mathrm{val}}\bigr)
\]

and the finite-difference multiplier

\[
m_j(u)=e_{Q_j}(u)-1.
\]

It proves

\[
2d_j(u)\le Q_j
\]

and the exact character formula

\[
\boxed{
\lVert m_j(u)\rVert
=
\left\lVert
2\sin\left(\frac{\pi d_j(u)}{Q_j}\right)
\right\rVert.
}
\]

The clipping antiderivative equation is

\[
\boxed{
m_j(u)\widehat C_j(u,s)
=
\widehat J_j(u,s)+\widehat E_j(u,s),
}
\]

where \(\widehat E_j\) is the right-window boundary atom. The zero mode is not invertible.

## 2. Jordan lower bound

Since

\[
0\le \frac{\pi d_j(u)}{Q_j}\le \frac{\pi}{2},
\]

Jordan's inequality gives

\[
\frac{2}{\pi}x\le \sin x
\qquad
(0\le x\le \pi/2).
\]

At

\[
x=\frac{\pi d_j(u)}{Q_j},
\]

this yields

\[
\boxed{
\frac{4d_j(u)}{Q_j}
\le
\lVert m_j(u)\rVert.
}
\]

The source packages the left side as

```text
coreGrowingShiftEndpointTransverseJordanLowerScale
```

and proves the inequality in

```text
coreGrowingShiftEndpointTransverseMultiplier_norm_lowerBound
```

This is an elementary character estimate. It contains no Möbius information.

## 3. Nonzero inverse multiplier

For \(u\ne0\), the parent zero-distance theorem gives

\[
d_j(u)>0.
\]

Taking reciprocals in the Jordan lower bound gives

\[
\boxed{
\lVert m_j(u)^{-1}\rVert
\le
\frac{Q_j}{4d_j(u)}.
}
\]

In source:

```text
coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_distance
```

No claim is made about a sum over \(u\). This theorem controls one scalar coefficient only.

## 4. Regular frequencies

For a cutoff \(L\), the parent regular set is

\[
\operatorname{Regular}_j(L)
=
\{u:L<d_j(u)\}.
\]

Membership implies

\[
L+1\le d_j(u).
\]

Therefore

\[
\boxed{
\lVert m_j(u)^{-1}\rVert
\le
\frac{Q_j}{4(L+1)}
\qquad
(u\in\operatorname{Regular}_j(L)).
}
\]

The scalar envelope is

```text
coreGrowingShiftEndpointTransverseRegularResolventEnvelope
```

and the regular-frequency theorem is

```text
coreGrowingShiftEndpointTransverseMultiplier_inv_norm_le_regularEnvelope
```

The factor still grows with \(Q_j\). The theorem is not a subpolynomial estimate and does not control the arithmetic numerator.

## 5. Two ordinary circular arcs

Define the positive and negative arc supersets

\[
P_j(L)=\{1,2,\ldots,L\}\pmod {Q_j},
\]

\[
N_j(L)=\{-1,-2,\ldots,-L\}\pmod {Q_j}.
\]

In source:

```text
coreGrowingShiftEndpointTransversePositiveArcFrequencySet

coreGrowingShiftEndpointTransverseNegativeArcFrequencySet
```

Every low nonzero mode satisfies either

\[
u_{\mathrm{val}}=d_j(u)\le L
\]

or

\[
(-u)_{\mathrm{val}}=d_j(u)\le L.
\]

Hence

\[
\boxed{
\operatorname{Low}_j(L)
\subseteq
P_j(L)\cup N_j(L).
}
\]

The source theorem is

```text
coreGrowingShiftEndpointTransverseLowFrequencySet_subset_arcUnion
```

This formulation remains valid even for oversized cutoffs whose casts wrap and create duplicates.

## 6. Low-mode cardinality

Each arc is the image of the ordinary interval \([1,L]\), so

\[
\#P_j(L)\le L,
\qquad
\#N_j(L)\le L.
\]

Therefore

\[
\boxed{
\#\operatorname{Low}_j(L)\le 2L.
}
\]

In source:

```text
coreGrowingShiftEndpointTransversePositiveArcFrequencySet_card_le

coreGrowingShiftEndpointTransverseNegativeArcFrequencySet_card_le

coreGrowingShiftEndpointTransverseLowFrequencySet_card_le_two_mul
```

Only an upper bound is asserted. At an antipodal frequency the positive and negative arcs can overlap, so an equality \(\#\operatorname{Low}_j(L)=2L\) is not generally valid.

For the canonical cutoff

\[
L_j=\operatorname{logarithmicShiftThreshold}(j),
\]

the source records

\[
\boxed{
\#\operatorname{Low}_j(L_j)
\le
2L_j.
}
\]

## 7. Pointwise regular resolved kernel

The parent resolved clipping transform is

\[
\widehat C_j^{\mathrm{res}}(u,s)
=
m_j(u)^{-1}
\bigl(\widehat J_j(u,s)+\widehat E_j(u,s)\bigr).
\]

On the regular set, the scalar bound gives

\[
\boxed{
\left\lVert\widehat C_j^{\mathrm{res}}(u,s)\right\rVert
\le
\frac{Q_j}{4(L+1)}
\left\lVert
\widehat J_j(u,s)+\widehat E_j(u,s)
\right\rVert.
}
\]

In source:

```text
coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_norm_le_regularEnvelope
```

The canonical-cutoff specialization is

```text
coreGrowingShiftEndpointDoubledShearedPrefixClippingResolvedDFT2_norm_le_canonicalEnvelope
```

The boundary transform remains inside the numerator. It is neither discarded nor bounded separately.

## 8. What remains signed

The endpoint packet remains exactly

\[
\boxed{
\mathcal P_j
=
\mathcal Z_j
-
\mathcal C_j^{\mathrm{low}}(L_j)
-
\mathcal C_j^{\mathrm{reg}}(L_j),
}
\]

where \(\mathcal Z_j\) is the joint one-frequency bulk minus direct clipping-zero-mode packet.

The new wrapper

```text
coreGrowingShiftSignedEndpointTransverseGeometryFourierPacketComplex
```

uses this same formula and is proved exactly equal to the parent transverse-frequency split packet. Consequently,

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\,
\operatorname{coreGrowingShiftSignedEndpointTransverseGeometryFourierPacket}(j).
}
\]

No stronger arithmetic premise is introduced.

## 9. Source-facing interface

The new all-scale proposition is

```text
SubpolynomialCoreGrowingShiftSignedEndpointTransverseGeometryFourierPacket
```

and is exactly equivalent to the parent proposition.

The proof-producing interface

```text
SignedEndpointTransverseGeometryFourierSource
```

keeps separate obligations for:

- Jordan multiplier geometry;
- nonzero scalar-resolvent control;
- low-mode cardinality;
- transverse partition preservation;
- direct zero-mode preservation;
- low-mode arithmetic control;
- regular numerator control;
- right-window boundary preservation;
- low-anchor preservation;
- joint signed bulk/clipping cancellation;
- all-scale uniformity;
- finite small-scale control.

The first three items now have deterministic local theorems. The arithmetic obligations do not.

## 10. Analytic boundary

This increment does **not** prove:

- a low-mode Fourier estimate;
- a regular-mode numerator estimate;
- a boundary estimate;
- a direct zero-mode estimate;
- a joint signed zero-mode estimate;
- a small-divisor summation estimate;
- a bound for the complete endpoint packet.

Counting \(2L\) frequencies does not control the size of the values on those frequencies. Likewise, the regular scalar envelope does not control

\[
\widehat J_j(u,s)+\widehat E_j(u,s).
\]

No triangle inequality is promoted to an RH-facing premise.

## 11. Current frontier

The deterministic denominator geometry is now explicit:

\[
\operatorname{Low}_j(L_j):
\quad
\#\operatorname{Low}_j(L_j)\le 2L_j,
\]

and

\[
\operatorname{Regular}_j(L_j):
\quad
\lVert m_j(u)^{-1}\rVert
\le
\frac{Q_j}{4(L_j+1)}.
\]

The next genuine supplier must address arithmetic numerators while retaining the signed decomposition. A bounded next investigation is to expose the exact support and reciprocal structure of the interior increment and right-window boundary transforms, then determine whether summation by parts or a large-sieve/dispersion input can control their joint numerator without losing the zero-mode cancellation.

## 12. Evidence and nonclaims

Evidence:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
TRANSVERSE_GEOMETRIC_BOUNDS_ONLY
```

No claim is made of:

- Lean elaboration;
- kernel acceptance;
- trust audit;
- external replay;
- a low-mode arithmetic estimate;
- a regular-mode arithmetic estimate;
- a boundary estimate;
- a direct zero-mode estimate;
- a joint signed estimate;
- a Chowla adapter;
- a corrected-Elliott adapter;
- a Gowers, large-sieve, or dispersion theorem;
- merge;
- proof or disproof of the Riemann Hypothesis.