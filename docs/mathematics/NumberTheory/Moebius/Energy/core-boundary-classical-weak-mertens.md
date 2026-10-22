# Classical Weak Mertens step-function identity

Issue: #666. Parent global unit source: #657 / draft PR #659.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CLASSICAL_WEAK_MERTENS_SOURCE_OPEN**.

## Conventional Mertens step function

The source defines

```lean
classicalMertensStepFunction
```

by

```text
M_step(x) = M(floor x)
```

on the nonnegative half-line. On every half-open unit interval `[N,N+1)`, it is exactly `mertensPrefixReal N`; endpoint discrepancies are null-set only.

The corresponding classical integrand is

```text
M_step(x)^2 * x^(-2).
```

## Exact unit-interval identity

For every positive integer `N`, the source authors

```text
integral_N^(N+1) M_step(x)^2 * x^(-2) dx
 = weakMertensUnitKernel(N).
```

This uses the exact inverse-square integral already established in #651.

## Exact finite global identity

Adjacent unit intervals give, for every integer `Y>=1`,

```text
integral_1^Y M_step(x)^2 * x^(-2) dx
 = sum_(1<=N<Y) weakMertensUnitKernel(N).
```

Since the `N=0` kernel is zero, the dyadic global unit energy satisfies

```text
dyadicGlobalUnitWeakMertensEnergy(j)
 = classicalWeakMertensStepIntegral(2^(j+1)).
```

## Classical source and completed adapter

The source defines

```lean
ClassicalWeakMertensStepSource
```

as the exact dyadic logarithmic-growth statement

```text
integral_1^(2^(j+1)) M_step(x)^2 * x^(-2) dx
 <= C*(j+2).
```

It proves this source supplies

```lean
DyadicGlobalUnitWeakMertensSource
```

with no loss and constructs

```lean
classicalWeakMertensStepToDyadicGlobalUnitAdapter.
```

Consequently the classical step source supplies the exceptional signed boundary packet through the complete finite localization chain.

## Remaining obstruction

Only the truth or imported proof of `ClassicalWeakMertensStepSource` remains on this boundary branch. No localization or finite comparison adapter remains.

## Nonclaims

No classical Weak Mertens proof, Lean/Lake replay, kernel acceptance, merge, or RH proof is claimed.
