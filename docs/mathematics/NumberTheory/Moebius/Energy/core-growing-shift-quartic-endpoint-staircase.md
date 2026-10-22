# Boolean endpoint drop and active staircase square energy

Issue: #793. Parent Stieltjes layer: #783 / draft PR #788 at exact head `0a193d650cb412f7b433a0a23552dc09060e9de6`.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ACTIVE_STAIRCASE_PREFIX_SQUARE_ENERGY_OPEN**.

## Terminal consumer

The inherited conditional endpoint consumes

```lean
SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy
```

through the exact growing-shift first-difference packet. PR #788 rewrote that positive energy as

```lean
coreGrowingShiftQuarticEndpointStieltjesSquareEnergy
```

using the first drop of the explicit endpoint-depth multiplicity.

This increment resolves that first-drop measure exactly.

## Exact interval endpoints

Write

```text
X = 2^j,
Y = 2^(j+1),
H = logarithmicShiftThreshold j.
```

For one positive shift `h`, define

```text
L_j(h) = max H (X-h-1),
U_j(h) = min (Y-H-1) (Y-h-1).
```

The endpoint-depth multiplicity from #771 is

```text
w_j(h,b) = U_j(h) - max(L_j(h),b)
```

with natural-number truncation, and it is zero at `h=0`.

The source introduces:

```lean
coreGrowingShiftQuarticEndpointStaircaseLower
coreGrowingShiftQuarticEndpointStaircaseUpper
coreGrowingShiftQuarticEndpointStaircaseSupport
```

where the support is exactly

```text
Ico (L_j(h)) (U_j(h))
```

for `h>0`, and empty for `h=0`.

## Boolean first drop

For the real-valued endpoint weight, the source authors

```text
w_j(h,b) - w_j(h,b+1)
 = 1,  if L_j(h) <= b < U_j(h),
 = 0,  otherwise.
```

The main declaration is:

```lean
coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_indicator
```

with the accompanying finite facts:

```lean
mem_coreGrowingShiftQuarticEndpointStaircaseSupport_iff
coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_zero_or_one
coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_le_one
```

Thus the positive measure introduced in #783 is not a fractional Carleson weight. It is ordinary counting measure on a finite staircase.

## Unweighted staircase energy

The source defines

```lean
coreGrowingShiftQuarticEndpointStaircaseSquareEnergy
```

as

```text
sum_(0 <= h < Y)
  sum_(b in Ico (L_j(h)) (U_j(h)))
    M_2(h,b+1)^2.
```

The support is proved to lie inside the ambient dyadic endpoint range.

The exact coordinate identity is

```lean
coreGrowingShiftQuarticEndpointStieltjesSquareEnergy_eq_staircase
```

or mathematically

```text
StieltjesSquareEnergy(j) = StaircaseSquareEnergy(j).
```

Combining this with #783 gives

```lean
coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStaircase
```

so the active square energy is now exposed as an ordinary unweighted mean square on a simple two-dimensional support.

## Source-facing premise

The new proposition is

```lean
SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy
```

requiring, for every `delta>0`,

```text
StaircaseSquareEnergy(j)
 <= (C_delta * 2^j * (2^j)^delta)^2.
```

The source authors the exact equivalences

```text
staircase square energy
  <-> Stieltjes square energy
  <-> active binary-prefix square energy.
```

The relevant declarations are:

```lean
subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_iff_stieltjes
subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_iff_prefixSquareEnergy
```

The inherited conditional endpoint is retained through

```lean
riemannHypothesis_of_coreGrowingShiftQuarticEndpointStaircaseSquareEnergy
```

No value of the premise is constructed.

## Analytic interfaces

A theorem already stated on the exact staircase may enter through

```lean
EndpointStaircasePrefixSquareSource
ToCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy
```

A larger dyadic prefix-square theorem requires a separate localization theorem through

```lean
DyadicPrefixSquareToEndpointStaircaseSource
ToCoreGrowingShiftQuarticEndpointStaircaseSquareEnergyFromDyadic
```

The load-bearing obligations remain exact staircase localization, active-shift coverage, all-scale uniformity, and finite small-scale control.

## Information boundary

The Stieltjes transform does not itself create analytic damping: its drop measure is `0/1`. Consequently, a generic weighted Carleson estimate cannot be claimed to improve the arithmetic scale unless it proves a substantive mean-square estimate on this staircase.

The coordinate change is exact and reversible. It neither proves nor weakens the active binary-prefix square-energy hypothesis.

## Next obstruction

Prove the explicit staircase mean-square estimate

```text
sum_(0 < h < 2^(j+1))
  sum_(max(H,2^j-h-1) <= b < min(2^(j+1)-H-1,2^(j+1)-h-1))
    M_2(h,b+1)^2
 <= (C_delta * 2^j * (2^j)^delta)^2,
```

or construct a source-faithful localization from a quantitative dyadic binary-prefix mean-square theorem.

## Nonclaims

No staircase mean-square estimate, Chowla theorem, corrected-Elliott theorem, Carleson theorem, Lean/Lake execution, elaboration, kernel acceptance, trust audit, external replay, merge, or RH proof is claimed.
