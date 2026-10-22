# Centered winding as an affine-Chowla variance defect

Issue: #877  
Parent: draft PR #875 at `e56872568d11d7de2daea99ed37664a7e9da791d`.

This increment unifies the zero and nonzero frequencies of the existing growing-shift affine binary-Chowla family while preserving the subtractive integer-center second moment.

For a parity `r` and half-shift family `H`, define
```text
A_H(k) = sum_(h in H) parityGrowingShiftAffineChowlaTwist(...,h,k)
```
and its normalized spectral energy
```text
S_H = (d^2)^(-1) sum_(k mod d^2) |A_H(k)|^2.
```

For the even and odd families this is exactly the existing signed-residue full-frequency energy.

The source defines the signed variance defect
```text
D_H = S_H - 4 * sum_c C_H(c)^2.
```

It proves exactly
```text
D_H = nonzero-winding wrap.
```

Using the previous zero/nonzero and mean/variance decompositions, the same quantity is
```text
D_H
 = nonzero-frequency energy
   + mean inflation
   - 4 * centered integer-coordinate variance.
```

The four-family modulus aggregate inserts absolute values only after this signed subtraction. It is exactly the existing centered-winding residue dispersion.

Therefore a future analytic theorem may target the variance defect directly. It need not prove separate upper bounds for the positive spectral energy and the integer-center second moment, which would erase the available cancellation.

Status:
```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_AFFINE_CHOWLA_VARIANCE_DEFECT_SOURCE_DRAFT
AFFINE_CHOWLA_VARIANCE_DEFECT_ESTIMATE_OPEN
```

No analytic estimate, Chowla theorem, elaboration, kernel acceptance, GRH theorem, or RH theorem is claimed.
