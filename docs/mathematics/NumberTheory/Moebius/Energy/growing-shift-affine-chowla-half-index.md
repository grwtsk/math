# Half-index normalization of the growing-shift affine Chowla family

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / HALF_INDEX_PHASE_NORMALIZATION_SOURCE_DRAFT / HALF_INDEX_AFFINE_CHOWLA_ESTIMATE_OPEN`

Owner: #633. Direct parent: #629 / PR #631. Signed residue source: #625 / PR #626. Natural-scale consumer: #586 / PR #588.

This increment converts the parity-restricted base variable in the exact growing-shift family into the half-index used by standard affine-form formulations.

## Exact source binding

```text
parent revision:
  6d2674d6b8a7315aefe9298dfddc03ef35b0128a

parent tree:
  011c9e1632311b1b99b61f2fe32b8d27c8955b4e

candidate branch:
  research/rh-half-index-affine-633-20261021

source commit:
  f3d23520a2d4a6bdce2ca3e1c6b2c9b5f4b525ec

source tree:
  ab7082b6ac48f343550ad3644dff8785424c5fd6

source:
  GRWTSK/NumberTheory/Moebius/
    GrowingShiftAffineChowlaHalfIndex.lean

source blob:
  960b500023bb3684ca18ae2549b98d9107aee7b3
```

## Exact half-index support

For parity \(r\in\{0,1\}\), write

\[
u=2m+r.
\]

The exact support becomes

\[
1\le 2m+r,
\qquad
2m+r+2h\le b.
\]

The source defines

```lean
parityHalfIndexAffineBaseSet b r h
```

and scripts both directions of the finite correspondence:

```lean
halfIndex_mem_of_parityAffineBase
parityAffineBase_mem_of_halfIndex
```

with inverse identities

```lean
two_mul_half_add_parity_eq
reconstructedParity_half_eq.
```

The generic finite-sum reindex is

```lean
sum_parityAffineShiftBaseSet_eq_halfIndex.
```

No endpoint is replaced by an asymptotic interval.

## Literal affine forms

The normalized forms are

\[
L_1(m)=2m+r,
\qquad
L_2(m)=2m+r+2h.
\]

The source declarations are

```lean
halfIndexLowerAffineForm
halfIndexUpperAffineForm
```

with exact translation identity

```lean
halfIndexUpperAffineForm_eq_lower_add_shift.
```

For every positive shift \(h\), these are distinct fixed affine forms once \(r,h\) are frozen. The all-scale repository target still lets \(h\) vary with the endpoint, so a fixed-form theorem does not automatically supply it.

## Half-index additive-twisted core

Define

\[
U_r(b,d,h,\ell)
=
2\!\!\sum_{\substack{m:\;1\le2m+r\\2m+r+2h\le b}}
\mu(2m+r)\mu(2m+r+2h)
 e_{d^2}(\ell m).
\]

The source declaration is

```lean
halfIndexAffineChowlaCore.
```

This is now a literal additive-twisted binary correlation in the affine forms \(2m+r\) and \(2m+r+2h\).

## Exact phase extraction

The PR #631 phase coordinate is

\[
2\left\lfloor\frac u2\right\rfloor+h.
\]

After \(u=2m+r\), it is exactly

\[
2m+h.
\]

The source scripts

```lean
parityAffineShiftResidueCoordinate_reconstructed.
```

Consequently,

\[
e_{d^2}(k(2m+h))
=
e_{d^2}(kh)e_{d^2}((2k)m).
\]

The source declarations are

```lean
doubledSquareModulusFrequency
affineChowlaShiftPhase
stdAddChar_affineShift_eq_shift_mul_doubled.
```

The factorization theorem is

```lean
parityGrowingShiftAffineChowlaTwist_eq_halfIndex.
```

Mathematically:

\[
\boxed{
T_r(b,d,h,k)
=
e_{d^2}(kh)\,U_r(b,d,h,2k).
}
\]

## Frequency-doubling boundary

The source does **not** reindex \(k\mapsto2k\).

When \(d\) is even, multiplication by two on \(\mathbf Z/d^2\mathbf Z\) is not invertible. Therefore a theorem covering an arbitrarily relabeled complete frequency family cannot be substituted without a separate coverage argument.

The hostile adapter type is

```lean
DoubledFrequencyCoverageAdapter.
```

## Outer shift cancellation is retained

The exact parity aggregate is

\[
\sum_h e_{d^2}(kh)U_r(b,d,h,2k).
\]

The shift phase stays inside the sum over \(h\). No triangle inequality is applied over the shift family.

The source declaration is

```lean
halfIndexAffineChowlaShiftAggregate
```

and the exact equality with the PR #631 shift sum is

```lean
sum_growingShiftAffineChowlaTwist_eq_halfIndexAggregate.
```

## Exact consumer surfaces

The source defines

```lean
halfIndexAffineChowlaFrequencyMajorant
halfIndexAffineChowlaNonzeroModulusMajorant
halfIndexAffineChowlaEndpointMajorant.
```

It scripts exact equalities:

```lean
halfIndexAffineChowlaFrequencyMajorant_eq_growingShift
halfIndexAffineChowlaNonzeroModulusMajorant_eq_growingShift
halfIndexAffineChowlaEndpointMajorant_eq_growingShift.
```

Thus parity, endpoint, modulus, nonzero-frequency range, normalization, and absolute-value boundary are unchanged.

## All-scale supplier

The normalized proposition is

```lean
DyadicNaturalScaleHalfIndexAffineChowlaBudget.
```

The source scripts exact equivalence:

```lean
dyadicNaturalScaleHalfIndexAffineChowlaBudget_iff_growingShift.
```

Hence this is a source-identical representation of the live nonzero-frequency obligation, not a stronger positive majorant.

The downstream conditional theorem is

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_and_halfIndexAffineChowla.
```

Therefore:

\[
\boxed{
\text{pointwise Mertens square-root envelope}
+
\text{half-index affine Chowla budget}
\Longrightarrow
\text{natural-scale square-modulus congruence-}L^1.
}
\]

Both analytic premises remain open.

## Fixed-form source boundary

The source defines

```lean
ToHalfIndexAffineChowlaBudgetAdapter
FixedFormHalfIndexAffineChowlaData
FixedFormHalfIndexAffineChowlaSource
FixedFormHalfIndexAffineChowlaAdapter.
```

A fixed-form theorem can enter only after proving all of:

```text
forms 2m+r and 2m+r+2h are covered
additive-twist or residue-class compatibility
growing-shift uniformity
growing square-modulus uniformity
doubled-frequency coverage
both parity classes
exact endpoint support
frequency/modulus/endpoint aggregation
one constant per exponent.
```

No named fixed-form Chowla, corrected Elliott, large-sieve, or L-function theorem receives an adapter value.

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
HALF_INDEX_PHASE_NORMALIZATION_SOURCE_DRAFT
EXACT_PARITY_HALF_INDEX_REINDEX_SCRIPTED
EXACT_AFFINE_FORMS_EXPOSED
EXACT_SHIFT_PHASE_FACTORIZATION_SCRIPTED
EXACT_CONSUMER_SURFACE_EQUIVALENCE_SCRIPTED
FIXED_FORM_SOURCE_BOUNDARY_TYPED
```

Not established:

```text
HALF_INDEX_AFFINE_CHOWLA_ESTIMATE
POINTWISE_MERTENS_ENVELOPE
ANY_NAMED_FIXED_FORM_ADAPTER
DOUBLED_FREQUENCY_COVERAGE_ADAPTER
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
