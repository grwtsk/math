/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Record4239HenselNativeSourceParity

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Signed integer native relations, without replacing the native group by
an assigned model. Finite source comparison stays explicit. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem signed_native_relation_global_class (n : Fin 32 → ℤ)
    (Q : nativeCurve.toAffine.Point) (hrel : (∑ i, n i • nativePoint i)=2 • Q) :
    (∏ i, nativeSquareClassValue NativeCubicField nativeCubicRoot
      nativeCubicRoot_relation (nativePoint i)^n i)=1 := by
  have hh : nativeSquareClassHom NativeCubicField nativeCubicRoot
      nativeCubicRoot_relation (∑ i, n i • nativePoint i)=0 := by
    rw [hrel,nativeSquareClassHom_double]
  rw [map_sum] at hh
  simp only [map_zsmul] at hh
  have hm := congrArg Additive.toMul hh
  simpa only [Additive.toMul_sum,Additive.toMul_zsmul,nativeSquareClassHom,
    Additive.toMul_ofMul,Additive.toMul_zero] using hm

section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

theorem signed_native_relation_source_bit_sum (n : Fin 32 → ℤ)
    (Q : nativeCurve.toAffine.Point) (hrel : (∑ i, n i • nativePoint i)=2 • Q) :
    (∑ i, (n i : ZMod 2)*sourceQuadraticBit j i)=0 := by
  have hl : (∏ i, henselDescentLocalClass j i^n i)=1 := by
    apply henselLocal_squareClass_injective j
    rw [map_prod,map_one]
    simp_rw [map_zpow,henselDescentLocalClass_native_image]
    exact signed_native_relation_global_class n Q hrel
  have hc := congrArg (henselLocalUnitCharacter j) hl
  simp only [map_prod,map_zpow,map_one,henselDescentLocalClass] at hc
  simp_rw [hensel_descent_character_matches_selected] at hc
  have ha := congrArg Multiplicative.toAdd hc
  simpa only [Multiplicative.toAdd_prod,Multiplicative.toAdd_zpow,
    Multiplicative.toAdd_one,hensel_selected_character_source_bit,zsmul_eq_mul] using ha
end

theorem signed_native_relation_parity_zero (bits : SourceBitsMatch)
    (n : Fin 32 → ℤ) (Q : nativeCurve.toAffine.Point)
    (hrel : (∑ i, n i • nativePoint i)=2 • Q) :
    (fun i => (n i : ZMod 2))=0 := by
  have hm : characterMatrix.transpose.mulVec (fun i => (n i : ZMod 2))=0 := by
    funext j
    have hh := signed_native_relation_source_bit_sum j n Q hrel
    simp_rw [bits] at hh
    simpa only [Matrix.mulVec,dotProduct,Matrix.transpose_apply,Pi.zero_apply,mul_comm] using hh
  apply characterTranspose_mulVec_injective
  simpa using hm

/- Integer halving descent and rank packaging require their own exact
native hypotheses; no BSD statement is exported here. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
