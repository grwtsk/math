/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.HS95CharacterCarrier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindow
import Mathlib.Data.Nat.Factorization.Induction

/-!
# Finite separation of actual Dirichlet character phases

Every residue has a representative less than the level. Its prime factors
are also below the level. Nonunit values are forced, so complex observations
at just the coprime primes below the level determine the entire character.
Comparison of primitive characters across levels can be made at a positive
common multiple, because inflation preserves the conductor.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.HS95CharacterCarrier

open WeilQuadraticForm.FirstPrimeWindow
open BitMatrix.Carrier.SequentialPrimeSpecification

variable {q r m : ℕ}

/-- The finite comparison uses multiplicativity, including at nonunits. -/
theorem character_eq_of_coprime_prime_values [NeZero q]
    {χ ψ : DirichletCharacter ℂ q}
    (equal : ∀ p : ℕ, p.Prime → p < q → p.Coprime q → χ p = ψ p) : χ = ψ := by
  have reps (n : ℕ) : n < q → χ n = ψ n := by
    induction n using Nat.recOnMul with
    | zero =>
      intro _
      simp only [Nat.cast_zero]
      by_cases unit : IsUnit (0 : ZMod q)
      · rw [isUnit_zero_iff.mp unit, map_one, map_one]
      · rw [MulChar.map_nonunit _ unit, MulChar.map_nonunit _ unit]
    | one => simp
    | prime p hp =>
      intro lt
      by_cases cop : p.Coprime q
      · exact equal p hp lt cop
      · have nonunit : ¬ IsUnit (p : ZMod q) := fun h => cop ((ZMod.isUnit_iff_coprime p q).mp h)
        rw [MulChar.map_nonunit _ nonunit, MulChar.map_nonunit _ nonunit]
    | mul a b ha hb =>
      intro lt
      by_cases ha0 : a = 0
      · simpa [ha0] using ha (by omega)
      by_cases hb0 : b = 0
      · simpa [hb0] using hb (by omega)
      have ale : a ≤ a * b := Nat.le_mul_of_pos_right _ (Nat.pos_of_ne_zero hb0)
      have ble : b ≤ a * b := Nat.le_mul_of_pos_left _ (Nat.pos_of_ne_zero ha0)
      rw [Nat.cast_mul, map_mul, map_mul, ha (ale.trans_lt lt), hb (ble.trans_lt lt)]
  apply MulChar.ext'
  intro a
  simpa only [ZMod.natCast_zmod_val] using reps a.val (ZMod.val_lt a)

/-- A single full complex 95-slot window determines a character at any
fixed positive level at most 503. The subsequent arithmetic tests can still
require all windows. -/
theorem first_window_character_injective [NeZero q] (small : q ≤ 503) :
    Function.Injective (fun χ : DirichletCharacter ℂ q => characterObservation χ 0) := by
  intro χ ψ h
  apply character_eq_of_coprime_prime_values
  intro p hp lt _
  obtain ⟨i, hi⟩ := (prime_lt_nextPrime_iff hp).1 (lt.trans_le small)
  have address : primeAt 0 i = p := by
    simpa only [primeAt, primeIndex, Nat.mul_zero, Nat.zero_add,
      canonicalPrimeEnumeration_value] using hi
  simpa only [characterObservation, observe, address] using congrFun h i

theorem heated_first_window_character_injective [NeZero q] (small : q ≤ 503)
    (rate : Position → ℝ) (time : ℝ) :
    Function.Injective (fun χ : DirichletCharacter ℂ q =>
      diagonalHeat rate time (characterObservation χ 0)) :=
  (diagonalHeat_injective rate time).comp (first_window_character_injective small)

/-- Prime phase comparisons at a positive common multiple recover the
conductor. For primitive characters the conductor is the original level. -/
theorem primitive_level_eq_of_common_prime_values [NeZero m]
    {χ : DirichletCharacter ℂ q} {ψ : DirichletCharacter ℂ r}
    (χprim : χ.IsPrimitive) (ψprim : ψ.IsPrimitive)
    (hq : q ∣ m) (hr : r ∣ m)
    (equal : ∀ p : ℕ, p.Prime → p < m → p.Coprime m → χ p = ψ p) : q = r := by
  have same : DirichletCharacter.changeLevel hq χ = DirichletCharacter.changeLevel hr ψ := by
    apply character_eq_of_coprime_prime_values
    intro p hp lt cop
    have hc : IsCoprime (p : ℤ) (m : ℤ) := Nat.isCoprime_iff_coprime.mpr cop
    have left := DirichletCharacter.changeLevel_eq_cast_of_dvd' χ hq hc
    have right := DirichletCharacter.changeLevel_eq_cast_of_dvd' ψ hr hc
    push_cast at left right
    exact left.trans ((equal p hp lt cop).trans right.symm)
  have conductors := congrArg DirichletCharacter.conductor same
  rwa [DirichletCharacter.conductor_changeLevel, DirichletCharacter.conductor_changeLevel,
    show χ.conductor = q from χprim, show ψ.conductor = r from ψprim] at conductors

/-- The character at level one is the zeta character, with no prime
phase or parity ambiguity. -/
theorem levelOne_character_eq_one (χ : DirichletCharacter ℂ 1) : χ = 1 :=
  character_eq_of_coprime_prime_values (fun p hp lt _ => (by have := hp.two_le; omega))

