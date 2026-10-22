# Centered winding as off-diagonal integer-center covariance

Issue: #881  
Parent: draft PR #878 at `76b5ee6898a04cad7c8f0bc53a0f49a080721769`.

The affine-Chowla variance defect has an exact diagonal-free form.

For the signed integer-center amplitudes `C(c)`, define
```text
4 * sum_(c1,c2 < b+1)
  1_(c1 = c2 mod d^2)
  1_(c1 != c2)
  C(c1) C(c2).
```

The source scripts this as
```lean
parityCenteredIntegerCoordinateOffDiagonalCovariance
```
and identifies it exactly with the existing nonzero-winding wrap:
```lean
parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_wrap.
```

Thus the diagonal has disappeared completely. The affine-Chowla spectral variance defect is exactly this off-diagonal covariance for the even and odd half-shift families.

The four-family modulus and endpoint aggregates are exactly the existing residue dispersion, so the new envelope is equivalent to the prior analytic obstruction.

A further positive-lag representation is defined:
```lean
parityCenteredIntegerCoordinatePositiveLagCovariance
parityCenteredIntegerCoordinateWindingLagCovariance
parityCenteredIntegerCoordinateWindingLagSum.
```

The intended identity reindexes unequal congruent centers by
```text
|c2-c1| = z*d^2.
```
That theorem currently contains an explicit `sorry` and is NOT claimed as proved or kernel-audited. It is retained as the next exact finite-combinatorial obligation.

Status:
```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
OFF_DIAGONAL_COVARIANCE_IDENTITY_SOURCE_SCRIPTED
WINDING_LAG_REINDEXING_OPEN
OFF_DIAGONAL_COVARIANCE_ESTIMATE_OPEN
```


## Winding-lag partition update

The earlier provisional lag equality has been removed; the source no longer contains an explicit `sorry`.

The arithmetic content of the reindexing is now scripted by

```lean
positiveCongruentCenterDifference_has_windingLag
windingLag_gives_congruentCenters
centeredWindingLagPartitionStatement
```

For `0 <= c1 < c2 <= b` with `c1 = c2 mod d^2`, there exists

```text
1 <= z <= floor(b/d^2)
```

such that

```text
c2 = c1 + z*d^2.
```

Conversely, adding `z*d^2` preserves the square-modulus residue class.

The remaining `CenteredWindingLagSumReindexing` proposition is only the finite-sum bijection/reordering layer. It is not yet proved. No placeholder proof is used.
