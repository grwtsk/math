# Cyclic difference bulk and endpoint corrections for the signed RH-E02 packet

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: #858  
Parent issue: #848  
Parent draft PR: #850  
Exact parent revision: `5576c62aa169bf138564cf33fc5bba4f9aeb109e`

Integration: PR #860 source at `4c328c190a1d3d86dd035c21cf3d7fda83ab0299`
is retained in the sibling module
`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier`.
The independent issue #876 module and its difference-Fourier note retain their
original names. Only these three declarations were renamed here:

| Historical issue #858 declaration | Current sibling declaration |
| --- | --- |
| `coreGrowingShiftEndpointDifferencePrefixLower` | `coreGrowingShiftEndpointCorrectionDifferencePrefixLower` |
| `coreGrowingShiftEndpointDifferencePrefixUpper` | `coreGrowingShiftEndpointCorrectionDifferencePrefixUpper` |
| `coreGrowingShiftEndpointDifferenceBulkKernel` | `coreGrowingShiftEndpointCorrectionDifferenceBulkKernel` |

This integration preserves the original hypotheses and proof scripts and does
not change the `NOT_RUN / NOT_KERNEL_AUDITED` evidence state.

This note records one exact finite coordinate reduction. It does not provide an
analytic estimate, an external theorem adapter, or a proof of the Riemann
Hypothesis.

## 1. Starting point

The parent layer writes the surviving signed RH-facing packet as

```text
coreGrowingShiftFirstDifferencePacket(j)
 = 2 * coreGrowingShiftSignedEndpointBoundaryFourierPacket(j).
```

The parent boundary coefficient is defined on strict ordinary endpoints

```text
1 <= n < m < Y,
Y = 2^(j+1),
```

and is already a closed expression consisting of:

- a clipped low-anchor multiplicity times one reciprocal drop;
- two reciprocal values from the telescoped affine tail.

Its remaining non-translation-invariant dependence enters through the left
endpoint `n` in the active prefix lower boundary.

This increment separates that dependence exactly.

## 2. Arbitrary closed prefix intervals

Write

```text
X = 2^j,
H = logarithmicShiftThreshold j,
h = m-n,
q_j(h) = max h H,
C_j = X + H - 1,
T_j(h) = X + H - q_j(h).
```

For an arbitrary ordinary prefix interval `[A,B)`, the inherited clamped
reciprocal coefficient has denominator

```text
max C_j (N + q_j(h)).
```

The interval therefore splits disjointly as

```text
anchor: [A, min B T_j(h)),
tail:   [max A T_j(h), B).
```

The new generic closed coefficient is

```text
ClosedInterval_j(h; A,B)
 = anchorMultiplicity * (1/C_j - 1/(C_j+1))
 + tailBoundary,
```

where

```text
anchorMultiplicity = card [A, min B T_j(h))
```

and

```text
tailBoundary
 = 1/(max(A,T_j(h)) + q_j(h))
 - 1/(B + q_j(h))
```

when the tail interval is nonempty, and zero otherwise.

The source defines:

```lean
coreGrowingShiftEndpointClosedIntervalAnchorSet
coreGrowingShiftEndpointClosedIntervalTailLower
coreGrowingShiftEndpointClosedIntervalTailSet
coreGrowingShiftEndpointClosedIntervalAnchorMultiplicity
coreGrowingShiftEndpointClosedIntervalTailBoundary
coreGrowingShiftEndpointClosedIntervalKernel
```

and drafts the exact theorem

```lean
coreGrowingShiftEndpointClosedIntervalKernel_eq_sum
```

corresponding to

```text
ClosedInterval_j(h; A,B)
 = sum_(A <= N < B)
     coreGrowingShiftSignedStaircaseWeight(j,N,h).
```

No estimate is used. The proof is finite interval splitting plus the reciprocal
first-difference telescope already exposed in #848.

## 3. Difference-only bulk

Define the difference-only prefix boundaries

```text
B_j(h) = max (H+1) (X-h),
U_j(h) = min (Y-H) (Y-h).
```

These are the active prefix boundaries before the condition `n <= N` is
imposed.

The translation-invariant ordinary bulk coefficient is

```text
D_j(h) = ClosedInterval_j(h; B_j(h), U_j(h)).
```

Source name:

