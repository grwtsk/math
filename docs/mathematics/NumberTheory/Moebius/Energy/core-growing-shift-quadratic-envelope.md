# Quadratic shift envelopes supply active growing-shift energy

Issue: #707. Parent active prefix-square energy: #699 / draft PR #703.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / QUADRATIC_TWO_POINT_SOURCE_OPEN**.

## Terminal consumer

The terminal source-facing declaration is

```lean
SubpolynomialCoreGrowingShiftFirstDifferencePacket
```

which is exactly equivalent to the inherited RH-facing core long-remainder supplier and therefore has the existing conditional RH endpoint.

This increment does not prove that source. It constructs one deterministic adapter from an existing stronger repository interface.

## Selected source

The source is

```lean
SubpolynomialDyadicQuadraticMertensTwoPointPrefix
```

from `DyadicQuadraticMertensTwoPointPrefix.lean`.

At one scale `j`, its finite witness consists of nonnegative shift-wise envelopes `U(h)` satisfying:

```text
|mertensTwoPointPrefix(h,N)| <= U(h)
```

for every positive shift `h<2^(j+1)` and every admissible prefix length, together with

```text
sum_(1<=h<2^(j+1)) U(h)^2
  <= B^2 * 2^(j+1).
```

No external theorem is asserted to provide these envelopes.

## Active-cell admissibility

For every active growing-shift cell `(t,k)`, let

```text
h = harmonicShiftLower(j,t)+k.
```

The exact harmonic support proves:

```text
1 <= h < 2^(j+1),
t+1 <= 2^(j+1)-h-1.
```

Thus the existing shift envelope controls the exact prefix consumed by the RH-facing packet:

```text
mertensTwoPointPrefix(h,t+1)^2 <= U(h)^2.
```

## One-depth subset bound

At a fixed depth, the active shifts form the contiguous interval

```text
[harmonicShiftLower(j,t), harmonicShiftUpper(j,t)),
```

which is a subset of `[1,2^(j+1))`.

The source proves

```text
coreGrowingShiftBinaryPrefixSquareDepth(j,t)
 <= sum_(1<=h<2^(j+1)) U(h)^2.
```

This comparison retains every sampled prefix square but does not introduce a maximum over the active cells.

## Scale-level comparison

There are at most `2^(j+1)` genuine core depths. Therefore

```text
coreGrowingShiftBinaryPrefixSquareEnergy(j)
 <= 2^(j+1) * sum_h U(h)^2
 <= (B * 2^(j+1))^2.
```

Writing `X=2^j` gives

```text
coreGrowingShiftBinaryPrefixSquareEnergy(j)
 <= (2 * B * X)^2.
```

Consequently the all-scale implication is

```lean
SubpolynomialDyadicQuadraticMertensTwoPointPrefix
  -> SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy
  -> SubpolynomialCoreGrowingShiftFirstDifferencePacket.
```

The first implication has constant loss two. The second is the finite Cauchy comparison from #699.

## Concrete adapter

The source constructs

```lean
dyadicQuadraticTwoPointToCoreGrowingShiftAdapter
```

and authors the routed conditional endpoint

```lean
riemannHypothesis_of_quadraticTwoPoint_via_coreGrowingShift.
```

## Proof classification

- active-cell endpoint checks: exact finite arithmetic;
- depth support comparison: exact finite reindexing and subset monotonicity;
- scale comparison: finite nonnegative summation;
- source transport: conditional reduction;
- RH endpoint: inherited conditional theorem.

## Positivity classification

The new positive object is the finite square energy

```lean
coreGrowingShiftBinaryPrefixSquareEnergy.
```

It is used only as a sufficient majorant after the exact signed growing-shift packet has already been reconstructed. No converse from the signed packet to this square energy is asserted.

## Information-loss boundary

The quadratic shift source is still stronger than the active sampled energy:

- it controls every admissible prefix at every positive dyadic shift through a shift-wise supremum envelope;
- the active energy samples only prefixes arising from genuine `(depth,active-shift)` cells;
- an active-energy bound does not reconstruct unused prefix suprema or the envelope family `U(h)`.

## RH consequence

Conditional only:

```text
SubpolynomialDyadicQuadraticMertensTwoPointPrefix
        -> averaged active prefix-square energy
        -> exact signed growing-shift packet
        -> inherited conditional RH endpoint.
```

No quadratic envelope, binary Chowla theorem, corrected Elliott theorem, large-sieve theorem, dispersion estimate, or RH theorem is proved here.

## Next obstruction

Prove or import, with exact quantifiers, the existing source

```lean
SubpolynomialDyadicQuadraticMertensTwoPointPrefix,
```

or construct a still weaker direct estimate for the active sampled square energy or signed weighted packet.
