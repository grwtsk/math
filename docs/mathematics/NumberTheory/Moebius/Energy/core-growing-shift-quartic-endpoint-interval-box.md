# Signed endpoint-prefix interval box

Issue: #771. Parent endpoint-prefix layer: #765 / draft PR #769.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ENDPOINT_INTERVAL_WEIGHTED_BOX_COMPENSATION_OPEN**.

## Terminal consumer

The inherited terminal consumer is the conditional Riemann-hypothesis endpoint reached from

```lean
SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation.
```

The present increment changes only the finite coordinates of that source. It does not supply the analytic compensation estimate.

## Exact active source

An active endpoint-prefix occurrence is a triple `(t,k,b)` with

```text
t in coreLongDeepDepths(j),
k < harmonicShiftCount(j,t),
b < t+1.
```

It carries

```text
h = harmonicShiftLower(j,t)+k
```

and the signed value

```text
M_2(h,b) * mu(b+1) * mu(b+1+h).
```

The source defines

```lean
CoreGrowingShiftQuarticEndpointActiveCell
coreGrowingShiftQuarticEndpointActiveCells
coreGrowingShiftQuarticEndpointActiveCellBoxIndex
coreGrowingShiftQuarticEndpointActiveCellValue
```

without introducing an absolute value.

## Finite histogram identity

Every active shift and endpoint lies in the fixed box

```text
0 <= h,b < 2^(j+1).
```

For one box coordinate `(h,b)`, the literal fiber cardinality is

```lean
coreGrowingShiftQuarticEndpointDepthMultiplicity j (h,b).
```

Finite fiberwise summation gives the exact identity

```text
coreGrowingShiftQuarticEndpointPrefixEnergy(j)
 = sum_(h,b<2^(j+1))
     endpointDepthMultiplicity(j,h,b)
     * M_2(h,b) * mu(b+1) * mu(b+1+h).
```

This is authored through

```lean
coreGrowingShiftQuarticEndpointPrefixEnergy_eq_activeCells
coreGrowingShiftQuarticEndpointActiveCellEnergy_eq_multiplicityBox
coreGrowingShiftQuarticEndpointPrefixEnergy_eq_multiplicityBox.
```

No triangle inequality, Cauchy--Schwarz inequality, support enlargement, or supremum replacement occurs.

## Exact depth support

Write

```text
X = 2^j,
Y = 2^(j+1),
H = logarithmicShiftThreshold(j).
```

For a positive shift `h`, one depth contributes to `(h,b)` exactly when

```text
H <= t < Y-H-1,
X-h-1 <= t < Y-h-1,
b <= t.
```

Therefore the depth support is

```text
Ico
  (max H (max b (X-h-1)))
  (min (Y-H-1) (Y-h-1)).
```

For `h=0`, the support is empty because every active harmonic shift is positive.

The source constructs a finite bijection from the literal `(t,k,b)` fiber to this depth interval. At a fixed depth, the shift equation forces

```text
k = h - harmonicShiftLower(j,t).
```

The relevant declarations are

```lean
coreGrowingShiftQuarticEndpointDepthSupport
coreGrowingShiftQuarticEndpointExplicitDepthLower
coreGrowingShiftQuarticEndpointExplicitDepthUpper
coreGrowingShiftQuarticEndpointExplicitDepthSupport
coreGrowingShiftQuarticEndpointDepthSupport_eq_explicit
coreGrowingShiftQuarticEndpointDepthMultiplicity_eq_supportCard.
```

## Explicit interval multiplicity

The literal fiber cardinality is exactly

```text
min(Y-H-1,Y-h-1)
-
max(H,b,X-h-1)
```

when `h>0`, with natural subtraction supplying zero for an empty interval. It is zero when `h=0`.

This is represented by

```lean
coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity
coreGrowingShiftQuarticEndpointDepthMultiplicity_eq_explicit
coreGrowingShiftQuarticEndpointDepthMultiplicity_shift_zero
coreGrowingShiftQuarticEndpointExplicitDepthMultiplicity_eq_zero_of_upper_le_lower.
```

## Explicit interval-weighted endpoint box

The source defines

```lean
coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy
```

as

```text
sum_(h,b<Y)
  [min(Y-H-1,Y-h-1)-max(H,b,X-h-1)]_+
  * M_2(h,b) * mu(b+1) * mu(b+1+h),
```

with zero shift removed by the piecewise multiplicity.

It proves

```text
coreGrowingShiftQuarticEndpointPrefixEnergy
 = coreGrowingShiftQuarticEndpointExplicitIntervalWeightedBoxEnergy.
```

Thus the former depth/offset multiplicity is no longer an abstract transport obligation.

## Canonical source and dependency path

The new source-facing proposition is

```lean
SubpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation.
```

It keeps the positive quartic diagonal visible and asks for

```text
2 * endpointIntervalBox(j)
 <= (C_delta * 2^j * (2^j)^delta)^2
    - coreGrowingShiftQuarticDiagonalEnergy(j).
```

The source proves the exact equivalence

```text
endpoint explicit-interval compensation
        <->
endpoint-prefix compensation
        <->
quartic off-diagonal compensation
        <->
active binary-prefix square energy.
```

The conditional path is

```text
SubpolynomialCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation
        ↓
SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation
        ↓
SubpolynomialCoreGrowingShiftFirstDifferencePacket
        ↓
conditional RH endpoint.
```

The routed endpoint is

```lean
riemannHypothesis_of_coreGrowingShiftQuarticEndpointExplicitIntervalCompensation.
```

## Analytic boundaries

A theorem already stated on the exact signed box may enter through

```lean
EndpointExplicitIntervalWeightedBoxSource
ToCoreGrowingShiftQuarticEndpointExplicitIntervalCompensation.
```

A Carleson, martingale, or summation-by-parts theorem may enter through

```lean
EndpointExplicitIntervalCarlesonSource
ToCoreGrowingShiftQuarticEndpointExplicitIntervalCompensationFromCarleson.
```

The latter must separately supply:

```text
summation-by-parts identity,
explicit interval-weight Carleson control,
prefix-energy control,
endpoint-increment control,
endpoint-sign preservation,
all-scale uniformity,
finite small-scale control.
```

The sign-preservation field is load-bearing. A termwise absolute majorant does not reconstruct cancellation between endpoint-prefix cells.

## Positivity classification

No positivity is proved for the endpoint box. The box is signed. The only positive object retained in the compensation statement is the already identified quartic diagonal.

## Failure and information-loss boundaries

- Replacing the interval multiplicity by `2^(j+1)` creates a stronger unsigned majorant and discards depth geometry.
- Taking absolute values before summing over `(h,b)` destroys endpoint-prefix cancellation.
- A prefix square-energy theorem is sufficient through the established equivalence, but it is not the only possible route to the signed compensation.
- A Carleson or martingale estimate must control the exact scale-dependent interval weight, not merely an unweighted rectangular box.

## Nonclaims

No endpoint-prefix estimate, Carleson estimate, martingale estimate, Chowla theorem, Lean/Lake replay, elaboration, kernel acceptance, trust audit, external replay, merge, or proof of the Riemann hypothesis is claimed.

## Next obstruction

Prove the signed all-scale estimate for

```text
sum_(h,b<2^(j+1))
  [min(Y-H-1,Y-h-1)-max(H,b,X-h-1)]_+
  * M_2(h,b) * mu(b+1) * mu(b+1+h),
```

with the visible quartic diagonal compensation, or construct a source-faithful sign-preserving Carleson/summation-by-parts adapter for this exact interval weight.
