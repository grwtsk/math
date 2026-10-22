# Discrete weighted Weak-Mertens localization

Issue: #641. Parent terminal normalization: #639 / draft PR #640.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CLASSICAL_WEAK_MERTENS_TO_DISCRETE_ADAPTER_OPEN**.

## Regularized weighted prefixes

The source defines
```lean
weightedMertensPrefixSquare
```
by
```text
M(N)^2 / (N+1)^2.
```

The `N+1` denominator avoids an artificial singularity at the zero prefix and is harmless for classical Weak-Mertens comparison.

## Exact weighted localized statistic

The source defines
```lean
boundaryLocalizedWeightedMertensSquareEnergy
```
using exactly the three prefix families already present in the boundary localized energy.

Every sampled prefix satisfies
```text
N+1 <= 2^(j+1).
```

Therefore
```text
boundaryLocalizedMertensSquareEnergy(j)
 <= (2^(j+1))^2
    * boundaryLocalizedWeightedMertensSquareEnergy(j).
```

## Discrete weighted source

The source defines
```lean
DyadicWeightedWeakMertensBoundarySource
```
requiring one constant C such that
```text
boundaryLocalizedWeightedMertensSquareEnergy(j)
 <= C*(j+2)
```
for every dyadic scale.

Using the existing dyadic logarithm-absorption theorem, the source proves
```text
DyadicWeightedWeakMertensBoundarySource
 ->
SubpolynomialBoundaryLocalizedMertensSquareEnergy
 ->
SubpolynomialCoreBoundarySignedPacket.
```

Thus the boundary packet is supplied by a discrete weighted Weak-Mertens statement with only logarithmic growth.

## Adapter closure

The source constructs
```lean
discreteWeightedWeakMertensToBoundaryLocalizedEnergyAdapter
```
as an actual source value.

The only remaining Weak-Mertens bridge is
```lean
ClassicalWeakMertensToDiscreteBoundaryAdapter
```
which must convert a classical integral/global Weak-Mertens formulation into the exact regularized discrete weighted statistic.

## Nonclaims

No classical Weak Mertens theorem, integral-to-discrete localization theorem, Lean/Lake replay, merge, or RH proof is claimed.
