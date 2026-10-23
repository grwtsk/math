# Signed endpoint Toeplitz bulk and left-edge correction

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: #867  
Parent: issue #848 / draft PR #850  
Exact parent revision: `5576c62aa169bf138564cf33fc5bba4f9aeb109e`

This note records one exact finite coordinate reduction in the RH-E02 signed
dispersion stack. It does not provide an arithmetic estimate.

## 1. Parent coefficient

The parent branch reduced the complete signed growing-shift packet to a strict
endpoint bilinear form. For

\[
  X=2^j,\qquad Y=2^{j+1},\qquad
  H=\operatorname{logarithmicShiftThreshold}(j),
\]

and strict ordinary endpoints

\[
  1\le n<m<Y,
\]

write

\[
  h=m-n.
\]

The parent aggregate endpoint coefficient is the sum of the exact reciprocal
first-difference weight over the retained prefixes

\[
  N\in[L_j(n,m),U_j(n,m)),
\]

where

\[
L_j(n,m)=
\max\!\bigl(H+1,n,X-h\bigr)
\]

and

\[
U_j(n,m)=
\min\!\bigl(Y-H,Y-h\bigr).
\]

The parent source then evaluated this prefix sum as a constant low-anchor
multiplicity plus two reciprocal tail boundaries.

## 2. Difference-only support

Define

\[
B_j(h)=\max(H+1,X-h)
\]

and

\[
V_j(h)=\min(Y-H,Y-h).
\]

Then the inherited support satisfies the exact identities

\[
L_j(n,m)=\max(n,B_j(h)),
\]

and

\[
U_j(n,m)=V_j(h).
\]

Thus the upper endpoint and the uncut lower endpoint depend only on the
difference `h`. The entire left-endpoint dependence is one clipping operation
by `n`.

The source declarations are:

```lean
coreGrowingShiftEndpointDifferencePrefixLower
coreGrowingShiftEndpointDifferencePrefixUpper
coreGrowingShiftEndpointDifferencePrefixSet

coreGrowingShiftEndpointAggregatePrefixLower_eq_max_left_difference
coreGrowingShiftEndpointAggregatePrefixUpper_eq_difference
```

## 3. Generic interval coefficient

For arbitrary natural endpoints `A,B`, define

\[
I_j(h;A,B)
=
\sum_{A\le N<B}\Delta_j(N,h),
\]

where `Delta_j(N,h)` is the exact clamped reciprocal first difference already
present in the signed staircase.

The new source defines:

```lean
coreGrowingShiftEndpointDifferenceIntervalKernel
```

It then repeats the parent anchor/tail algebra at this generic interval level.
Write

\[
q_j(h)=\max(h,H),
\]

\[
C_j=X+H-1,
\]

and

\[
T_j(h)=X+H-q_j(h).
\]

The interval `[A,B)` is split exactly into

\[
[A,\min(B,T_j(h)))
\]

and

\[
[\max(A,T_j(h)),B).
\]

The first piece has constant denominator `C_j`. The second piece has affine
denominator `N+q_j(h)`.

The generic support declarations are:

```lean
coreGrowingShiftEndpointDifferenceIntervalAnchorSet
coreGrowingShiftEndpointDifferenceIntervalTailLower
coreGrowingShiftEndpointDifferenceIntervalTailSet

coreGrowingShiftEndpointDifferenceInterval_eq_anchor_union_tail
coreGrowingShiftEndpointDifferenceIntervalAnchor_disjoint_tail
```

## 4. Closed generic interval formula

The generic anchor multiplicity is

\[
M_j(h;A,B)=\min(B,T_j(h))-A,
\]

with natural subtraction encoding an empty anchor interval.

The generic tail is

\[
\sum_{N=\max(A,T_j(h))}^{B-1}
\left(
\frac1{N+q_j(h)}-
\frac1{N+q_j(h)+1}
\right).
\]

It telescopes exactly to

\[
\frac1{\max(A,T_j(h))+q_j(h)}-
\frac1{B+q_j(h)},
\]

and is defined as zero when the tail interval is empty.

The generic closed coefficient is therefore

