# Multiplicity-weighted dyadic box for the active quartic packet

Issue: #746. Parent affine parallelogram layer: #739 / draft PR #741.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / MULTIPLICITY_WEIGHTED_BOX_BUDGET_OPEN**.

## Objective

The collision-free branch from #739 is already an exact affine parallelogram family

\[
P(h,d,a)=\mu(a+1)\mu(a+1+h)\mu(a+1+d)\mu(a+1+d+h),
\]

summed over active core depths, active shifts, positive separations \(d\ne h\), and the triangular base range \(a<t+1-d\).

A full-box \(U^2\), Fourier, or dispersion theorem is not stated in those depth-major coordinates. The present increment performs the exact finite histogram/Fubini step needed to expose the one fixed dyadic box and the multiplicity with which each affine triple occurs.

No analytic estimate is introduced.

## Active source set

The source defines the finite dependent index set

```lean
coreGrowingShiftQuarticActiveCells
```

whose elements are tuples

```text
(t,k,d,a)
```

with

```text
t in coreLongDeepDepths(j),
k < harmonicShiftCount(j,t),
h = harmonicShiftLower(j,t)+k,
1 <= d < t+1,
d != h,
a < t+1-d.
```

The corresponding affine coordinate is

```lean
coreGrowingShiftQuarticActiveCellBoxIndex
```

with value

```text
(h,d,a).
```

The arithmetic value attached to the occurrence is exactly `P(h,d,a)`.

## Fixed dyadic box

Let

\[
Y=2^{j+1}.
\]

The source defines

```lean
coreGrowingShiftQuarticDyadicBox
```

as

```text
0 <= h,d,a < Y.
```

Every active occurrence lies in this box:

```lean
coreGrowingShiftQuarticActiveCellBoxIndex_mem
```

The proof retains the exact source restrictions:

- active shifts satisfy `h<Y` through `harmonicShiftUpper`;
- genuine core depths satisfy `t<Y`;
- `d<t+1` and `a<t+1-d` imply `d,a<Y`.

No support is deleted. Values outside the actual active source simply receive multiplicity zero.

## Depth multiplicity

For one affine triple `q=(h,d,a)`, define

```lean
coreGrowingShiftQuarticDepthMultiplicity j q
```

as the cardinality of the exact fiber

```text
{(t,k,d',a') in ActiveCells(j) :
  ActiveCellBoxIndex(j,t,k,d',a') = q}.
```

This is a deterministic nonnegative integer weight. It is not a probabilistic multiplicity, an asymptotic density, or an analytic estimate.

For a fixed box triple, projection from the fiber to its depth is injective. Indeed, once the depth `t` and shift `h` are fixed, the equation

```text
h = harmonicShiftLower(j,t)+k
```

determines `k` uniquely; equality of the box indices also determines `d` and `a`.

The source therefore authors

```text
coreGrowingShiftQuarticDepthMultiplicity(j,q)
 <= #(coreLongDeepDepths j)
 <= 2^(j+1).
```

The final right-scale bound is deliberately coarse. It records the exact maximum structural loss that a box-localization theorem may have to pay; it is not used to claim the desired analytic budget.

## Exact histogram identity

The nested affine source is first identified with the active-cell sum:

```text
coreGrowingShiftQuarticParallelogramEnergy(j)
 = sum_(x in ActiveCells(j)) ActiveCellValue(j,x).
```

Mathlib's finite fiberwise-sum theorem is then applied to the map

```text
x -> ActiveCellBoxIndex(j,x).
```

On each fiber, the arithmetic value is constant. The inner fiber sum is therefore its cardinality times the common parallelogram cell.

The resulting exact identity is

\[
\boxed{
E_j^{\mathrm{para}}
=
\sum_{0\le h,d,a<Y}
 m_j(h,d,a)\,
 \mu(a+1)\mu(a+1+h)
 \mu(a+1+d)\mu(a+1+d+h).
}
\]

In source names:

```lean
coreGrowingShiftQuarticParallelogramEnergy_eq_multiplicityBox
```

with target

```lean
coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy.
```

This is exact finite algebra. It introduces no triangle inequality, Cauchy--Schwarz step, absolute value, square, or support enlargement.

## Source-facing budget

The branch defines

```lean
SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget
```

requiring

\[
2E_j^{\mathrm{box}}
\le
\bigl(C_\delta 2^j(2^j)^\delta\bigr)^2
\]

for every positive \(\delta\), with one all-scale constant.

It authors the exact equivalence

```text
SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget
<->
SubpolynomialCoreGrowingShiftQuarticParallelogramBudget.
```

Thus the new box is a representation of the existing premise, not a stronger positive majorant.

## Conditional endpoint

Together with the centered squarefree collision-line source from #733, the exact dependency path is

```text
centered squarefree collision-line compensation
+
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

The routed declaration is

```lean
riemannHypothesis_of_centeredCollision_and_multiplicityBox.
```

Neither arithmetic premise is constructed here.

## External-source boundaries

The source types two proof-producing interfaces.

### Direct weighted-box theorem

```lean
MultiplicityWeightedParallelogramBoxSource
ToCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget
```

A valid direct theorem must preserve the exact box, signed cell, depth multiplicity, all-scale uniformity, and finite small scales.

### Full-box U² or Fourier dispersion

```lean
FullBoxU2MultiplicityLocalizationSource
ToCoreGrowingShiftQuarticMultiplicityWeightedBoxBudgetFromU2
```

A valid adapter must separately prove:

1. the actual full-box `U^2` or Fourier estimate;
2. localization to the multiplicity weight `m_j`;
3. removal or payment of the zero-shift face `h=0`;
4. removal or payment of the zero-separation face `d=0`;
5. removal or payment of the repeated-middle diagonal `d=h`;
6. one all-scale uniform bound;
7. all finite small-scale cases.

A full-box norm does not automatically control a weighted subfamily when the multiplicity is scale-dependent. The field `weightedLocalization` is the load-bearing theorem, not metadata.

## Relation to earlier obstructions

This representation preserves the lessons already formalized in the RH-E02 stack:

- #460/#623: a positive diagonal or variance can be structurally too large;
- #625/#713: signed off-diagonal cancellation must be retained before taking norms;
- #716: the repeated-middle line must be split from four-distinct forms;
- #733: the collision line is a centered squarefree binary progression;
- #739: the remaining cells are affine parallelograms with `d!=h`.

The present layer does not estimate either branch. It only gives a source-faithful target for a future weighted localization theorem.

## Nonclaims

No four-point Chowla theorem, higher Elliott theorem, quantitative `U^2` estimate, Fourier-dispersion estimate, weighted localization theorem, Lean/Lake execution, elaboration, kernel acceptance, trust audit, external replay, merge, or RH proof is claimed.

## Next obstruction

Prove one of:

```text
SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget
```

directly, or construct an actual

```lean
ToCoreGrowingShiftQuarticMultiplicityWeightedBoxBudgetFromU2
```

whose localization theorem retains the exact multiplicity and excluded faces.