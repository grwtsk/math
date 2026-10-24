/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
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
