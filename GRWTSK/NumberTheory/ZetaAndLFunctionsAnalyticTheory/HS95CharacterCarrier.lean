/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.AddressCanonicalPrimeEnumeration
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeOrbitCharacterReturn
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.NumberTheory.MulChar.Lemmas

/-!
# Primitive Dirichlet character readout on successive 95-prime windows

Euclidean division by 95 supplies the window number and physical position of
each prime index. The position type is independent of the character and its
conductor. The observation is the actual complex character value at the prime
represented by that position. Multiplicativity recovers its prime-power values,
including the zero values at primes dividing the character's level.

For the arithmetic term of `CharacterWindow.twistedPrime`, group the original
finite support by the window of each integer's least prime factor. A prime
power is the power of its least prime factor to the exponent supplied by its
factorization. The complementary integers have zero von Mangoldt weight. The
finite partition preserves the support, weights, complex conjugation and sign
of the character term's real-pairing convention. No assertion about the other
terms of the Weil form is required for this identity.

An impulse at the first prime of the next window is invisible in all previous
windows. This obstruction concerns arbitrary readout signals. The actual
character readout has additional structure supplied by its character argument.
Each complex phase transports equivariantly to the dual sector. Taking real
parts identifies the two sector values at any nonreal phase. Diagonal heat with
real rates commutes with this conjugation and is injective at every finite time.
-/

set_option autoImplicit false

noncomputable section

open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.HS95CharacterCarrier

open BitMatrix.Carrier.SequentialPrimeSpecification
open WeilQuadraticForm.CharacterWindow WeilQuadraticForm.LowSchur
open WeilQuadraticForm.PrimeOrbitCharacterReturn

/-- The physical positions shared by every prime window and character sector. -/
abbrev Position := Fin 95

def primeIndex (window : ℕ) (position : Position) : ℕ :=
  95 * window + position.val

def windowOf (index : ℕ) : ℕ := index / 95

def positionOf (index : ℕ) : Position := ⟨index % 95, Nat.mod_lt _ (by decide)⟩

@[simp]
theorem primeIndex_split (index : ℕ) :
    primeIndex (windowOf index) (positionOf index) = index := by
  simpa [primeIndex, windowOf, positionOf, Nat.add_comm] using Nat.mod_add_div index 95

@[simp]
theorem windowOf_primeIndex (window : ℕ) (position : Position) :
    windowOf (primeIndex window position) = window := by
  have bound := position.isLt
  unfold windowOf primeIndex
  omega

@[simp]
theorem positionOf_primeIndex (window : ℕ) (position : Position) :
    positionOf (primeIndex window position) = position := by
  apply Fin.ext
  have bound := position.isLt
  change (95 * window + position.val) % 95 = position.val
  omega

/-- The physical prime label at a window position. -/
def primeAt (window : ℕ) (position : Position) : ℕ :=
  canonicalPrimeEnumeration.value (primeIndex window position)

theorem primeAt_prime (window : ℕ) (position : Position) : Nat.Prime (primeAt window position) :=
  canonicalPrimeEnumeration.prime _

theorem primeAt_eq_iff {w v : ℕ} {i j : Position} :
    primeAt w i = primeAt v j ↔ w = v ∧ i = j := by
  constructor
  · intro samePrime
    have sameIndex := canonicalPrimeEnumeration.strictlyIncreasing.injective samePrime
    exact ⟨by simpa using congrArg windowOf sameIndex,
      by simpa using congrArg positionOf sameIndex⟩
  · rintro ⟨rfl, rfl⟩
    rfl

theorem primeAt_count_split {p : ℕ} (hp : p.Prime) :
    primeAt (windowOf (Nat.count Nat.Prime p)) (positionOf (Nat.count Nat.Prime p)) = p := by
  rw [primeAt, primeIndex_split, canonicalPrimeEnumeration_value, Nat.nth_count hp]

/-- Prime-label coverage concerns precisely the ordinary primes. -/
theorem exists_unique_primeAddress {p : ℕ} (hp : p.Prime) :
    ∃! address : ℕ × Position, primeAt address.1 address.2 = p := by
  refine ⟨(windowOf (Nat.count Nat.Prime p), positionOf (Nat.count Nat.Prime p)),
    primeAt_count_split hp, ?_⟩
  intro address hasPrime
  exact Prod.ext_iff.mpr (primeAt_eq_iff.mp (hasPrime.trans (primeAt_count_split hp).symm))

/-- Restrict an arbitrary complex prime signal to a single physical window. -/
def observe (signal : ℕ → ℂ) (window : ℕ) : Position → ℂ :=
  fun position => signal (primeAt window position)

/-- Even an entire finite prefix misses an actual prime. The pair of signals
    below separates that prime while agreeing throughout the observed prefix. -/
