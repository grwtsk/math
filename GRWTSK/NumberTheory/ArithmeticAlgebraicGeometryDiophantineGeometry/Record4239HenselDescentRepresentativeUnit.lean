/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239DescentCofactorUnitClass
import GRWTSK.AssociativeRingsAndAlgebras.Record4239HenselLocalSquareClassCharacter

set_option autoImplicit false
noncomputable section

/-! The new descent representative is a unit at the specified Hensel prime
and has the exact original finite character. No equality of its global
class with the old derivative representative is assumed. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

def henselDescentRepresentativeValue (i : Fin 32) : HenselSourceLocalRing j :=
  algebraMap NativeIntegerClosure (HenselSourceLocalRing j)
    (recordOrderToIntegerClosure (sourceOrderDescentRepresentative j i))

theorem henselDescentRepresentative_residue (i : Fin 32) :
    henselSourceLocalReduction j (henselDescentRepresentativeValue j i) =
      (sourceLocalInteger j i : ZMod (primeLabel j)) := by
  rw [henselDescentRepresentativeValue,henselSourceLocalReduction_algebraMap]
  have hc := congrArg
    (fun f : RecordIntegralOrder →+* ZMod (primeLabel j) =>
      f (sourceOrderDescentRepresentative j i)) (hensel_reduction_source_order_compat j)
  exact hc.trans (descentRepresentative_same_source_residue j i)

theorem henselDescentRepresentative_isUnit (i : Fin 32) :
    IsUnit (henselDescentRepresentativeValue j i) := by
  apply (IsLocalization.AtPrime.isUnit_to_map_iff (HenselSourceLocalRing j)
    (henselSourcePrime j) _).mpr
  change henselIntegerClosureReduction j
    (recordOrderToIntegerClosure (sourceOrderDescentRepresentative j i)) ≠ 0
  have hc := henselDescentRepresentative_residue j i
  rw [henselDescentRepresentativeValue,henselSourceLocalReduction_algebraMap] at hc
  rw [hc]
  exact sourceLocalInteger_cast_ne_zero j i

def henselDescentRepresentativeUnit (i : Fin 32) : (HenselSourceLocalRing j)ˣ :=
  (henselDescentRepresentative_isUnit j i).unit

theorem henselDescentRepresentativeUnit_residue (i : Fin 32) :
    henselSourceLocalReduction j (henselDescentRepresentativeUnit j i : HenselSourceLocalRing j) =
      (sourceLocalInteger j i : ZMod (primeLabel j)) := by
  rw [henselDescentRepresentativeUnit,(henselDescentRepresentative_isUnit j i).unit_spec]
  exact henselDescentRepresentative_residue j i

theorem hensel_descent_residue_units_equal (i : Fin 32) :
    Units.map (henselSourceLocalReduction j).toMonoidHom (henselDescentRepresentativeUnit j i) =
      Units.map (henselSourceLocalReduction j).toMonoidHom (henselSourceSelectedUnit j i) := by
  apply Units.ext
  exact (henselDescentRepresentativeUnit_residue j i).trans
    (henselSourceSelectedUnit_residue j i).symm

theorem hensel_descent_character_matches_selected (i : Fin 32) :
    henselLocalUnitCharacter j
      ((QuotientGroup.mk' (powMonoidHom (α := (HenselSourceLocalRing j)ˣ) 2).range)
        (henselDescentRepresentativeUnit j i)) =
    henselLocalUnitCharacter j
      ((QuotientGroup.mk' (powMonoidHom (α := (HenselSourceLocalRing j)ˣ) 2).range)
        (henselSourceSelectedUnit j i)) := by
  rw [henselLocalUnitCharacter_representative,henselLocalUnitCharacter_representative,
    hensel_descent_residue_units_equal]
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
