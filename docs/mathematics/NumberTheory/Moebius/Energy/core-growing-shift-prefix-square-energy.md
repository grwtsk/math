# Growing-shift binary-prefix square-energy comparison

Issue: #699. Parent uniform-prefix adapter: #693 / draft PR #695.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / AVERAGED_BINARY_PREFIX_SQUARE_ENERGY_OPEN**.

## Terminal consumer

The exact RH-facing consumer is

```lean
SubpolynomialCoreGrowingShiftFirstDifferencePacket
```

from #688. It is source-level equivalent to the inherited genuine-core remainder supplier and therefore has the inherited conditional RH consequence. No analytic inhabitant is constructed here.

## Exact unified weight

Let

```text
H = logarithmicShiftThreshold(j),
N = harmonicShiftCount(j,t),
L = harmonicShiftLower(j,t).
```

At one genuine core depth, define

```text
w(j,t,k) = Δq(j,t,H-1),  k < H,
           Δq(j,t,k),    H <= k < N.
```

The low part repeats the threshold first difference so that

```text
sum_(k<H) M2(L+k,t+1) * w(j,t,k)
 = cumulativeHarmonicShiftCorrelation(j,t,H) * Δq(j,t,H-1).
```

The high part is the literal first-difference tail. Consequently the source authors the exact identity

```text
coreGrowingShiftFirstDifferenceDepth(j,t)
 = 2 * sum_(k<N) M2(L+k,t+1) * w(j,t,k).
```

No absolute value or square enters before this identity.

## Quadratic observables

The source defines

```lean
coreGrowingShiftBinaryPrefixSquareDepth
coreGrowingShiftFirstDifferenceWeightSquareDepth
coreGrowingShiftBinaryPrefixSquareEnergy
coreGrowingShiftWeightedPrefixSquareEnergy
```

with

```text
E(j) = sum_(t in core depths) sum_(k<N)
       M2(L+k,t+1)^2.
```

This is an averaged active-cell square energy. It does not take a maximum over intermediate prefixes and does not require one common pointwise envelope.

## Deterministic coefficient control

The unified first-difference weight satisfies

```text
0 <= w(j,t,k) <= (2^j)^-2.
```

Since `N <= 2^j`, its square mass at one depth satisfies

```text
sum_(k<N) w(j,t,k)^2
 <= 2^j * (2^j)^-4.
```

Finite Cauchy--Schwarz then controls each weighted depth sum by the product of its binary-prefix square energy and coefficient square mass.

A second finite Cauchy--Schwarz inequality across core depths, together with

```text
#coreLongDeepDepths(j) <= 2^(j+1),
```

gives the canonical comparison

```text
coreGrowingShiftFirstDifferencePacket(j)^2
 <= 8 * (2^j)^-2 * E(j).
```

The constant eight is explicit. No asymptotic arithmetic estimate is used.

## Averaged source

The new source-facing premise is

```lean
SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy
```

requiring, for every `δ>0`,

```text
E(j) <= (C_delta * 2^j * (2^j)^δ)^2.
```

This is the natural `O((2^j)^2)` active-cell scale times a subpolynomial square envelope.

The source proves

```text
SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy
 -> SubpolynomialCoreGrowingShiftFirstDifferencePacket
 -> conditional RH endpoint.
```

The constant loss in the first implication is three.

## Comparison with the uniform source

The branch also proves the one-way implication

```text
SubpolynomialDyadicUniformMertensTwoPointPrefix
 -> SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy.
```

No converse is asserted. A finite hostile witness records that a signed weighted sum can vanish while the unweighted square energy remains positive, so the square-energy source is sufficient-only.

## Adapter

The source constructs

```lean
coreGrowingShiftPrefixSquareEnergySource
coreGrowingShiftPrefixSquareEnergyAdapter
```

as a concrete value of the growing-shift adapter interface from #688.

## Proof classification

- exact finite reindexing of the anchor and tail;
- deterministic reciprocal first-difference estimates;
- two finite Cauchy--Schwarz inequalities;
- exact dyadic cardinality bounds;
- conditional analytic reduction.

## Positivity classification

The binary-prefix packet remains signed. Positive semidefiniteness appears only in the auxiliary square energies after exact packet reconstruction. The resulting positive source is stronger than signed cancellation and is not claimed equivalent.

## Failure and information-loss boundary

- Fixed-shift terminal cancellation does not control this active-cell energy.
- Shift-averaged or logarithmically averaged estimates need explicit adapters.
- Termwise absolute values or maxima over all prefixes are stronger than this source.
- The square-energy source may fail even when the signed packet cancels; the hostile witness records this non-converse.

## Remaining obstruction

Prove the averaged active binary-prefix square-energy bound, or construct an even more source-faithful dispersion estimate that controls the signed weighted packet without paying the complete positive square energy.

## Nonclaims

No averaged square-energy theorem, Chowla theorem, corrected Elliott theorem, dispersion theorem, Lean/Lake execution, elaboration, kernel acceptance, trust audit, external replay, merge, or RH proof is claimed.
