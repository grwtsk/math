# Closed boundary formula for the signed aggregate endpoint kernel

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: #848  
Direct parent: draft PR #843 at `fad6ded9507f15f803b148a5a7ae5c45b12be13e`

Human mathematical direction: grwtsk contributors.  
Formalization assistance: OpenAI ChatGPT.  
Imported Mathlib and repository sources retain their original authorship and licenses.

## 1. Purpose

The parent branch rewrote the complete retained-prefix family as one strict endpoint kernel

\[
A_j(n,m)
 =
\sum_{N\in\mathcal I_j(n,m)} K_j(N,n,m),
\qquad 1\le n<m<2^{j+1},
\]

where `K_j(N,n,m)` is the inherited clamped reciprocal first difference and the active prefix set is one exact interval.

This increment evaluates that finite prefix sum without taking an absolute value and without introducing a positive norm. The prefix variable is eliminated exactly. The coefficient becomes:

1. a constant low-anchor drop multiplied by its exact prefix multiplicity; plus
2. two reciprocal values at the endpoints of the remaining affine tail.

The result is then transported unchanged through the existing zero-padding and two-dimensional DFT layer.

## 2. Scale and endpoint notation

Write

\[
X=2^j,
\qquad
Y=2^{j+1},
\qquad
H=\operatorname{logarithmicShiftThreshold}(j),
\]

and for one strict endpoint pair write

\[
h=m-n.
\]

The active prefix interval from #840 is

\[
\mathcal I_j(n,m)=[L,U),
\]

with

\[
L=\max(H+1,n,X-h)
\]

and

\[
U=\min(Y-H,Y-h).
\]

No endpoint or prefix support is enlarged in this increment.

## 3. Normal form of the clamped denominator

The inherited staircase coefficient uses

\[
r_j(N,h)
=
\max\!\left(h,\max(1,X-N)+H-1\right).
\]

Define

\[
q_j(h)=\max(h,H),
\qquad
C_j=X+H-1.
\]

The source drafts the exact integer identity

\[
\boxed{
N+r_j(N,h)=\max\!\left(C_j,N+q_j(h)\right).
}
\]

This is the load-bearing normalization. It reveals that the apparently three-way clamp has only two denominator regimes:

- a constant denominator `C_j`;
- an affine denominator `N+q_j(h)`.

The corresponding declarations are:

```lean
coreGrowingShiftEndpointAggregateEffectiveShift
coreGrowingShiftEndpointAggregateAnchorDenominator
coreGrowingShiftSignedStaircaseDenominator_eq_max
coreGrowingShiftSignedEndpointKernel_eq_normalizedDrop
```

The reciprocal-drop helper is

```lean
coreGrowingShiftEndpointReciprocalDrop
```

with value

\[
\operatorname{drop}(d)=\frac1d-\frac1{d+1}.
\]

## 4. Exact anchor/tail transition

The first affine-tail prefix is

\[
T_j(h)=X+H-q_j(h).
\]

The active interval splits as

\[
[L,U)
=
[L,\min(U,T))
\sqcup
[\max(L,T),U).
\]

The source names these pieces

```lean
coreGrowingShiftEndpointAggregateAnchorPrefixSet
coreGrowingShiftEndpointAggregateTailPrefixSet
```

and drafts both their exact union and their disjointness:

```lean
coreGrowingShiftEndpointExplicitPrefixSet_eq_anchor_union_tail
coreGrowingShiftEndpointAggregateAnchor_disjoint_tail
```

No analytic hypothesis occurs in this split.

## 5. Constant anchor block

For every prefix in the first piece,

\[
\max(C_j,N+q_j(h))=C_j.
\]

Hence each term equals the same number

\[
\frac1{C_j}-\frac1{C_j+1}.
\]

The exact anchor multiplicity is

\[
M_j(n,m)
=
\#\,[L,\min(U,T))
=
\min(U,T)-L
\]

with natural subtraction supplying zero for an empty block.

The declarations are:

```lean
coreGrowingShiftEndpoint_normalizedDenominator_eq_anchor
coreGrowingShiftSignedEndpointKernel_eq_anchorDrop
coreGrowingShiftEndpointAggregateAnchorMultiplicity
coreGrowingShiftEndpointAggregateAnchorMultiplicity_eq_sub
coreGrowingShiftEndpointAggregateAnchorSum
```

Thus the whole anchor contribution is

\[
\boxed{
M_j(n,m)
\left(
\frac1{C_j}-\frac1{C_j+1}
\right).
}
\]

## 6. Telescoped affine tail

Let

\[
L_{\mathrm{tail}}=\max(L,T).
\]

For each tail prefix,

\[
K_j(N,n,m)
=
\frac1{N+q_j(h)}-
\frac1{N+q_j(h)+1}.
\]

The generic finite theorem

```lean
finite_reciprocalDrop_Ico
```

drafts

\[
\sum_{N=A}^{B-1}
\left(
\frac1{N+q}-\frac1{N+q+1}
\right)
=
\frac1{A+q}-\frac1{B+q}
\]

whenever `A ≤ B`.

Therefore the complete affine tail is

