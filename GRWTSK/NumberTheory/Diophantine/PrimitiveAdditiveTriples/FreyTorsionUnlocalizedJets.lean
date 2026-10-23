/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib localization/quotient maps and the same Frey source algebras.
Formalization assistance: OpenAI.

Compare the localized finite jets with the actual unlocalized section-power
quotients, then transport the already defined nonlinear torsion map through
these comparisons. The comparison only needs unit anchors, not smoothness.
All exponents and both truncation directions are retained. No completion,
scheme-stalk, line-bundle, norm or arithmetic height claim is made here.
Unelaborated source proof scripts.
-/
import GRWTSK.Algebra.RingTheory.Localization.AwayPowerQuotient
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpenJets

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionUnlocalizedJets

open FreyJetQuotient FreyAdicQuotients FreyTorsionOpen FreyTorsionOpenJets
open GRWTSK.Algebra.RingTheory.Localization.AwayPowerQuotient

variable {R : Type*} [CommRing R]

/-- The old affine displacement belongs to the SAME old image section ideal. -/
theorem displacement_mem (a b r : R) :
    affineX a b - algebraMap R (Coordinate a b) r ∈ curveSectionIdeal a b r := by
  have h := Ideal.mem_map_of_mem (coordinateMap a b)
    (Ideal.subset_span (by simp : MvPolynomial.X (0 : Fin 2) - MvPolynomial.C r ∈
      ({MvPolynomial.X 0 - MvPolynomial.C r, MvPolynomial.X 1} : Set (Plane R))))
  simpa only [map_sub] using h

/-- No root or derivative assumption: X is a unit plus nilpotent in each quotient. -/
theorem unit_X (a b r q : R) (hrq : r * q = 1) (n : ℕ) :
    IsUnit (Ideal.Quotient.mk (curveSectionIdeal a b r ^ n) (affineX a b)) :=
  unit_mod_power (affineX a b) (algebraMap R (Coordinate a b) r)
    (algebraMap R (Coordinate a b) q) (curveSectionIdeal a b r)
    (by rw [← map_mul, hrq, map_one]) (displacement_mem a b r) n

/-- The image ideal is the full named open-chart ideal, with both generators. -/
theorem section_image (a b r : R) :
    (curveSectionIdeal a b r).map (inclusion a b) =
      Ideal.span {x a b - scalar a b r, y a b} := by
  unfold curveSectionIdeal sectionIdeal
  rw [Ideal.map_map, Ideal.map_span]
  simp only [Set.image_insert_eq, Set.image_singleton, RingHom.comp_apply, map_sub] <;> rfl

theorem section_image_A (a b : R) :
    (curveSectionIdeal a b a).map (inclusion a b) = atA a b := section_image a b a

theorem section_image_B (a b : R) :
    (curveSectionIdeal a b (-b)).map (inclusion a b) = atB a b := by
  rw [section_image]
  simp only [map_neg, sub_neg_eq_add, atB]

/-- ab*l=1 supplies a unit a without division or a field instance. -/
theorem anchor_A_inverse (a b l : R) (hl : a * b * l = 1) : a * (b * l) = 1 := by
  simpa only [mul_assoc] using hl

/-- The other anchor is -b, not b; retain the sign in its inverse. -/
theorem anchor_B_inverse (a b l : R) (hl : a * b * l = 1) : (-b) * (-(a * l)) = 1 := by
  calc
    _ = a * b * l := by ring
    _ = 1 := hl

/-- The actual unlocalized Ta quotient is unchanged by inverting X. -/
def equivA (a b l : R) (hl : a * b * l = 1) (n : ℕ) :
    PowerQuotient a b a n ≃+* JetA a b n :=
  quotientEquiv (affineX a b) (curveSectionIdeal a b a) (atA a b)
    (section_image_A a b) n
    (unit_X a b a (b * l) (anchor_A_inverse a b l hl) n)

