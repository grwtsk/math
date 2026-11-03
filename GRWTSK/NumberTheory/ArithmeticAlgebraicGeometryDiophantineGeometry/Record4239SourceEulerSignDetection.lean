/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239SourceQuadraticEulerPower

set_option autoImplicit false
noncomputable section

/-! Exact integer +/-1 sign detection at actual labelled primes greater
than three. Natural remainder encoding remains separate. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

theorem source_one_ne_neg_one : (1 : ZMod (primeLabel j)) ≠ -1 := by
  intro he
  have hz : (2 : ZMod (primeLabel j))=0 := by linear_combination he
  have hd : primeLabel j ∣ 2 := (ZMod.natCast_eq_zero_iff 2 (primeLabel j)).mp hz
  have hl := Nat.le_of_dvd (by decide : 0<2) hd
  have hp := (primeLabels_valid j).2
  omega

theorem source_integer_sign_iff_field_sign (z : ℤ) (hz : z=1 ∨ z = -1) :
    z = -1 ↔ (z : ZMod (primeLabel j)) = -1 := by
  rcases hz with rfl | rfl
  · simp [source_one_ne_neg_one j]
  · simp

theorem source_quadratic_negative_iff_euler_field (i : Fin 32) :
    quadraticChar (ZMod (primeLabel j)) (sourceLocalInteger j i : ZMod (primeLabel j)) = -1 ↔
      (sourceLocalInteger j i : ZMod (primeLabel j))^((primeLabel j-1)/2) = -1 := by
  rw [source_euler_negative_field_iff]
  exact source_integer_sign_iff_field_sign j _
    (quadraticChar_dichotomy (sourceLocalInteger_cast_ne_zero j i))
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
