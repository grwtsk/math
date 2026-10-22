# Exact two-dimensional Fourier coordinates for the signed endpoint packet

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: #836  
Parent: issue #831 / draft PR #833  
Parent revision: `24e9b6a530d9a459091296491675cd3c93bd62c6`

## 1. Selected obstruction

The surviving RH-facing observable after the positive staircase route was marked as a conditional cubic-scale witness is the signed endpoint-bilinear packet

\[
B_j=
\sum_{N}
\sum_{(n,m)\in \mathcal E_{j,N}}
\mu(n)\mu(m)K_j(N,n,m),
\]

where

\[
K_j(N,n,m)=\Delta_j(N,m-n)
\]

and the exact support is

\[
H+1\le N<Y-H,
\]

\[
1\le n\le N,
\qquad
n<m<Y,
\]

\[
\max(1,X-N)\le m-n<Y-N.
\]

Here

\[
X=2^j,
\qquad
Y=2^{j+1},
\qquad
H=\operatorname{logarithmicShiftThreshold}(j).
\]

The parent branch proves

\[
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)=2B_j.
\]

The purpose of this increment is only to give `B_j` an exact finite-frequency representation. No frequency estimate is asserted.

## 2. Why zero-padding is legitimate

Every endpoint in the strict support satisfies

\[
1\le n<m<Y.
\]

Thus the natural maps

\[
n\longmapsto n\pmod Y,
\qquad
m\longmapsto m\pmod Y
\]

are injective on the active endpoint set. The shifted endpoint does not cross the right boundary, so no ordinary endpoint is identified with another endpoint by modular wrap-around.

The source makes this auditable through:

```lean
coreGrowingShiftEndpoint_natCast_injective
```

and through the inherited no-wrap theorem from #831.

The cyclic group `ZMod Y` is therefore used only as a finite Fourier coordinate system. It does not alter the arithmetic endpoint relation.

## 3. Zero-padded objects

The source defines

```lean
coreGrowingShiftEndpointMobiusZeroPad
```

by

\[
f_j(x)=
\begin{cases}
\mu(x_{\mathrm{val}}),&1\le x_{\mathrm{val}}<Y,\\
0,&x_{\mathrm{val}}=0.
\end{cases}
\]

For each retained prefix `N`, it defines

```lean
coreGrowingShiftEndpointKernelZeroPad
```

by

\[
K^0_{j,N}(x,y)=
\begin{cases}
K_j(N,x_{\mathrm{val}},y_{\mathrm{val}}),
 &(x_{\mathrm{val}},y_{\mathrm{val}})\in\mathcal E_{j,N},\\
0,&\text{otherwise}.
\end{cases}
\]

The fixed-prefix real slice is

```lean
coreGrowingShiftSignedEndpointBilinearSlice
```

and its zero-padded complex form is

```lean
coreGrowingShiftSignedEndpointZeroPaddedSlice.
```

The exact identity is

\[
\boxed{
\bigl(B_{j,N}:\mathbb C\bigr)
=
\sum_{x,y\in\mathbb Z/Y\mathbb Z}
f_j(x)f_j(y)K^0_{j,N}(x,y).
}
\]

This is authored as

```lean
coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded.
```

The proof groups canonical representatives explicitly. It does not use cardinality alone, and the support theorem pays the full no-wrap obligation.

## 4. DFT convention

Mathlib's transform is

\[
\widehat f(r)
=
\sum_{x\in\mathbb Z/Y\mathbb Z}
\mathbf e_Y(-xr)f(x).
\]

Its inverse is

\[
f(x)
=
Y^{-1}
\sum_r \mathbf e_Y(rx)\widehat f(r).
\]

With this sign convention, the finite pairing identity is

\[
\boxed{
\sum_x f(x)g(x)
=
Y^{-1}
\sum_r \widehat f(-r)\widehat g(r).
}
\]

The source proves this generically as

```lean
finite_zmod_pairing_eq_dft.
```

No conjugation appears because the target is a signed bilinear form, not a Hermitian inner product.

## 5. Iterated two-dimensional kernel transform

For a kernel `K`, define

