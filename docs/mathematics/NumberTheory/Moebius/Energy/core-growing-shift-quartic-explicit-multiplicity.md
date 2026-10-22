# Explicit interval formula for quartic depth multiplicity

Issue: #755. Parent weighted-box layer: #746 / draft PR #748.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXPLICIT_INTERVAL_WEIGHTED_BOX_BUDGET_OPEN**.

## Terminal consumer

The inherited conditional endpoint is

```lean
riemannHypothesis_of_centeredCollision_and_multiplicityBox
```

It consumes:

1. centered squarefree collision-line compensation;
2. a subpolynomial budget for the multiplicity-weighted affine parallelogram box.

The second premise was previously written using the fiber-cardinality weight

```lean
coreGrowingShiftQuarticDepthMultiplicity.
```

This increment resolves that weight exactly.

## Exact core-depth interval

Let

```text
X = 2^j,
Y = 2^(j+1),
H = logarithmicShiftThreshold(j) = j+2.
```

The source authors

```text
coreLongDeepDepths(j) = Ico H (Y-H-1).
```

For `j>=2`, this follows from the piecewise formula for the active shift count:

```text
harmonicShiftCount(j,t) = X
```

when `t+1<X`, and

```text
harmonicShiftCount(j,t) = Y-t-2
```

when `X<=t+1`.

The two smaller scales are checked separately. No asymptotic replacement is used.

## Exact support of one affine coordinate

For one box coordinate `(h,d,a)`, the literal source fiber contains the depths `t` satisfying:

```text
t in coreLongDeepDepths(j),
harmonicShiftLower(j,t) <= h < harmonicShiftUpper(j,t),
1 <= d < t+1,
d != h,
a < t+1-d.
```

When `h>0`, the active-shift condition is exactly

```text
X-h-1 <= t < Y-h-1.
```

The separation/base condition is exactly

```text
0<d,
d!=h,
a+d <= t.
```

Therefore, when `0<h`, `0<d`, and `d!=h`, the depth support is

```text
Ico
  (max H (max (a+d) (X-h-1)))
  (min (Y-H-1) (Y-h-1)).
```

For `h=0`, `d=0`, or `d=h`, the support is empty.

## Fiber-to-depth bijection

The module constructs the finite bijection from the literal source fiber

```text
(t,k,d,a)
```

of #746 to the depth support above.

Projection to `t` is injective because, for fixed `h`,

```text
k = h - harmonicShiftLower(j,t)
```

is forced. Conversely, every supported depth produces this unique active offset.

Thus

```text
coreGrowingShiftQuarticDepthMultiplicity(j,h,d,a)
 = card(coreGrowingShiftQuarticDepthSupport(j,h,d,a)).
```

## Explicit multiplicity formula

The source defines

```lean
coreGrowingShiftQuarticExplicitDepthMultiplicity
```

and authors the exact formula

```text
m_j(h,d,a)
 = if 0<h and 0<d and d!=h then
     min (Y-H-1) (Y-h-1)
       - max H (max (a+d) (X-h-1))
   else 0.
```

This is a natural-number interval length, so it automatically vanishes when the lower endpoint reaches the upper endpoint.

The explicit zero-face theorems are:

```lean
coreGrowingShiftQuarticDepthMultiplicity_shift_zero
coreGrowingShiftQuarticDepthMultiplicity_separation_zero
coreGrowingShiftQuarticDepthMultiplicity_collisionDiagonal
```

The `d=h` zero is the collision-free box exclusion. The repeated-middle family remains in the separate centered squarefree collision packet.

## Exact weighted-box replacement

The source defines

```lean
coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy
```

by

```text
sum_(h,d,a<Y)
  explicitMultiplicity(j,h,d,a)
  * mu(a+1)mu(a+1+h)mu(a+1+d)mu(a+1+d+h).
```

It authors

```text
coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy(j)
 = coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy(j).
```

No absolute value, supremum, support enlargement, or replacement of the weight by `Y` occurs.

## Source equivalence

The source-facing premise is now

```lean
SubpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget.
```

It is proved exactly equivalent to

```lean
SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget.
```

Hence the dependency path is

```text
centered squarefree collision-line compensation
+
explicit interval-weighted affine box budget
        ↓
multiplicity-weighted affine box budget
        ↓
affine parallelogram budget
        ↓
collision-separated quartic compensation
        ↓
active binary-prefix square energy
        ↓
signed growing-shift packet
        ↓
conditional RH endpoint.
```

## Why this matters for `U^2` or Fourier localization

The load-bearing weight is now explicit:

```text
min (Y-H-1) (Y-h-1)
 - max H (max (a+d) (X-h-1)).
```

A full-box theorem must therefore transport through a truncated interval-length weight depending jointly on `(h,d,a)`. The former generic phrase “depth multiplicity” is no longer an unresolved combinatorial object.

A future localization theorem may exploit:

- monotonicity in the base-plus-separation coordinate `a+d`;
- the lower active-shift boundary `X-h-1`;
- the terminal depth boundary `Y-H-1`;
- the right shift boundary `Y-h-1`;
- exact removal of `h=0`, `d=0`, and `d=h`.

This increment does not prove such a localization theorem.

## Proof classification

- core-depth interval: exact finite arithmetic and case split;
- active-shift support: exact natural-number inequalities;
- source-fiber/depth identification: finite bijection;
- multiplicity formula: exact finite cardinality;
- box-energy equality: exact finite substitution;
- RH implication: conditional, inherited.

## Sign classification

The multiplicity is a nonnegative integer weight, but the affine Möbius cell remains signed. The complete weighted box is not asserted to be nonnegative.

The source does not replace

```text
sum m_j(h,d,a) P(h,d,a)
```

by

```text
sum m_j(h,d,a) |P(h,d,a)|.
```

## Failure and information-loss boundaries

1. Replacing the explicit interval length by the coarse bound `Y` is sufficient-only and may destroy useful geometry.
2. A fixed `(h,d)` four-point theorem does not provide one all-scale weighted-box estimate.
3. An unweighted full-box `U^2` theorem does not automatically absorb the joint `(h,d,a)` interval weight.
4. The face `d=h` cannot be restored here; it is the separate squarefree-midpoint collision line.
5. The face `h=0` would restore omitted diagonal behavior and is not part of the active packet.

## New interfaces

```lean
ExplicitIntervalWeightedParallelogramSource
ToCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget

FullBoxU2ExplicitIntervalLocalizationSource
ToCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudgetFromU2
```

The second interface keeps the explicit interval-weight localization theorem separate from full-box control and from the excluded faces.

## Nonclaims

No full-box `U^2` estimate, Fourier dispersion estimate, four-point Chowla estimate, weighted localization theorem, Lean/Lake replay, elaboration, kernel acceptance, trust audit, merge, or RH proof is claimed.

## Next obstruction

Prove a quantitative estimate for the exact interval-weighted signed box, or prove a source-faithful localization theorem transporting an existing full-box `U^2`/Fourier estimate through this explicit piecewise-linear weight.