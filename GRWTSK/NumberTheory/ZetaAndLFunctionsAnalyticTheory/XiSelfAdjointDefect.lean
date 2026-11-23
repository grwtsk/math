/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean 4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Elaboration, fresh kernel checking, axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiThetaAntiPickSource
import Mathlib.Tactic

/-!
# Finite algebra for the actual-Xi self-adjointness defect

The companion mathematical proof is XiSelfAdjointDefect.md.

The actual normal trace-class source T is defined through the complete
zero divisor of the actual completed Xi, including multiplicities.
The positive self-adjoint operator A = (T + T*)/2 is NOT substituted
for T: an explicit nonnegative determinant correction is retained.

The results below prove only elementary real algebra used in the
finite conjugate-pair correction. They do NOT construct T, identify
a determinant, or establish the global RH-equivalent zero location.
No external RH result is imported or assumed.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.XiSelfAdjointDefect

/-- The squared-coordinate zero (a+i gamma)^2 has modulus squared
equal to (a^2+gamma^2)^2. This is an unconditional algebra identity. -/
theorem square_coordinate_norm_identity (a gamma : ℝ) :
    (gamma ^ 2 - a ^ 2) ^ 2 + (2 * a * gamma) ^ 2 =
      (a ^ 2 + gamma ^ 2) ^ 2 := by
  ring

/-- For an inverse-square spectral factor mu=u+i*b, the full
conjugate factor is (1+r*u)^2+(r*b)^2, NOT its positive projection.
The missing term is precisely r^2*b^2. -/
theorem conjugate_pair_determinant_defect
    (r u b : ℝ) :
    ((1 + r * u) ^ 2 + (r * b) ^ 2) -
      (1 + r * u) ^ 2 = r ^ 2 * b ^ 2 := by
  ring

/-- The omitted non-self-adjoint correction cannot be negative. -/
theorem conjugate_pair_determinant_lower
    (r u b : ℝ) :
    (1 + r * u) ^ 2 ≤
      (1 + r * u) ^ 2 + (r * b) ^ 2 := by
  nlinarith [sq_nonneg (r * b)]

/-- Strict strip geometry plus a separate height lower bound
make the REAL PART of -1/(a+i*gamma)^2 positive.
The actual height bound is separately sourced, not assumed RH. -/
theorem strip_height_real_part_positive
    (a gamma : ℝ) (hheight : a ^ 2 < gamma ^ 2) :
    0 < gamma ^ 2 - a ^ 2 := by
  linarith

/-- The second coefficient of the exact conjugate-pair product
differs from its real-part projection by b^2. No matching
determinant for Xi is claimed for the projected operator. -/
theorem second_coefficient_defect (u b : ℝ) :
    (u ^ 2 + b ^ 2) - u ^ 2 = b ^ 2 := by
  ring

end GRWTSK.NumberTheory.XiSelfAdjointDefect
