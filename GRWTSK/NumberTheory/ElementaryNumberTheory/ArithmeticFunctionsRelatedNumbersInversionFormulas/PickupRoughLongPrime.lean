/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughPrefixIdentity

/-!
# Long-prime arithmetic with the unit quotient and complementary sectors retained

Only p > floor(sqrt N), q <= N/p implies q < p. Outside that region the
repeated-prime correction is not removed. For p not dividing q the selected
count is exactly 1+omega(q); q=1 has denominator one and stays in the coprime
sector. The complete four-sector partition changes neither the original
closed cutoff nor the frozen block horizon. No bound for the remaining signed
short-prime/unit/nonunit-coprime aggregate is supplied here.
SOURCE_PROOF_CANDIDATE. Compilation/fresh replay/transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughLongPrime

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughPrefixIdentity

/-- This inequality uses the ORIGINAL N/p cutoff, not a changed horizon. -/
theorem quotient_lt_long_prime {N p q : ℕ} (hp : 0 < p)
    (hlong : Nat.sqrt N < p) (hq : q ≤ N / p) : q < p := by
  have hs : N < p*p := Nat.sqrt_lt.mp hlong
  have hqp : q*p ≤ N := (Nat.le_div_iff_mul_le hp).mp hq
  by_contra hn
  have hpq : p ≤ q := by omega
  nlinarith

theorem long_prime_not_dvd_quotient {N p q : ℕ} (hp : 0 < p)
    (hlong : Nat.sqrt N < p) (hq : q ∈ Finset.Icc 1 (N/p)) : ¬p ∣ q := by
  have hlt := quotient_lt_long_prime hp hlong (Finset.mem_Icc.mp hq).2
  intro hd
  have hle := Nat.le_of_dvd (Finset.mem_Icc.mp hq).1 hd
  omega

theorem correctedQuotient_long (P : List ℕ) {N p q : ℕ} (hp : 0 < p)
    (hlong : Nat.sqrt N < p) (hq : q ∈ Finset.Icc 1 (N/p)) :
    correctedQuotient P p q = rough P q := by
  rw [correctedQuotient_eq, if_neg (long_prime_not_dvd_quotient hp hlong hq)]

/-- Add a fresh prime to the divisor set only after proving it is absent from q. -/
theorem selected_product {P : List ℕ} {N p : ℕ}
    (hp : p ∈ freshPrimes P N) (q : ℕ) :
    selectedDivisors (freshPrimes P N) (p*q) =
      insert p (selectedDivisors (freshPrimes P N) q) := by
  ext r
  simp only [selectedDivisors, Finset.mem_filter, Finset.mem_insert]
  constructor
  · rintro ⟨hr, hd⟩
    rcases (fresh_mem hr).1.dvd_mul.mp hd with hdp | hdq
    · rcases (Nat.dvd_prime (fresh_mem hp).1).mp hdp with h1 | he
      · exact ((fresh_mem hr).1.ne_one h1).elim
      · exact Or.inl he
    · exact Or.inr ⟨hr, hdq⟩
  · rintro (rfl | ⟨hr, hd⟩)
    · exact ⟨hp, ⟨q, rfl⟩⟩
    · exact ⟨hr, dvd_mul_of_dvd_right hd p⟩

theorem omega_product {P : List ℕ} {N p q : ℕ}
    (hp : p ∈ freshPrimes P N) (hpq : ¬p ∣ q) :
    omega P N (p*q) = omega P N q + 1 := by
  have hnot : p ∉ selectedDivisors (freshPrimes P N) q := by
    intro h
    exact hpq (Finset.mem_filter.mp h).2
  unfold omega divisorCount
  rw [selected_product hp q, Finset.card_insert_of_notMem hnot]

/-- This is the precise denominator in the long-prime region, not a constant weight. -/
theorem omega_long_product {P : List ℕ} {N p q : ℕ}
    (hp : p ∈ freshPrimes P N) (hlong : Nat.sqrt N < p)
    (hq : q ∈ Finset.Icc 1 (N/p)) :
    omega P N (p*q) = omega P N q + 1 :=
  omega_product hp (long_prime_not_dvd_quotient (fresh_mem hp).1.pos hlong hq)

/-- On the shared-prime sector the second quotient r is strictly below q. -/
theorem shared_quotient_lt {L X Y p q r : ℕ} (hp : 0 < p)
    (hw : inWindow L X Y p q (p*r)) : r < q := by
  have hlt := hw.2.2.2
  by_contra hn
  have hqr : q ≤ r := by omega
  nlinarith

