# Capped shifts and literal right-endpoint harmonic branch

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #952  
Parent draft PR: #945  
Parent revision: `27c3194f57e9b169c8182de591ca5d42a6155a73`

This increment reorganizes the multiplier-free harmonic term produced by the transverse summation-by-parts layer. It introduces no arithmetic Fourier estimate and changes no endpoint packet.

## 1. Effective-shift dichotomy

The parent harmonic term uses

\[
q_j(h)=\max(h,H_j),
\qquad H_j=\operatorname{logarithmicShiftThreshold}(j).
\]

The source proves exactly

\[
h\le H_j\Longrightarrow q_j(h)=H_j,
\qquad
H_j<h\Longrightarrow q_j(h)=h.
\]

Declarations:

```text
coreGrowingShiftEndpointAggregateEffectiveShift_eq_threshold_of_le
coreGrowingShiftEndpointAggregateEffectiveShift_eq_difference_of_threshold_lt
```

## 2. Difference sets and cardinality

Define

\[
\operatorname{Cap}_j=\{h:1\le h_{\rm val}\le H_j\},
\qquad
\operatorname{Right}_j=\{h:H_j<h_{\rm val}\}.
\]

In source:

```text
coreGrowingShiftEndpointTransverseCappedDifferenceSet
coreGrowingShiftEndpointTransverseRightEndpointDifferenceSet
```

The capped set injects into the ordinary interval \([1,H_j]\), giving

\[
\boxed{\#\operatorname{Cap}_j\le H_j.}
\]

The theorem is

```text
coreGrowingShiftEndpointTransverseCappedDifferenceSet_card_le_threshold
```

This count is not promoted to a bound on any Fourier value.

## 3. Fixed-difference harmonic split

Let

\[
A_j(h)=\operatorname{tailLower}_j(h),
\qquad
B_j(h)=\operatorname{interiorUpper}_j(h).
\]

For capped differences, define

\[
\mathcal H^{\rm cap}_{j,h}(u)
=
\sum_{n\in[A_j(h)+1,B_j(h))}
\frac{e_{Q_j}(-nu)}{n+H_j}.
\]

For genuine right-endpoint differences, define

\[
\mathcal H^{\rm right}_{j,h}(u)
=
\sum_{n\in[A_j(h)+1,B_j(h))}
\frac{e_{Q_j}(-nu)}{n+h}.
\]

The second denominator is the literal ordinary right endpoint.

Declarations:

```text
coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier
```

The exact identity is

\[
\boxed{
\mathcal H_{j,h}(u)
=
\mathcal H^{\rm cap}_{j,h}(u)
+
\mathcal H^{\rm right}_{j,h}(u).
}
\]

In source:

```text
coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier_eq_capped_add_rightEndpoint
```

Empty tail intervals remain exact zeros. Each branch is also proved to vanish away from its corresponding difference set.

## 4. Longitudinal aggregation

Define

\[
\widehat H_j^{\rm cap}(u,s)
=
\sum_h e_{Q_j}(-hs)\mathcal H^{\rm cap}_{j,h}(u),
\]

and

\[
\widehat H_j^{\rm right}(u,s)
=
\sum_h e_{Q_j}(-hs)\mathcal H^{\rm right}_{j,h}(u).
\]

Then

\[
\boxed{
\widehat H_j^{\rm tail}(u,s)
=
\widehat H_j^{\rm cap}(u,s)
+
\widehat H_j^{\rm right}(u,s).
}
\]

Declarations:

```text
coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicDFT2
coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicDFT2
coreGrowingShiftEndpointTransverseInteriorTailHarmonicDFT2_eq_capped_add_rightEndpoint
```

The capped DFT is rewritten as a sum over \(\operatorname{Cap}_j\), so it is supported on at most \(H_j=j+2\) ordinary differences:

```text
coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicDFT2_eq_sum_capped
```

## 5. Shift-split resolvent

The new resolved transform is

\[
\mathcal R_j^{\rm split}(u,s)
=
m_j(u)^{-1}S_j(u,s)
-
\widehat H_j^{\rm cap}(u,s)
-
\widehat H_j^{\rm right}(u,s),
\]

where \(S_j\) is the complete signed singular anchor/endpoint/affine-boundary numerator from the parent layer.

The source proves

\[
\boxed{
\mathcal R_j^{\rm split}(u,s)
=
\mathcal R_j^{\rm SBP}(u,s).
}
\]

Declarations:

```text
coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2
coreGrowingShiftEndpointDoubledShearedPrefixClippingEffectiveShiftSplitResolvedDFT2_eq_parent
```

## 6. Packet preservation

The low and regular clipping packets are rebuilt with the shift-split resolvent and separately proved equal to the parent packets. The direct transverse zero-mode joint packet is unchanged.

The complete packet remains

\[
\boxed{
\text{direct signed zero-mode joint packet}
-
\text{low shift-split packet}
-
\text{regular shift-split packet}.
}
\]

The complete source identity is

```text
coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacketComplex_eq_parent
```

and therefore

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\,\operatorname{coreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket}(j).
}
\]

The proposition

```text
SubpolynomialCoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourierPacket
```

is exactly equivalent to the parent summation-by-parts proposition and retains the inherited conditional RH endpoint.

## 7. Analytic boundary

The interface keeps separate obligations for the effective-shift dichotomy, capped support and cardinality, literal-right-endpoint normalization, harmonic split, singular numerator, scalar resolvent, direct zero mode, capped arithmetic, right-endpoint arithmetic, low and regular modes, low anchor, signed cancellation, and all-scale control.

No estimate is proved for:

- the capped-shift contribution;
- the right-endpoint harmonic contribution;
- the singular anchor/endpoint/boundary numerator;
- the low or regular packets;
- the direct zero mode;
- the complete signed packet.

No Parseval, Cauchy--Schwarz, Hilbert--Schmidt, operator-norm, Chowla, corrected-Elliott, Gowers, large-sieve, or dispersion theorem is introduced.

## 8. Next frontier

For the genuine branch, set \(y=n+h\). Then

\[
e_{Q_j}(-nu)e_{Q_j}(-hs)
=
e_{Q_j}(-yu)e_{Q_j}(-h(s-u)).
\]

The next deterministic layer is therefore an exact shear into literal endpoint coordinates \((y,h)\), while the capped correction remains a finite \(h\)-sum. That shear is not part of this increment.

Evidence:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
RIGHT_ENDPOINT_HARMONIC_ESTIMATE_OPEN
```
