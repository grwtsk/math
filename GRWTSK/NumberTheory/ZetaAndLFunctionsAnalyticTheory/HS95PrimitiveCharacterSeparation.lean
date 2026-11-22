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


/-- A single nonreal anchor row replaces all pair products. No square
sample is needed, since a character's modulus is fixed by unit status
at the given level. If all slots are real, no product samples are needed. -/
theorem first_window_anchor_eq_iff_inverse_orbit [NeZero q] (small : q ≤ 503)
    (χ ψ : DirichletCharacter ℂ q) :
    ((∀ i, (characterObservation χ 0 i).re = (characterObservation ψ 0 i).re) ∧
      ((∀ i, (characterObservation χ 0 i).im = 0) ∨
        ∃ a, (characterObservation χ 0 a).im ≠ 0 ∧
          ∀ i, i ≠ a → (χ (primeAt 0 i * primeAt 0 a : ℕ)).re =
            (ψ (primeAt 0 i * primeAt 0 a : ℕ)).re)) ↔ ψ = χ ∨ ψ = χ⁻¹ := by
  let x := characterObservation χ 0
  let y := characterObservation ψ 0
  constructor
  · rintro ⟨real, info⟩
    have modulus (i : Position) : ‖x i‖ = ‖y i‖ := by
      change ‖χ (primeAt 0 i : ZMod q)‖ = ‖ψ (primeAt 0 i : ZMod q)‖
      by_cases unit : IsUnit (primeAt 0 i : ZMod q)
      · exact (χ.unit_norm_eq_one unit.unit).trans (ψ.unit_norm_eq_one unit.unit).symm
      · rw [χ.map_nonunit unit, ψ.map_nonunit unit]
    have squares (i : Position) : (x i).im ^ 2 = (y i).im ^ 2 := by
      rw [← Complex.sq_norm_sub_sq_re, ← Complex.sq_norm_sub_sq_re, modulus i, real i]
    have gram : ∀ i j : Position, (x i).im * (x j).im = (y i).im * (y j).im := by
      rcases info with allReal | ⟨a, anchor, products⟩
      · have yReal (i : Position) : (y i).im = 0 := by
          have sq := squares i
          rw [allReal i, zero_pow (by decide : (2 : ℕ) ≠ 0)] at sq
          exact (mul_eq_zero.mp (by simpa only [pow_two] using sq.symm)).elim id id
        intro i j
        simp [show (x i).im = 0 from allReal i, yReal i]
      · have row (i : Position) : (x i).im * (x a).im = (y i).im * (y a).im := by
          by_cases same : i = a
          · subst i
            simpa only [pow_two] using squares a
          · have h : (x i * x a).re = (y i * y a).re := by
              simpa only [x, y, Nat.cast_mul, map_mul, characterObservation, observe] using products i same
            rw [Complex.mul_re, Complex.mul_re, real i, real a] at h
            linarith
        intro i j
        apply mul_right_cancel₀ (pow_ne_zero 2 anchor)
        calc
          _ = ((x i).im * (x a).im) * ((x j).im * (x a).im) := by ring
          _ = ((y i).im * (y a).im) * ((y j).im * (y a).im) := by rw [row i, row j]
          _ = (y i).im * (y j).im * (y a).im ^ 2 := by ring
          _ = _ := by rw [squares a]
    apply (first_window_real_pairs_eq_iff_inverse_orbit small χ ψ).mp
    refine ⟨real, fun i j => ?_⟩
    simp only [Nat.cast_mul, map_mul]
    change (x i * x j).re = (y i * y j).re
    rw [Complex.mul_re, Complex.mul_re, real i, real j, gram i j]
  · intro orbit
    obtain ⟨real, products⟩ := (first_window_real_pairs_eq_iff_inverse_orbit small χ ψ).mpr orbit
    refine ⟨real, ?_⟩
    by_cases nonreal : ∃ a, (x a).im ≠ 0
    · obtain ⟨a, ha⟩ := nonreal
      exact Or.inr ⟨a, ha, fun i _ => products i a⟩
    · exact Or.inl fun i => not_not.mp fun hi => nonreal ⟨i, hi⟩

/-- Enough full windows to contain every prime strictly below the level.
The final window may also contain primes at or above the level. -/
def characterWindowCount (q : ℕ) : ℕ := (Nat.count Nat.Prime q + 94) / 95

/-- For every positive level, finitely many visits to the same physical
carrier determine the entire complex character. -/
theorem bounded_window_character_injective [NeZero q] :
    Function.Injective (fun χ : DirichletCharacter ℂ q =>
      fun w : Fin (characterWindowCount q) => characterObservation χ w.val) := by
  intro χ ψ same
  apply character_eq_of_coprime_prime_values
  intro p prime below _
  let n := Nat.count Nat.Prime p
  have count : n < Nat.count Nat.Prime q := Nat.count_strict_mono prime below
  have bound : windowOf n < characterWindowCount q := by
    unfold windowOf characterWindowCount
    omega
  have pair := congrFun (congrFun same ⟨windowOf n, bound⟩) (positionOf n)
  simpa only [characterObservation, observe, primeAt_count_split prime, n] using pair