\[
\widehat K(r,s)
=
\sum_x \mathbf e_Y(-xr)
\sum_y \mathbf e_Y(-ys)K(x,y).
\]

The source packages this as

```lean
finiteZModKernelDFT2
```

and proves

\[
\boxed{
\sum_{x,y}f(x)f(y)K(x,y)
=
Y^{-2}
\sum_{r,s}
\widehat f(-r)\widehat f(-s)\widehat K(r,s).
}
\]

The declaration is

```lean
finite_zmod_bilinear_eq_iterated_dft.
```

This theorem is two applications of finite inversion and finite Fubini. It is not Parseval and does not create a positive square.

## 6. Exact frequency packet

For the active endpoint kernel, the transformed kernel is

```lean
coreGrowingShiftEndpointKernelDFT2.
```

The fixed-prefix frequency slice is

```lean
coreGrowingShiftSignedEndpointFourierSlice
```

and the complete complex packet is

```lean
coreGrowingShiftSignedEndpointFourierPacketComplex.
```

The complex packet is exactly the complexification of the original real endpoint packet:

\[
\boxed{
(B_j:\mathbb C)
=
\operatorname{FourierPacketComplex}_j.
}
\]

Consequently its imaginary part vanishes after the complete signed sum. The real frequency packet is

```lean
coreGrowingShiftSignedEndpointFourierPacket
```

and satisfies

\[
\boxed{
B_j
=
\operatorname{coreGrowingShiftSignedEndpointFourierPacket}(j).
}
\]

Hence

\[
\boxed{
\operatorname{coreGrowingShiftFirstDifferencePacket}(j)
=
2\operatorname{coreGrowingShiftSignedEndpointFourierPacket}(j).
}
\]

The relevant declarations are:

```lean
coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_fourierComplex
coreGrowingShiftSignedEndpointFourierPacketComplex_im
coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier
coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointFourier
```

## 7. RH-facing source equivalence

The new source is

```lean
SubpolynomialCoreGrowingShiftSignedEndpointFourierPacket.
```

It is exactly equivalent to

```lean
SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket
```

through

```lean
subpolynomialCoreGrowingShiftSignedEndpointFourierPacket_iff_bilinear.
```

The inherited conditional endpoint is restated as

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointFourierPacket.
```

No value of the source is constructed.

## 8. What remains open

After this coordinate change, the arithmetic target is the signed frequency sum

\[
Y^{-2}
\sum_{N}
\sum_{r,s}
\widehat f_j(-r)
\widehat f_j(-s)
\widehat K_{j,N}(r,s),
\]

with the exact prefix range, strict endpoint support, and clamped reciprocal kernel retained inside `\widehat K`.

A valid analytic theorem must control the complete signed sum. It may not replace it by

\[
\sum_{N,r,s}
\left|
\widehat f_j(-r)
\widehat f_j(-s)
\widehat K_{j,N}(r,s)
\right|,
\]

by a Hilbert--Schmidt norm, or by an operator norm unless a separate theorem proves that the resulting normalization still supplies the signed target.

The proof-producing interface

```lean
SignedEndpointFourierSource
ToCoreGrowingShiftSignedEndpointFourierPacket
```

keeps these obligations distinct:

- exact zero-padding;
- no-wrap;
- transform sign and normalization;
- two-dimensional inversion;
- strict-support preservation;
- low-anchor-clamp preservation;
- signed frequency cancellation;
- cross-prefix cancellation;
- all-scale uniformity;
- finite small-scale control.

## 9. Epistemic state

Repository-proved in this source draft, subject to elaboration:

- finite canonical-representative reindexing;
- exact zero-padding;
- finite DFT pairing;
- iterated two-dimensional DFT identity;
- exact return to the endpoint, first-difference, and conditional RH interfaces.

Not supplied:

- a signed frequency estimate;
- a large-sieve or dispersion inequality;
- a Chowla, corrected-Elliott, or Gowers adapter;
- Lean/Lake execution;
- kernel acceptance;
- trust audit;
- external replay;
- merge;
- a proof or disproof of RH.

Evidence state:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SIGNED_TWO_DIMENSIONAL_FOURIER_ESTIMATE_OPEN
```
