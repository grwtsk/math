/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

An explicit integral half-scale equation. This is an admissible change of
Weierstrass coordinates over Q, not an integral coordinate automorphism at 2.
No arbitrary source relabeling or quadratic twist is performed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts are unelaborated.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralModel
import Mathlib.AlgebraicGeometry.EllipticCurve.VariableChange
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale

open WeierstrassCurve
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Integral parameters A=4k+1, A+B=16n. No positivity is needed for this algebra. -/
def model (k n : ℤ) : WeierstrassCurve ℤ where
  a₁ := 1
  a₂ := k + 4*n
  a₃ := 0
  a₄ := (4*k+1)*n
  a₆ := 0

/-- New-to-old coordinates are x=4X+A and y=8Y+4X. -/
def halfChange (A : ℚ) : VariableChange ℚ where
  u := Units.mk0 2 (by norm_num)
  r := A
  s := 1
  t := 0

/-- Equality of all FIVE coefficients for the actual admissible change. -/
theorem variableChange_model (k n : ℤ) :
    halfChange ((4*k+1 : ℤ) : ℚ) •
      freyWeierstrass ((4*k+1 : ℤ) : ℚ) ((16*n-4*k-1 : ℤ) : ℚ) =
      (model k n).baseChange ℚ := by
  ext <;> norm_num [halfChange, model, freyWeierstrass,
    WeierstrassCurve.variableChange_def, WeierstrassCurve.baseChange] <;> ring

theorem model_c4 (k n : ℤ) :
    (model k n).c₄ = (4*k+1)^2 - 16*(4*k+1)*n + 256*n^2 := by
  simp only [model, WeierstrassCurve.c₄, WeierstrassCurve.b₂, WeierstrassCurve.b₄]
  ring

theorem model_delta (k n : ℤ) :
    (model k n).Δ = ((4*k+1)*(16*n-4*k-1)*n)^2 := by
  simp only [model, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  ring

/-- A unit c4 at two is derived, not imposed as an extra premise. -/
theorem c4_not_dvd_two (k n : ℤ) : ¬ (2 : ℤ) ∣ (model k n).c₄ := by
  have he : (model k n).c₄ =
      2*(8*k^2+4*k-8*(4*k+1)*n+128*n^2)+1 := by
    rw [model_c4]
    ring
  rw [he]
  omega

/-- The two odd factors do not contribute to the discriminant's parity. -/
theorem delta_even_iff (k n : ℤ) :
    (2 : ℤ) ∣ (model k n).Δ ↔ (2 : ℤ) ∣ n := by
  have hn : n % 2 = 0 ∨ n % 2 = 1 := by omega
  rcases hn with hn | hn <;>
    simp [model_delta, Int.dvd_iff_emod_eq_zero, Int.add_emod,
      Int.sub_emod, Int.mul_emod, pow_two, hn]

/-- The inverse coordinates, with their denominators visible. -/
def toNew (A : ℚ) (P : ℚ × ℚ) : ℚ × ℚ :=
  ((P.1-A)/4, (P.2-P.1+A)/8)

def toOld (A : ℚ) (P : ℚ × ℚ) : ℚ × ℚ :=
  (4*P.1+A, 8*P.2+4*P.1)

theorem toOld_toNew (A : ℚ) (P : ℚ × ℚ) : toOld A (toNew A P) = P := by
  rcases P with ⟨x,y⟩
  ext <;> dsimp [toOld,toNew] <;> ring

theorem toNew_toOld (A : ℚ) (P : ℚ × ℚ) : toNew A (toOld A P) = P := by
  rcases P with ⟨x,y⟩
  ext <;> dsimp [toOld,toNew] <;> ring

/-- The inverse sends the SAME labelled literal branch points to these coordinates.
This does not assert that all three transformed affine points are integral at two. -/
theorem branch_coordinates (A B : ℚ) :
    toNew A (0,0) = (-A/4,A/8) ∧
    toNew A (A,0) = (0,0) ∧
    toNew A (-B,0) = (-(A+B)/4,(A+B)/8) := by
  constructor
  · ext <;> dsimp [toNew] <;> ring
  constructor
  · ext <;> dsimp [toNew] <;> ring
  · ext <;> dsimp [toNew] <;> ring

end GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale
