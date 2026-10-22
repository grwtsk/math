# Active growing-shift quartic compensation

Issue: #713. Parent quadratic-envelope adapter: #707 / draft PR #709.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / QUARTIC_OFF_DIAGONAL_COMPENSATION_OPEN**.

## Terminal consumer

The inherited consumer is

```lean
riemannHypothesis_of_coreGrowingShiftPrefixSquareEnergy
```

through the exact growing-shift first-difference packet. Its unresolved input is

```lean
SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy.
```

This increment changes the arithmetic representation of that premise without claiming an estimate.

## Exact four-point rectangle

For

```text
M2(h,N) = sum_(a<N) mu(a+1) mu(a+1+h),
```

the source defines

```text
Q(h,a,b)
 = mu(a+1) mu(a+1+h)
   mu(b+1) mu(b+1+h)
```

and proves

```text
M2(h,N)^2 = sum_(a<N) sum_(b<N) Q(h,a,b).
```

The active binary-prefix square energy is therefore exactly the sum of these four-point rectangles over every genuine core depth and every active growing shift.

## Diagonal and off-diagonal

The rectangle is split as

```text
D(h,N) = sum_(a<N) Q(h,a,a),
O(h,N) = rectangle(h,N) - D(h,N).
```

At packet level:

```text
coreGrowingShiftBinaryPrefixSquareEnergy(j)
 = coreGrowingShiftQuarticDiagonalEnergy(j)
   + coreGrowingShiftQuarticOffDiagonalEnergy(j).
```

No positivity is assigned to the off-diagonal term.

Every diagonal cell is the square

```text
(mu(a+1) * mu(a+1+h))^2,
```

hence lies in `[0,1]`. Consequently

```text
D(h,N) <= N.
```

Using only

```text
harmonicShiftCount(j,t) <= 2^j,
t+1 <= 2^(j+1),
#coreLongDeepDepths(j) <= 2^(j+1),
```

the source obtains the coarse deterministic upper bound

```text
coreGrowingShiftQuarticDiagonalEnergy(j)
 <= 4 * (2^j)^3.
```

This is an upper bound, not a lower bound or an asymptotic formula.

## Exact compensation criterion

The source defines

```lean
SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation
```

requiring, for every `delta>0`, one `C>=0` such that

```text
OffDiagonal(j)
 <= (C * 2^j * (2^j)^delta)^2 - Diagonal(j)
```

for every scale.

It proves the exact equivalence

```text
SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation
  <->
SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy.
```

Thus the positive square-energy premise is precisely a signed four-point cancellation statement after its diagonal is made visible.

## Information-loss boundary

A finite hostile witness uses the sequence `(1,-1)`:

```text
(1-1)^2 = 0,
diagonal = 1^2+(-1)^2 = 2,
off-diagonal = -2.
```

Therefore a positive diagonal estimate alone does not control the total square; negative off-diagonal compensation may be essential. Conversely, replacing the signed off-diagonal by its absolute value destroys the required mechanism.

## External adapter boundary

The source types

```lean
GrowingShiftFourPointMobiusSource
ToCoreGrowingShiftQuarticCompensationAdapter
```

A growing-family four-point Chowla, corrected Elliott, large-sieve, or dispersion theorem may enter only by proving:

1. exact active range coverage;
2. the repository diagonal normalization;
3. signed off-diagonal cancellation with the required all-scale constant;
4. depth/multiplicity accounting;
5. finite small-scale control.

No named theorem is asserted to inhabit this adapter.

## Dependency path

```text
growing-family four-point source
  + exact compensation adapter
        -> quartic off-diagonal compensation
        <-> active binary-prefix square energy
        -> exact signed growing-shift first-difference packet
        -> inherited conditional RH endpoint.
```

## Proof classification

- exact finite algebra: prefix square to quartic rectangle;
- exact finite decomposition: diagonal plus off-diagonal;
- deterministic finite bounds: diagonal nonnegativity and coarse cubic upper bound;
- conditional analytic interface: off-diagonal compensation;
- no imported analytic estimate.

## Next obstruction

Prove one source-faithful signed estimate for the active off-diagonal four-point packet, or construct a direct signed dispersion estimate that bypasses the positive square-energy criterion.

## Nonclaims

No four-point Chowla theorem, corrected Elliott theorem, large-sieve estimate, off-diagonal bound, Lean/Lake replay, elaboration, kernel acceptance, trust audit, external replay, merge, or RH proof is claimed.
