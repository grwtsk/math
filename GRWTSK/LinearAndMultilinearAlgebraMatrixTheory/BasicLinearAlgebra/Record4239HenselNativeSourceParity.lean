/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239NativePointRelationSourceCancellation
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Record4239SquareClassBridge

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact Hensel character to source-bit bridge and actual relation parity.
The finite SourceBitsMatch premise remains explicit. NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

theorem hensel_selected_character_source_bit (i : Fin 32) :
    (henselLocalUnitCharacter j
      ((QuotientGroup.mk' (powMonoidHom (α := (HenselSourceLocalRing j)ˣ) 2).range)
        (henselSourceSelectedUnit j i))).toAdd = sourceQuadraticBit j i := by
  have hu : Units.map (henselSourceLocalReduction j).toMonoidHom
      (henselSourceSelectedUnit j i)=sourceLocalUnit j i := by
    apply Units.ext
    rw [henselSourceSelectedUnit_residue]
    rfl
  rw [henselLocalUnitCharacter_representative,hu]
  rfl

theorem native_relation_source_bit_sum (n : Fin 32 → ℕ)
    (Q : nativeCurve.toAffine.Point) (hrel : (∑ i, n i • nativePoint i)=2 • Q) :
    (∑ i, (n i : ZMod 2)*sourceQuadraticBit j i)=0 := by
  have hh := congrArg Multiplicative.toAdd
    (native_point_relation_mod_doubles_selected_characters j n Q hrel)
  simpa only [Multiplicative.toAdd_prod,Multiplicative.toAdd_pow,
    Multiplicative.toAdd_one,hensel_selected_character_source_bit,nsmul_eq_mul] using hh
end

theorem native_relation_mod_doubles_parity_zero (bits : SourceBitsMatch)
    (n : Fin 32 → ℕ) (Q : nativeCurve.toAffine.Point)
    (hrel : (∑ i, n i • nativePoint i)=2 • Q) :
    (fun i => (n i : ZMod 2))=0 := by
  have hm : characterMatrix.transpose.mulVec (fun i => (n i : ZMod 2))=0 := by
    funext j
    have hh := native_relation_source_bit_sum j n Q hrel
    simp_rw [bits] at hh
    simpa only [Matrix.mulVec,dotProduct,Matrix.transpose_apply,Pi.zero_apply,mul_comm] using hh
  apply characterTranspose_mulVec_injective
  simpa using hm

/- This is an explicit conditional mod-doubles parity statement. Integer
relation descent, finite comparison, rank and analytic BSD remain separate. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
