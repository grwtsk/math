/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239HenselDescentNativeClass

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual global native square-class relations cancel the retained local
source characters. No global relation or independence premise is invented.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

def henselDescentLocalClass (i : Fin 32) : UnitSquareClasses (HenselSourceLocalRing j) :=
  (QuotientGroup.mk' (powMonoidHom (α := (HenselSourceLocalRing j)ˣ) 2).range)
    (henselDescentRepresentativeUnit j i)

theorem henselDescentLocalClass_native_image (i : Fin 32) :
    unitSquareClassMap (algebraMap (HenselSourceLocalRing j) NativeCubicField)
      (henselDescentLocalClass j i) =
      nativeSquareClassValue NativeCubicField nativeCubicRoot nativeCubicRoot_relation
        (nativePoint i) := by
  rw [henselDescentLocalClass,unitSquareClassMap_mk]
  exact hensel_descent_native_global_class j i

theorem hensel_native_relation_local_cancels (n : Fin 32 → ℕ)
    (hrel : (∏ i, nativeSquareClassValue NativeCubicField nativeCubicRoot
      nativeCubicRoot_relation (nativePoint i)^n i)=1) :
    (∏ i, henselDescentLocalClass j i^n i)=1 := by
  apply henselLocal_squareClass_injective j
  rw [map_prod,map_one]
  simp_rw [map_pow,henselDescentLocalClass_native_image]
  exact hrel

theorem hensel_native_relation_selected_characters_cancel (n : Fin 32 → ℕ)
    (hrel : (∏ i, nativeSquareClassValue NativeCubicField nativeCubicRoot
      nativeCubicRoot_relation (nativePoint i)^n i)=1) :
    (∏ i, (henselLocalUnitCharacter j
      ((QuotientGroup.mk' (powMonoidHom (α := (HenselSourceLocalRing j)ˣ) 2).range)
        (henselSourceSelectedUnit j i)))^n i)=1 := by
  have hc := congrArg (henselLocalUnitCharacter j)
    (hensel_native_relation_local_cancels j n hrel)
  simp only [map_prod,map_pow,map_one,henselDescentLocalClass] at hc
  simp_rw [hensel_descent_character_matches_selected] at hc
  exact hc
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
