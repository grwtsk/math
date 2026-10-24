/-
Actual good-quotient character and zero-extension controls.
OpenAI/Mathlib Apache-2.0 notices and individual author credits remain in the imported source.
Human mathematical direction: grwtsk contributors; formalization: OpenAI Codex.
-/
import GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.Checks.Positive

noncomputable section
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction

theorem actual_root_inverse (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P)
    (η : rootsOfUnity 3 (O ⧸ P)) :
    restrictRootsOfUnity (Ideal.Quotient.mk P) 3
      ((restrictedRootsEquiv P hgood).symm η) = η :=
  (restrictedRootsEquiv P hgood).apply_symm_apply η

theorem actual_root_lift_unique (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P)
    (a b : rootsOfUnity 3 O)
    (hab : restrictRootsOfUnity (Ideal.Quotient.mk P) 3 a =
      restrictRootsOfUnity (Ideal.Quotient.mk P) 3 b) : a = b :=
  (restrictedRootsEquiv P hgood).injective hab

theorem actual_zero_value (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood 0 = 0 :=
  (cubicChar P hgood).map_zero

theorem actual_one_value (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood 1 = 1 :=
  (cubicChar P hgood).map_one

theorem actual_character_cube (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood ^ 3 = 1 := cubicChar_pow_three P hgood

theorem actual_unit_cube (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P)
    (u : (O ⧸ P)ˣ) : cubicChar P hgood (u : O ⧸ P) ^ 3 = 1 := by
  have h := congrArg (fun χ : MulChar (O ⧸ P) O => χ (u : O ⧸ P))
    (cubicChar_pow_three P hgood)
  simpa only [MulChar.pow_apply_coe, MulChar.one_apply_coe] using h

theorem actual_trivial_character_zero (P : Ideal O) [P.IsMaximal] :
    (1 : MulChar (O ⧸ P) O) 0 = 0 :=
  (1 : MulChar (O ⧸ P) O).map_zero

/-- The source power law does not assert the pointwise cube equals one at zero. -/
theorem actual_zero_cube_not_one (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood 0 ^ 3 ≠ 1 := by
  rw [actual_zero_value, zero_pow (by decide : 3 ≠ 0)]
  exact zero_ne_one

theorem actual_all_x_reduction (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    ∀ x : O ⧸ P, Ideal.Quotient.mk P (cubicChar P hgood x) = x ^ cubicExponent P :=
  cubicChar_reduce P hgood

/-- The actual maximal ideal supplied above (2) has a genuinely nontrivial order-three character. -/
theorem actual_good_character_nonvacuous :
    ∃ (P : Ideal O) (hP : P.IsMaximal) (hgood : lambda ∉ P),
      (2 : O) ∈ P ∧ @cubicChar P hP hgood 0 = 0 ∧ @cubicChar P hP hgood 1 = 1 ∧
        @cubicChar P hP hgood ≠ 1 ∧ orderOf (@cubicChar P hP hgood) = 3 := by
  obtain ⟨P, hP, htwo, hgood⟩ := exists_good_maximal_above_two
  let : P.IsMaximal := hP
  exact ⟨P, hP, hgood, htwo, actual_zero_value P hgood, actual_one_value P hgood,
    cubicChar_ne_one P hgood, cubicChar_order P hgood⟩

theorem actual_ramified_card : Nat.card (O ⧸ ramifiedIdeal) = 3 := by
  simpa only [Ideal.absNorm_apply, Submodule.cardQuot_apply] using ramifiedIdeal_absNorm

theorem actual_ramified_exponent_zero : cubicExponent ramifiedIdeal = 0 := by
  simp only [cubicExponent, actual_ramified_card]

/-- At the actual ramified ideal the all-x reduction formula fails at zero. -/
theorem actual_ramified_reduction_impossible :
    ¬ ∃ χ : MulChar (O ⧸ ramifiedIdeal) O,
      ∀ x : O ⧸ ramifiedIdeal,
        Ideal.Quotient.mk ramifiedIdeal (χ x) = x ^ cubicExponent ramifiedIdeal := by
  rintro ⟨χ, hχ⟩
  have hzero := hχ 0
  rw [χ.map_zero, map_zero, actual_ramified_exponent_zero, pow_zero] at hzero
  exact zero_ne_one hzero

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.Checks.Positive
