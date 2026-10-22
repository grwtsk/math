/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMGaloisIndex
import Mathlib.NumberTheory.NumberField.CMField

/-!
# Complex conjugation as the central involution of a Galois CM field

Mathlib constructs the canonical complex conjugation of a CM field over its
maximal real subfield. Restricting scalars gives a rational automorphism.

For a Galois CM number field, this file proves that automorphism commutes with
every rational automorphism by comparing both composites through a complex
embedding. Thus the abstract central involution used by the CM sign calculus
can be instantiated without the external Hodge manuscript.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMNumberFieldIndex

open NumberField
open CMGaloisIndex

noncomputable section

variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]

/-- Mathlib's CM-field complex conjugation, restricted to the rational base. -/
noncomputable def galoisComplexConj : E ≃ₐ[ℚ] E :=
  (IsCMField.complexConj E).restrictScalars ℚ

@[simp]
theorem galoisComplexConj_apply (x : E) :
    galoisComplexConj E x = IsCMField.complexConj E x := rfl

/-- The rational automorphism remains involutive. -/
@[simp]
theorem galoisComplexConj_apply_apply (x : E) :
    galoisComplexConj E (galoisComplexConj E x) = x := by
  exact IsCMField.complexConj_apply_apply E x

/-- Complex conjugation commutes pointwise with every rational automorphism of
a Galois CM number field.

The proof tests both sides through one complex embedding. The composite of a
complex embedding with a rational automorphism is again a complex embedding,
so Mathlib's characterization of CM complex conjugation applies on both sides. -/
theorem galoisComplexConj_commute_apply
    (σ : E ≃ₐ[ℚ] E) (x : E) :
    galoisComplexConj E (σ x) =
      σ (galoisComplexConj E x) := by
  let φ : E →+* ℂ := Classical.choice (inferInstance : Nonempty (E →+* ℂ))
  apply φ.injective
  change φ (IsCMField.complexConj E (σ x)) =
    φ (σ (IsCMField.complexConj E x))
  calc
    φ (IsCMField.complexConj E (σ x)) =
        conj (φ (σ x)) := by
          exact IsCMField.complexEmbedding_complexConj E φ (σ x)
    _ = conj ((φ.comp σ.toRingHom) x) := rfl
    _ = (φ.comp σ.toRingHom) (IsCMField.complexConj E x) := by
          symm
          exact IsCMField.complexEmbedding_complexConj
            E (φ.comp σ.toRingHom) x
    _ = φ (σ (IsCMField.complexConj E x)) := rfl

/-- The canonical central involution on the rational Galois group of a Galois
CM number field. -/
noncomputable def centralInvolution :
    CentralInvolution (E ≃ₐ[ℚ] E) where
  c := galoisComplexConj E
  sq_eq_one := by
    ext x
    change galoisComplexConj E (galoisComplexConj E x) = x
    exact galoisComplexConj_apply_apply E x
  central := by
    intro σ
    ext x
    exact galoisComplexConj_commute_apply E σ x

/-- The abstract CM label conjugation specializes to multiplication by the
actual number-field complex conjugation. -/
@[simp]
theorem centralInvolution_conj_apply (σ : E ≃ₐ[ℚ] E) :
    (centralInvolution E).conj σ =
      galoisComplexConj E * σ := rfl

/-- Odd sign rows indexed by the actual rational Galois group and Mathlib's
CM complex conjugation. -/
abbrev OddSignRow : Type := 
  CMOddSignRow (E ≃ₐ[ℚ] E) (centralInvolution E)

/-- Four-label balance for actual Galois-CM-indexed sign rows. -/
def FourBalance (v₁ v₂ v₃ v₄ : OddSignRow E) : Prop :=
  CMGaloisIndex.CMFourBalance v₁ v₂ v₃ v₄

/-- The abstract two/two sign profile specializes directly to a Galois CM
number field with its canonical complex conjugation. -/
theorem fourBalance_twoTwoSignProfile
    (v₁ v₂ v₃ v₄ : OddSignRow E)
    (hbal : FourBalance E v₁ v₂ v₃ v₄) :
    GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance.HasTwoTwoSignProfile
      v₁.toOddSignRow v₂.toOddSignRow v₃.toOddSignRow v₄.toOddSignRow :=
  CMGaloisIndex.cmFourBalance_twoTwoSignProfile v₁ v₂ v₃ v₄ hbal
end

end GRWTSK.AlgebraicGeometry.Hodge.CMNumberFieldIndex