theorem finite_prefix_misses_signal (next : ℕ) :
    ∃ f g : ℕ → ℂ,
      (∀ w < next, observe f w = observe g w) ∧
      f (primeAt next 0) ≠ g (primeAt next 0) := by
  refine ⟨fun _ => 0, fun p => if p = primeAt next 0 then 1 else 0, ?_, ?_⟩
  · intro w before
    funext i
    have different : primeAt w i ≠ primeAt next 0 := fun same =>
      before.ne (primeAt_eq_iff.mp same).1
    simp [observe, different]
  · simp

/-- A real diagonal heat model on the physical positions. The rates are
    parameters, with the same rates used in both character sectors. -/
def diagonalHeat (rate : Position → ℝ) (time : ℝ) (signal : Position → ℂ) : Position → ℂ :=
  fun i => (Real.exp (-time * rate i) : ℂ) * signal i

@[simp]
theorem diagonalHeat_zero (rate : Position → ℝ) (signal : Position → ℂ) :
    diagonalHeat rate 0 signal = signal := by
  funext i
  simp [diagonalHeat]

theorem diagonalHeat_add (rate : Position → ℝ) (s t : ℝ) (signal : Position → ℂ) :
    diagonalHeat rate (s + t) signal = diagonalHeat rate s (diagonalHeat rate t signal) := by
  funext i
  simp only [diagonalHeat, ← mul_assoc, ← Complex.ofReal_mul, ← Real.exp_add]
  rw [neg_add, add_mul]

theorem diagonalHeat_injective (rate : Position → ℝ) (t : ℝ) :
    Function.Injective (diagonalHeat rate t) := by
  intro f g same
  funext i
  exact mul_left_cancel₀ (Complex.ofReal_ne_zero.mpr (Real.exp_ne_zero _)) (congrFun same i)

theorem diagonalHeat_conj (rate : Position → ℝ) (t : ℝ) (signal : Position → ℂ) :
    diagonalHeat rate t (fun i => conj (signal i)) =
      fun i => conj (diagonalHeat rate t signal i) := by
  funext i
  simp only [diagonalHeat, map_mul, Complex.conj_ofReal]

/-- A real-only readout of the heated signal identifies opposite imaginary phases. -/
theorem diagonalHeat_real_collision (rate : Position → ℝ) (t : ℝ) :
    ¬ Function.Injective (fun signal : Position → ℂ => fun i => (diagonalHeat rate t signal i).re) := by
  intro hinj
  have sameReal : (fun i => (diagonalHeat rate t (fun _ => Complex.I) i).re) =
      fun i => (diagonalHeat rate t (fun _ => -Complex.I) i).re := by
    funext i
    simp only [diagonalHeat, Complex.mul_re, Complex.ofReal_im, Complex.I_re,
      Complex.I_im, Complex.neg_re, Complex.neg_im, neg_zero, mul_zero, zero_mul, sub_zero]
  have samePhase := congrArg Complex.im (congrFun (hinj sameReal) 0)
  norm_num at samePhase

variable {q : ℕ}

/-- The character sector supplies the complex observation, with the same
    physical positions for all characters. For primitive `χ` the level is its conductor. -/
def characterObservation (χ : DirichletCharacter ℂ q) (window : ℕ) : Position → ℂ :=
  observe (fun n => χ n) window

theorem characterObservation_zero_iff (χ : DirichletCharacter ℂ q) (w : ℕ) (i : Position) :
    characterObservation χ w i = 0 ↔ primeAt w i ∣ q := by
  have nonzero : characterObservation χ w i ≠ 0 ↔ ¬ primeAt w i ∣ q := by
    unfold characterObservation observe
    rw [MulChar.apply_ne_zero_iff, ZMod.isUnit_iff_coprime,
      Nat.Prime.coprime_iff_not_dvd (primeAt_prime w i)]
  simpa only [ne_eq, not_not] using not_congr nonzero

def powerObservation (χ : DirichletCharacter ℂ q) (window : ℕ) (position : Position)
    (exponent : ℕ) : ℂ :=
  characterObservation χ window position ^ exponent

@[simp]
theorem powerObservation_eq_character [NeZero q] (χ : DirichletCharacter ℂ q) (window : ℕ)
    (position : Position) (exponent : ℕ) :
    powerObservation χ window position exponent = χ (primeAt window position ^ exponent) :=
  (dirichlet_prime_power_phase χ (primeAt window position) exponent).symm

