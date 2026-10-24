# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightRealAxis

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d26a0518c87a9f5cc9d1b5c1fbfe87fc2168feff` · SHA-256 `e96915d552645c5b8c88c9a85902077903c1209fff9119edc281d8dc1c330711`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightCast

/-!
# Exceptional weight lies strictly on the negative real axis

This leaf records coordinate-level consequences of the exact complex
to real determinant-ratio identity. The result is for the finite
three-tent arithmetic coefficient model only; none of the analytic
Weil-form or RH obligations is discharged.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightRealAxis

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentActualExceptionalWeight
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightSign
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightCast

/-- The actual complex exceptional coefficient has zero imaginary part. -/
theorem exceptionalWeight_im_eq_zero : exceptionalWeight.im = 0 := by
  rw [exceptionalWeight_eq_realExceptionalWeight]
  exact Complex.ofReal_im realExceptionalWeight

/-- The actual complex exceptional coefficient has negative real part. -/
theorem exceptionalWeight_re_neg : exceptionalWeight.re < 0 := by
  rw [exceptionalWeight_eq_realExceptionalWeight]
  simpa using realExceptionalWeight_neg

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightRealAxis
```
