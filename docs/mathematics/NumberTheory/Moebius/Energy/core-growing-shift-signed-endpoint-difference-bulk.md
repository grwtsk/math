# Signed endpoint difference bulk and boundary corrections

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: #863  
Parent: draft PR #850 at exact head `5576c62aa169bf138564cf33fc5bba4f9aeb109e`

## Purpose

The parent layer evaluates the complete retained-prefix sum at a strict endpoint pair

\[
1\le n<m<2^{j+1}
\]

as one closed coefficient consisting of a constant-anchor multiplicity and two reciprocal tail boundaries.

That coefficient still mixes two geometrically different dependences:

1. the endpoint difference
   \[
   h=m-n,
   \]
2. the clipping caused by the left endpoint \(n\).

This increment separates them exactly, then embeds the difference-only part as a cyclic translation-invariant kernel. The parent strict endpoint kernel becomes

\[
\boxed{
\text{cyclic difference bulk}
-
\text{strict-support correction}
-
\text{left-endpoint clipping correction}.
}
\]

All three terms remain inside one signed two-frequency sum. No estimate is introduced.

## Scale notation

Write

\[
X=2^j,
\qquad
Y=2^{j+1},
\qquad
H=\operatorname{logarithmicShiftThreshold}(j),
\qquad
h=m-n.
\]

The parent active-prefix interval is

\[
[L_j(n,m),U_j(h)),
\]

where

\[
L_j(n,m)
=
\max\!\left(H+1,n,X-h\right)
\]

and

\[
U_j(h)
=
\min\!\left(Y-H,Y-h\right).
\]

The new difference-only lower endpoint is

\[
L_j^0(h)
=
\max\!\left(H+1,X-h\right).
\]

Hence

\[
\boxed{L_j(n,m)=\max(n,L_j^0(h)).}
\]

The upper endpoint already depends only on \(h\).

## Exact bulk/clip interval partition

Define the full difference-only prefix set

\[
\mathcal B_j(h)=[L_j^0(h),U_j(h)),
\]

the removed left clip

\[
\mathcal C_j(n,h)
=
[L_j^0(h),\min(n,U_j(h))),
\]

and the retained set

\[
\mathcal R_j(n,h)
=
[\max(n,L_j^0(h)),U_j(h)).
\]

The source authors the exact disjoint partition

\[
\boxed{
\mathcal B_j(h)
=
\mathcal C_j(n,h)
\sqcup
\mathcal R_j(n,h).
}
\]

No endpoint cases are suppressed. Natural-number interval conventions handle:

- \(n\le L_j^0(h)\), where the clip is empty;
- \(L_j^0(h)<n<U_j(h)\), where both pieces occur;
- \(U_j(h)\le n\), where the retained interval is empty.

The declarations include:

```lean
coreGrowingShiftEndpointDifferencePrefixLower
coreGrowingShiftEndpointDifferencePrefixUpper
coreGrowingShiftEndpointDifferenceBulkPrefixSet
coreGrowingShiftEndpointDifferenceLeftClipPrefixSet
coreGrowingShiftEndpointDifferenceRetainedPrefixSet

coreGrowingShiftEndpointDifferenceBulkPrefixSet_eq_clip_union_retained
coreGrowingShiftEndpointDifferenceLeftClip_disjoint_retained
```

## Difference-only prefix coefficient

The parent normalized coefficient is

\[
\Delta_j(N,h)
=
\operatorname{drop}\!\left(
\max\!\left(C_j,N+q_j(h)\right)
\right),
\]

where

\[
C_j=X+H-1,
\qquad
q_j(h)=\max(h,H),
\]

and

\[
\operatorname{drop}(d)
=
\frac1d-\frac1{d+1}.
\]

This is defined by

```lean
coreGrowingShiftEndpointDifferencePrefixKernel
```

and the source proves

```lean
coreGrowingShiftSignedEndpointKernel_eq_differencePrefixKernel
```

so, at a fixed prefix, endpoint dependence is only through \(m-n\).

## Bulk minus left clip

The difference-only bulk coefficient is

\[
G_j(h)
=
\sum_{N\in\mathcal B_j(h)}\Delta_j(N,h).
\]

