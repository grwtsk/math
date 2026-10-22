# Growing-shift affine Chowla form of the signed residue convolution

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / SHIFT_AFFINE_REINDEX_SOURCE_DRAFT / GROWING_SHIFT_AFFINE_CHOWLA_ESTIMATE_OPEN`

Owner: #629. Direct parent: #625 / PR #626. Obstruction atlas: #623 / PR #624.

This increment makes the signed nonzero-frequency obstruction concrete as one growing family of binary Möbius correlations in the affine forms

\[
L_1(u)=u,
\qquad
L_2(u)=u+2h.
\]

The shift, square modulus, additive frequency, endpoint, and parity all vary with the dyadic scale. No estimate is proved.

## Exact source binding

```text
parent revision:
  6f91233ddc4397f87eeef1e94e248e31c67e9929

parent tree:
  8717751b72239baff2fb782350493a2b110e477c

candidate branch:
  research/rh-signed-affine-chowla-629-20261021

shift-affine source commit:
  d4623eda79d6e3a62aab5e3807949acf04f6b044

shift-affine source tree:
  8394e610dbfb91fdfb2a40aa705b6a2d0e841f82

shift-affine source:
  GRWTSK/NumberTheory/Moebius/
    SignedResidueConvolutionShiftAffine.lean

shift-affine source blob:
  1b34328f97cc3d099439909566fbf9f86a051af8

connection-atlas source commit:
  b1a9f0405de681b1a67e360717c1d15bb7393c65

connection-atlas source tree:
  80c59e6eccf09a2202413726657a2b46e2cf0922

connection-atlas source:
  GRWTSK/NumberTheory/Moebius/
    SignedAffineChowlaConnections.lean

connection-atlas source blob:
  a9b3061d0134a844745cb87b5812b86c3a568f0c
