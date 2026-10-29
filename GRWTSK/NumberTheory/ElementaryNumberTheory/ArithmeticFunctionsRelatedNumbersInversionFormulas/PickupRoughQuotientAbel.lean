/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughLongPrime
import GRWTSK.RealFunctions.PrimeBlockKernel

/-!
# Actual weighted q-Abel summation of the combined long-prime coprime channel

Reuse the existing prefix identities and four-sector partition. The q-prefix
uses rough(P,q)/omega(P,N,p*q), with the ORIGINAL N and P fixed throughout.
Only the existing long-prime count theorem permits replacing its denominator
by 1+omega(P,N,q). This never replaces it by an unweighted Mobius prefix.
The first allowed q and BOTH endpoint terms are retained. At the full closed
horizon only the upper successor endpoint is proved zero by block support.
No growth supplier, mass witness, R-bound, or RH wrapper is introduced.
SOURCE_PROOF_CANDIDATE. Compilation/fresh kernel/transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughQuotientAbel

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughLongPrime
open GRWTSK.Analysis.FiniteSums.PrimeBlockKernel (prefix abel difference_sum)

/-- The p-dependent divisor count is evaluated at the original larger index. -/
def quotientWeight (P : List ℕ) (N p q : ℕ) : ℝ :=
  rough P q / (omega P N (p*q) : ℝ)

def weightedPrefix (P : List ℕ) (N p t : ℕ) : ℝ :=
  prefix (quotientWeight P N p) t

def firstQuotient (p m : ℕ) : ℕ := max 1 (m/p+1)
def lastQuotient (N Y p : ℕ) : ℕ := (min N Y)/p

theorem firstQuotient_positive (p m : ℕ) : 1 ≤ firstQuotient p m := le_max_left _ _

/-- The strict comparison is against p*q, not q or a changed inner horizon. -/
theorem quotient_window (N Y p m : ℕ) (hp : 0 < p) :
    (Finset.Icc 1 (N/p)).filter (fun q => p*q ≤ Y ∧ m < p*q) =
      Finset.Icc (firstQuotient p m) (lastQuotient N Y p) := by
  ext q
  have hlo : m/p+1 ≤ q ↔ m < p*q := by
    rw [Nat.succ_le_iff, Nat.div_lt_iff_lt_mul hp]
    simp only [Nat.mul_comm]
  have hN : q ≤ N/p ↔ p*q ≤ N := by
    rw [Nat.le_div_iff_mul_le hp]
    simp only [Nat.mul_comm]
  have hhi : q ≤ (min N Y)/p ↔ p*q ≤ N ∧ p*q ≤ Y := by
    rw [Nat.le_div_iff_mul_le hp, le_min_iff]
    simp only [Nat.mul_comm]
  simp only [Finset.mem_filter, Finset.mem_Icc, firstQuotient, lastQuotient,
    max_le_iff, hlo, hN, hhi]
  tauto

