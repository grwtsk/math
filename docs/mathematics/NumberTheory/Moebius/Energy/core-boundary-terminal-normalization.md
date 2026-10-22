# Boundary terminal-drop normalization

Issue: #639. Parent localized Mertens energy: #634 / draft PR #636.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / WEAK_MERTENS_LOCALIZATION_ADAPTER_ONLY**.

## Exact terminal drop

For `X=2^j`, the source proves
```text
boundaryTerminalDrop(j)
 = 1 / ((2X-1)*(2X)).
```

Hence
```text
0 <= 2*boundaryTerminalDrop(j) <= X^-2,
```
and therefore
```text
(2*boundaryTerminalDrop(j))^2 <= X^-4.
```

## Small scales

For `j<2`, the exceptional boundary depth set is empty. The boundary-tail square energy is therefore zero, so the quadratic boundary product vanishes without invoking the asymptotic boundary interval theorem.

## Normalization closure

For `j>=2`, #634 gives
```text
E_W <= 2 E_M,
E_T <= 2 E_M.
```

If
```text
E_M <= C_delta * X^2 * X^delta,
```
then
```text
(2*drop)^2 * E_W * E_T
 <= X^-4 * 4 * E_M^2
 <= (2*C_delta*X^delta)^2.
```

The source therefore proves
```lean
SubpolynomialBoundaryLocalizedMertensSquareEnergy
  -> SubpolynomialBoundaryQuadraticEnergyProduct
  -> SubpolynomialCoreBoundarySignedPacket.
```

## Adapter closure

The deterministic
```lean
boundaryLocalizedEnergyNormalizationAdapter
```
is now constructed as an actual source value.

The only remaining conjectural bridge on this boundary route is the localization from a classical/global Weak-Mertens-type statement to the discrete localized Mertens square energy.

## Nonclaims

No Weak Mertens localization theorem, Lean/Lake replay, kernel acceptance, merge, or RH proof is claimed.
