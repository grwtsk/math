# Repeated-middle collision in quartic compensation

Issue: #716. Parent quartic compensation: #713 / draft PR #714.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / COLLISION_AND_COLLISION_FREE_COMPENSATION_OPEN**.

## Upper-triangle reconstruction

For

```text
Q(h,a,b)
 = mu(a+1) mu(a+1+h)
   mu(b+1) mu(b+1+h),
```

the source defines the upper triangle `a<b` and authors

```text
mertensTwoPointQuarticOffDiagonal(h,N)
 = 2 * mertensTwoPointQuarticUpperTriangle(h,N).
```

The factor two is exact and follows from symmetry in the two base indices.

## Collision line

The upper triangle is partitioned into:

```text
collision:      b = a+h,
collision-free: b != a+h.
```

On the collision line,

```text
Q(h,a,a+h)
 = mu(a+1)
   * mu(a+1+h)^2
   * mu(a+1+2h).
```

The second and third affine forms coincide:

```text
a+1+h = (a+h)+1.
```

Consequently a theorem whose hypotheses require four pairwise-distinct affine forms cannot supply the complete off-diagonal packet. The collision line instead requires a separate squarefree-weighted three-distinct-point or degenerate-four-point estimate.

The source records this with:

```lean
MertensQuarticMiddleFormsDistinct
mertensQuarticMiddleFormsDistinct_iff
mertensQuarticCollision_not_middleDistinct
```

## Packet-level identity

The source defines:

```lean
coreGrowingShiftQuarticUpperEnergy
coreGrowingShiftQuarticCollisionEnergy
coreGrowingShiftQuarticCollisionFreeEnergy
```

and authors the exact identity

```text
coreGrowingShiftQuarticOffDiagonalEnergy(j)
 = 2 * (
     coreGrowingShiftQuarticCollisionEnergy(j)
     + coreGrowingShiftQuarticCollisionFreeEnergy(j)).
```

No absolute value is inserted.

## Compensation interface

The collision-separated proposition

```lean
SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation
```

is authored as exactly equivalent to

```lean
SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation.
```

Thus this increment changes coordinates without strengthening the analytic premise.

A proof-producing adapter now requires separate fields for:

1. active-range control;
2. repeated-middle collision-line control;
3. collision-free four-form control;
4. depth and multiplicity control;
5. finite small scales.

## Consequence

A constructed separated adapter still supplies the existing quartic compensation source, the active prefix-square energy, the signed growing-shift packet, and the inherited conditional RH endpoint.

## Remaining obstruction

Prove both of the following at the required all-scale normalization:

- cancellation on the squarefree-weighted collision line;
- cancellation on the collision-free growing family of four affine forms.

These may require different inputs. No theorem is promoted from one family to the other by naming alone.

## Nonclaims

No collision-line estimate, four-point estimate, Chowla or corrected-Elliott adapter, Lean/Lake execution, elaboration, kernel acceptance, trust audit, external replay, merge, or RH proof is claimed.
