/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239HenselNativeRelationCancellation
import GRWTSK.AssociativeRingsAndAlgebras.Record4239NativeSquareClassHom

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual native point relations modulo doubles give exact retained source
character cancellation. No relation or independence is assumed globally.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem native_point_relation_mod_doubles_global_class (n : Fin 32 → ℕ)
    (Q : nativeCurve.toAffine.Point)
    (hrel : (∑ i, n i • nativePoint i)=2 • Q) :
    (∏ i, nativeSquareClassValue NativeCubicField nativeCubicRoot
      nativeCubicRoot_relation (nativePoint i)^n i)=1 := by
  have hh : nativeSquareClassHom NativeCubicField nativeCubicRoot
      nativeCubicRoot_relation (∑ i, n i • nativePoint i)=0 := by
    rw [hrel,nativeSquareClassHom_double]
  rw [map_sum] at hh
  simp only [map_nsmul] at hh
  have hm := congrArg Additive.toMul hh
  simpa only [Additive.toMul_sum,Additive.toMul_nsmul,
    nativeSquareClassHom,Additive.toMul_ofMul,Additive.toMul_zero] using hm

section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

theorem native_point_relation_mod_doubles_selected_characters (n : Fin 32 → ℕ)
    (Q : nativeCurve.toAffine.Point)
    (hrel : (∑ i, n i • nativePoint i)=2 • Q) :
    (∏ i, (henselLocalUnitCharacter j
      ((QuotientGroup.mk' (powMonoidHom (α := (HenselSourceLocalRing j)ˣ) 2).range)
        (henselSourceSelectedUnit j i)))^n i)=1 := by
  exact hensel_native_relation_selected_characters_cancel j n
    (native_point_relation_mod_doubles_global_class n Q hrel)
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
