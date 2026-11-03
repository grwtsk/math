/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239SourceEulerSignDetection

set_option autoImplicit false
noncomputable section

/-! Exact natural remainder/toNat/power encoding used by the source Euler
bit. No finite computation is run here. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

theorem source_integer_remainder_toNat (a : ℤ) :
    (a : ZMod (primeLabel j)).val=(a % (primeLabel j : ℤ)).toNat := by
  have hv := congrArg Int.toNat (ZMod.val_intCast (n := primeLabel j) a)
  simpa using hv

theorem source_natural_power_remainder (a : ℤ) (e : ℕ) :
    (((a % (primeLabel j : ℤ)).toNat)^e) % primeLabel j =
      ((a : ZMod (primeLabel j))^e).val := by
  rw [← source_integer_remainder_toNat j a]
  calc
    _ = ((((a : ZMod (primeLabel j)).val^e : ℕ) : ZMod (primeLabel j))).val :=
      (ZMod.val_natCast _ _).symm
    _ = _ := by congr 1; simp

theorem source_negative_one_value : (-1 : ZMod (primeLabel j)).val=primeLabel j-1 := by
  have hp := (primeLabels_valid j).1.pos
  obtain ⟨k,hk⟩ := Nat.exists_eq_succ_of_ne_zero (ne_of_gt hp)
  rw [hk,ZMod.val_neg_one]
  omega

theorem source_euler_natural_negative_iff_field (i : Fin 32) :
    (((sourceLocalInteger j i % (primeLabel j : ℤ)).toNat)^((primeLabel j-1)/2)) % primeLabel j =
      primeLabel j-1 ↔
    (sourceLocalInteger j i : ZMod (primeLabel j))^((primeLabel j-1)/2) = -1 := by
  rw [source_natural_power_remainder,← source_negative_one_value j]
  exact (ZMod.val_injective (primeLabel j)).eq_iff
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
