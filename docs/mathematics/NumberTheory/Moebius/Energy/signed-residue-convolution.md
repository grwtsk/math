# Signed residue convolution for the square-minus-diagonal Fourier term

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / SIGNED_RESIDUE_CONVOLUTION_SOURCE_DRAFT / SIGNED_RESIDUE_CONVOLUTION_ESTIMATE_OPEN`

Owner: #625. Direct parent: #623 / PR #624. Positive variance witness: #621 / PR #622. Exact parity/Fourier source: #607 / PR #608.

This increment returns from the obstructed positive residue-variance majorant to the exact signed object

\[
S_r(b,d,k)^2-D_r(b,d,k).
\]

The square and the diagonal are no longer bounded separately.

## Exact source binding

```text
parent revision:
  2474a78629ba870118753a7f9c0a56a0ee827a4b

parent tree:
  8a108892d267645b9c88bdccae7737de48cf5f5c

candidate branch:
  research/rh-signed-residue-convolution-625-20261021

source commit:
  5201040b37122629c3c58bc9c4afeb689d51c4e7

source tree:
  818f743f44ccdf138572d9e3061e0d03b4209bbc

source:
  GRWTSK/NumberTheory/Moebius/
    ParitySignedResidueConvolution.lean

source blob:
  e7c8d45eec00682311d43c66b99e32f6e4943bf8
```

## Residue coordinate

For a positive square-modulus parameter \(d\), define

\[
a_d(u)=\left\lfloor\frac u2\right\rfloor\pmod{d^2}.
\]

The source declaration is

```lean
parityResidueCoordinate d u.
```

This is the same coordinate already used by the one-point parity Fourier sum.

## Strict-pair signed convolution

For parity \(r\in\{0,1\}\) and residue \(s\bmod d^2\), define

\[
C_r(b,d,s)
=
2\!\!\sum_{\substack{1\le u<v\le b\\
u\equiv v\equiv r\;(2)\\
a_d(u)+a_d(v)=s\;(d^2)}}
\mu(u)\mu(v).
\]

The source declaration is

```lean
paritySignedResidueConvolutionBucket.
```

The conditions have separate roles:

- `u < v` removes the diagonal exactly;
- the factor `2` restores the two ordered off-diagonal orientations in the square of a sum;
- the residue sum retains the exact square modulus;
- no absolute value is placed inside the bucket.

The source scripts

```lean
sum_paritySignedResidueConvolutionBucket
```

with mathematical content

\[
\sum_{s\bmod d^2}C_r(b,d,s)
=
2\sum_{\substack{1\le u<v\le b\\u\equiv v\equiv r\;(2)}}
\mu(u)\mu(v).
\]

## Additive Fourier transform

Define

\[
\widehat C_r(b,d,k)
=
\sum_{s\bmod d^2}C_r(b,d,s)e_{d^2}(ks).
\]

The source declaration is

```lean
paritySignedResidueConvolutionFourier.
```

Finite regrouping and additive-character multiplicativity give

```lean
paritySignedResidueConvolutionFourier_eq_twice_pairSum.
```

Thus

\[
\widehat C_r(b,d,k)
=
2\sum_{u<v}
\mu(u)\mu(v)e_{d^2}(k a_d(u))e_{d^2}(k a_d(v)).
\]

## Exact square-minus-diagonal identity

The existing strict-pair theorem from PR #608 says

\[
2\sum_{u<v}f(u)f(v)
=
\left(\sum_u f(u)\right)^2-
\sum_u f(u)^2.
\]

Applying it to

\[
f(u)=\mu(u)e_{d^2}(k a_d(u))
\]

yields the load-bearing identity

\[
\boxed{
\widehat C_r(b,d,k)
=
S_r(b,d,k)^2-D_r(b,d,k)
}.
\]

The source theorem is

```lean
paritySignedResidueConvolutionFourier_eq_square_sub_diagonal.
```

This is exact finite algebra. It is not a cancellation estimate.

## Why this repairs the failed representation

PR #622 replaced

\[
|S_r^2-D_r|
\]

by

\[
|S_r|^2+|D_r|.
\]

PR #624 scripts that this positive separation has a large-square-modulus floor at scale \(b^{3/2}\), conditional on an explicit squarefree-density input.

The current source does not attempt to improve that positive estimate. It removes the separation from the live supplier. Cancellation between the square and diagonal is retained inside \(\widehat C_r\) before a norm is taken.

## Exact equality of consumer surfaces

The source defines

```lean
paritySignedResidueConvolutionFrequencyMajorant
paritySignedResidueConvolutionNonzeroModulusMajorant
paritySignedResidueConvolutionEndpointMajorant.
```

Absolute values occur only after the exact signed transform is formed.

It then scripts exact equalities with the existing live surfaces:

```lean
paritySignedResidueConvolutionFrequencyMajorant_eq_parityFourier

