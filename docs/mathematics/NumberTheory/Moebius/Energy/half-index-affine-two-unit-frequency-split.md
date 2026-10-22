# Two-unit and two-nonunit square-modulus frequency split

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / TWO_UNIT_FREQUENCY_REINDEX_SOURCE_DRAFT / TWO_UNIT_ANALYTIC_SUPPLIER_OPEN / TWO_NONUNIT_ANALYTIC_SUPPLIER_OPEN`

Owner: #642. Direct parent: #633 / PR #637.

This increment resolves the doubled-frequency map exactly where multiplication by two is invertible and isolates the complementary square-modulus parameters without discarding them.

## Exact source binding

```text
parent revision:
  b8f4f643424aa25c775fbd246cd368481d1e68de

parent tree:
  c9609b70531bc2a6b921042a7c41da9f8a07e810

candidate branch:
  research/rh-two-unit-frequency-split-642-20261021

source commit:
  e80b3cd786f332b6cd49a84ed1173468f37e8ae2

source tree:
  794aac0ede480a7bf8a40a5b28fccfa19fe89b6c

source:
  GRWTSK/NumberTheory/Moebius/
    HalfIndexAffineChowlaTwoUnitSplit.lean

source blob:
  824581b619af9d071db1d74c770ecf151ec5ff09
```

## Branch predicate

The source defines

```lean
TwoUnitSquareModulusParameter d
```

as

\[
\gcd(2,d^2)=1.
\]

Mathematically, this is the odd-\(d\) branch. The complementary branch contains the square-modulus parameters for which multiplication by two is not invertible, including every even \(d\).

The formal split uses the coprimality predicate directly; no even modulus is removed from the endpoint family.

## Inverse frequency on the two-unit branch

For \(\ell\in\mathbf Z/d^2\mathbf Z\), define

\[
\operatorname{half}_d(\ell)=2^{-1}\ell.
\]

The source declaration is

```lean
halfSquareModulusFrequency.
```

Under `TwoUnitSquareModulusParameter d`, the source scripts

```lean
doubled_halfSquareModulusFrequency
half_doubledSquareModulusFrequency.
```

Thus

\[
2\operatorname{half}_d(\ell)=\ell,
\qquad
\operatorname{half}_d(2k)=k.
\]

It packages these identities as

```lean
doubledSquareModulusFrequencyEquiv.
```

The source also proves that both maps preserve the distinction between zero and nonzero frequencies:

```lean
doubledSquareModulusFrequency_ne_zero_iff
halfSquareModulusFrequency_ne_zero_iff.
```

Therefore the zero mode is not accidentally reintroduced during the reindexing.

## Undoubled fixed-form core

The PR #637 shift aggregate has the form

\[
\sum_h e_{d^2}(kh)\,U_r(b,d,h,2k).
\]

On the two-unit branch, replace \(k\) by \(\operatorname{half}_d(\ell)\). The source defines

```lean
twoUnitHalfIndexAffineChowlaShiftAggregate
```

with mathematical content

\[
\sum_h
 e_{d^2}(\operatorname{half}_d(\ell)h)
 U_r(b,d,h,\ell).
\]

The exact identity is

```lean
halfIndexAffineChowlaShiftAggregate_half_eq_twoUnit.
```

No absolute value is applied before the complete shift sum is formed.

## Nonzero-frequency reindexing

The source defines

```lean
twoUnitHalfIndexAffineChowlaFrequencyMajorant

twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant.
```

It then scripts

```lean
twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant_eq_halfIndex.
```

This theorem reindexes the entire nonzero-frequency sum by the equivalence

\[
k\longleftrightarrow \ell=2k.
\]

The normalization

\[
\frac1{d^2}
\]

is unchanged. The nonzero frequency set, both parity classes, the exact endpoint support, and the outer shift phase are all preserved.

## Exact modulus split

The endpoint majorant is split into

```lean
twoUnitHalfIndexAffineChowlaEndpointMajorant

twoNonunitHalfIndexAffineChowlaEndpointMajorant.
```

The first branch uses the undoubled frequency normalization. The second branch keeps the original PR #637 surface because multiplication by two is not assumed invertible there.

The load-bearing finite identity is

```lean
halfIndexAffineChowlaEndpointMajorant_eq_twoUnit_add_twoNonunit.
```

Mathematically:

\[
\boxed{
\operatorname{HalfIndexEndpoint}(b)
=
\operatorname{TwoUnitEndpoint}(b)
+
\operatorname{TwoNonunitEndpoint}(b).
}
\]

This is an exact partition. It is not a triangle inequality or an estimate.

## Separate analytic suppliers

The source defines

```lean
DyadicNaturalScaleTwoUnitHalfIndexBudget

DyadicNaturalScaleTwoNonunitHalfIndexBudget.
```

Their conjunction supplies the live half-index target through

```lean
dyadicNaturalScaleHalfIndexBudget_of_twoUnit_and_twoNonunit.
```

Together with the independent pointwise-Mertens zero-mode premise, the source scripts

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_and_twoModulusBranches.
```

Hence the current conditional dependency is

\[
\boxed{
\text{pointwise Mertens envelope}
+
\text{two-unit affine supplier}
+
\text{two-nonunit affine supplier}
\Longrightarrow
\text{natural-scale square-modulus congruence-}L^1.
}
\]

None of the three analytic premises is proved here.

## Fixed-form connection on the two-unit branch

The source types

```lean
ToTwoUnitHalfIndexBudgetAdapter
FixedFormTwoUnitHalfIndexData
FixedFormTwoUnitHalfIndexSource
FixedFormTwoUnitHalfIndexAdapter.
```

The doubled-frequency coverage obstruction is removed on this branch, but a fixed-form source still needs explicit proofs of:

```text
literal affine-form coverage
additive-twist compatibility
growing-shift uniformity
growing square-modulus uniformity
all nonzero frequencies
both parities and exact endpoint support
endpoint/frequency/modulus aggregation
one constant for each exponent.
```

No named fixed-form theorem receives an adapter value.

## Residual two-nonunit branch

The source types

```lean
ToTwoNonunitHalfIndexBudgetAdapter
TwoNonunitFrequencyResidualBoundary.
```

The unresolved fields identify the next exact choices:

```text
2-adic or conductor stratification
image of multiplication by two
kernel multiplicity
preservation of signed shift cancellation
exact endpoint aggregation.
```

The source does not pretend that the odd-modulus reindexing applies here.

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
TWO_UNIT_FREQUENCY_REINDEX_SOURCE_DRAFT
EXACT_DOUBLING_INVERSE_SCRIPTED
ZERO_NONZERO_PRESERVATION_SCRIPTED
EXACT_TWO_UNIT_NONZERO_SUM_REINDEX_SCRIPTED
EXACT_TWO_BRANCH_ENDPOINT_DECOMPOSITION_SCRIPTED
CONDITIONAL_BRANCH_RECOMBINATION_SCRIPTED
```

Not established:

```text
TWO_UNIT_ANALYTIC_SUPPLIER
TWO_NONUNIT_ANALYTIC_SUPPLIER
POINTWISE_MERTENS_ENVELOPE
ANY_NAMED_FIXED_FORM_ADAPTER
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