/-- Empty windows are literal empty sums; the closed upper cutoff is not moved. -/
def qRow (P : List ℕ) (N Y p m : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc (firstQuotient p m) (lastQuotient N Y p),
    quotientWeight P N p q * G m (p*q)

theorem qRow_empty (P : List ℕ) (N Y p m : ℕ) (G : ℕ → ℕ → ℝ)
    (h : lastQuotient N Y p < firstQuotient p m) : qRow P N Y p m G = 0 := by
  simp only [qRow, Finset.Icc_eq_empty_of_lt h, Finset.sum_empty]

/-- Split one existing closed prefix, allowing the adjacent empty interval. -/
theorem prefix_split_at (f : ℕ → ℝ) {a b : ℕ} (ha : 1 ≤ a) (hab : a ≤ b+1) :
    prefix f b = prefix f (a-1) + ∑ q ∈ Finset.Icc a b, f q := by
  have hd : Disjoint (Finset.Icc 1 (a-1)) (Finset.Icc a b) := by
    apply Finset.disjoint_left.mpr
    intro q hq hq'
    have h1 := Finset.mem_Icc.mp hq
    have h2 := Finset.mem_Icc.mp hq'
    omega
  have hu : Finset.Icc 1 b = Finset.Icc 1 (a-1) ∪ Finset.Icc a b := by
    ext q
    simp only [Finset.mem_union, Finset.mem_Icc]
    omega
  unfold prefix
  rw [hu, Finset.sum_union hd]

/-- Closed-window Abel identity. Neither endpoint is assumed zero. -/
theorem abel_window_successor (f g : ℕ → ℝ) {a b : ℕ}
    (ha : 1 ≤ a) (hab : a ≤ b+1) :
    (∑ q ∈ Finset.Icc a b, f q*g q) =
      prefix f b*g (b+1) - prefix f (a-1)*g a +
        ∑ q ∈ Finset.Icc a b, prefix f q*(g q-g (q+1)) := by
  have hp := prefix_split_at (fun q => f q*g q) ha hab
  have hv := prefix_split_at (fun q => prefix f q*(g q-g (q+1))) ha hab
  have hb := abel f g b
  have hl := abel f g (a-1)
  rw [show a-1+1=a by omega] at hl
  simp only [prefix] at hp hv hb hl ⊢
  linarith

/-- The alternative form has its last permitted q at the upper endpoint. -/
theorem abel_window_closed (f g : ℕ → ℝ) {a b : ℕ}
    (ha : 1 ≤ a) (hab : a ≤ b) :
    (∑ q ∈ Finset.Icc a b, f q*g q) =
      prefix f b*g b - prefix f (a-1)*g a +
        ∑ q ∈ Finset.Ico a b, prefix f q*(g q-g (q+1)) := by
  have he := abel_window_successor f g ha (by omega : a ≤ b+1)
  let v := fun q => prefix f q*(g q-g (q+1))
  have hset : Finset.Icc a b = insert b (Finset.Ico a b) := by
    ext q
    simp only [Finset.mem_Icc, Finset.mem_insert, Finset.mem_Ico]
    omega
  have hs : (∑ q ∈ Finset.Icc a b, v q) = (∑ q ∈ Finset.Ico a b, v q) + v b := by
    rw [hset, Finset.sum_insert (by simp)]
    ring
  change (∑ q ∈ Finset.Icc a b, f q*g q) =
    prefix f b*g (b+1) - prefix f (a-1)*g a + ∑ q ∈ Finset.Icc a b, v q at he
  rw [hs] at he
  dsimp only [v] at he
  rw [he]
  ring

/-- A local anchor is the ACTUAL prefix below the first permitted quotient. -/
theorem abel_window_anchored (f g : ℕ → ℝ) {a b : ℕ}
    (ha : 1 ≤ a) (hab : a ≤ b+1) :
    (∑ q ∈ Finset.Icc a b, f q*g q) =
      (prefix f b-prefix f (a-1))*g (b+1) +
        ∑ q ∈ Finset.Icc a b, (prefix f q-prefix f (a-1))*(g q-g (q+1)) := by
  have he := abel_window_successor f g ha hab
  have hv := prefix_split_at (fun q => g q-g (q+1)) ha hab
  have hb := difference_sum g b
  have hl := difference_sum g (a-1)
  rw [show a-1+1=a by omega] at hl
  have hd : (∑ q ∈ Finset.Icc a b, g q-g (q+1)) = g a-g (b+1) := by
    unfold prefix at hv
    linarith
  simp only [sub_mul, Finset.sum_sub_distrib, ← Finset.mul_sum, hd]
  rw [he]
  ring

/-- Only the proved long-prime range permits this denominator rewrite. -/
theorem quotientWeight_long (P : List ℕ) {N p q : ℕ}
    (hp : p ∈ freshPrimes P N) (hlong : Nat.sqrt N < p)
    (hq : q ∈ Finset.Icc 1 (N/p)) :
    quotientWeight P N p q = rough P q / ((omega P N q : ℝ)+1) := by
  rw [quotientWeight, omega_long_product hp hlong hq]
  push_cast
  rfl

/-- The bridge is to the weighted prefix, never to an unweighted Mobius prefix. -/
theorem weightedPrefix_long (P : List ℕ) {N p t : ℕ}
    (hp : p ∈ freshPrimes P N) (hlong : Nat.sqrt N < p) (ht : t ≤ N/p) :
    weightedPrefix P N p t =
      ∑ q ∈ Finset.Icc 1 t, rough P q / ((omega P N q : ℝ)+1) := by
  apply Finset.sum_congr rfl
  intro q hq
  exact quotientWeight_long P hp hlong
    (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hq).1, (Finset.mem_Icc.mp hq).2.trans ht⟩)