/-- The same comparison for the DISTINCT unlocalized Tb quotient. -/
def equivB (a b l : R) (hl : a * b * l = 1) (n : ℕ) :
    PowerQuotient a b (-b) n ≃+* JetB a b n :=
  quotientEquiv (affineX a b) (curveSectionIdeal a b (-b)) (atB a b)
    (section_image_B a b) n
    (unit_X a b (-b) (-(a * l)) (anchor_B_inverse a b l hl) n)

/-- The forward map is always the original localization map on representatives. -/
@[simp] theorem equivA_mk (a b l : R) (hl : a * b * l = 1) (n : ℕ) (c : Coordinate a b) :
    equivA a b l hl n (Ideal.Quotient.mk (curveSectionIdeal a b a ^ n) c) =
      Ideal.Quotient.mk (atA a b ^ n) (inclusion a b c) := rfl

@[simp] theorem equivB_mk (a b l : R) (hl : a * b * l = 1) (n : ℕ) (c : Coordinate a b) :
    equivB a b l hl n (Ideal.Quotient.mk (curveSectionIdeal a b (-b) ^ n) c) =
      Ideal.Quotient.mk (atB a b ^ n) (inclusion a b c) := rfl

/-- The finite localization square agrees with the existing canonical transitions. -/
theorem equivA_transition (a b l : R) (hl : a * b * l = 1)
    (m n : ℕ) (hmn : m ≤ n) (u : PowerQuotient a b a n) :
    equivA a b l hl m (transition a b a m n hmn u) =
      Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) (equivA a b l hl n u) := by
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective u
  rfl

theorem equivB_transition (a b l : R) (hl : a * b * l = 1)
    (m n : ℕ) (hmn : m ≤ n) (u : PowerQuotient a b (-b) n) :
    equivB a b l hl m (transition a b (-b) m n hmn u) =
      Ideal.Quotient.factor (Ideal.pow_le_pow_right hmn) (equivB a b l hl n u) := by
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective u
  rfl

/-- Target functions at Tb pull back to Ta through the ACTUAL localized involution.
Conjugation here uses proved presentation comparisons, not fitted parameter data. -/
def unlocalizedEquiv (a b l : R) (hl : a * b * l = 1) (n : ℕ) :
    PowerQuotient a b (-b) n ≃+* PowerQuotient a b a n :=
  (equivB a b l hl n).trans
    ((jetEquiv a b l hl n).trans (equivA a b l hl n).symm)

/-- This exact map identity binds the new map to v0.2's independent quotient pullback. -/
theorem localized_square (a b l : R) (hl : a * b * l = 1) (n : ℕ)
    (u : PowerQuotient a b (-b) n) :
    equivA a b l hl n (unlocalizedEquiv a b l hl n u) =
      pullbackBA a b l hl n (equivB a b l hl n u) := by
  change equivA a b l hl n ((equivA a b l hl n).symm
    (pullbackBA a b l hl n (equivB a b l hl n u))) = _
  exact (equivA a b l hl n).apply_symm_apply _

/-- The inverse direction also binds to the old pullback, with anchor labels reversed. -/
theorem localized_square_symm (a b l : R) (hl : a * b * l = 1) (n : ℕ)
    (u : PowerQuotient a b a n) :
    equivB a b l hl n ((unlocalizedEquiv a b l hl n).symm u) =
      pullbackAB a b l hl n (equivA a b l hl n u) := by
  change equivB a b l hl n ((equivB a b l hl n).symm
    (pullbackAB a b l hl n (equivA a b l hl n u))) = _
  exact (equivB a b l hl n).apply_symm_apply _

/-- Both inverse identities hold on the full UNLOCALIZED quotient, not just coordinates. -/
theorem unlocalized_roundtrips (a b l : R) (hl : a * b * l = 1) (n : ℕ) :
    (∀ u, (unlocalizedEquiv a b l hl n).symm (unlocalizedEquiv a b l hl n u) = u) ∧
      (∀ v, unlocalizedEquiv a b l hl n ((unlocalizedEquiv a b l hl n).symm v) = v) :=
  ⟨(unlocalizedEquiv a b l hl n).symm_apply_apply,
    (unlocalizedEquiv a b l hl n).apply_symm_apply⟩