\[
\boxed{
\frac1{L_{\mathrm{tail}}+q_j(h)}
-
\frac1{U+q_j(h)}
}
\]

when `L_tail ≤ U`, and zero otherwise.

The repository names this value

```lean
coreGrowingShiftEndpointAggregateTailBoundary
```

and drafts the exact sum identity

```lean
coreGrowingShiftEndpointAggregateTailSum
```

## 7. Closed ordinary endpoint kernel

The closed coefficient is

\[
\boxed{
B_j(n,m)
=
M_j(n,m)
\left(
\frac1{C_j}-\frac1{C_j+1}
\right)
+
\left(
\frac1{L_{\mathrm{tail}}+q_j(h)}
-
\frac1{U+q_j(h)}
\right),
}
\]

with the second parenthesis interpreted as zero when the tail interval is empty.

It is defined as

```lean
coreGrowingShiftEndpointAggregateBoundaryKernel
```

and the central ordinary-coordinate theorem is

```lean
coreGrowingShiftEndpointAggregateKernel_eq_boundary
```

which drafts, for every

\[
1\le n<m<Y,
\]

the exact identity

\[
\boxed{A_j(n,m)=B_j(n,m).}
\]

This is finite support algebra and reciprocal telescoping. It is not an estimate.

## 8. Zero padding and strict support

The branch defines

```lean
coreGrowingShiftEndpointBoundaryKernelZeroPad
```

on `ZMod Y × ZMod Y`. It is nonzero only when the canonical representatives satisfy

\[
1\le x_{\mathrm{val}}<y_{\mathrm{val}}<Y.
\]

The source separately records the zero left-endpoint case and drafts

```lean
coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_aggregate
```

so the closed kernel is exactly the already established aggregate zero-padded kernel.

Consequences:

- the diagonal is still absent;
- no cyclic endpoint wraps around;
- no support is enlarged;
- the low-anchor clamp remains present through the explicit multiplicity term.

## 9. Frequency transport

The two-dimensional DFT of the closed kernel is

```lean
coreGrowingShiftEndpointBoundaryKernelDFT2
```

and the source drafts

```lean
coreGrowingShiftEndpointBoundaryKernelDFT2_eq_aggregate
```

for exact equality with the parent aggregate-kernel transform.

The resulting complex and real frequency packets are

```lean
coreGrowingShiftSignedEndpointBoundaryFourierPacketComplex
coreGrowingShiftSignedEndpointBoundaryFourierPacket
```

with exact packet identity

```lean
coreGrowingShiftSignedEndpointBoundaryFourierPacket_eq_aggregate
```

and RH-facing return

```lean
coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBoundaryFourier
```

or mathematically,

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\operatorname{BoundaryFourierPacket}(j).
}
\]

## 10. Source equivalence

The new premise is

```lean
SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket
```

and the source drafts the exact equivalence

```lean
subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket_iff_aggregate
```

with the aggregate-kernel source from #840.

The inherited conditional endpoint is retained through

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket
```

No value of the premise is constructed.

## 11. Analytic boundary

The proof-producing profile is

```lean
SignedEndpointBoundaryFourierSource
```

with adapter

```lean
ToCoreGrowingShiftSignedEndpointBoundaryFourierPacket
```

A future theorem must pay separately for:

```text
exact anchor/tail support split
exact anchor multiplicity
reciprocal-tail telescoping
strict endpoint support
zero padding and no-wrap
DFT sign and normalization
low-anchor preservation
signed two-frequency cancellation
all-scale uniformity
finite small-scale control
```

The prefix variable and tail interior are no longer analytic obligations. They have been removed by exact algebra.

## 12. Information-loss boundary

The theorem

```lean
signedEndpointBoundaryCancellation_hostileWitness
```

records that the anchor term and the telescoped boundary term may cancel exactly while the sum of their absolute masses is positive.

Therefore none of the following is an equivalent next step:

```text
|anchor| + |tail boundary|
Parseval before the complete signed sum
Cauchy--Schwarz over frequencies
Hilbert--Schmidt norm
operator norm
positive kernel energy
```

Any such replacement requires a separately proved comparison at the required normalization.

## 13. Evidence state

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SIGNED_BOUNDARY_KERNEL_FOURIER_ESTIMATE_OPEN
```

No Lean/Lake execution, elaboration, kernel acceptance, transitive trust audit, external replay, aggregate-kernel estimate, boundary-kernel estimate, signed frequency estimate, large-sieve theorem, dispersion theorem, Chowla adapter, corrected-Elliott adapter, merge, Riemann-Hypothesis proof, or Riemann-Hypothesis disproof is represented.

## 14. Next obstruction

The exact remaining arithmetic object is the complete signed two-frequency form

\[
Y^{-2}
\sum_{r,s}
\widehat f_j(-r)\widehat f_j(-s)
\widehat B_j(r,s),
\]

where `B_j` now has no retained-prefix sum and no reciprocal-tail interior.

The next deterministic reduction should inspect the closed ordinary kernel’s dependence on

\[
h=m-n
\]

and the left endpoint `n`, separating translation-invariant difference terms from the clipped endpoint-boundary corrections. That decomposition must remain signed and exact before any norm is introduced.