/-- The shared long-prime atom is explicitly a lower-scale signed pair.
This identity does not assume those lower-scale signs cancel. -/
theorem long_shared_atom (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {N p q r : ℕ} (hp : p ∈ freshPrimes P N)
    (hlong : Nat.sqrt N < p) (hq : q ∈ Finset.Icc 1 (N/p))
    (hr : 1 ≤ r) (hrq : r < q) (G : ℕ → ℕ → ℝ) :
    atom P N G p q (p*r) =
      -(rough P r * rough P q / ((omega P N q : ℝ)+1)) * G (p*r) (p*q) := by
  have hqnp := long_prime_not_dvd_quotient (fresh_mem hp).1.pos hlong hq
  have hqp := quotient_lt_long_prime (fresh_mem hp).1.pos hlong (Finset.mem_Icc.mp hq).2
  have hrnp : ¬p ∣ r := by
    intro hd
    have hh := Nat.le_of_dvd hr hd
    omega
  rw [atom, rough_prime_mul P hP p (fresh_mem hp).1 (fresh_mem hp).2.1 r,
    if_neg hrnp, correctedQuotient_eq, if_neg hqnp, omega_product hp hqnp]
  push_cast
  ring

theorem rough_one (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p) : rough P 1 = 1 := by
  induction P with
  | nil => simp [rough, moebiusReal]
  | cons p P ih =>
      have hp := hP p (by simp)
      have htail : ∀ q ∈ P, Nat.Prime q := fun q hq => hP q (by simp [hq])
      simp [rough, hp.not_dvd_one, ih htail]

theorem omega_one (P : List ℕ) (N : ℕ) : omega P N 1 = 0 := by
  have he : selectedDivisors (freshPrimes P N) 1 = ∅ := by
    ext p
    simp only [selectedDivisors, Finset.mem_filter, Finset.not_mem_empty, iff_false]
    rintro ⟨hp, hd⟩
    exact (fresh_mem hp).1.not_dvd_one hd
  simp [omega, divisorCount, he]

theorem omega_prime {P : List ℕ} {N p : ℕ} (hp : p ∈ freshPrimes P N) :
    omega P N p = 1 := by
  have h := omega_product hp (fresh_mem hp).1.not_dvd_one
  simpa [omega_one] using h

/-- The literal q=1 row of the coprime sector; no new prime/source weight. -/
def unitSlice (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ) (p : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N,
    if inWindow L X Y p 1 m ∧ ¬p ∣ m then atom P N G p 1 m else 0

def nonunitSlice (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ) (p : ℕ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 (N/p), if 1 < q then
    ∑ m ∈ Finset.Icc 1 N,
      if inWindow L X Y p q m ∧ ¬p ∣ m then atom P N G p q m else 0
    else 0

def unitPart (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ p ∈ freshPrimes P N, if Z < p then unitSlice P N L X Y G p else 0

def nonunitPart (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ p ∈ freshPrimes P N, if Z < p then nonunitSlice P N L X Y G p else 0

theorem coprimeSlice_unit_split (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ)
    {p : ℕ} (hp : p ∈ freshPrimes P N) :
    coprimeSlice P N L X Y G p = unitSlice P N L X Y G p + nonunitSlice P N L X Y G p := by
  have hq1 : 1 ∈ Finset.Icc 1 (N/p) := by
    refine Finset.mem_Icc.mpr ⟨le_rfl, ?_⟩
    apply (Nat.le_div_iff_mul_le (fresh_mem hp).1.pos).mpr
    simpa using (fresh_mem hp).2.2
  let row := fun q => ∑ m ∈ Finset.Icc 1 N,
    if inWindow L X Y p q m ∧ ¬p ∣ m then atom P N G p q m else 0
  change (∑ q ∈ Finset.Icc 1 (N/p), row q) = row 1 +
    ∑ q ∈ Finset.Icc 1 (N/p), if 1 < q then row q else 0
  calc
    _ = ∑ q ∈ Finset.Icc 1 (N/p),
        ((if q = 1 then row 1 else 0) + (if 1 < q then row q else 0)) := by
      apply Finset.sum_congr rfl
      intro q hq
      have hqpos := (Finset.mem_Icc.mp hq).1
      by_cases h : q = 1
      · simp [h]
      · simp [h, show 1 < q by omega]
    _ = _ := by rw [Finset.sum_add_distrib]; simp [hq1]

/-- All sectors are accounted for. The last two retain q=1 and q>=2 separately. -/
theorem four_sector_partition (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) :
    total P N L X Y G = shortPart P N L X Y Z G + sharedPart P N L X Y Z G +
      unitPart P N L X Y Z G + nonunitPart P N L X Y Z G := by
  have h : coprimePart P N L X Y Z G = unitPart P N L X Y Z G + nonunitPart P N L X Y Z G := by
    unfold coprimePart unitPart nonunitPart
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    by_cases hz : Z < p
    · simp only [if_pos hz]
      exact coprimeSlice_unit_split P N L X Y G hp
    · simp [hz]
  rw [total_partition P N L X Y Z G, h]
  ring

/-- q=1 is in the difficult coprime sector and has exact divisor weight one. -/
theorem unitSlice_eq (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N L X Y : ℕ) (G : ℕ → ℕ → ℝ) {p : ℕ} (hp : p ∈ freshPrimes P N) :
    unitSlice P N L X Y G p =
      ∑ m ∈ Finset.Icc 1 N, if p ≤ Y ∧ L < m ∧ m ≤ X ∧ m < p then
        rough P m * G m p else 0 := by
  have hc : correctedQuotient P p 1 = 1 := by
    rw [correctedQuotient_eq, if_neg (fresh_mem hp).1.not_dvd_one, rough_one P hP]
  unfold unitSlice
  apply Finset.sum_congr rfl
  intro m hm
  by_cases hw : p ≤ Y ∧ L < m ∧ m ≤ X ∧ m < p
  · have hnot : ¬p ∣ m := by
      intro hd
      have hh := Nat.le_of_dvd (Finset.mem_Icc.mp hm).1 hd
      omega
    simp [inWindow, hw.1, hw.2.1, hw.2.2.1, hw.2.2.2, hnot, atom, hc, omega_prime hp]
  · simp [inWindow, hw, atom]

/-- The unit row is an ordinary signed prefix, not an automatically small error. -/
theorem unitSlice_inverseSqrt (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N L X Y : ℕ) {p : ℕ} (hp : p ∈ freshPrimes P N) :
    unitSlice P N L X Y inverseSqrtKernel p =
      if p ≤ Y then roughPrefix P N L (min X (p-1)) / Real.sqrt (p : ℝ) else 0 := by
  rw [unitSlice_eq P hP]
  by_cases hpY : p ≤ Y
  · simp only [hpY, true_and, if_true, roughPrefix, prefix, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro m _
    have he : m ≤ min X (p-1) ↔ m ≤ X ∧ m < p := by
      have hp0 := (fresh_mem hp).1.pos
      omega
    by_cases hmL : L < m <;> by_cases hmX : m ≤ X <;> by_cases hmp : m < p <;>
      simp [he, hmL, hmX, hmp, tailCoefficient, inverseSqrtKernel, div_eq_mul_inv, mul_assoc]
  · simp [hpY]

/-- The exact ORIGINAL ordered interaction, with every sector and orientation retained. -/
theorem interaction_four_sectors (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (T : ℝ) (L Z : ℕ) (hL : L ≤ ⌊Real.exp T⌋₊) :
    interaction P T = thinInteraction P T L - 2 *
      (shortPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T) +
       sharedPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T) +
       unitPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T) +
       nonunitPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T)) := by
  rw [interaction_eq_thin_add_tail P T L hL, upperTail_extraction P hP,
    ← total_full_eq_quotient, four_sector_partition P _ L _ _ Z (gram P T)]
  ring

/-- A new unconditional comparison on the ACTUAL R: only the displayed short,
unit, and nonunit-coprime sum remains signed. No estimate for that sum is assumed
or claimed, and no previous internal-stage credit is spent a second time. -/
theorem interaction_le_paid_and_signed_remainder (j : ℕ) :
    interaction (stages j) (dyadicTime j) ≤
      (1024 * Real.exp (64 / Real.log 2)) * Real.exp ((7/8) * dyadicTime j) - 2 *
       (shortPart (stages j) (2^j) (thinCutoff j) (2^j) (2^j) (sharedThreshold j)
          (gram (stages j) (dyadicTime j)) +
        unitPart (stages j) (2^j) (thinCutoff j) (2^j) (2^j) (sharedThreshold j)
          (gram (stages j) (dyadicTime j)) +
        nonunitPart (stages j) (2^j) (thinCutoff j) (2^j) (2^j) (sharedThreshold j)
          (gram (stages j) (dyadicTime j))) := by
  have hT := dyadicTime_nonnegative j
  have hL : thinCutoff j ≤ ⌊Real.exp (dyadicTime j)⌋₊ := by
    rw [dyadic_cutoff]
    exact Nat.sqrt_le_self (2^j)
  have he := interaction_four_sectors (stages j) (stages_prime j) (dyadicTime j)
    (thinCutoff j) (sharedThreshold j) hL
  have hlo := (le_abs_self (thinInteraction (stages j) (dyadicTime j) (thinCutoff j))).trans
    (thinInteraction_seven_eighths j)
  have hshared := (le_abs_self (orderedShared (stages j) (dyadicTime j)
    (thinCutoff j) (sharedThreshold j))).trans (orderedShared_threshold_seven_eighths j)
  unfold orderedShared at hshared
  rw [dyadic_cutoff] at he hshared
  linarith

end GRWTSK.NumberTheory.Moebius.PickupRoughLongPrime