/-- Independent finite-time diagonal heat at each visit preserves character
identification. No positivity of the rates is needed for exact inversion. -/
theorem bounded_heated_window_character_injective [NeZero q]
    (rate : Fin (characterWindowCount q) → Position → ℝ)
    (time : Fin (characterWindowCount q) → ℝ) :
    Function.Injective (fun χ : DirichletCharacter ℂ q =>
      fun w => diagonalHeat (rate w) (time w) (characterObservation χ w.val)) := by
  intro χ ψ same
  apply bounded_window_character_injective
  funext w
  exact diagonalHeat_injective (rate w) (time w) (congrFun same w)

/-- A non-self-dual character has an imaginary phase in a window within
the level-dependent bound, supplying an address for a signed dual test. -/
theorem exists_bounded_window_nonreal_of_distinct_dual [NeZero q]
    (χ : DirichletCharacter ℂ q) (different : χ⁻¹ ≠ χ) :
    ∃ (w : Fin (characterWindowCount q)) (i : Position),
      (characterObservation χ w.val i).im ≠ 0 := by
  by_contra! real
  apply different
  apply bounded_window_character_injective
  funext w i
  change characterObservation χ⁻¹ w.val i = characterObservation χ w.val i
  rw [characterObservation_dual]
  apply Complex.ext
  · exact Complex.conj_re _
  · rw [Complex.conj_im, real w i, neg_zero]

/-- Two complex closed disks of the same radius share a reading exactly
when their midpoint is within the noise budget. -/
private theorem common_disk_read_iff (a b : ℂ) (ε : ℝ) :
    (∃ y : ℂ, ‖y - a‖ ≤ ε ∧ ‖y - b‖ ≤ ε) ↔ ‖a - b‖ ≤ 2 * ε := by
  constructor
  · rintro ⟨y, ha, hb⟩
    have h := norm_add_le (a - y) (y - b)
    rw [sub_add_sub_cancel, norm_sub_rev a y] at h
    linarith
  · intro h
    refine ⟨(a + b) / 2, ?_, ?_⟩
    · rw [show (a + b) / 2 - a = (b - a) / 2 by ring, norm_div,
        norm_sub_rev b a, Complex.norm_ofNat]
      linarith
    · rw [show (a + b) / 2 - b = (a - b) / 2 by ring, norm_div, Complex.norm_ofNat]
      linarith

/-- Exact criterion for a decoder on any family of characters at a known
positive level, including the subtype of primitive characters. The noise
disks are independent over the original 95 slots and bounded visits.
A strict distance gap for each distinct pair is necessary and sufficient. -/
theorem bounded_heated_window_decoder_iff [NeZero q]
    (family : Set (DirichletCharacter ℂ q))
    (rate : Fin (characterWindowCount q) → Position → ℝ)
    (time : Fin (characterWindowCount q) → ℝ)
    (noise : Fin (characterWindowCount q) → Position → ℝ) :
    let center (χ : DirichletCharacter ℂ q) (w : Fin (characterWindowCount q)) :=
      diagonalHeat (rate w) (time w) (characterObservation χ w.val)
    (∃ decode : (Fin (characterWindowCount q) → Position → ℂ) → Option family,
      ∀ (χ : family) y, (∀ w i, ‖y w i - center χ w i‖ ≤ noise w i) →
        decode y = some χ) ↔
    ∀ (χ ψ : family), χ ≠ ψ →
      ∃ w i, 2 * noise w i < ‖center χ w i - center ψ w i‖ := by
  classical
  intro center
  let Fits (χ : family) (y : Fin (characterWindowCount q) → Position → ℂ) :=
    ∀ w i, ‖y w i - center χ w i‖ ≤ noise w i
  change (∃ decode : _ → Option family, ∀ χ y, Fits χ y → decode y = some χ) ↔ _
  have overlap (χ ψ : family) :
      (∃ y, Fits χ y ∧ Fits ψ y) ↔
        ∀ w i, ‖center χ w i - center ψ w i‖ ≤ 2 * noise w i := by
    constructor
    · rintro ⟨y, hχ, hψ⟩ w i
      exact (common_disk_read_iff _ _ _).mp ⟨y w i, hχ w i, hψ w i⟩
    · intro h
      choose y hχ hψ using fun w i => (common_disk_read_iff _ _ _).mpr (h w i)
      exact ⟨y, hχ, hψ⟩
  constructor
  · rintro ⟨decode, correct⟩ χ ψ different
    by_contra! noGap
    obtain ⟨y, hχ, hψ⟩ := (overlap χ ψ).mpr noGap
    exact different (Option.some.inj ((correct χ y hχ).symm.trans (correct ψ y hψ)))
  · intro gap
    let decode (y : Fin (characterWindowCount q) → Position → ℂ) : Option family :=
      if h : ∃ χ, Fits χ y then some h.choose else none
    refine ⟨decode, fun χ y ok => ?_⟩
    have fits : ∃ ψ, Fits ψ y := ⟨χ, ok⟩
    unfold decode
    rw [dite_eq_left fits]
    congr 1
    by_contra different
    obtain ⟨w, i, far⟩ := gap fits.choose χ different
    exact far.not_ge ((overlap fits.choose χ).mp ⟨y, fits.choose_spec, ok⟩ w i)

end GRWTSK.NumberTheory.HS95CharacterCarrier
