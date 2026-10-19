import FormalResearch.PositiveAtlas.ModularBoundary.Grassmannian
import Mathlib.NumberTheory.PrimeCounting

/-!
# Sound boundary gates and a complete finite prime-counting rule

A gate accepts its own modulus so that a prime is not removed by its own test.
Soundness holds for every modulus at least two. Completeness uses every prime
up to sqrt(N), proved via an actual small prime divisor; four fixed tests are
not advertised as an unbounded primality test. Finsets deduplicate gates.
-/

namespace FormalResearch.PositiveAtlas.ModularBoundary

open FormalResearch.PositiveAtlas.Grassmannian

/-- The exact modular gate, including the prime-preserving self exception. -/
def Gate (p n : ℕ) : Prop := n = p ∨ ¬ p ∣ n

/-- The gate has an executable arithmetic decision procedure. -/
instance gateDecidable (p n : ℕ) : Decidable (Gate p n) :=
  inferInstanceAs (Decidable (n = p ∨ ¬ p ∣ n))

/-- An executable zero/one gate; no complex floating-point comparison occurs. -/
def gateBit (p n : ℕ) : ℕ := if Gate p n then 1 else 0

/-- A modulus always passes its own corrected gate. -/
theorem gate_self (p : ℕ) : Gate p p := Or.inl rfl

/-- Every prime survives any modulus at least two, not just prime moduli. -/
theorem prime_passes_gate (n p : ℕ) (hn : n.Prime) (hp : 2 ≤ p) : Gate p n := by
  by_cases hd : p ∣ n
  · have he := hn.eq_one_or_self_of_dvd p hd
    exact Or.inl ((he.resolve_left (by omega)).symm)
  · exact Or.inr hd

/-- The arithmetic gate is exactly the chord-positivity gate with its self exception. -/
theorem gate_iff_defect (p : ℕ) [NeZero p] (n : ℕ) :
    Gate p n ↔ n = p ∨ 0 < defect p n := by
  rw [defect_pos_iff]
  rfl

/-- The same gate is intrinsic positivity of the actual plane, except at its own label. -/
theorem gate_iff_plane (p : ℕ) [NeZero p] (n : ℕ) :
    Gate p n ↔ n = p ∨ IntrinsicPositive (arithmeticPlane p n) := by
  rw [arithmeticPlane_positive_iff]
  rfl

/-- The corrected gate also has an exact finite Fourier expression. -/
theorem gateBit_eq_fourier (p : ℕ) [NeZero p] (n : ℕ) :
    (gateBit p n : ℂ) = 1 - fourierDelta p n + if n = p then 1 else 0 := by
  rw [fourierDelta_eq]
  by_cases he : n = p
  · subst n
    simp [gateBit, Gate]
  · by_cases hd : p ∣ n <;> simp [gateBit, Gate, he, hd]

/-- The finite set of all prime moduli needed for labels through N. -/
def sieveModuli (N : ℕ) : Finset ℕ := Nat.primesLE (Nat.sqrt N)

/-- Simultaneous gates, with no duplication of repeated boundary labels. -/
def Passes (P : Finset ℕ) (n : ℕ) : Prop := ∀ p ∈ P, Gate p n

/-- A finite set of arithmetic gates is decidable without classical choice. -/
instance passesDecidable (P : Finset ℕ) (n : ℕ) : Decidable (Passes P n) :=
  inferInstanceAs (Decidable (∀ p ∈ P, Gate p n))

/-- A complete bounded sieve, proved from the square-root divisor criterion. -/
theorem prime_iff_passes (n N : ℕ) (hn : 2 ≤ n) (hnN : n ≤ N) :
    n.Prime ↔ Passes (sieveModuli N) n := by
  constructor
  · intro hp p hmem
    exact prime_passes_gate n p hp ((Nat.mem_primesLE.mp hmem).2.two_le)
  · intro hpass
    apply Nat.prime_def_le_sqrt.mpr
    refine ⟨hn, ?_⟩
    intro m hm hms hmn
    obtain ⟨p, hp, hpm⟩ := Nat.exists_prime_and_dvd (show m ≠ 1 by omega)
    have hple : p ≤ m := Nat.le_of_dvd (by omega) hpm
    have hpn : p ∣ n := dvd_trans hpm hmn
    have hps : p ≤ Nat.sqrt N :=
      hple.trans (hms.trans (Nat.sqrt_le_sqrt hnN))
    have hg := hpass p (Nat.mem_primesLE.mpr ⟨hps, hp⟩)
    have hnp : n = p := hg.resolve_right (fun hnot => hnot hpn)
    have hplt : p < n := (hple.trans hms).trans_lt (Nat.sqrt_lt_self hn)
    omega

/-- Surviving tally labels, computed solely from the finite modular gates. -/
def sieveLabels (N : ℕ) : Finset ℕ :=
  (Finset.range (N + 1)).filter (fun n => 2 ≤ n ∧ Passes (sieveModuli N) n)

