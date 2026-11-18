/-
Copyright (c) 2026 grwtsk contributors. MIT.
The arithmetic recurrences are adapted from Google LLC's Cryptids (2026),
under Apache-2.0. See LICENSE at the pinned upstream revision below.
-/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.CertifiedStageCoverage
import Mathlib.Algebra.Ring.GeomSum
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact arithmetic certificates for the 95-state Riemann machine

`Cryptids/Riemann120.lean` at commit `3647718b5df22e1a61462dec0376bd204526285a`
defines the product, offset digits, deficit and threshold. Stage `M` in
`Cryptids/ReductionSupport/Riemann95/Witness95.lean` tests argument `M + 2`.
The same commit gives the blank-tape criterion in `Cryptids/Riemann95.lean`
and the RH equivalence in `Cryptids/Semantics/Riemann95.lean`.

The HS window in `grwtsk/hs` at `bb09f62f2521a8f793289a3a6ef1fdefb08a305f`,
`systems/model/source/prime-windows/README.md`, labels entry `(k, j)` by the
prime with ordinal `95*k+j`, and retains that ordinal. The ordinal gives
the arithmetic argument `95*k+j+2`. The checker below evaluates that exact
argument at each slot. Its totality still requires the unbounded safety claim.
-/

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

open GRWTSK.ComputerScience.TheoryOfComputing.CertifiedStageCoverage
open GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.SequentialPrimeSpecification

/-- Include each prime at most `n`, with no other factors. -/
def primeProduct : ℕ → ℕ
  | 0 => 1
  | n + 1 => if Nat.Prime (n + 1) then (n + 1) * primeProduct n else primeProduct n

/-- The count of positive iterates of the offset-base quotient. -/
def offsetCount (base : ℕ) : ℕ → ℕ
  | 0 => 0
  | n + 1 => if 2 ≤ base then 1 + offsetCount base (n / base) else 0
  termination_by n => n
  decreasing_by exact Nat.lt_succ_of_le (Nat.div_le_self n base)

/-- The source's quartering clock is the offset-base count at base four. -/
def clock (n : ℕ) : ℕ := offsetCount 4 (n - 1)

theorem offsetCount_four_succ (n : ℕ) : offsetCount 4 (n + 1) = 1 + offsetCount 4 (n / 4) := by
  rw [offsetCount]
  rfl

/-- Natural subtraction preserves the saturation in the source's deficit. -/
def deficit (n : ℕ) : ℕ := n - 1 - offsetCount n (n.factorial * primeProduct n - 1)

def threshold (n : ℕ) : ℕ := (clock n + 1) * 2 ^ clock n

def Counterexample (n : ℕ) : Prop := threshold n ≤ deficit n

instance (n : ℕ) : Decidable (Counterexample n) := inferInstanceAs (Decidable (_ ≤ _))

theorem safe_of_threshold_gt (n : ℕ) (h : n - 1 < threshold n) : ¬ Counterexample n :=
  fun bad => (Nat.not_le_of_gt h) (bad.trans (Nat.sub_le _ _))

open scoped BigOperators

private theorem le_offsetCount_iff_geom_sum_le {base : ℕ} (hbase : 2 ≤ base) (digits x : ℕ) :
    digits ≤ offsetCount base x ↔ (∑ i ∈ Finset.range digits, base ^ i) ≤ x := by
  induction digits generalizing x with
  | zero => simp
  | succ digits ih =>
    cases x with
    | zero => simp [offsetCount, geom_sum_succ]
    | succ x =>
      simp only [offsetCount, hbase, ite_true, geom_sum_succ]
      have step : digits + 1 ≤ 1 + offsetCount base (x / base) ↔
          digits ≤ offsetCount base (x / base) := by omega
      rw [step, ih, Nat.le_div_iff_mul_le (by omega : 0 < base),
        mul_comm base (∑ i ∈ Finset.range digits, base ^ i)]
      omega

private theorem primeProduct_pos (n : ℕ) : 0 < primeProduct n := by
  induction n with
  | zero => decide
  | succ n ih =>
    rw [primeProduct]
    split
    · exact Nat.mul_pos (Nat.succ_pos n) ih
    · exact ih