```lean
coreGrowingShiftEndpointCorrectionDifferenceBulkKernel
```

It depends on the endpoint pair only through `h = m-n`.

## 4. Left-endpoint clipping correction

The actual active prefix interval has lower boundary

```text
max (B_j(h)) n.
```

The prefixes removed by the left endpoint are exactly

```text
[B_j(h), min n (U_j(h))).
```

Their closed coefficient is

```text
L_j(n,h)
 = ClosedInterval_j(h; B_j(h), min n (U_j(h))).
```

Source name:

```lean
coreGrowingShiftEndpointLeftClippingCorrection
```

The finite interval identity

```text
[B,U)
 = [B,min(n,U)) disjoint-union [max(B,n),U)
```

gives, for every strict endpoint pair,

```text
coreGrowingShiftEndpointAggregateBoundaryKernel(j,n,m)
 = D_j(m-n) - L_j(n,m-n).
```

This is drafted as:

```lean
coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_left
```

The minus sign is load-bearing. The two pieces are not estimated separately.

## 5. Cyclic difference profile

Let the ambient cyclic group be

```text
ZMod Y,
Y = 2^(j+1).
```

The source defines

```text
d_j(z) = 0,                    z = 0,
       = D_j(z.val),           z != 0.
```

as

```lean
coreGrowingShiftEndpointDifferenceProfile
```

and the full cyclic difference kernel

```text
C_j(x,y) = d_j(y-x)
```

as

```lean
coreGrowingShiftEndpointCyclicDifferenceKernel.
```

This kernel is genuinely translation invariant on the cyclic group.

## 6. Strict support and the two corrections

Three zero-padded kernels are distinguished.

### 6.1 Strict difference bulk

```text
D_j(y.val-x.val)
```

on

```text
1 <= x.val < y.val < Y,
```

and zero elsewhere:

```lean
coreGrowingShiftEndpointStrictDifferenceBulkKernelZeroPad
```

### 6.2 Left clipping correction

```text
L_j(x.val, y.val-x.val)
```

on the same strict support and zero elsewhere:

```lean
coreGrowingShiftEndpointLeftClippingCorrectionZeroPad
```

### 6.3 Cyclic support correction

The full cyclic convolution kernel contains the zero row and wrapped lower
triangle that are absent from the ordinary strict endpoint packet. Their exact
correction is defined by

```text
cyclicSupportCorrection
 = cyclicDifferenceKernel - strictDifferenceBulkKernel.
```

Source name:

```lean
coreGrowingShiftEndpointCyclicSupportCorrectionZeroPad
```

It vanishes on the exact strict support:

```lean
coreGrowingShiftEndpointCyclicSupportCorrectionZeroPad_eq_zero_of_support
```

The parent closed boundary kernel therefore has the exact pointwise form

```text
boundaryKernel
 = cyclicDifferenceKernel
 - cyclicSupportCorrection
 - leftClippingCorrection.
```

Source theorem:

```lean
coreGrowingShiftEndpointBoundaryKernelZeroPad_eq_cyclic_sub_corrections
```

No diagonal is reinserted and no modular endpoint is confused with an ordinary
endpoint. The cyclic kernel is corrected back to the exact ordinary support
before it is identified with the RH-facing packet.

## 7. Exact DFT of a cyclic difference kernel

The branch uses Mathlib's `ZMod.dft` convention:

```text
DFT(f)(r) = sum_x exp(-2*pi*i*x*r/Y) f(x).
```

For a generic cyclic profile `d`, it drafts

```text
DFT2((x,y) |-> d(y-x))(r,s)
 = if r+s = 0 then Y * DFT(d)(s) else 0.
```

Source theorem:

```lean
finite_zmod_differenceKernelDFT2
```

The proof is finite algebra:

1. translate `y` by `x` in the inner DFT;
2. factor the character at `x`;
3. apply finite additive-character orthogonality.

No Parseval identity, positivity, or norm enters.

## 8. One-frequency collapse of the bulk

The parent's generic two-dimensional bilinear Fourier formula is

```text
Y^-2 * sum_(r,s)
  DFT(f_j)(-r) DFT(f_j)(-s) DFT2(K)(r,s).
```

For the cyclic difference kernel, the anti-diagonal support `r+s=0` gives