The exact clipping correction is

\[
R_j(n,h)
=
\sum_{N\in\mathcal C_j(n,h)}\Delta_j(N,h).
\]

The retained parent coefficient is therefore

\[
\boxed{
A_j(n,m)
=
G_j(m-n)-R_j(n,m-n).
}
\]

The source proves this first for the aggregate sum and then for the closed parent coefficient:

```lean
coreGrowingShiftEndpointAggregateKernel_eq_differenceBulk_sub_leftClip

coreGrowingShiftEndpointAggregateBoundaryKernel_eq_differenceBulk_sub_leftClip
```

No triangle inequality or positive majorant is used.

## Closed evaluation of both pieces

The source generalizes the parent anchor/tail calculation to an arbitrary interval \([L,U)\).

Let

\[
T_j(h)=X+H-q_j(h).
\]

The interval splits as

\[
[L,U)
=
[L,\min(U,T_j(h)))
\sqcup
[\max(L,T_j(h)),U).
\]

On the first part the coefficient is the constant anchor drop

\[
\frac1{C_j}-\frac1{C_j+1}.
\]

On the second part it is

\[
\frac1{N+q_j(h)}-
\frac1{N+q_j(h)+1},
\]

which telescopes to two reciprocal boundary values.

The generic closed evaluator is

```lean
coreGrowingShiftEndpointDifferenceIntervalBoundaryKernel
```

with exact theorem

```lean
coreGrowingShiftEndpointDifferenceIntervalSum_eq_boundary
```

The bulk and clipping terms therefore have closed forms:

```lean
coreGrowingShiftEndpointDifferenceBulkBoundaryKernel

coreGrowingShiftEndpointDifferenceLeftClipBoundaryCorrection
```

and exact identities:

```lean
coreGrowingShiftEndpointDifferenceBulkKernel_eq_boundary

coreGrowingShiftEndpointDifferenceLeftClipCorrection_eq_boundary
```

The parent closed coefficient becomes

```lean
coreGrowingShiftEndpointAggregateBoundaryKernel_eq_closedDifferenceSplit
```

or mathematically,

\[
\boxed{
A_j(n,m)
=
G_j^{\partial}(m-n)
-
R_j^{\partial}(n,m-n).
}
\]

Both terms retain their constant-anchor multiplicity and reciprocal-tail boundaries exactly.

## Cyclic translation-invariant bulk

Define the one-variable bulk symbol

\[
g_j(h)=
\begin{cases}
0,&h=0,\\
G_j^{\partial}(h),&h\ne0.
\end{cases}
\]

On

\[
\mathbb Z/Y\mathbb Z
\]

define

\[
\boxed{
\mathcal G_j(x,y)=g_j((y-x)_{\mathrm{val}}).
}
\]

This is authored as

```lean
coreGrowingShiftEndpointDifferenceBulkSymbol

coreGrowingShiftEndpointCyclicDifferenceBulkKernel
```

and satisfies simultaneous translation invariance:

\[
\boxed{
\mathcal G_j(x+a,y+a)=\mathcal G_j(x,y).
}
\]

The declaration is

```lean
coreGrowingShiftEndpointCyclicDifferenceBulkKernel_add
```

## Ordinary difference versus cyclic difference

The cyclic embedding is used only after proving that strict ordinary endpoints do not wrap.

For canonical representatives satisfying

\[
x_{\mathrm{val}}<y_{\mathrm{val}},
\]

the source drafts

\[
\boxed{
(y-x)_{\mathrm{val}}
=
y_{\mathrm{val}}-x_{\mathrm{val}}.
}
\]

The declarations are:

```lean
coreGrowingShiftEndpointCyclicDifference_val_eq_natSub

coreGrowingShiftEndpointCyclicDifferenceBulkKernel_eq_ordinary
```

This is the load-bearing no-wrap bridge between the translation-invariant cyclic kernel and the original strict endpoint geometry.

## Two exact correction kernels

The cyclic bulk is defined on the full cyclic square. The parent kernel is supported only when

\[
1\le x_{\mathrm{val}}<y_{\mathrm{val}}.
\]

