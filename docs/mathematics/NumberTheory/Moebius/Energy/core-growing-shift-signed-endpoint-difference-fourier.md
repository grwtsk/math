# Signed endpoint difference kernel and clipping correction

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: #876  
Parent draft PR: #850  
Parent revision: `5576c62aa169bf138564cf33fc5bba4f9aeb109e`

This note records one exact finite reorganization of the RH-E02 signed endpoint kernel. It introduces no analytic estimate and does not discharge any arithmetic source premise.

## 1. Starting point

The parent branch evaluates the retained-prefix coefficient for strict endpoints

[
1le n<m<Y,qquad X=2^j,qquad Y=2^{j+1},
]

as a closed anchor-plus-boundary expression. The underlying active prefix interval is

[
[L_j(n,m),U_j(n,m)),
]

where

[
L_j(n,m)
=
max!igl(H+1,n,X-(m-n)igr),
]

[
U_j(n,m)
=
min!igl(Y-H,Y-(m-n)igr),
]

and (H=operatorname{logarithmicShiftThreshold}(j)).

The remaining geometric dependence is now transparent: the upper cutoff depends only on the difference (h=m-n), while the left endpoint (n) enters only by clipping the lower cutoff.

## 2. Difference-only prefix interval

Define

[
D_j(h)=max(H+1,X-h),
]

[
U_j(h)=min(Y-H,Y-h).
]

Then the active interval is exactly

[
oxed{
[max(n,D_j(h)),U_j(h)).
}
]

The full difference-only prefix interval is

[
[D_j(h),U_j(h)),
]

and the prefixes removed by the left-endpoint constraint are

[
[D_j(h),min(n,U_j(h))).
]

These two pieces are disjoint from the actual active interval and satisfy

[
[D_j(h),U_j(h))
=
[D_j(h),min(n,U_j(h)))
sqcup
[max(n,D_j(h)),U_j(h)).
]

No support enlargement occurs in this identity.

## 3. Generic closed interval evaluator

The parent low-anchor normalization is retained.

For a difference (h), define

[
q_j(h)=max(h,H),
qquad
C_j=X+H-1,
qquad
T_j(h)=X+H-q_j(h).
]

For an arbitrary prefix interval ([L,U)), split it exactly as

[
[L,U)
=
[L,min(U,T_j(h)))
sqcup
[max(L,T_j(h)),U).
]

On the first block, every denominator is (C_j), so every coefficient is

[
Delta(C_j)
=
rac1{C_j}-rac1{C_j+1}.
]

On the second block, the coefficient is

[
Delta(N+q_j(h))
=
rac1{N+q_j(h)}
-
rac1{N+q_j(h)+1}.
]

The affine tail telescopes exactly:

[
sum_{N=A}^{B-1}
Delta(N+q)
=
rac1{A+q}-rac1{B+q}.
]

The module packages this as

[
operatorname{Closed}_j(h;L,U),
]

with exact identity

[
oxed{
sum_{Nin[L,U)}
operatorname{staircaseWeight}(j,N,h)
=
operatorname{Closed}_j(h;L,U).
}
]

Empty intervals are represented exactly by zero.

## 4. Translation-invariant bulk

Define the difference-only bulk coefficient

[
B_j(h)
=
operatorname{Closed}_j
igl(h;D_j(h),U_j(h)igr).
]

This coefficient depends only on the endpoint difference (h).

Define the clipping correction

[
R_j(n,h)
=
operatorname{Closed}_j
igl(h;D_j(h),min(n,U_j(h))igr).
]

Then for every strict endpoint pair,

[
oxed{
A_j(n,m)
=
B_j(m-n)-R_j(n,m-n),
}
]

where (A_j(n,m)) is the closed boundary coefficient from #848.

The correction vanishes whenever

[
nle D_j(h).
]

Hence, on that region, the endpoint coefficient is literally translation-invariant in the difference variable:

[
A_j(n,n+h)=B_j(h).
]

This is an exact support statement, not an approximation.

## 5. Zero-padded kernels

On the existing endpoint modulus (Y), define strict zero-padded kernels:

[
K_j^{mathrm{bulk},0}(x,y),
qquad
K_j^{mathrm{clip},0}(x,y),
]

supported only when

[
1le x_{
m val}<y_{
m val}<Y.
]

Their signed combination is

[
K_j^{mathrm{diff-clip},0}
=
K_j^{mathrm{bulk},0}
-
K_j^{mathrm{clip},0}.
]

The module proves pointwise

[
oxed{
K_j^{mathrm{diff-clip},0}
=
K_j^{mathrm{boundary},0}.
}
]

Thus the absent diagonal, no-wrap property, and all endpoint support from #848 remain unchanged.

## 6. Fourier transport

Let

[
widehat K_j^{mathrm{diff-clip}}(r,s)
]

be the same iterated two-dimensional DFT used by the parent branch.

Pointwise equality of real-space kernels gives exact equality of transforms:

[
oxed{
widehat K_j^{mathrm{diff-clip}}(r,s)
=
widehat K_j^{mathrm{boundary}}(r,s).
}
]

Consequently, the signed frequency packet built from

[
Y^{-2}
sum_{r,s}
widehat f_j(-r)widehat f_j(-s)
widehat K_j^{mathrm{diff-clip}}(r,s)
]

is exactly the parent boundary-frequency packet.

Therefore

[
oxed{
operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2,
operatorname{coreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket}(j).
}
]

## 7. Why bulk and clipping remain joined analytically

The decomposition

[
A=B-R
]

is useful because (B) is difference-only, but the RH-facing observable is the complete signed difference (B-R).

The branch therefore does **not** replace it by

[
|B|+|R|,
]

nor does it require independent bounds for the bulk and clipping packets.

A future theorem must preserve cancellation between those pieces. This is particularly important because the preceding positive square-energy route was already marked conditionally cubic-scale.

## 8. Source-facing interface

The new proposition is

`SubpolynomialCoreGrowingShiftSignedEndpointDifferenceMinusClipFourierPacket`.

It is exactly equivalent to the parent proposition

`SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket`.

The proof-producing interface

`SignedEndpointDifferenceMinusClipFourierSource`

keeps separate obligations for:

- exact difference support;
- generic closed interval evaluation;
- clipping support;
- strict endpoint support;
- zero padding;
- no-wrap;
- DFT sign normalization;
- low-anchor preservation;
- joint signed bulk/clipping cancellation;
- all-scale uniformity;
- finite small-scale control.

The bulk and correction are not separate analytic premises.

## 9. Current frontier

The deterministic geometry is now reduced to

[
oxed{
	ext{difference-only bulk}
-
	ext{explicit endpoint-clipping correction}.
}
]

The next lossless step is to place the difference-only bulk on a larger cyclic modulus, large enough that ordinary positive differences do not wrap. That should diagonalize the bulk contribution to one frequency variable while leaving the clipping correction as an explicit signed boundary remainder.

That future step is not part of this increment.

## 10. Evidence and nonclaims

Evidence:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SIGNED_DIFFERENCE_MINUS_CLIP_FOURIER_ESTIMATE_OPEN
```

No claim is made of:

- Lean elaboration;
- kernel acceptance;
- trust audit;
- external replay;
- a bound on the bulk kernel;
- a bound on the clipping correction;
- a joint signed Fourier estimate;
- a Chowla adapter;
- a corrected-Elliott adapter;
- a Gowers, large-sieve, or dispersion theorem;
- merge;
- proof or disproof of the Riemann Hypothesis.