/-- Pullback commutes with the previous unlocalized ideal-power transitions. -/
theorem unlocalized_transition (a b l : R) (hl : a * b * l = 1)
    (m n : ℕ) (hmn : m ≤ n) (u : PowerQuotient a b (-b) n) :
    transition a b a m n hmn (unlocalizedEquiv a b l hl n u) =
      unlocalizedEquiv a b l hl m (transition a b (-b) m n hmn u) := by
  apply (equivA a b l hl m).injective
  rw [equivA_transition, localized_square, localized_square,
    pullbackBA_truncate, equivB_transition]

/-- Inverse truncation compatibility is separate from the forward statement. -/
theorem unlocalized_symm_transition (a b l : R) (hl : a * b * l = 1)
    (m n : ℕ) (hmn : m ≤ n) (u : PowerQuotient a b a n) :
    transition a b (-b) m n hmn ((unlocalizedEquiv a b l hl n).symm u) =
      (unlocalizedEquiv a b l hl m).symm (transition a b a m n hmn u) := by
  apply (equivB a b l hl m).injective
  rw [equivB_transition, localized_square_symm, localized_square_symm,
    pullbackAB_truncate, equivA_transition]

/-- Coefficients remain fixed on the original quotient carriers. -/
theorem unlocalized_scalar (a b l : R) (hl : a * b * l = 1) (n : ℕ) (c : R) :
    unlocalizedEquiv a b l hl n
        (Ideal.Quotient.mk (curveSectionIdeal a b (-b) ^ n) (algebraMap R (Coordinate a b) c)) =
      Ideal.Quotient.mk (curveSectionIdeal a b a ^ n) (algebraMap R (Coordinate a b) c) := by
  apply (equivA a b l hl n).injective
  rw [localized_square, equivB_mk, equivA_mk, pullbackBA_mk]
  change Ideal.Quotient.mk (atA a b ^ n) (pullback a b l hl (FreyTorsionOpen.scalar a b c)) =
    Ideal.Quotient.mk (atA a b ^ n) (FreyTorsionOpen.scalar a b c)
  rw [pullback_scalar]

/-- A two-variable jet at order N uses the SAME canonical exponent N+1. -/
def presentedJetEquiv (a b l : R) (hl : a * b * l = 1) (N : ℕ) :
    Jet a b (-b) N ≃+* Jet a b a N :=
  (finiteEquiv a b (-b) N).symm.toRingEquiv.trans
    ((unlocalizedEquiv a b l hl (N + 1)).trans (finiteEquiv a b a N).toRingEquiv)

/-- The comparison also commutes with the ORIGINAL two-variable jet truncations. -/
theorem presentedJet_truncate (a b l : R) (hl : a * b * l = 1)
    (M N : ℕ) (hMN : M ≤ N) (u : Jet a b (-b) N) :
    truncate a b a M N hMN (presentedJetEquiv a b l hl N u) =
      presentedJetEquiv a b l hl M (truncate a b (-b) M N hMN u) := by
  change truncate a b a M N hMN
      (finiteEquiv a b a N
        (unlocalizedEquiv a b l hl (N + 1) ((finiteEquiv a b (-b) N).symm u))) =
    finiteEquiv a b a M
      (unlocalizedEquiv a b l hl (M + 1)
        ((finiteEquiv a b (-b) M).symm (truncate a b (-b) M N hMN u)))
  rw [← finiteEquiv_transition, unlocalized_transition, finiteEquiv_symm_transition]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionUnlocalizedJets

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Same primitive source, now on the original two-variable finite jet algebras. -/
def PrimitiveAdditiveTriple.freyT0PresentedJetPullback (t : PrimitiveAdditiveTriple) (N : ℕ) :
    FreyJetQuotient.Jet (t.a : ℚ) (t.b : ℚ) (-(t.b : ℚ)) N ≃+*
      FreyJetQuotient.Jet (t.a : ℚ) (t.b : ℚ) (t.a : ℚ) N :=
  FreyTorsionUnlocalizedJets.presentedJetEquiv _ _ _ t.freyOpen_ab_inverse N

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