The source therefore defines a strict-support correction:

```lean
coreGrowingShiftEndpointDifferenceSupportCorrectionKernel
```

which is zero on the exact strict support and equals the cyclic bulk off that support.

It separately defines the left-clipping correction:

```lean
coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernel
```

which is supported only on the exact strict upper triangle.

The pointwise identity is

\[
\boxed{
K_j^{\partial,0}
=
\mathcal G_j
-
\mathcal S_j
-
\mathcal R_j.
}
\]

In source:

```lean
coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_differenceDecomposition
```

No diagonal is inserted. No support is enlarged. No modular endpoint difference is substituted without proof.

## Fourier transport

The source defines separate two-dimensional transforms:

```lean
coreGrowingShiftEndpointCyclicDifferenceBulkKernelDFT2

coreGrowingShiftEndpointDifferenceSupportCorrectionKernelDFT2

coreGrowingShiftEndpointDifferenceLeftClipCorrectionKernelDFT2
```

and their complete signed combination:

```lean
coreGrowingShiftEndpointDifferenceDecompositionKernelDFT2
```

Linearity of the exact finite DFT gives

\[
\boxed{
\widehat K_j^{\partial}
=
\widehat{\mathcal G}_j
-
\widehat{\mathcal S}_j
-
\widehat{\mathcal R}_j.
}
\]

The declaration is

```lean
coreGrowingShiftEndpointBoundaryKernelDFT2_eq_differenceDecomposition
```

The complete complex packet is

```lean
coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex
```

and remains one signed two-frequency sum. The source proves

```lean
coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacketComplex_eq_boundary
```

and, after taking real parts,

```lean
coreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_eq_boundary
```

Thus

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\,
\operatorname{DifferenceDecompositionFourierPacket}(j).
}
\]

The declaration is

```lean
coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDifferenceDecompositionFourier
```

## RH-facing source

The source proposition is

```lean
SubpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket
```

and is exactly equivalent to the parent boundary-frequency source:

```lean
subpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket_iff_boundary
```

The inherited conditional endpoint is retained through

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket
```

No value of the source proposition is constructed.

## Analytic boundary

The proof-producing interface is

```lean
SignedEndpointDifferenceDecompositionFourierSource

ToCoreGrowingShiftSignedEndpointDifferenceDecompositionFourierPacket
```

It keeps separate:

- exact bulk/clip partition;
- exact anchor/tail evaluation;
- ordinary-to-cyclic difference identification;
- simultaneous-translation invariance;
- strict-support correction;
- left-endpoint clipping correction;
- DFT normalization;
- cancellation across the complete three-term frequency sum;
- all-scale uniformity;
- finite small-scale control.

A theorem that controls only the bulk, only one correction, or the termwise absolute frequency mass does not inhabit this interface.

## Hostile control

The finite witness

```lean
signedEndpointDifferenceDecompositionCancellation_hostileWitness
```

records

\[
2-1-1=0
\]

while the separate absolute masses sum to \(4\).

Therefore the exact decomposition must not be replaced by

\[
|\text{bulk}|+|\text{support correction}|+|\text{left clip correction}|.
\]

## Evidence and nonclaims

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SIGNED_DIFFERENCE_BULK_CORRECTION_ESTIMATE_OPEN
```

This increment claims no:

- Lean/Lake execution;
- elaboration or kernel acceptance;
- trust audit or external replay;
- Fourier estimate;
- bulk transform diagonalization;
- large-sieve or dispersion theorem;
- Chowla or corrected-Elliott adapter;
- merge;
- proof or disproof of the Riemann Hypothesis.

## Next exact obstruction

The bulk is now a genuine cyclic difference kernel. Its two-dimensional DFT should therefore be supported on the anti-diagonal

\[
r+s=0,
\]

with value proportional to a one-dimensional DFT of the bulk symbol.

The next bounded increment is to prove that anti-diagonal formula exactly and rewrite the complete signed packet as:

1. one one-frequency bulk contribution;
2. the two still-signed boundary-correction frequency contributions.

No positive norm should be applied before those three contributions are recombined.