paritySignedResidueConvolutionNonzeroModulusMajorant_eq_parityFourier

paritySignedResidueConvolutionEndpointMajorant_eq_parityFourier.
```

Therefore no normalization, endpoint, parity, frequency, or modulus range is changed by the new representation.

## All-scale supplier

The new proposition is

```lean
DyadicNaturalScaleSignedResidueConvolutionBudget.
```

It asks, for every \(\delta>0\), for

\[
\operatorname{SignedResidueConvolutionEndpointMajorant}(b)
\le
C_\delta X X^\delta
\]

whenever \(X=2^j\le b<2X\).

The source scripts exact equivalence:

```lean
dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier.
```

So this is not a stronger replacement majorant. It is a source-identical residue-coordinate representation of the existing nonzero-frequency obligation.

## Constructed repair object

PR #624 introduced

```lean
SignedSquareDiagonalCancellationRepair source
```

as the proof-relevant boundary for any valid replacement.

This increment constructs

```lean
signedResidueConvolutionCancellationRepair.
```

The constructed value proves only that the signed residue-convolution supplier returns to the exact nonzero-frequency budget. It does not construct the supplier itself.

## Downstream composition

The source scripts

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_and_signedResidueConvolution.
```

Hence the current conditional dependency is

\[
\boxed{
\text{pointwise ordinary-Mertens square-root envelope}
+
\text{signed residue-convolution budget}
\Longrightarrow
\text{natural-scale square-modulus congruence-}L^1.
}
\]

The pointwise Mertens premise and the signed residue-convolution estimate both remain open.

## Analytic interpretation

The live nonzero-frequency object is now the Fourier transform of an off-diagonal signed Möbius pair convolution on \(\mathbf Z/d^2\mathbf Z\).

Potential source families must control this signed object rather than only its positive energy. Examples include:

- a signed dispersion theorem retaining the square-minus-diagonal source;
- a bilinear large-sieve estimate with an explicit diagonal subtraction;
- a Chowla/Elliott theorem uniform in the growing square-modulus family;
- local Fourier/Gowers control with a proved signed pair-convolution adapter;
- an L-function or character theorem with an explicit additive and bilinear transport.

No such source is imported here.

## Scope controls

The source retains:

```text
strict pairs u<v
factor two for orientations
both parity classes
exact modulus d^2
exact endpoint support
nonzero-frequency range
square-minus-diagonal cancellation
```

The source rejects:

```text
absolute values inside residue buckets
Parseval variance as a replacement for the signed convolution
positive L2 energy promoted to the RH-scale budget
large-sieve or BDH estimates inferred by naming
fixed-data constants promoted to the growing family
```

## Evidence

Established:

```text
SOURCE_DRAFT
SIGNED_RESIDUE_CONVOLUTION_SOURCE_DRAFT
EXACT_STRICT_PAIR_RESIDUE_REGROUPING_SCRIPTED
EXACT_SQUARE_MINUS_DIAGONAL_FOURIER_IDENTITY_SCRIPTED
EXACT_CONSUMER_SURFACE_EQUIVALENCE_SCRIPTED
REPAIR_OBJECT_SOURCE_CONSTRUCTED
```

Not established:

```text
SIGNED_RESIDUE_CONVOLUTION_ESTIMATE
POINTWISE_MERTENS_ENVELOPE
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