\[
\begin{aligned}
J_j(h;A,B)
={}&M_j(h;A,B)
\left(
\frac1{C_j}-\frac1{C_j+1}
\right)\\
&+\text{tailBoundary}_j(h;A,B).
\end{aligned}
\]

The source drafts the exact identity

\[
\boxed{I_j(h;A,B)=J_j(h;A,B).}
\]

Relevant declarations:

```lean
coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity
coreGrowingShiftEndpointDifferenceIntervalAnchorMultiplicity_eq_sub

coreGrowingShiftEndpointDifferenceIntervalTailBoundary
coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel

coreGrowingShiftSignedStaircaseWeight_eq_normalizedDrop
coreGrowingShiftEndpointDifferenceIntervalDenominator_eq_anchor
coreGrowingShiftEndpointDifferenceIntervalDenominator_eq_tail

coreGrowingShiftEndpointDifferenceIntervalAnchorSum
coreGrowingShiftEndpointDifferenceIntervalTailSum
coreGrowingShiftEndpointDifferenceIntervalKernel_eq_boundary
```

This is exact finite algebra. It is not an asymptotic estimate.

## 5. Strict Toeplitz bulk

The difference-only bulk coefficient is

\[
\boxed{
\mathcal T_j(h)=I_j(h;B_j(h),V_j(h)).
}
\]

It is implemented in closed boundary form as:

```lean
coreGrowingShiftEndpointToeplitzBulkKernel
```

For fixed scale `j`, this coefficient depends only on `h`. It is therefore a
strict upper-triangular Toeplitz coefficient when inserted at endpoint pair
`(n,m)` with `h=m-n`.

The source records the difference invariance through:

```lean
coreGrowingShiftEndpointToeplitzBulkKernel_difference_invariant
```

This does not yet make the finite matrix circulant. Strict upper-triangular
support still excludes wrap-around.

## 6. Left-edge correction

The prefixes removed by the left endpoint are

\[
[B_j(h),\min(n,V_j(h))).
\]

The corresponding correction is

\[
\boxed{
\mathcal R_j(n,h)
=I_j(h;B_j(h),\min(n,V_j(h))).
}
\]

and is implemented as:

```lean
coreGrowingShiftEndpointLeftEdgeCorrectionKernel
```

It vanishes whenever

\[
n\le B_j(h).
\]

The exact source theorem is:

```lean
coreGrowingShiftEndpointLeftEdgeCorrectionKernel_eq_zero_of_le
```

Thus the correction is localized to the part of the endpoint triangle where
the left endpoint has advanced beyond the difference-only lower prefix
cutoff.

## 7. Exact interval partition

The complete difference interval splits as

\[
[B_j(h),V_j(h))
=
[B_j(h),\min(n,V_j(h)))
\sqcup
[\max(n,B_j(h)),V_j(h)).
\]

The source drafts both the union and disjointness:

```lean
coreGrowingShiftEndpointDifferencePrefixSet_eq_leftEdge_union_active
coreGrowingShiftEndpointLeftEdge_disjoint_active
```

Consequently, for every strict endpoint pair,

\[
\boxed{
A_j(n,m)
=
\mathcal T_j(m-n)-
\mathcal R_j(n,m-n).
}
\]

The exact theorem is:

```lean
coreGrowingShiftEndpointAggregateBoundaryKernel_eq_toeplitz_sub_leftEdge
```

No absolute value is taken on either term.

## 8. Zero-padded kernels

The strict Toeplitz bulk is zero-padded by

\[
K^{\mathrm{toe}}_j(x,y)=
\begin{cases}
\mathcal T_j(y-x),&1\le x<y<Y,\\
0,&\text{otherwise}.
\end{cases}
\]

The left-edge correction is zero-padded by

\[
K^{\mathrm{edge}}_j(x,y)=
\begin{cases}
\mathcal R_j(x,y-x),&1\le x<y<Y,\\
0,&\text{otherwise}.
\end{cases}
\]

Source declarations:

```lean
coreGrowingShiftEndpointToeplitzBulkKernelZeroPad
coreGrowingShiftEndpointLeftEdgeCorrectionKernelZeroPad
```

