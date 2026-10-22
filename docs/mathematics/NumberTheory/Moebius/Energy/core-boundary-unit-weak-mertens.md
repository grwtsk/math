# Unit-interval Weak-Mertens bridge

Issue: #651. Parent discrete weighted source: #641 / draft PR #646.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CLASSICAL_STEP_FUNCTION_IDENTITY_OPEN**.

## Exact positive unit interval

For every integer `N>=1`, the source defines
```lean
weakMertensUnitIntervalIntegral N
```
as
```text
integral_N^(N+1) M(N)^2 * x^-2 dx.
```

Using Mathlib's exact `intervalIntegral.integral_zpow`, it authors
```text
integral_N^(N+1) x^-2 dx
 = 1/N - 1/(N+1),
```
and therefore
```text
weakMertensUnitIntervalIntegral(N)
 =
M(N)^2 * (1/N - 1/(N+1)).
```

## Discrete weight extraction

The regularized weight from #641 satisfies
```text
M(N)^2/(N+1)^2
 <= M(N)^2 * (1/N - 1/(N+1))
```
for `N>=1`, while both sides vanish at `N=0` under the local convention.

## Localized unit-interval source

The source defines
```lean
boundaryLocalizedUnitWeakMertensEnergy
BoundaryUnitIntervalWeakMertensSource
```
on exactly the three prefix families occurring in the exceptional boundary packet.

It proves
```text
boundaryLocalizedWeightedMertensSquareEnergy
 <= boundaryLocalizedUnitWeakMertensEnergy,
```
hence
```text
BoundaryUnitIntervalWeakMertensSource
 -> DyadicWeightedWeakMertensBoundarySource
 -> SubpolynomialCoreBoundarySignedPacket.
```

## Remaining classical bridge

Only
```lean
ClassicalWeakMertensToBoundaryUnitIntervalAdapter
```
remains. It must supply:
1. the standard step-function identity for the conventional Mertens integral;
2. bounded multiplicity of the three localized prefix families inside the global unit-interval sum;
3. the classical logarithmic integral growth bound.

## Nonclaims

No classical Weak Mertens theorem, step-function identity, Lean/Lake replay, kernel acceptance, merge, or RH proof is claimed.
