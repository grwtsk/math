/- Copyright (c) 2026 grwtsk contributors. MIT.
Euler criterion imported from Mathlib; Chris Hughes and Michael Stoll
retain upstream authorship and Apache-2.0 license obligations. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239EulerBitComparison
import Mathlib.NumberTheory.LegendreSymbol.Basic

set_option autoImplicit false
noncomputable section

/-! Actual source quadratic character cast equals the Euler power.
The natural remainder/negative-sign bit encoding is a separate bridge.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

theorem source_euler_exponent_eq_half :
    (primeLabel j-1)/2=primeLabel j/2 := by
  have hp := (primeLabels_valid j).1
  have hn : primeLabel j ≠ 2 := by have hh := (primeLabels_valid j).2; omega
  obtain ⟨k,hk⟩ := hp.odd_of_ne_two hn
  omega

theorem source_quadraticChar_cast_euler_power (i : Fin 32) :
    (quadraticChar (ZMod (primeLabel j))
      (sourceLocalInteger j i : ZMod (primeLabel j)) : ZMod (primeLabel j)) =
      (sourceLocalInteger j i : ZMod (primeLabel j))^((primeLabel j-1)/2) := by
  change (legendreSym (primeLabel j) (sourceLocalInteger j i) : ZMod (primeLabel j)) = _
  rw [legendreSym.eq_pow,source_euler_exponent_eq_half]

theorem source_euler_negative_field_iff (i : Fin 32) :
    (sourceLocalInteger j i : ZMod (primeLabel j))^((primeLabel j-1)/2)=(-1 : ZMod (primeLabel j)) ↔
    (quadraticChar (ZMod (primeLabel j))
      (sourceLocalInteger j i : ZMod (primeLabel j)) : ZMod (primeLabel j)) = -1 := by
  rw [source_quadraticChar_cast_euler_power]
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
