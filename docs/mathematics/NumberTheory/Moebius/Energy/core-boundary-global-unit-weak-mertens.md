# Dyadic global unit Weak-Mertens collapse

Issue: #657. Parent unit-interval bridge: #651 / draft PR #652.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CLASSICAL_STEP_FUNCTION_IDENTITY_ONLY**.

## One global dyadic unit sum

The source defines
```lean
dyadicGlobalUnitWeakMertensEnergy
```
by
```text
sum_(0<=N<2^(j+1)) weakMertensUnitKernel(N).
```

## Exact multiplicity accounting

For `X=2^j`:
- the family `2X-u-1`, `u<X`, is exactly the upper half `[X,2X)`;
- the family `X-u-1` is exactly the lower half `[0,X)`.

Their two sums therefore equal the global dyadic unit energy exactly.

The third family `D-u` is bounded by one prefix of the same global sum. Any repeated terms created by natural subtraction occur only at prefix zero, where the unit kernel vanishes.

Hence
```text
boundaryLocalizedUnitWeakMertensEnergy(j)
 <= 2 * dyadicGlobalUnitWeakMertensEnergy(j).
```

## Global dyadic source

The source defines
```lean
DyadicGlobalUnitWeakMertensSource
```
with logarithmic growth
```text
dyadicGlobalUnitWeakMertensEnergy(j)
 <= C*(j+2).
```

It proves
```text
DyadicGlobalUnitWeakMertensSource
 -> BoundaryUnitIntervalWeakMertensSource
 -> SubpolynomialCoreBoundarySignedPacket.
```

## Remaining classical bridge

Only
```lean
ClassicalWeakMertensToDyadicGlobalUnitAdapter
```
remains. It must identify the conventional Mertens step-function integral with the global unit-interval sum and provide the standard logarithmic growth bound.

## Nonclaims

No classical Weak Mertens theorem, step-function identity, Lean/Lake replay, kernel acceptance, merge, or RH proof is claimed.