```

## Strict pair to positive shift

The PR #626 source uses strict same-parity pairs

\[
1\le u<v\le b,
\qquad
u\equiv v\pmod 2.
\]

The current source defines

```lean
positiveEndpointShiftSet
parityAffineShiftBaseSet
endpointParityFixedShiftPairSet.
```

For every strict same-parity pair, define

\[
h=\frac{v-u}{2}.
\]

The source scripts

```lean
endpointParityStrictPair_shift_spec
endpointParityStrictPair_shift_mem.
```

Thus

\[
h>0,
\qquad
v=u+2h,
\]

and the exact support becomes

\[
1\le h,
\qquad
1\le u\le b,
\qquad
u\equiv r\pmod2,
\qquad
u+2h\le b.
\]

No endpoint or pair orientation is discarded.

## Exact residue coordinate

The parity residue coordinate from PR #626 is

\[
a_d(u)=\left\lfloor\frac u2\right\rfloor\pmod{d^2}.
\]

The source scripts

```lean
half_add_two_mul
parityResidueCoordinate_add_two_shift
pairResidueCoordinate_eq_affineShift.
```

Hence

\[
a_d(u+2h)=a_d(u)+h
\]

and

\[
a_d(u)+a_d(u+2h)
=
2a_d(u)+h.
\]

The resulting affine coordinate is declared as

```lean
parityAffineShiftResidueCoordinate.
```

## Signed shift-residue correlation

For parity `r`, positive shift `h`, and residue `s mod d^2`, define

\[
C_{r,h}(b,d,s)
=
2\!\!\sum_{\substack{1\le u\le b\\
u\equiv r\;(2)\\
u+2h\le b\\
2\lfloor u/2\rfloor+h\equiv s\;(d^2)}}
\mu(u)\mu(u+2h).
\]

The source declarations are

```lean
parityPairShiftResidueCorrelation
parityAffineShiftResidueCorrelation.
```

The fixed-shift pair/lower-endpoint bijection is scripted by

```lean
parityPairShiftResidueCorrelation_eq_affine.
```

The original signed residue-convolution bucket then satisfies

\[
\boxed{
C_r(b,d,s)
=
\sum_{h\ge1}C_{r,h}(b,d,s)
}
\]

with the exact finite shift set. The source theorems are

```lean
paritySignedResidueConvolutionBucket_eq_sum_pairShifts
paritySignedResidueConvolutionBucket_eq_sum_affineShifts.
```

No absolute value is inserted before this identity.

## Additive-twisted affine Chowla family

The source defines

```lean
parityGrowingShiftAffineChowlaTwist b d r h k
```

with mathematical content

\[
T_{r,h}(b,d,k)
=
2\!\!\sum_{\substack{1\le u\le b\\
u\equiv r\;(2)\\
u+2h\le b}}
\mu(u)\mu(u+2h)
\,e_{d^2}\!\left(k(2\lfloor u/2\rfloor+h)\right).
\]

This is an ordinary binary Möbius correlation in two nonproportional affine forms, but all of the data grow:

```text
shift h
d Square-modulus parameter
frequency k
endpoint b
parity r
support u+2h<=b.
```

The source scripts

```lean
sum_shiftResidueCorrelation_mul_char
paritySignedResidueConvolutionFourier_eq_sum_affineChowlaTwists.
```

Thus

\[
\boxed{
\widehat C_r(b,d,k)
=
\sum_h T_{r,h}(b,d,k)
}.
\]

This is exact finite Fourier algebra, not a Chowla estimate.

## Exact consumer equality

The source defines affine-family frequency, modulus, and endpoint majorants:

```lean
parityGrowingShiftAffineChowlaFrequencyMajorant
parityGrowingShiftAffineChowlaNonzeroModulusMajorant
parityGrowingShiftAffineChowlaEndpointMajorant.
```

It scripts exact equalities with the signed residue-convolution surfaces:

```lean
parityGrowingShiftAffineChowlaFrequencyMajorant_eq_signed
parityGrowingShiftAffineChowlaNonzeroModulusMajorant_eq_signed
parityGrowingShiftAffineChowlaEndpointMajorant_eq_signed.
```

Therefore the reindex changes no normalization, endpoint, parity, modulus, frequency, or absolute-value boundary.

## All-scale supplier

The new proposition is

```lean
DyadicNaturalScaleGrowingShiftAffineChowlaBudget.
```

It asks, for every \(\delta>0\), for

\[
\operatorname{AffineChowlaEndpointMajorant}(b)
\le
C_\delta X X^\delta
\]

whenever \(X=2^j\le b<2X\).

The source proves exact equivalence:

```lean
dyadicNaturalScaleGrowingShiftAffineChowlaBudget_iff_signedResidueConvolution.
```

Hence this is not a stronger or weaker target. It is the exact signed obstruction written in the theorem language needed for Chowla/Elliott comparison.

The downstream theorem is

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftAffineChowla.
```

Both the pointwise-Mertens zero-mode premise and the growing affine-family premise remain open.

## Existing signed atlas lifted without duplication

The companion module defines

```lean
ToGrowingShiftAffineChowlaBudgetAdapter source
```

and the generic lift

```lean
liftSignedSquareDiagonalAdapter.
```

Therefore every actual signed adapter from PR #624 can be transported into the exact affine-family target. The source supplies lift functions for:

```text
square-modulus large sieve
Barban--Davenport--Halberstam / Montgomery--Hooley
Bombieri--Vinogradov / Elliott--Halberstam
squarefree arithmetic-progression variance
local Fourier / Gowers
Dirichlet/Hecke L-function signed dispersion
function-field Chowla/AP after integer transport.
```

No value of any underlying adapter is constructed.

## Recently closed fixed-form ordinary binary Chowla

The connection source defines

```lean
FixedFormBinaryChowlaGrowingAffineData
FixedFormBinaryChowlaGrowingAffineSource
FixedFormBinaryChowlaGrowingAffineAdapter.
```

The fixed-form theorem is retained through the existing

```lean
FixedFormBinaryChowlaData
FixedFormBinaryChowlaSource
```

interface from #571/#573.

The new fields keep the missing steps explicit:

```text
additive-phase compatibility
growing-shift uniformity
growing square-modulus uniformity
nonzero-frequency uniformity
parity and exact support uniformity
one constant per exponent
frequency/modulus/endpoint aggregation.
```

Thus a recently closed fixed-form result is relevant but does not populate the growing-family adapter by scope alone.

## Corrected Elliott

The source defines

```lean
CorrectedElliottGrowingAffineData
CorrectedElliottGrowingAffineSource
CorrectedElliottGrowingAffineAdapter.
```

The correction and nonpretentiousness hypotheses remain explicit, as do the growing affine/modulus/frequency and endpoint-aggregation requirements.

No corrected-Elliott adapter value is constructed.

## Logarithmically averaged binary Chowla

The source defines

```lean
LogAveragedBinaryChowlaGrowingAffineData
LogAveragedBinaryChowlaGrowingAffineSource
LogAveragedBinaryChowlaGrowingAffineAdapter.
```

It separates:

```text
fixed affine data
the logarithmic average
a logarithmic-to-ordinary finite-average theorem
growing-shift uniformity
square-modulus/frequency uniformity
endpoint aggregation.
```

No logarithmic average is silently promoted to the ordinary finite target.

## Möbius--nilsequence / Sarnak structured phases

The source defines

```lean
MobiusNilsequenceGrowingAffineData
MobiusNilsequenceGrowingAffineSource
MobiusNilsequenceGrowingAffineAdapter.
```

A one-point structured-phase theorem requires an explicit

```text
one-point -> signed binary upgrade
```

plus denominator, scale, growing-shift, parity, and endpoint aggregation. No Sarnak or nilsequence theorem is promoted by analogy.

## Repository #476 signed cross-shift dispersion

The source defines

```lean
RepositoryCrossShiftDispersionData
RepositoryCrossShiftDispersionSource
RepositoryCrossShiftDispersionAdapter.
```

The required bridge preserves:

```text
signed depth slices
growing shifts
triangular support
Abel weights
source identification
dispersion-norm comparison
dyadic normalization.
```

This formalizes the fact that #476 and #629 share a signed growing-shift obstruction while retaining different current source coordinates.

## Repository #499 normalized Abel response

The source defines

```lean
RepositoryNormalizedAbelResponseData
RepositoryNormalizedAbelResponseSource
RepositoryNormalizedAbelResponseAdapter.
```

One-boundedness alone is explicitly insufficient. The source profile additionally requires a source-identification theorem, a growing-family cancellation theorem, and the complete endpoint/frequency/modulus aggregation.

## Hostile boundaries

The companion module separately types

```lean
FixedFormToGrowingAffineAdapter
LogarithmicToOrdinaryAffineAdapter
OnePointToSignedBinaryAffineAdapter
AveragedToExactAffineEndpointAdapter
AbelResponseToAffineChowlaAdapter.
```

These prevent the following unsupported promotions:

```text
fixed forms -> growing h,d,k family
logarithmic average -> ordinary finite average
one-point structured phase -> signed binary convolution
average/almost-all -> exact endpoint aggregate
one-bounded Abel response -> affine Chowla estimate.
```

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
SHIFT_AFFINE_REINDEX_SOURCE_DRAFT
EXACT_PAIR_TO_SHIFT_SUPPORT_SCRIPTED
EXACT_AFFINE_RESIDUE_COORDINATE_SCRIPTED
EXACT_SIGNED_BUCKET_SHIFT_DECOMPOSITION_SCRIPTED
EXACT_AFFINE_CHOWLA_FOURIER_IDENTITY_SCRIPTED
EXACT_CONSUMER_SURFACE_EQUIVALENCE_SCRIPTED
CONNECTION_ATLAS_SOURCE_DRAFT
```

Not established:

```text
GROWING_SHIFT_AFFINE_CHOWLA_ESTIMATE
POINTWISE_MERTENS_ENVELOPE
ANY_NAMED_CHOWLA_OR_ELLIOTT_ADAPTER
ANY_NAMED_LARGE_SIEVE_OR_DISPERSION_ADAPTER
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
