/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Record4239GeneratedImageDescent

set_option autoImplicit false
noncomputable section

/-!
# Minimal quadratic relation compatibility and a circularity diagnostic

Triviality of every full localized square class on native relations is
stronger than the quadratic-bit cancellation needed for mod-two descent.
The bit map here is the composition of the actual localized source map
and actual local quadratic character, not an arbitrary bit assignment.

With SourceBitsMatch and the existing source matrix/native no-two-torsion
results, all quadratic relation compatibilities are equivalent to native
point independence. Thus naming this predicate is not an independent
construction or a shortcut to independence. A genuine arithmetic proof
of relation cancellation must not assume the independence it would imply.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
Neither relation compatibility nor SourceBitsMatch is supplied.
No native rank, global x-T map or analytic BSD conclusion is unconditional.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def nativeLocalBitCoefficientMap (j : Fin 32) :
    Multiplicative (Fin 32 → ℤ) →* Multiplicative (ZMod 2) :=
  (sourceLocalSquareClassCharacter j).comp (localizedCoefficientDescent j)

def NativeQuadraticRelationCompatibility (j : Fin 32) : Prop :=
  nativeCoefficientMap.ker ≤ (nativeLocalBitCoefficientMap j).ker

theorem quadratic_compatibility_of_localized_compatibility (j : Fin 32)
    (h : NativeLocalizedRelationCompatibility j) : NativeQuadraticRelationCompatibility j := by
  intro c hc
  apply MonoidHom.mem_ker.mpr
  change sourceLocalSquareClassCharacter j (localizedCoefficientDescent j c) = 1
  rw [MonoidHom.mem_ker.mp (h hc), map_one]

theorem nativePoints_linearIndependent_of_quadratic_relation_compatibility
    (hmatch : SourceBitsMatch) (hrel : ∀ j, NativeQuadraticRelationCompatibility j) :
    LinearIndependent ℤ nativePoint := by
  apply GRWTSK.Algebra.LinearAlgebra.ModTwoIndependenceDescent.linearIndependent_of_even_relations
    nativePoint nativeNoTwoTorsion_for_descent
  intro c hc i
  have hz : characterMatrix.transpose.mulVec (fun k => (c k : ZMod 2)) = 0 := by
    funext j
    have hn : nativeCoefficientMap (Multiplicative.ofAdd c) = 1 :=
      (nativeCoefficientMap_eq_one_iff c).mpr hc
    have hb : nativeLocalBitCoefficientMap j (Multiplicative.ofAdd c) = 1 :=
      MonoidHom.mem_ker.mp (hrel j (MonoidHom.mem_ker.mpr hn))
    have he := localizedCoefficientDescent_character_eq_matrix hmatch j c
    change (nativeLocalBitCoefficientMap j (Multiplicative.ofAdd c)).toAdd = _ at he
    rw [hb] at he
    exact he.symm
  have hcoeff : (fun k => (c k : ZMod 2)) = 0 := by
    apply characterTranspose_mulVec_injective
    simpa using hz
  exact (ZMod.intCast_zmod_eq_zero_iff_dvd (c i) 2).mp (congrFun hcoeff i)

/-- Independence would trivialize every native coefficient relation; using this
direction to obtain descent and then independence would be circular. -/
theorem localized_compatibility_of_nativePoints_linearIndependent
    (hLI : LinearIndependent ℤ nativePoint) (j : Fin 32) :
    NativeLocalizedRelationCompatibility j := by
  intro c hc
  have hsum : (∑ i, c.toAdd i • nativePoint i) = 0 :=
    (nativeCoefficientMap_eq_one_iff c.toAdd).mp (MonoidHom.mem_ker.mp hc)
  have hz : c.toAdd = 0 := (Fintype.linearIndependent_iff.mp hLI) c.toAdd hsum
  have hc1 : c = 1 := by
    change c.toAdd = 0
    exact hz
  apply MonoidHom.mem_ker.mpr
  rw [hc1, map_one]

theorem all_quadratic_compatibilities_iff_native_independence
    (hmatch : SourceBitsMatch) :
    (∀ j, NativeQuadraticRelationCompatibility j) ↔ LinearIndependent ℤ nativePoint := by
  constructor
  · exact nativePoints_linearIndependent_of_quadratic_relation_compatibility hmatch
  · intro hLI j
    exact quadratic_compatibility_of_localized_compatibility j
      (localized_compatibility_of_nativePoints_linearIndependent hLI j)

theorem all_localized_compatibilities_iff_native_independence
    (hmatch : SourceBitsMatch) :
    (∀ j, NativeLocalizedRelationCompatibility j) ↔ LinearIndependent ℤ nativePoint := by
  constructor
  · exact nativePoints_linearIndependent_of_localized_relation_compatibility hmatch
  · exact localized_compatibility_of_nativePoints_linearIndependent

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