```text
Y^-1 * sum_s
  DFT(f_j)(s)
  DFT(f_j)(-s)
  DFT(d_j)(s).
```

This exact identity is drafted as

```lean
finite_zmod_differenceKernel_bilinearFourier_collapse
```

and instantiated in

```lean
coreGrowingShiftEndpointCyclicDifferenceKernel_fourier_collapse.
```

Although the product

```text
DFT(f_j)(s) DFT(f_j)(-s)
```

is compatible with the reality of the zero-padded Möbius vector, the branch
does not replace the complete sum by a positive spectral mass.

## 9. Complete signed spectral packet

The source defines:

```lean
coreGrowingShiftEndpointCyclicDifferenceBulkFourierPacketComplex
coreGrowingShiftEndpointCyclicSupportCorrectionFourierPacketComplex
coreGrowingShiftEndpointLeftClippingCorrectionFourierPacketComplex
```

and combines them as

```text
bulk one-frequency packet
- cyclic-support two-frequency packet
- left-clipping two-frequency packet.
```

The complete complex packet is

```lean
coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex
```

and the real packet is

```lean
coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket.
```

The branch drafts the exact identities

```text
DifferenceCorrectionFourierPacketComplex(j)
 = BoundaryFourierPacketComplex(j),
```

```text
DifferenceCorrectionFourierPacket(j)
 = BoundaryFourierPacket(j),
```

and therefore

```text
coreGrowingShiftFirstDifferencePacket(j)
 = 2 * DifferenceCorrectionFourierPacket(j).
```

The corresponding declarations are:

```lean
coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacketComplex_eq_boundary
coreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket_eq_boundary
coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointDifferenceCorrectionFourier
```

## 10. RH-facing source proposition

The new premise is

```lean
SubpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket
```

and is drafted as exactly equivalent to

```lean
SubpolynomialCoreGrowingShiftSignedEndpointBoundaryFourierPacket.
```

The equivalence theorem is

```lean
subpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket_iff_boundary
```

and the inherited conditional endpoint is

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket.
```

No inhabitant of the new source proposition is constructed.

## 11. Proof-producing analytic boundary

The external theorem interface is

```lean
SignedEndpointDifferenceCorrectionFourierSource
ToCoreGrowingShiftSignedEndpointDifferenceCorrectionFourierPacket
```

A future supplier must separately preserve:

- arbitrary-interval anchor/tail evaluation;
- the bulk-minus-left-correction identity;
- the strict-to-cyclic support correction;
- exact zero padding;
- right-endpoint no-wrap;
- DFT sign and normalization;
- anti-diagonal collapse of the cyclic bulk;
- cancellation in the complete signed combination;
- one all-scale constant;
- finite small-scale control.

The interface deliberately does not request independent absolute estimates for
the bulk and the two corrections.

## 12. Information-loss witness

The theorem

```lean
signedEndpointDifferenceCorrectionCancellation_hostileWitness
```

records the finite pattern

```text
2 - 1 - 1 = 0
```

while the separate absolute mass is `4`.

Thus the following replacements are not equivalent to the signed source:

```text
|bulk| + |support correction| + |left correction|
Parseval mass
Cauchy--Schwarz energy
Hilbert--Schmidt norm
operator norm
positive kernel energy.
```

## 13. What has and has not advanced

Advanced:

- arbitrary prefix intervals now have one closed anchor/tail formula;
- left-endpoint dependence is isolated as an exact subtraction;
- the remaining bulk is a cyclic difference kernel;
- the bulk's two-dimensional DFT is exactly anti-diagonal;
- the bulk frequency sum is one-dimensional;
- both endpoint defects remain explicit signed corrections;
- the RH-facing source is preserved exactly.

Not established:

- a bound for the one-frequency bulk;
- a bound for either correction;
- cancellation among the three packets;
- a large-sieve, dispersion, Chowla, Elliott, or Gowers adapter;
- Lean elaboration or kernel acceptance;
- a proof or disproof of the Riemann Hypothesis.

## 14. Evidence state

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SIGNED_DIFFERENCE_CORRECTION_FOURIER_ESTIMATE_OPEN
```

The next deterministic question is whether the cyclic-support correction can
itself be reduced to explicit wrapped boundary rows and whether the
left-clipping correction admits a finite-rank or first-difference
factorization. Any such reduction must keep the final combination signed.
