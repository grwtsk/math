/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239FiniteSourceLocalization
import GRWTSK.GroupTheoryAndGeneralizations.Semigroups.Record4239NativeConditionalRank
import Mathlib.Algebra.Group.TypeTags.Hom

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Genuine source coefficient maps and conditional descent to the native image

The localized units are the actual branch-corrected source order elements.
Their integer powers give a genuine homomorphism on free coefficients.
The native image is the image of the actual integer combinations of the
published native points. Descent to this image requires an explicit kernel
inclusion: every native relation must have trivial localized square class.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
The kernel inclusion is UNSUPPLIED, not inferred from the finite table.
The generated image is not asserted to be the full native rational group.
No global x-T map, native rank or analytic BSD theorem is constructed here.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def nativeCoefficientCombination : (Fin 32 → ℤ) →+ nativeCurve.toAffine.Point where
  toFun c := ∑ i, c i • nativePoint i
  map_zero' := by simp
  map_add' c d := by simp [add_zsmul, Finset.sum_add_distrib]

def nativeCoefficientMap :
    Multiplicative (Fin 32 → ℤ) →* Multiplicative nativeCurve.toAffine.Point :=
  nativeCoefficientCombination.toMultiplicative

def localizedSourceClass (j i : Fin 32) : UnitSquareClasses (SourceLocalRing j) :=
  (QuotientGroup.mk' (powMonoidHom (α := (SourceLocalRing j)ˣ) 2).range)
    (sourceLocalizedUnit j i)

/-- Actual source units, not arbitrary bit assignments, determine this map. -/
def localizedCoefficientDescent (j : Fin 32) :
    Multiplicative (Fin 32 → ℤ) →* UnitSquareClasses (SourceLocalRing j) where
  toFun c := ∏ i, localizedSourceClass j i ^ c.toAdd i
  map_one' := by simp
  map_mul' c d := by
    simp only [Multiplicative.toAdd_mul, Pi.add_apply, zpow_add, Finset.prod_mul_distrib]

theorem nativeCoefficientMap_eq_one_iff (c : Fin 32 → ℤ) :
    nativeCoefficientMap (Multiplicative.ofAdd c) = 1 ↔
      (∑ i, c i • nativePoint i) = 0 := Iff.rfl

theorem localizedCoefficientDescent_character (j : Fin 32) (c : Fin 32 → ℤ) :
    (sourceLocalSquareClassCharacter j
      (localizedCoefficientDescent j (Multiplicative.ofAdd c))).toAdd =
      ∑ i, (c i : ZMod 2) * sourceQuadraticBit j i := by
  change (sourceLocalSquareClassCharacter j
    (∏ i, localizedSourceClass j i ^ c i)).toAdd = _
  rw [map_prod, Multiplicative.toAdd_prod]
  apply Finset.sum_congr rfl
  intro i _
  rw [map_zpow, Multiplicative.toAdd_zpow, zsmul_eq_mul]
  change (c i : ZMod 2) * sourceLocalSquareClassBit j i = _
  rw [sourceLocalSquareClassBit_eq_sourceQuadraticBit]

/-- Point-first matrix orientation is retained; finite bit agreement is explicit. -/
theorem localizedCoefficientDescent_character_eq_matrix
    (hmatch : SourceBitsMatch) (j : Fin 32) (c : Fin 32 → ℤ) :
    (sourceLocalSquareClassCharacter j
      (localizedCoefficientDescent j (Multiplicative.ofAdd c))).toAdd =
      characterMatrix.transpose.mulVec (fun i => (c i : ZMod 2)) j := by
  rw [localizedCoefficientDescent_character]
  simp only [Matrix.mulVec_apply_eq_sum, Matrix.transpose_apply]
  apply Finset.sum_congr rfl
  intro i _
  rw [hmatch j i]
  ring

/-- Exact well-definedness obstruction. No inhabitant is supplied. -/
def NativeLocalizedRelationCompatibility (j : Fin 32) : Prop :=
  nativeCoefficientMap.ker ≤ (localizedCoefficientDescent j).ker

def localizedCoefficientQuotientDescent (j : Fin 32)
    (h : NativeLocalizedRelationCompatibility j) :
    (Multiplicative (Fin 32 → ℤ) ⧸ nativeCoefficientMap.ker) →*
      UnitSquareClasses (SourceLocalRing j) :=
  QuotientGroup.lift nativeCoefficientMap.ker (localizedCoefficientDescent j)
    (fun _ hc => MonoidHom.mem_ker.mp (h hc))

theorem localizedCoefficientQuotientDescent_mk (j : Fin 32)
    (h : NativeLocalizedRelationCompatibility j) (c : Multiplicative (Fin 32 → ℤ)) :
    localizedCoefficientQuotientDescent j h
        ((QuotientGroup.mk' nativeCoefficientMap.ker) c) =
      localizedCoefficientDescent j c := rfl

/-- Conditional genuine homomorphism on the generated native image only. -/
def localizedNativeImageDescent (j : Fin 32)
    (h : NativeLocalizedRelationCompatibility j) :
    nativeCoefficientMap.range →* UnitSquareClasses (SourceLocalRing j) :=
  (localizedCoefficientQuotientDescent j h).comp
    (QuotientGroup.quotientKerEquivRange nativeCoefficientMap).symm.toMonoidHom

theorem localizedNativeImageDescent_representative (j : Fin 32)
    (h : NativeLocalizedRelationCompatibility j) (c : Multiplicative (Fin 32 → ℤ)) :
    localizedNativeImageDescent j h
        ((QuotientGroup.quotientKerEquivRange nativeCoefficientMap)
          ((QuotientGroup.mk' nativeCoefficientMap.ker) c)) =
      localizedCoefficientDescent j c := by
  change localizedCoefficientQuotientDescent j h
    ((QuotientGroup.quotientKerEquivRange nativeCoefficientMap).symm
      ((QuotientGroup.quotientKerEquivRange nativeCoefficientMap)
        ((QuotientGroup.mk' nativeCoefficientMap.ker) c))) = _
  rw [MulEquiv.symm_apply_apply]
  exact localizedCoefficientQuotientDescent_mk j h c

/-- This conditional endpoint does not prove its relation-compatibility inputs.
It uses the existing native no-two-torsion descent, not an invented group law. -/
theorem nativePoints_linearIndependent_of_localized_relation_compatibility
    (hmatch : SourceBitsMatch) (hrel : ∀ j, NativeLocalizedRelationCompatibility j) :
    LinearIndependent ℤ nativePoint := by
  apply GRWTSK.Algebra.LinearAlgebra.ModTwoIndependenceDescent.linearIndependent_of_even_relations
    nativePoint nativeNoTwoTorsion_for_descent
  intro c hc i
  have hz : characterMatrix.transpose.mulVec (fun k => (c k : ZMod 2)) = 0 := by
    funext j
    have hn : nativeCoefficientMap (Multiplicative.ofAdd c) = 1 :=
      (nativeCoefficientMap_eq_one_iff c).mpr hc
    have hl : localizedCoefficientDescent j (Multiplicative.ofAdd c) = 1 :=
      MonoidHom.mem_ker.mp (hrel j (MonoidHom.mem_ker.mpr hn))
    have hb := localizedCoefficientDescent_character_eq_matrix hmatch j c
    rw [hl, map_one] at hb
    exact hb.symm
  have hcoeff : (fun k => (c k : ZMod 2)) = 0 := by
    apply characterTranspose_mulVec_injective
    simpa using hz
  exact (ZMod.intCast_zmod_eq_zero_iff_dvd (c i) 2).mp (congrFun hcoeff i)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