@[simp] theorem weightedPrefix_zero (P : List ℕ) (N p : ℕ) :
    weightedPrefix P N p 0 = 0 := by simp [weightedPrefix, prefix]

theorem quotientWeight_one (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    {N p : ℕ} (hp : p ∈ freshPrimes P N) : quotientWeight P N p 1 = 1 := by
  simp [quotientWeight, rough_one P hP, omega_prime hp]

theorem firstQuotient_eq_one_iff {p m : ℕ} (hp : 0 < p) :
    firstQuotient p m = 1 ↔ m < p := by
  constructor
  · intro h
    have hd : m/p < 1 := by unfold firstQuotient at h; omega
    simpa using (Nat.div_lt_iff_lt_mul hp).mp hd
  · intro h
    simp [firstQuotient, Nat.div_eq_of_lt h]

/-- Combine unit and nonunit q BEFORE Abel. The m guard stays outside the row. -/
theorem coprimeSlice_eq_rows (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ)
    {p : ℕ} (hp : p ∈ freshPrimes P N) (hlong : Nat.sqrt N < p) :
    coprimeSlice P N L X Y G p =
      ∑ m ∈ Finset.Icc 1 N, if L < m ∧ m ≤ X ∧ ¬p ∣ m then
        rough P m * qRow P N Y p m G else 0 := by
  unfold coprimeSlice
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro m _
  by_cases hm : L < m ∧ m ≤ X ∧ ¬p ∣ m
  · rw [if_pos hm]
    have he :
        (∑ q ∈ Finset.Icc 1 (N/p),
          if inWindow L X Y p q m ∧ ¬p ∣ m then atom P N G p q m else 0) =
        rough P m * ∑ q ∈ Finset.Icc 1 (N/p),
          if p*q ≤ Y ∧ m < p*q then quotientWeight P N p q*G m (p*q) else 0 := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro q hq
      by_cases hw : p*q ≤ Y ∧ m < p*q
      · simp only [inWindow, hm.1, hm.2.1, hm.2.2, hw.1, hw.2,
          and_self, if_true, atom, correctedQuotient_long P (fresh_mem hp).1.pos hlong hq,
          quotientWeight]
        ring
      · have hn : ¬ (inWindow L X Y p q m ∧ ¬p ∣ m) := by
          intro hh
          exact hw ⟨hh.1.1, hh.1.2.2.2⟩
        simp [hw, hn]
    rw [he, ← Finset.sum_filter, quotient_window N Y p m (fresh_mem hp).1.pos]
    rfl
  · rw [if_neg hm]
    apply Finset.sum_eq_zero
    intro q _
    have hn : ¬ (inWindow L X Y p q m ∧ ¬p ∣ m) := by
      intro h
      exact hm ⟨h.1.2.1, h.1.2.2.1, h.2⟩
    simp [hn]

/-- Source-specific two-endpoint formula for a nonempty row. -/
theorem qRow_abel (P : List ℕ) (N Y p m : ℕ) (G : ℕ → ℕ → ℝ)
    (hrow : firstQuotient p m ≤ lastQuotient N Y p) :
    qRow P N Y p m G =
      weightedPrefix P N p (lastQuotient N Y p)*G m (p*lastQuotient N Y p) -
      weightedPrefix P N p (firstQuotient p m-1)*G m (p*firstQuotient p m) +
      ∑ q ∈ Finset.Ico (firstQuotient p m) (lastQuotient N Y p),
        weightedPrefix P N p q*(G m (p*q)-G m (p*(q+1))) :=
  abel_window_closed (quotientWeight P N p) (fun q => G m (p*q))
    (firstQuotient_positive p m) hrow

/-- No endpoint has been suppressed in this successor form. -/
theorem qRow_abel_successor (P : List ℕ) (N Y p m : ℕ) (G : ℕ → ℕ → ℝ)
    (hrow : firstQuotient p m ≤ lastQuotient N Y p+1) :
    qRow P N Y p m G =
      weightedPrefix P N p (lastQuotient N Y p)*G m (p*(lastQuotient N Y p+1)) -
      weightedPrefix P N p (firstQuotient p m-1)*G m (p*firstQuotient p m) +
      ∑ q ∈ Finset.Icc (firstQuotient p m) (lastQuotient N Y p),
        weightedPrefix P N p q*(G m (p*q)-G m (p*(q+1))) :=
  abel_window_successor (quotientWeight P N p) (fun q => G m (p*q))
    (firstQuotient_positive p m) hrow

/-- The original frozen support pays the UPPER successor endpoint at Y=N.
For Y<N this argument is not available and qRow_abel retains that endpoint. -/
theorem gram_terminal_quotient (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    (T : ℝ) (m p : ℕ) (hp : 0 < p) :
    gram P T m (p*(⌊Real.exp T⌋₊/p+1)) = 0 := by
  have hb : ⌊Real.exp T⌋₊ < p*(⌊Real.exp T⌋₊/p+1) := by
    have h := (Nat.div_lt_iff_lt_mul hp).mp
      (Nat.lt_succ_self (⌊Real.exp T⌋₊/p))
    simpa only [Nat.mul_comm] using h
  unfold gram
  simp only [block_support P (fun r hr => (hP r hr).one_le)
    ⌊Real.exp T⌋₊ _ hb, mul_zero, intervalIntegral.integral_zero]

/-- The LOWER endpoint is still present after the justified upper-endpoint removal. -/
theorem qRow_gram_full (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    (T : ℝ) (p m : ℕ) (hp : 0 < p) (hm : m ≤ ⌊Real.exp T⌋₊) :
    qRow P ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ p m (gram P T) =
      -weightedPrefix P ⌊Real.exp T⌋₊ p (firstQuotient p m-1) *
        gram P T m (p*firstQuotient p m) +
      ∑ q ∈ Finset.Icc (firstQuotient p m) (⌊Real.exp T⌋₊/p),
        weightedPrefix P ⌊Real.exp T⌋₊ p q *
          (gram P T m (p*q)-gram P T m (p*(q+1))) := by
  have hle : m/p ≤ ⌊Real.exp T⌋₊/p := Nat.div_le_div_right hm
  have hrow : firstQuotient p m ≤ lastQuotient ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ p+1 := by
    simp only [firstQuotient, lastQuotient, min_self]
    omega
  rw [qRow_abel_successor P _ _ p m (gram P T) hrow]
  simp only [lastQuotient, min_self, gram_terminal_quotient P hP T m p hp,
    mul_zero, zero_sub, neg_mul]


/-- Equivalent local-prefix form. The anchor is computed from this same source;
it removes the lower endpoint by a finite telescope, never by an estimate. -/
theorem qRow_gram_full_anchored (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    (T : ℝ) (p m : ℕ) (hp : 0 < p) (hm : m ≤ ⌊Real.exp T⌋₊) :
    qRow P ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ p m (gram P T) =
      ∑ q ∈ Finset.Icc (firstQuotient p m) (⌊Real.exp T⌋₊/p),
        (weightedPrefix P ⌊Real.exp T⌋₊ p q -
          weightedPrefix P ⌊Real.exp T⌋₊ p (firstQuotient p m-1)) *
        (gram P T m (p*q)-gram P T m (p*(q+1))) := by
  have hle : m/p ≤ ⌊Real.exp T⌋₊/p := Nat.div_le_div_right hm
  have hrow : firstQuotient p m ≤ ⌊Real.exp T⌋₊/p+1 := by
    unfold firstQuotient
    omega
  have he := abel_window_anchored (quotientWeight P ⌊Real.exp T⌋₊ p)
    (fun q => gram P T m (p*q)) (firstQuotient_positive p m) hrow
  simpa only [qRow, lastQuotient, min_self, weightedPrefix,
    gram_terminal_quotient P hP T m p hp, mul_zero, zero_add] using he

/-- The lower boundary is an explicit signed source sum, not an error chosen later. -/
def lowerEndpoint (P : List ℕ) (T : ℝ) (L : ℕ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ p ∈ freshPrimes P N, if Nat.sqrt N < p then
    ∑ m ∈ Finset.Icc 1 N, if L < m ∧ ¬p ∣ m then
      rough P m * (weightedPrefix P N p (firstQuotient p m-1) *
        gram P T m (p*firstQuotient p m)) else 0
    else 0

/-- Complete signed variation, with the real weighted prefix and frozen Gram. -/
def signedVariation (P : List ℕ) (T : ℝ) (L : ℕ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ p ∈ freshPrimes P N, if Nat.sqrt N < p then
    ∑ m ∈ Finset.Icc 1 N, if L < m ∧ ¬p ∣ m then
      rough P m * (∑ q ∈ Finset.Icc (firstQuotient p m) (N/p),
        weightedPrefix P N p q * (gram P T m (p*q)-gram P T m (p*(q+1)))) else 0
    else 0

/-- Unit and nonunit channels are combined, not estimated independently. -/
theorem coprimePart_full_abel (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    (T : ℝ) (L : ℕ) :
    coprimePart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊
      (Nat.sqrt ⌊Real.exp T⌋₊) (gram P T) =
      signedVariation P T L - lowerEndpoint P T L := by
  unfold coprimePart signedVariation lowerEndpoint
  dsimp only
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  by_cases hlong : Nat.sqrt ⌊Real.exp T⌋₊ < p
  · simp only [if_pos hlong]
    rw [coprimeSlice_eq_rows P _ L _ _ (gram P T) hp hlong,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    have hmN := (Finset.mem_Icc.mp hm).2
    by_cases hguard : L < m ∧ ¬p ∣ m
    · simp only [hguard.1, hguard.2, hmN, and_self, if_true]
      rw [qRow_gram_full P hP T p m (fresh_mem hp).1.pos hmN]
      ring
    · have hguard' : ¬(L < m ∧ m ≤ ⌊Real.exp T⌋₊ ∧ ¬p ∣ m) := by
        intro h
        exact hguard ⟨h.1,h.2.2⟩
      simp [hguard,hguard']
  · simp [hlong]

/-- Exact ORIGINAL ordered interaction after q-Abel; no growth or coercivity
hypothesis is hidden in this source identity. Both orientations give the twos. -/
theorem interaction_qAbel (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    (T : ℝ) (L : ℕ) (hL : L ≤ ⌊Real.exp T⌋₊) :
    interaction P T = thinInteraction P T L -
      2*shortPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊
        (Nat.sqrt ⌊Real.exp T⌋₊) (gram P T) -
      2*sharedPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊
        (Nat.sqrt ⌊Real.exp T⌋₊) (gram P T) +
      2*lowerEndpoint P T L - 2*signedVariation P T L := by
  rw [interaction_eq_thin_add_tail P T L hL,
    upperTail_partition P hP ⌊Real.exp T⌋₊ L (Nat.sqrt ⌊Real.exp T⌋₊) (gram P T),
    coprimePart_full_abel P hP T L]
  ring

end GRWTSK.NumberTheory.Moebius.PickupRoughQuotientAbel
