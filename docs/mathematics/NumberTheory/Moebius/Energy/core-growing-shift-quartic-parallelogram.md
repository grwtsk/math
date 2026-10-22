# Active quartic collision-free packet in affine parallelogram coordinates

Issue: #739. Parent centered collision layer: #733 / draft PR #736.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / AFFINE_PARALLELOGRAM_BUDGET_OPEN**.

## Selected bounded increment

The parent packet separates the quartic off-diagonal into:

- a repeated-middle collision line;
- a collision-free upper-triangle family.

This increment changes only the coordinates of the collision-free family. It proves no analytic estimate.

## Affine parallelogram cell

For positive side coordinates `h` and `d`, define

```text
P(h,d,a)
 = mu(a+1) mu(a+1+h)
   mu(a+1+d) mu(a+1+d+h).
```

The four affine arguments are the vertices of the additive parallelogram

```text
a+1             a+1+h
  |                 |
a+1+d           a+1+d+h.
```

The source proves

```text
mertensTwoPointQuarticCell(h,a,a+d) = P(h,d,a).
```

## Exact upper-triangle bijection

On the collision-free upper triangle, put

```text
d = b-a.
```

The source drafts the exact equivalence

```text
a<b<N and b!=a+h
  <->
1<=d<N and d!=h and a<N-d,
```

with inverse `b=a+d`.

Consequently,

```text
mertensTwoPointQuarticCollisionFreeUpper(h,N)
 = sum_(1<=d<N, d!=h)
     sum_(a<N-d) P(h,d,a).
```

No absolute value, square, asymptotic approximation, or support enlargement is introduced.

## Collision diagonal

The source also proves

```text
P(h,h,a)
 = mu(a+1) mu(a+1+h)^2 mu(a+1+2h).
```

Thus the excluded separation diagonal `d=h` is exactly the repeated-middle collision line treated by the centered squarefree source in #733. It is not an unpriced exceptional set.

The coordinate split is therefore:

```text
d=h     -> repeated-middle squarefree collision line
d!=h    -> four-distinct affine parallelogram family.
```

## Active packet

The source defines

```lean
coreGrowingShiftQuarticParallelogramEnergy
```

and proves the exact identity

```text
coreGrowingShiftQuarticCollisionFreeEnergy(j)
 = coreGrowingShiftQuarticParallelogramEnergy(j).
```

Every genuine core depth, active shift, prefix endpoint, and multiplicity is retained.

## Source-facing budget

The module defines

```lean
SubpolynomialCoreGrowingShiftQuarticParallelogramBudget
```

requiring, for every positive `delta`, one constant `C_delta` such that

```text
2 * coreGrowingShiftQuarticParallelogramEnergy(j)
 <= (C_delta * 2^j * (2^j)^delta)^2
```

at every scale.

It proves exact equivalence with

```lean
SubpolynomialCoreGrowingShiftQuarticCollisionFreeBudget.
```

Thus the coordinate change introduces no analytic loss or strengthening.

## Conditional endpoint

The source drafts

```lean
riemannHypothesis_of_centeredCollision_and_parallelogram
```

with dependency path

```text
centered squarefree collision-line compensation
+
affine parallelogram budget
        ↓
collision-separated quartic compensation
        ↓
active prefix-square source
        ↓
signed growing-shift first-difference packet
        ↓
conditional RH endpoint.
```

Both arithmetic premises remain open.

## External source boundaries

The module adds two proof-producing interfaces.

### Direct affine-parallelogram theorem

```lean
GrowingAffineParallelogramSource
ToCoreGrowingShiftQuarticParallelogramBudget
```

A valid source must retain:

- positive `h`;
- positive `d`;
- exclusion of `d=h`;
- ordinary prefix control;
- triangular support `a<N-d`;
- active depth multiplicity;
- all-scale uniformity;
- finite small scales.

### Full-box `U^2` or Fourier dispersion

```lean
FullBoxU2ToActiveParallelogramSource
ToCoreGrowingShiftQuarticParallelogramBudgetFromU2
```

A full-box theorem does not inhabit the active source by naming alone. It must prove:

- localization to the triangular prefix region;
- removal or separate payment of zero separation;
- removal or separate payment of `d=h`;
- transport of active depth multiplicities;
- all-scale constants;
- finite small-scale control.

## Positivity and information loss

The parallelogram packet remains signed. Taking termwise absolute values or bounding each fixed `(h,d)` family independently is a stronger sufficient statement and may destroy cancellation across separations, shifts, and depths.

The exact reindex does not assert that a global `U^2` norm, ordinary four-point Chowla theorem, averaged higher-order theorem, or fixed-form corrected Elliott theorem supplies the repository target.

## Nonclaims

No four-point Chowla estimate, higher-Elliott estimate, `U^2` estimate, Fourier-dispersion estimate, Lean/Lake execution, elaboration, kernel acceptance, trust audit, external replay, merge, or RH proof is claimed.

## Next obstruction

Prove an all-scale estimate for the exact active affine parallelogram family

```text
sum_(core depths t)
sum_(active h)
sum_(1<=d<t+1, d!=h)
sum_(a<t+1-d)
  mu(a+1)mu(a+1+h)mu(a+1+d)mu(a+1+d+h),
```

with the repository's exact multiplicities and normalization, or prove a localization theorem from a quantitative full-box `U^2`/dispersion source.