/-- At small positive levels a distinct dual is distinguished by the
full complex first window and collapsed by its real projection, even
after common finite-time heat. -/
theorem heated_first_window_dual_control [NeZero q] (small : q ≤ 503)
    (rate : Position → ℝ) (time : ℝ) (χ : DirichletCharacter ℂ q) (different : χ⁻¹ ≠ χ) :
    let original := diagonalHeat rate time (characterObservation χ 0)
    let dual := diagonalHeat rate time (characterObservation χ⁻¹ 0)
    dual ≠ original ∧ (fun j => (dual j).re) = fun j => (original j).re := by
  dsimp only
  refine ⟨fun same => different (heated_first_window_character_injective small rate time same), ?_⟩
  rw [diagonalHeat_dual_character]
  funext i
  exact Complex.conj_re _

/-- The primitive hypothesis matters for recovering a level. Both
principal characters agree on the common unit primes, including 2. -/
theorem imprimitive_level_control :
    (∀ p : ℕ, p.Prime → p < 3 → p.Coprime 3 →
      (1 : DirichletCharacter ℂ 1) p = (1 : DirichletCharacter ℂ 3) p) ∧
      (2 : ℕ).Prime ∧ 2 < 3 ∧ (2 : ℕ).Coprime 3 ∧
      ¬ (1 : DirichletCharacter ℂ 3).IsPrimitive := by
  constructor
  · intro p _ _ cop
    rw [MulChar.one_apply ((ZMod.isUnit_iff_coprime p 1).2 (by simp)),
      MulChar.one_apply ((ZMod.isUnit_iff_coprime p 3).2 cop)]
  · simp [DirichletCharacter.isPrimitive_def, DirichletCharacter.conductor_one]
    decide


open scoped ComplexConjugate

/-- The real parts of the observations and all pair products determine
the observations up to one simultaneous conjugation. -/
private theorem eq_or_conj_of_real_pairs {I : Type*} (x y : I → ℂ)
    (real : ∀ i, (x i).re = (y i).re)
    (pairs : ∀ i j, (x i * x j).re = (y i * y j).re) :
    y = x ∨ y = fun i => conj (x i) := by
  have gram (i j : I) : (x i).im * (x j).im = (y i).im * (y j).im := by
    have h := pairs i j
    rw [Complex.mul_re, Complex.mul_re, real i, real j] at h
    linarith
  by_cases nonreal : ∃ i, (x i).im ≠ 0
  · obtain ⟨a, anchor⟩ := nonreal
    have root : (y a).im = (x a).im ∨ (y a).im = -(x a).im := by
      have factor : ((y a).im - (x a).im) * ((y a).im + (x a).im) = 0 := by
        nlinarith only [gram a a]
      exact (mul_eq_zero.mp factor).imp (fun h => by linarith) (fun h => by linarith)
    rcases root with same | opposite
    · left
      funext i
      apply Complex.ext (real i).symm
      have h := (gram i a).symm
      rw [same] at h
      exact mul_right_cancel₀ anchor h
    · right
      funext i
      apply Complex.ext
      · simpa using (real i).symm
      · rw [Complex.conj_im]
        apply mul_right_cancel₀ anchor
        have h := gram i a
        rw [opposite, mul_neg] at h
        rw [neg_mul]
        linarith only [h]
  · left
    funext i
    apply Complex.ext (real i).symm
    have hx : (x i).im = 0 := by
      by_contra h
      exact nonreal ⟨i, h⟩
    have h := gram i i
    rw [hx, zero_mul] at h
    rcases mul_eq_zero.mp h.symm with hy | hy <;> rw [hx, hy]

/-- At a fixed positive level at most 503, the real first-window phases
and the real phases on pairwise products of its prime addresses identify
the inverse orbit exactly. The products include the diagonal squares. -/
theorem first_window_real_pairs_eq_iff_inverse_orbit [NeZero q] (small : q ≤ 503)
    (χ ψ : DirichletCharacter ℂ q) :
    ((∀ i, (characterObservation χ 0 i).re = (characterObservation ψ 0 i).re) ∧
     (∀ i j, (χ (primeAt 0 i * primeAt 0 j : ℕ)).re =
        (ψ (primeAt 0 i * primeAt 0 j : ℕ)).re)) ↔ ψ = χ ∨ ψ = χ⁻¹ := by
  constructor
  · rintro ⟨real, product⟩
    have pairs (i j : Position) :
        (characterObservation χ 0 i * characterObservation χ 0 j).re =
          (characterObservation ψ 0 i * characterObservation ψ 0 j).re := by
      simpa only [Nat.cast_mul, map_mul, characterObservation, observe] using product i j
    rcases eq_or_conj_of_real_pairs _ _ real pairs with same | dual
    · exact Or.inl (first_window_character_injective small same)
    · right
      apply first_window_character_injective small
      change characterObservation ψ 0 = characterObservation χ⁻¹ 0
      rw [dual]
      funext i
      exact (characterObservation_dual χ 0 i).symm
  · rintro (rfl | rfl)
    · exact ⟨fun _ => rfl, fun _ _ => rfl⟩
    · constructor
      · intro i
        rw [characterObservation_dual, Complex.conj_re]
      · intro i j
        simp only [Nat.cast_mul, map_mul]
        change (characterObservation χ 0 i * characterObservation χ 0 j).re =
          (characterObservation χ⁻¹ 0 i * characterObservation χ⁻¹ 0 j).re
        rw [characterObservation_dual, characterObservation_dual, ← map_mul, Complex.conj_re]

end GRWTSK.NumberTheory.HS95CharacterCarrier