@[simp]
theorem characterObservation_dual (χ : DirichletCharacter ℂ q)
    (window : ℕ) (position : Position) :
    characterObservation χ⁻¹ window position = conj (characterObservation χ window position) := by
  simpa [characterObservation, observe, RCLike.star_def] using
    (MulChar.star_apply' χ (primeAt window position : ZMod q)).symm

@[simp]
theorem powerObservation_dual (χ : DirichletCharacter ℂ q)
    (window : ℕ) (position : Position) (exponent : ℕ) :
    powerObservation χ⁻¹ window position exponent =
      conj (powerObservation χ window position exponent) := by
  unfold powerObservation
  rw [characterObservation_dual, map_pow]

theorem real_observation_identifies_dual (χ : DirichletCharacter ℂ q)
    (window : ℕ) (position : Position)
    (nonreal : (characterObservation χ window position).im ≠ 0) :
    characterObservation χ⁻¹ window position ≠ characterObservation χ window position ∧
      (characterObservation χ⁻¹ window position).re =
        (characterObservation χ window position).re := by
  rw [characterObservation_dual]
  refine ⟨?_, Complex.conj_re _⟩
  intro same
  have him := congrArg Complex.im same
  rw [Complex.conj_im] at him
  exact nonreal (by linarith)

theorem diagonalHeat_dual_character (rate : Position → ℝ) (t : ℝ)
    (χ : DirichletCharacter ℂ q) (w : ℕ) :
    diagonalHeat rate t (characterObservation χ⁻¹ w) =
      fun i => conj (diagonalHeat rate t (characterObservation χ w) i) := by
  have dual : characterObservation χ⁻¹ w = fun i => conj (characterObservation χ w i) :=
    funext (characterObservation_dual χ w)
  rw [dual, diagonalHeat_conj]

theorem diagonalHeat_real_identifies_dual (rate : Position → ℝ) (t : ℝ)
    (χ : DirichletCharacter ℂ q) (w : ℕ) (i : Position)
    (nonreal : (characterObservation χ w i).im ≠ 0) :
    let dual := diagonalHeat rate t (characterObservation χ⁻¹ w)
    let original := diagonalHeat rate t (characterObservation χ w)
    dual ≠ original ∧ (fun j => (dual j).re) = fun j => (original j).re := by
  dsimp
  refine ⟨?_, ?_⟩
  · intro same
    exact (real_observation_identifies_dual χ w i nonreal).1
      (congrFun (diagonalHeat_injective rate t same) i)
  · rw [diagonalHeat_dual_character]
    funext j
    exact Complex.conj_re _

@[simp]
theorem characterObservation_modOne (χ : DirichletCharacter ℂ 1)
    (window : ℕ) (position : Position) : characterObservation χ window position = 1 := by
  change χ (primeAt window position : ZMod 1) = 1
  rw [Subsingleton.elim (primeAt window position : ZMod 1) 1, map_one]

/-- The prime index associated to a supported integer's least prime factor. -/
def basePrimeIndex (n : ℕ) : ℕ := Nat.count Nat.Prime n.minFac

def baseWindow (n : ℕ) : ℕ := windowOf (basePrimeIndex n)

/-- The finite set of windows that own at least one original support label. -/
def activeWindows (T : ℝ) : Finset ℕ := (activePrimePowers T).image baseWindow

variable [NeZero q]

/-- The readout for an original support label, evaluated at the window's
    physical position and the actual factorization exponent. -/
def windowPrimeContribution (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) (w n : ℕ) : ℝ :=
  primeWeight n * (conj (powerObservation χ w (positionOf (basePrimeIndex n))
    (n.factorization n.minFac)) * C n).re

/-- The returned coefficient is exact on the label's owning window. -/
theorem windowPrimeContribution_eq (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) (n : ℕ) :
    windowPrimeContribution χ C (baseWindow n) n =
      primeWeight n * (conj (χ n) * C n).re := by
  by_cases h : IsPrimePow n
  · have hp : n.minFac.Prime := Nat.minFac_prime h.ne_one
    unfold windowPrimeContribution
    rw [powerObservation_eq_character, baseWindow, basePrimeIndex, primeAt_count_split hp, ← Nat.cast_pow,
      h.minFac_pow_factorization_eq]
  · simp [windowPrimeContribution, primeWeight, ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr h]

/-- A single window's arithmetic contribution, with the original weights. -/
def windowTwistedPrime (T : ℝ) (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) (w : ℕ) : ℝ :=
  2 * ∑ n ∈ (activePrimePowers T).filter (fun n => baseWindow n = w),
    windowPrimeContribution χ C w n

/-- The exact finite source return. Every active label belongs to one window. -/
theorem sum_windowTwistedPrime_eq (T : ℝ) (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) :
    ∑ w ∈ activeWindows T, windowTwistedPrime T χ C w = twistedPrime T χ C := by
  simp only [windowTwistedPrime, twistedPrime, ← Finset.mul_sum]
  congr 1
  calc
    _ = ∑ w ∈ activeWindows T, ∑ n ∈ (activePrimePowers T).filter (fun n => baseWindow n = w),
        primeWeight n * (conj (χ n) * C n).re := by
      apply Finset.sum_congr rfl
      intro w _
      apply Finset.sum_congr rfl
      intro n hn
      rw [← (Finset.mem_filter.mp hn).2, windowPrimeContribution_eq]
    _ = _ := Finset.sum_fiberwise_of_maps_to (fun n hn =>
      Finset.mem_image_of_mem baseWindow hn) _

end GRWTSK.NumberTheory.HS95CharacterCarrier