The inherited closed boundary kernel satisfies the exact pointwise identity

\[
\boxed{
K^{\mathrm{boundary}}_j
=
K^{\mathrm{toe}}_j-
K^{\mathrm{edge}}_j.
}
\]

This is:

```lean
coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_toeplitz_sub_leftEdge
```

The diagonal remains absent. The cyclic origin remains zero. No modular
endpoint difference is used.

## 9. Fourier transport

The source proves linearity of the iterated finite DFT over kernel
subtraction:

```lean
finiteZModKernelDFT2_sub
```

It then defines:

```lean
coreGrowingShiftEndpointToeplitzBulkKernelDFT2
coreGrowingShiftEndpointLeftEdgeCorrectionKernelDFT2
```

and drafts

\[
\boxed{
\widehat K^{\mathrm{boundary}}_j(r,s)
=
\widehat K^{\mathrm{toe}}_j(r,s)-
\widehat K^{\mathrm{edge}}_j(r,s).
}
\]

The exact theorem is:

```lean
coreGrowingShiftEndpointBoundaryKernelDFT2_eq_toeplitz_sub_leftEdge
```

This is a transform identity, not an arithmetic estimate.

## 10. Complete signed packet

The complex Toeplitz-minus-edge packet keeps the subtraction inside the full
two-frequency sum:

\[
Y^{-2}
\sum_{r,s}
\widehat f_j(-r)\widehat f_j(-s)
\left(
\widehat K^{\mathrm{toe}}_j(r,s)-
\widehat K^{\mathrm{edge}}_j(r,s)
\right).
\]

It is defined by:

```lean
coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacketComplex
```

The real packet is:

```lean
coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
```

The source drafts the exact identities

```lean
coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex_eq_toeplitzEdge
coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_toeplitzEdge
```

and therefore

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\,
\operatorname{coreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket}(j).
}
\]

The RH-facing theorem is:

```lean
coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointToeplitzEdgeFourier
```

## 11. Source proposition

The new source-facing proposition is:

```lean
SubpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
```

It is drafted as exactly equivalent to the parent source:

```lean
subpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket_iff_boundary
```

The inherited conditional endpoint is retained through:

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
```

No inhabitant of the source proposition is constructed.

## 12. Analytic boundary

The proof-producing interface is:

```lean
SignedEndpointToeplitzEdgeFourierSource
ToCoreGrowingShiftSignedEndpointToeplitzEdgeFourierPacket
```

It separates the following obligations:

- exact generic interval evaluation;
- difference-only bulk support;
- exact left-edge clipping;
- strict endpoint support;
- zero padding and no-wrap;
- DFT sign and normalization;
- preservation of the low anchor;
- signed cancellation between the bulk and edge pieces;
- signed cancellation across both frequency variables;
- all-scale uniformity;
- finite small-scale control.

The bulk and correction are not independent positive quantities. The source
includes the hostile witness

```lean
signedEndpointToeplitzEdgeCancellation_hostileWitness
```

showing that their signed difference may vanish while their separate absolute
masses remain positive.

## 13. Nonclaims

This increment does not establish:

- Lean elaboration;
- kernel acceptance;
- transitive trust auditing;
- external replay;
- a bound for the Toeplitz bulk;
- a bound for the left-edge correction;
- a bound for their signed difference;
- a circulant embedding;
- a Fourier multiplier estimate;
- a large-sieve, dispersion, Chowla, corrected-Elliott, or Gowers adapter;
- the Riemann Hypothesis;
- the negation of the Riemann Hypothesis.

## 14. Next obstruction

The strict Toeplitz bulk depends only on `m-n`, but its support remains the
ordinary upper triangle `1 <= n < m < Y`. The next deterministic comparison is
therefore:

\[
\boxed{
\text{strict Toeplitz bulk}
=
\text{cyclic difference kernel}
-
\text{explicit wrap correction}.
}
\]

That reduction must preserve the existing left-edge correction and keep all
three pieces inside one signed two-frequency packet. No positive norm should
be applied before the complete cyclic-minus-wrap-minus-edge identity is
formed.