/-- The finite gate output equals Mathlib's independently defined prime set. -/
theorem sieveLabels_eq_primesLE (N : ℕ) : sieveLabels N = Nat.primesLE N := by
  ext n
  simp only [sieveLabels, Finset.mem_filter, Finset.mem_range, Nat.mem_primesLE]
  constructor
  · rintro ⟨hr, hn, hpass⟩
    have hnN : n ≤ N := by omega
    exact ⟨hnN, (prime_iff_passes n N hn hnN).mpr hpass⟩
  · rintro ⟨hnN, hp⟩
    exact ⟨by omega, hp.two_le, (prime_iff_passes n N hp.two_le hnN).mp hp⟩

/-- The number of surviving distinct labels is the standard prime-counting function. -/
theorem sieveLabels_card (N : ℕ) : (sieveLabels N).card = Nat.primeCounting N := by
  rw [sieveLabels_eq_primesLE]
  exact Nat.primesLE_card_eq_primeCounting N

/-- A finite product of zero/one gates is the simultaneous-gate indicator. -/
theorem gate_product (P : Finset ℕ) (n : ℕ) :
    (∏ p ∈ P, gateBit p n) = if Passes P n then 1 else 0 := by
  classical
  induction P using Finset.induction_on with
  | empty => simp [Passes]
  | @insert p P hp ih =>
    rw [Finset.prod_insert hp, ih]
    by_cases hg : Gate p n
    · have hpass : Passes (insert p P) n ↔ Passes P n := by simp [Passes, hg]
      simp only [gateBit, if_pos hg, one_mul, hpass]
    · have hpass : ¬ Passes (insert p P) n := by
        intro h
        exact hg (h p (Finset.mem_insert_self p P))
      simp only [gateBit, if_neg hg, zero_mul, if_neg hpass]

/-- The exact product-of-boundary-gates prime-counting formula, including N=0 and N=1. -/
theorem primeCounting_eq_gate_sum (N : ℕ) :
    Nat.primeCounting N =
      ∑ n ∈ Finset.range (N + 1),
        if 2 ≤ n then ∏ p ∈ sieveModuli N, gateBit p n else 0 := by
  classical
  rw [← sieveLabels_card]
  have he : (sieveLabels N).card = ∑ n ∈ sieveLabels N, (1 : ℕ) := by simp
  rw [he, sieveLabels, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n _hn
  rw [gate_product]
  by_cases h2 : 2 ≤ n <;> by_cases hg : Passes (sieveModuli N) n <;> simp [h2, hg]

/-- The geometric test for a prime modulus, with its nonzero instance explicitly supplied. -/
def primeGeometricGate (p n : ℕ) (hp : p.Prime) : Prop := by
  letI : NeZero p := ⟨hp.ne_zero⟩
  exact n = p ∨ IntrinsicPositive (arithmeticPlane p n)

/-- Its relation to the integer gate is a proved transport, not an assumed certificate field. -/
theorem primeGeometricGate_iff (p n : ℕ) (hp : p.Prime) :
    primeGeometricGate p n hp ↔ Gate p n := by
  let : NeZero p := ⟨hp.ne_zero⟩
  exact (gate_iff_plane p n).symm

/-- The bounded prime criterion stated using actual intrinsic Grassmannian points. -/
theorem prime_iff_geometric_sieve (n N : ℕ) (hn : 2 ≤ n) (hnN : n ≤ N) :
    n.Prime ↔ ∀ p (hp : p.Prime), p ≤ Nat.sqrt N → primeGeometricGate p n hp := by
  rw [prime_iff_passes n N hn hnN]
  constructor
  · intro h p hp hps
    exact (primeGeometricGate_iff p n hp).mpr (h p (Nat.mem_primesLE.mpr ⟨hps, hp⟩))
  · intro h p hm
    obtain ⟨hps, hp⟩ := Nat.mem_primesLE.mp hm
    exact (primeGeometricGate_iff p n hp).mp (h p hp hps)

/-- The displayed four moduli do not give an unbounded primality test. -/
theorem four_filters_incomplete :
    Passes ({2, 3, 5, 7} : Finset ℕ) 121 ∧ ¬ Nat.Prime 121 := by
  norm_num [Passes, Gate]

/-- The next missing prime modulus detects the square eleven squared. -/
theorem eleven_detects_square : ¬ Gate 11 121 := by norm_num [Gate]

/-- The prime's own zero chord must not remove the prime. -/
theorem self_exception_required : defect 7 7 = 0 ∧ gateBit 7 7 = 1 := by
  exact ⟨(defect_eq_zero_iff 7 7).mpr dvd_rfl, by simp [gateBit, Gate]⟩

end FormalResearch.PositiveAtlas.ModularBoundary