/-- A native arithmetic stage is safe exactly when its factorial–prime product
meets the power bound at the source's quartering-clock threshold. -/
theorem safe_iff_product_ge_pow {n : ℕ} (hn : 2 ≤ n) :
    ¬ Counterexample n ↔
      n ^ (n - threshold n) ≤ (n - 1) * (n.factorial * primeProduct n - 1) := by
  let exponent := n - threshold n
  let product := n.factorial * primeProduct n
  have threshold_pos : 0 < threshold n := by
    unfold threshold
    positivity
  have weak : ¬ Counterexample n ↔ n ^ exponent - 1 ≤ (n - 1) * (product - 1) := by
    calc
      _ ↔ exponent ≤ offsetCount n (product - 1) := by
        dsimp only [exponent, product]
        unfold Counterexample deficit
        omega
      _ ↔ _ := by
        rw [le_offsetCount_iff_geom_sum_le hn,
          ← geom_sum_mul_of_one_le (by omega : 1 ≤ n) exponent, mul_comm (n - 1) (product - 1)]
        exact (Nat.mul_le_mul_right_iff (by omega : 0 < n - 1)).symm
  rw [weak]
  change n ^ exponent - 1 ≤ (n - 1) * (product - 1) ↔
    n ^ exponent ≤ (n - 1) * (product - 1)
  have dvd_product : n ∣ product := dvd_mul_of_dvd_left (Nat.dvd_factorial (by omega) le_rfl) _
  have product_pos : 0 < product := Nat.mul_pos (Nat.factorial_pos _) (primeProduct_pos _)
  have product_ge : n ≤ product := Nat.le_of_dvd product_pos dvd_product
  by_cases hexp : exponent = 0
  · have product_bound : 1 ≤ (n - 1) * (product - 1) :=
      Nat.mul_le_mul (by omega : 1 ≤ n - 1) (by omega : 1 ≤ product - 1)
    simp [hexp, product_bound]
  · have hn3 : 3 ≤ n := by
      by_contra! small
      have two : n = 2 := by omega
      have threshold_two : threshold 2 = 4 := by
        norm_num [threshold, clock, offsetCount]
      apply hexp
      change n - threshold n = 0
      rw [two, threshold_two]
    have dvd_power : n ∣ n ^ exponent := by
      obtain ⟨m, hm⟩ := Nat.exists_eq_succ_of_ne_zero hexp
      rw [hm, pow_succ]
      exact dvd_mul_left _ _
    have ne_boundary : (n - 1) * (product - 1) ≠ n ^ exponent - 1 := by
      intro boundary
      have sum_eq : (n - 1) * (product - 1) + (n - 1) = (n - 1) * product := by
        rw [← Nat.mul_succ]
        congr 1
        omega
      have power_pos : 0 < n ^ exponent := by positivity
      have sum' : n ^ exponent + (n - 2) = (n - 1) * product := by omega
      have dvd_sum : n ∣ n ^ exponent + (n - 2) := by
        rw [sum']
        exact dvd_mul_of_dvd_right dvd_product (n - 1)
      have dvd_difference := (Nat.dvd_add_iff_right dvd_power).mpr dvd_sum
      have small : 0 < n - 2 := by omega
      have impossible := Nat.le_of_dvd small dvd_difference
      omega
    omega

/-- The successor's product comparison with an arbitrary additive margin.
The predecessor contributes its factorial and prime product. The successor
contributes one factor from the factorial and an extra factor exactly at
primes. The bound uses the successor's own base and clock. -/
theorem successor_product_margin_iff (n margin : ℕ) :
    (n + 1) ^ (n + 1 - threshold (n + 1)) + margin ≤
      n * ((n + 1).factorial * primeProduct (n + 1) - 1) ↔
    (n + 1) ^ (n + 1 - threshold (n + 1)) + margin + n ≤
      n * ((n + 1) * (if Nat.Prime (n + 1) then n + 1 else 1) *
        (n.factorial * primeProduct n)) := by
  have product_pos : 1 ≤ (n + 1).factorial * primeProduct (n + 1) :=
    Nat.mul_pos (Nat.factorial_pos _) (primeProduct_pos _)
  have restored :
      n * ((n + 1).factorial * primeProduct (n + 1) - 1) + n =
        n * ((n + 1).factorial * primeProduct (n + 1)) := by
    calc
      _ = n * ((n + 1).factorial * primeProduct (n + 1) - 1) + n * 1 := by rw [Nat.mul_one]
      _ = _ := by rw [← Nat.mul_add, Nat.sub_add_cancel product_pos]
  have product_step : (n + 1).factorial * primeProduct (n + 1) =
      (n + 1) * (if Nat.Prime (n + 1) then n + 1 else 1) *
        (n.factorial * primeProduct n) := by
    rw [Nat.factorial_succ, primeProduct]
    split
    · ac_rfl
    · rw [Nat.mul_one]
      ac_rfl
  rw [← product_step, ← restored]
  omega

/-- Exact safety of a successor stage in terms of the predecessor's product. -/
theorem safe_succ_iff_previous_product {n : ℕ} (hn : 1 ≤ n) :
    ¬ Counterexample (n + 1) ↔
      (n + 1) ^ (n + 1 - threshold (n + 1)) + n ≤
        n * ((n + 1) * (if Nat.Prime (n + 1) then n + 1 else 1) *
          (n.factorial * primeProduct n)) := by
  rw [safe_iff_product_ge_pow (by omega : 2 ≤ n + 1)]
  simpa only [Nat.add_zero, Nat.add_sub_cancel] using successor_product_margin_iff n 0

/-- The strict lower cutoff on the original prime product for a literal
checker argument. The cutoff is tested only at arguments at least two. -/
def primeProductCutoff (n : ℕ) : ℕ :=
  (n ^ (n - threshold n) + (n - 2)) / ((n - 1) * n.factorial)

/-- Integer division removes the factorial multiplier from the exact
checker comparison, retaining its strict boundary. -/
theorem safe_iff_primeProductCutoff_lt {n : ℕ} (hn : 2 ≤ n) :
    ¬ Counterexample n ↔ primeProductCutoff n < primeProduct n := by
  have denominator_pos : 0 < (n - 1) * n.factorial :=
    Nat.mul_pos (by omega) (Nat.factorial_pos _)
  have product_pos : 1 ≤ n.factorial * primeProduct n :=
    Nat.mul_pos (Nat.factorial_pos _) (primeProduct_pos _)
  have restored :
      (n - 1) * (n.factorial * primeProduct n - 1) + (n - 1) =
        primeProduct n * ((n - 1) * n.factorial) := by
    calc
      _ = (n - 1) * (n.factorial * primeProduct n - 1) + (n - 1) * 1 := by
        rw [Nat.mul_one]
      _ = (n - 1) * (n.factorial * primeProduct n) := by
        rw [← Nat.mul_add, Nat.sub_add_cancel product_pos]
      _ = _ := by ac_rfl
  rw [safe_iff_product_ge_pow hn, primeProductCutoff,
    Nat.div_lt_iff_lt_mul denominator_pos, ← restored]
  omega

/-- The original prime product gains exactly the prime factors in the
interval open at the predecessor and closed at the new argument. -/
theorem primeProduct_eq_mul_primeInterval {a b : ℕ} (hab : a ≤ b) :
    primeProduct b = primeProduct a * ∏ p ∈ (Finset.Ioc a b).filter Nat.Prime, p := by
  rw [Finset.prod_filter]
  induction b, hab using Nat.le_induction with
  | base => simp
  | succ b hab ih =>
    rw [primeProduct, Finset.prod_Ioc_succ_top hab, ← mul_assoc, ← ih]
    by_cases prime : Nat.Prime (b + 1) <;> simp [prime, mul_comm]

/-- Any verified subset of new primes gives a multiplicative gain of at
least one factor of `a + 1` for each distinct prime. -/
theorem primeProduct_mul_pow_card_le {a b : ℕ} (hab : a ≤ b)
    {primes : Finset ℕ} (inside : primes ⊆ (Finset.Ioc a b).filter Nat.Prime) :
    primeProduct a * (a + 1) ^ primes.card ≤ primeProduct b := by
  have factor_le (p : ℕ) (hp : p ∈ primes) : a + 1 ≤ p :=
    (Finset.mem_Ioc.mp (Finset.mem_filter.mp (inside hp)).1).1
  have powers : (a + 1) ^ primes.card ≤ ∏ p ∈ primes, p := by
    rw [← Finset.prod_const]
    exact Finset.prod_le_prod factor_le
  have subset_prod : (∏ p ∈ primes, p) ≤ ∏ p ∈ (Finset.Ioc a b).filter Nat.Prime, p :=
    Finset.prod_le_prod_of_subset_of_one_le inside
      (fun p hp _ => (Finset.mem_filter.mp hp).2.one_lt.le)
  rw [primeProduct_eq_mul_primeInterval hab]
  exact Nat.mul_le_mul_left _ (powers.trans subset_prod)

/-- To pass a literal argument, a lower estimate at an earlier argument can
be combined with any verified subset of primes between the arguments. -/
theorem safe_of_primeProduct_lower_and_primes {a b lower : ℕ}
    (hb : 2 ≤ b) (hab : a ≤ b) (base : lower ≤ primeProduct a)
    {primes : Finset ℕ} (inside : primes ⊆ (Finset.Ioc a b).filter Nat.Prime)
    (cutoff : primeProductCutoff b < lower * (a + 1) ^ primes.card) :
    ¬ Counterexample b := by
  apply (safe_iff_primeProductCutoff_lt hb).mpr
  exact cutoff.trans_le ((Nat.mul_le_mul_right _ base).trans
    (primeProduct_mul_pow_card_le hab inside))

def stageArgument (stage : ℕ) : ℕ := stage + 2

def stageOrdinal (window : ℕ) (slot : Fin 95) : ℕ := 95 * window + slot.val

noncomputable def primeLabel (window : ℕ) (slot : Fin 95) : ℕ :=
  canonicalPrimeEnumeration.value (stageOrdinal window slot)

theorem primeLabel_prime (window : ℕ) (slot : Fin 95) : Nat.Prime (primeLabel window slot) :=
  canonicalPrimeEnumeration.prime (stageOrdinal window slot)

theorem ordinalAddress (stage : ℕ) : ∃ window slot, stageOrdinal window slot = stage := by
  refine ⟨stage / 95, ⟨stage % 95, Nat.mod_lt _ (by decide)⟩, ?_⟩
  exact (Nat.div_add_mod stage 95)

/-- The stage decoding covers exactly the arithmetic inputs starting at two. -/
theorem argumentAddress_iff (n : ℕ) :
    (∃ window slot, stageArgument (stageOrdinal window slot) = n) ↔ 2 ≤ n := by
  constructor
  · rintro ⟨window, slot, rfl⟩
    simp [stageArgument]
  · intro hn
    obtain ⟨window, slot, h⟩ := ordinalAddress (n - 2)
    refine ⟨window, slot, ?_⟩
    simp [stageArgument, h, Nat.sub_add_cancel hn]

theorem primeLabelAddress_iff (n : ℕ) :
    (∃ window slot, primeLabel window slot = n) ↔ Nat.Prime n := by
  constructor
  · rintro ⟨window, slot, rfl⟩
    exact primeLabel_prime window slot
  · intro hn
    obtain ⟨rank, hrank⟩ := Nat.subset_range_nth (p := Nat.Prime) hn
    obtain ⟨window, slot, h⟩ := ordinalAddress rank
    refine ⟨window, slot, ?_⟩
    change Nat.nth Nat.Prime (stageOrdinal window slot) = n
    rw [h, hrank]

/-- Stage two tests the composite argument four, which no prime label equals. -/
theorem argument_four_omitted_by_prime_labels :
    stageArgument 2 = 4 ∧ ¬ ∃ window slot, primeLabel window slot = 4 :=
  ⟨rfl, fun h => (by decide : ¬ Nat.Prime 4) ((primeLabelAddress_iff 4).mp h)⟩

/-- Recompute the arithmetic predicates for the whole addressed window. -/
def badSlots (window : ℕ) : Finset (Fin 95) :=
  Finset.univ.filter fun slot => Counterexample (stageArgument (stageOrdinal window slot))

theorem mem_badSlots {window : ℕ} {slot : Fin 95} :
    slot ∈ badSlots window ↔ Counterexample (stageArgument (stageOrdinal window slot)) := by
  simp [badSlots]

def accepts (window : ℕ) : Bool := decide (badSlots window = ∅)

theorem accepts_iff (window : ℕ) :
    accepts window = true ↔ ∀ slot : Fin 95, ¬ Counterexample (stageArgument (stageOrdinal window slot)) := by
  simp [accepts, Finset.eq_empty_iff_forall_notMem, mem_badSlots]

theorem mem_stageBlock_iff_slot {window stage : ℕ} :
    stage ∈ stageBlock 95 window ↔ ∃ slot : Fin 95, stageOrdinal window slot = stage := by
  rw [stageBlock, Finset.mem_Ico]
  constructor
  · rintro ⟨first, last⟩
    refine ⟨⟨stage - 95 * window, by omega⟩, ?_⟩
    simp [stageOrdinal, Nat.add_sub_of_le first]
  · rintro ⟨slot, rfl⟩
    have := slot.isLt
    simp only [stageOrdinal]
    omega

/-- The trusted check recomputes all stage predicates from the window index. -/
def checker : CertificateChecker ℕ ℕ Unit where
  stages := stageBlock 95
  accepts := fun window _ => accepts window

theorem checker_sound : checker.Sound (fun stage => ¬ Counterexample (stageArgument stage)) := by
  intro window _ passed stage hm
  obtain ⟨slot, rfl⟩ := mem_stageBlock_iff_slot.mp hm
  exact (accepts_iff window).mp passed slot

theorem checker_complete : checker.Complete (fun stage => ¬ Counterexample (stageArgument stage)) := by
  intro window valid
  refine ⟨(), (accepts_iff window).mpr ?_⟩
  intro slot
  exact valid _ (mem_stageBlock_iff_slot.mpr ⟨slot, rfl⟩)

/-- A finite, clocked search reports a witness precisely when the checked
windows contain one. The theorem includes both negative and positive results. -/
def search (windowCount : ℕ) : Finset (ℕ × Fin 95) :=
  ((Finset.range windowCount).product Finset.univ).filter fun address => address.2 ∈ badSlots address.1

theorem mem_search {windowCount window : ℕ} {slot : Fin 95} :
    (window, slot) ∈ search windowCount ↔
      window < windowCount ∧ Counterexample (stageArgument (stageOrdinal window slot)) := by
  simp [search, mem_badSlots]

theorem search_complete :
    (∃ count, (search count).Nonempty) ↔ ∃ stage, Counterexample (stageArgument stage) := by
  constructor
  · rintro ⟨count, ⟨window, slot⟩, h⟩
    exact ⟨stageOrdinal window slot, (mem_search.mp h).2⟩
  · rintro ⟨stage, hstage⟩
    obtain ⟨window, slot, h⟩ := ordinalAddress stage
    refine ⟨window + 1, (window, slot), mem_search.mpr ⟨Nat.lt_succ_self _, ?_⟩⟩
    rwa [h]

/-- Decidability and local soundness of the checker are unconditional.
Acceptance of every window is equivalent to source-wide safety. -/
theorem all_windows_accept_iff :
    (∀ window, accepts window = true) ↔ ∀ stage, ¬ Counterexample (stageArgument stage) := by
  constructor
  · intro h stage
    obtain ⟨window, slot, hs⟩ := ordinalAddress stage
    rw [← hs]
    exact (accepts_iff window).mp (h window) slot
  · intro h window
    exact (accepts_iff window).mpr fun slot => h (stageOrdinal window slot)

theorem checker_covers_iff_all_windows_accept :
    checker.Covers (fun _ => True) ↔ ∀ window, accepts window = true := by
  constructor
  · intro covered
    exact all_windows_accept_iff.mpr fun stage =>
      CertificateChecker.test_of_covers checker_sound covered stage trivial
  · intro accepted
    refine CertificateChecker.covers_of_total (fun window => ⟨(), accepted window⟩) ?_
    intro stage _
    obtain ⟨window, slot, h⟩ := ordinalAddress stage
    exact ⟨window, mem_stageBlock_iff_slot.mpr ⟨slot, h⟩⟩

/-- Transport across the pinned arithmetic and blank-tape dependency boundary. -/
theorem all_windows_accept_iff_RH {original : ℕ → Prop} {halts : Prop}
    (agrees : ∀ n, 2 ≤ n → (Counterexample n ↔ original n))
    (halts_iff : halts ↔ ∃ stage : ℕ, original (stage + 2))
    (rh_iff : halts ↔ ¬ RiemannHypothesis) :
    (∀ window, accepts window = true) ↔ RiemannHypothesis := by
  have h : (∃ stage, Counterexample (stageArgument stage)) ↔ halts := by
    rw [halts_iff]
    exact exists_congr fun stage => agrees (stageArgument stage) (by simp [stageArgument])
  rw [all_windows_accept_iff, ← not_exists, h, rh_iff, not_not]

end GRWTSK.NumberTheory.Riemann95StageCertificates
