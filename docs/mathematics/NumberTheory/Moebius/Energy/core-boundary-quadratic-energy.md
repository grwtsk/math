# Boundary quadratic-energy comparison

Issue: #609. Parent exact boundary adapter: #605 / draft PR #606.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / BOUNDARY_QUADRATIC_ENERGY_SUPPLIER_OPEN**.

## Ordinary Mertens prefixes

The source defines
```lean
mertensPrefixReal
```
with
```text
M(N) = sum_(1<=m<=N) μ(m).
```

For every `u<2^j`, the moving boundary window is exactly
```text
boundaryMovingWindowMertens(j,u)
 = M(2^(j+1)-u-1) - M(2^j-u-1).
```

Thus the moving-window factor is an ordinary Mertens prefix difference, not a new arithmetic object.

## Boundary square energies

The source defines
```lean
boundaryMovingWindowSquareEnergy
boundaryTailSquareEnergy
```
by
```text
E_W(j) = sum_(u<2^j) W_j(u)^2
E_T(j) = sum_(u<2^j) T_j(u)^2.
```

Finite Cauchy--Schwarz gives
```text
boundaryMovingWindowBilinearPacket(j)^2
 <= E_W(j) * E_T(j).
```

Using the exact signed boundary factorization from #605:
```text
coreBoundarySignedPacket(j)^2
 <= (2*boundaryTerminalDrop(j))^2 * E_W(j) * E_T(j).
```

## Sufficient-only quadratic supplier

The source defines
```lean
SubpolynomialBoundaryQuadraticEnergyProduct
```
for the Cauchy majorant and proves
```text
SubpolynomialBoundaryQuadraticEnergyProduct
 -> SubpolynomialCoreBoundarySignedPacket.
```

No converse is asserted. This is important because the positive quadratic product can be strictly stronger than cancellation in the original signed bilinear form.

## Weak Mertens / Gonek--Hejhal boundary

The source adds:
```lean
ToBoundaryQuadraticEnergyAdapter
WeakMertensStyleSource
GonekHejhalBoundarySource
```

These are source-facing interfaces only. No named classical conjecture or literature result is asserted to inhabit an adapter.

A valid bridge must still prove:
1. localization from global/prefix Mertens control to the moving-window square energy;
2. control of the boundary-tail square energy;
3. for a spectral source, an explicit-formula/localization theorem.

## Nonclaims

No Weak Mertens theorem, Gonek--Hejhal theorem, localization adapter, Lean/Lake replay, kernel acceptance, merge, or RH proof is claimed.
