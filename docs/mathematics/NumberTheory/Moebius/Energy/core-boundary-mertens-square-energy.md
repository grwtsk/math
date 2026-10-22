# Boundary Mertens square-energy localization

Issue: #634. Parent quadratic comparison: #609 / draft PR #610.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / WEAK_MERTENS_LOCALIZATION_ADAPTER_OPEN**.

## Boundary depth interval

On scales satisfying
```text
logarithmicShiftThreshold(j) <= 2^j,
```
the exceptional boundary depths are exactly
```text
[ logarithmicShallowDepthCount(j), 2^j-1 ).
```

## Tail as a classical Mertens difference

For every `u<2^j`, the signed boundary tail is proved exactly equal to
```text
M(2^j-u-1) - M(logarithmicShallowDepthCount(j)-u).
```

Together with #609,
```text
boundaryMovingWindowMertens(j,u)
 =
M(2^(j+1)-u-1) - M(2^j-u-1),
```
both factors in the Cauchy majorant are therefore ordinary Mertens-prefix differences.

## One localized square energy

The source defines
```lean
boundaryLocalizedMertensSquareEnergy
```
as the sum over `u<2^j` of the three Mertens-prefix squares appearing in those two differences.

It proves
```text
boundaryMovingWindowSquareEnergy
  <= 2 * boundaryLocalizedMertensSquareEnergy
```
and, on the asymptotic boundary regime,
```text
boundaryTailSquareEnergy
  <= 2 * boundaryLocalizedMertensSquareEnergy.
```

Thus no additional arithmetic object is needed to control either Cauchy factor.

## Natural-scale source

The source types
```lean
SubpolynomialBoundaryLocalizedMertensSquareEnergy
```
at the natural dyadic scale
```text
localized energy <= C_delta * X^2 * X^delta,
X=2^j.
```

This is the discrete scale suggested by Weak-Mertens-type mean-square control.

## Adapter boundary

The source explicitly retains two missing bridges:
- `WeakMertensToBoundaryLocalizedEnergyAdapter`: integral/global Weak Mertens -> discrete localized energy;
- `BoundaryLocalizedEnergyNormalizationAdapter`: localized energy + exact terminal-drop normalization -> the quadratic boundary supplier.

No named classical conjecture is promoted to either adapter.

## Interpretation

This scale test does not reproduce the #460 singleton-mass obstruction. Both square energies reduce to a single classical Mertens prefix-square statistic of natural size. That makes the Weak Mertens comparison structurally plausible, but still conditional on an actual localization theorem.

## Nonclaims

No Weak Mertens theorem, localization adapter, normalization adapter, Lean/Lake replay, merge, or RH proof is claimed.
