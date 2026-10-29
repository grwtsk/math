/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.FinitePrimeDivisorExtraction
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachProperPowerRadicalLog

/-!
# The actual radical-weighted prime-deletion generator

The quotient guard retains the repeated-prime correction. The forcing is the
indicator of one, independently defined. Nilpotence is proved on every positive
cutoff, not asserted from a numerical matrix. All equalities use the maintained
`moebiusReal`. Source proof candidate; compilation/kernel/axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.RadicalDeletionGenerator

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction

/-- The complete radical logarithm, before deleting any repeated-prime edge. -/
def logMass (n : ℕ) : ℝ := ∑ p ∈ n.primeFactors, Real.log (p : ℝ)

theorem logMass_eq_log_radical (n : ℕ) :
    logMass n = Real.log (Nat.radical n : ℝ) :=
  GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalLog.
    primeFactors_log_sum_eq_log_radical n

theorem logMass_positive {n : ℕ} (hn : 2 ≤ n) : 0 < logMass n := by
  obtain ⟨p, hp, hpn⟩ := Nat.exists_prime_and_dvd (by omega : n ≠ 1)
  have hmem : p ∈ n.primeFactors := Nat.mem_primeFactors.mpr ⟨hp, hpn, by omega⟩
  unfold logMass
  exact Finset.sum_pos
    (fun q hq => Real.log_pos (by exact_mod_cast (Nat.mem_primeFactors.mp hq).1.one_lt))
    ⟨p, hmem⟩

def weight (n p : ℕ) : ℝ := Real.log (p : ℝ) / logMass n

theorem weight_nonnegative {n p : ℕ} (hp : p ∈ n.primeFactors) :
    0 ≤ weight n p := by
  have hm := Nat.mem_primeFactors.mp hp
  have hn : 2 ≤ n := hm.1.two_le.trans (Nat.le_of_dvd (Nat.pos_of_ne_zero hm.2.2) hm.2.1)
  exact div_nonneg (Real.log_nonneg (by exact_mod_cast hm.1.one_le))
    (logMass_positive hn).le

theorem weights_sum_one {n : ℕ} (hn : 2 ≤ n) :
    (∑ p ∈ n.primeFactors, weight n p) = 1 := by
  unfold weight
  rw [← Finset.sum_div]
  change logMass n / logMass n = 1
  exact div_self (logMass_positive hn).ne'

/-- A square factor is never silently erased: only exponent-one prime deletions act. -/
def step (f : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ p ∈ n.primeFactors, weight n p * (if p ∣ n / p then 0 else f (n / p))

def seed (n : ℕ) : ℝ := if n = 1 then 1 else 0

@[simp] theorem step_zero (f : ℕ → ℝ) : step f 0 = 0 := by simp [step]
@[simp] theorem step_one (f : ℕ → ℝ) : step f 1 = 0 := by simp [step]
@[simp] theorem step_zero_function : step (fun _ => 0) = (fun _ => 0) := by
  funext n
  simp [step]

theorem step_add (f g : ℕ → ℝ) :
    step (fun n => f n + g n) = (fun n => step f n + step g n) := by
  funext n
  unfold step
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  split_ifs <;> ring

theorem step_smul (a : ℝ) (f : ℕ → ℝ) :
    step (fun n => a * f n) = (fun n => a * step f n) := by
  funext n
  unfold step
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p _
  split_ifs <;> ring

theorem step_sum {ι : Type*} (S : Finset ι) (f : ι → ℕ → ℝ) :
    step (fun n => ∑ i ∈ S, f i n) = (fun n => ∑ i ∈ S, step (f i) n) := by
  classical
  induction S using Finset.induction_on with
  | empty => simp
  | @insert i S hi ih =>
      simp only [Finset.sum_insert hi]
      rw [step_add, ih]

/-- This guard is exactly unrestricted quotient minus repeated-prime quotient. -/
theorem guarded_quotient {n p : ℕ} (hp : Nat.Prime p) (hpn : p ∣ n) :
    (if p ∣ n / p then 0 else moebiusReal (n / p)) = -moebiusReal n := by
  have h := moebiusReal_eq_neg_quotient_add_repeat hp hpn
  by_cases hr : p ∣ n / p <;> simp only [hr, if_true, if_false] at h ⊢ <;> linarith

theorem step_moebius {n : ℕ} (hn : 2 ≤ n) : step moebiusReal n = -moebiusReal n := by
  calc
    _ = ∑ p ∈ n.primeFactors, weight n p * (-moebiusReal n) := by
      apply Finset.sum_congr rfl
      intro p hp
      rw [guarded_quotient (Nat.mem_primeFactors.mp hp).1
        (Nat.mem_primeFactors.mp hp).2.1]
    _ = (∑ p ∈ n.primeFactors, weight n p) * (-moebiusReal n) :=
      (Finset.sum_mul _ _ _).symm
    _ = -moebiusReal n := by rw [weights_sum_one hn, one_mul]

/-- The forcing is constructed; this is not an assumed source-return field. -/
theorem source_equation (n : ℕ) : moebiusReal n + step moebiusReal n = seed n := by
  by_cases h0 : n = 0
  · subst n; simp [seed, moebiusReal]
  by_cases h1 : n = 1
  · subst n; simp [seed, moebiusReal, ArithmeticFunction.moebius_apply_one]
  rw [step_moebius (by omega), seed, if_neg h1]
  ring

theorem quotient_positive {n p : ℕ} (hp : p ∈ n.primeFactors) : 1 ≤ n / p := by
  have hm := Nat.mem_primeFactors.mp hp
  have he := Nat.mul_div_cancel' hm.2.1
  by_contra h
  have hz : n / p = 0 := by omega
  rw [hz, mul_zero] at he
  exact hm.2.2 he.symm

theorem quotient_lt {n p : ℕ} (hp : p ∈ n.primeFactors) : n / p < n := by
  have hm := Nat.mem_primeFactors.mp hp
  exact Nat.div_lt_self (Nat.pos_of_ne_zero hm.2.2) hm.1.one_lt

/-- No value outside the smaller positive source indices is read. -/
theorem step_congr_below {f g : ℕ → ℝ} (n : ℕ)
    (h : ∀ m, 1 ≤ m → m < n → f m = g m) : step f n = step g n := by
  apply Finset.sum_congr rfl
  intro p hp
  rw [h (n / p) (quotient_positive hp) (quotient_lt hp)]

/-- The triangular equation has a unique solution on each positive cutoff. -/
theorem solution_unique (N : ℕ) (f g a : ℕ → ℝ)
    (hf : ∀ n, 1 ≤ n → n ≤ N → f n + step f n = a n)
    (hg : ∀ n, 1 ≤ n → n ≤ N → g n + step g n = a n) :
    ∀ n, 1 ≤ n → n ≤ N → f n = g n := by
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
      intro hn hnN
      have hs : step f n = step g n := step_congr_below n (by
        intro m hm hmn
        exact ih m hmn hm (Nat.le_trans hmn.le hnN))
      linarith [hf n hn hnN, hg n hn hnN]

def iterate : ℕ → (ℕ → ℝ) → ℕ → ℝ
  | 0, f => f
  | k + 1, f => step (iterate k f)

@[simp] theorem iterate_zero (f : ℕ → ℝ) : iterate 0 f = f := rfl
@[simp] theorem iterate_succ (k : ℕ) (f : ℕ → ℝ) :
    iterate (k + 1) f = step (iterate k f) := rfl

theorem iterate_add (k : ℕ) (f g : ℕ → ℝ) :
    iterate k (fun n => f n + g n) = (fun n => iterate k f n + iterate k g n) := by
  induction k with
  | zero => rfl
  | succ k ih => simp only [iterate_succ, ih, step_add]

/-- A deletion at least halves the positive integer. This proves local nilpotence. -/
theorem iterate_vanish_below (k : ℕ) (f : ℕ → ℝ) (n : ℕ)
    (hn : 1 ≤ n) (hsmall : n < 2 ^ k) : iterate k f n = 0 := by
  induction k generalizing n with
  | zero => norm_num at hsmall; omega
  | succ k ih =>
      change step (iterate k f) n = 0
      unfold step
      apply Finset.sum_eq_zero
      intro p hp
      have hm := Nat.mem_primeFactors.mp hp
      have he := Nat.mul_div_cancel' hm.2.1
      have hp2 := hm.1.two_le
      have hhalf : 2 * (n / p) ≤ n := by
        have hh := Nat.mul_le_mul_right (n / p) hp2
        rw [he] at hh
        exact hh
      have hq : n / p < 2 ^ k := by
        rw [pow_succ] at hsmall
        omega
      rw [ih (n / p) (quotient_positive hp) hq]
      split_ifs <;> ring

/-- At cutoff 2^j the actual positive-index operator is nilpotent in j+1 steps. -/
theorem dyadic_nilpotence (j : ℕ) (f : ℕ → ℝ) (n : ℕ)
    (hn : 1 ≤ n) (hN : n ≤ 2 ^ j) : iterate (j + 1) f n = 0 := by
  apply iterate_vanish_below (j + 1) f n hn
  have hp : 0 < (2 : ℕ) ^ j := by positivity
  rw [pow_succ]
  omega

/-- Generic exact alternating telescope, retaining its final term. -/
theorem alternating_telescope (j : ℕ) (a : ℕ → ℝ) :
    (∑ k ∈ Finset.range (j + 1), (-1 : ℝ) ^ k * (a k + a (k + 1))) =
      a 0 + (-1 : ℝ) ^ j * a (j + 1) := by
  induction j with
  | zero => simp
  | succ j ih =>
      rw [Finset.sum_range_succ, ih, pow_succ]
      ring

def neumann (j : ℕ) (f : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (j + 1), (-1 : ℝ) ^ k * iterate k f n

/-- Both sides of the inverse equation, with the terminal power still explicit. -/
theorem neumann_equation (j : ℕ) (f : ℕ → ℝ) (n : ℕ) :
    neumann j f n + step (neumann j f) n =
      f n + (-1 : ℝ) ^ j * iterate (j + 1) f n := by
  have hs : step (neumann j f) n =
      ∑ k ∈ Finset.range (j + 1), (-1 : ℝ) ^ k * iterate (k + 1) f n := by
    unfold neumann
    rw [step_sum]
    apply Finset.sum_congr rfl
    intro k _
    exact congrFun (step_smul ((-1 : ℝ) ^ k) (iterate k f)) n
  rw [hs]
  unfold neumann
  rw [← Finset.sum_add_distrib]
  have he : (∑ k ∈ Finset.range (j + 1),
      ((-1 : ℝ) ^ k * iterate k f n + (-1 : ℝ) ^ k * iterate (k + 1) f n)) =
      ∑ k ∈ Finset.range (j + 1),
        (-1 : ℝ) ^ k * (iterate k f n + iterate (k + 1) f n) := by
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he]
  simpa only [iterate_zero] using alternating_telescope j (fun k => iterate k f n)

theorem neumann_inverse_on_dyadic (j : ℕ) (f : ℕ → ℝ) (n : ℕ)
    (hn : 1 ≤ n) (hN : n ≤ 2 ^ j) :
    neumann j f n + step (neumann j f) n = f n := by
  rw [neumann_equation, dyadic_nilpotence j f n hn hN, mul_zero, add_zero]

/-- The finite inverse reconstructs the original arithmetic source. -/
theorem moebius_eq_neumann (j : ℕ) (n : ℕ) (hn : 1 ≤ n) (hN : n ≤ 2 ^ j) :
    moebiusReal n = neumann j seed n := by
  exact solution_unique (2 ^ j) moebiusReal (neumann j seed) seed
    (fun n _ _ => source_equation n)
    (fun n hn hN => neumann_inverse_on_dyadic j seed n hn hN) n hn hN

/-- Coefficient layers use total prime-factor count only on the squarefree stratum. -/
def layer (k n : ℕ) : ℝ :=
  if Squarefree n ∧ ArithmeticFunction.cardFactors n = k then 1 else 0

@[simp] theorem layer_zero : layer 0 = seed := by
  funext n
  by_cases hn : n = 1
  · subst n; simp [layer, seed]
  by_cases h0 : n = 0
  · subst n; simp [layer, seed]
  have hc : ArithmeticFunction.cardFactors n ≠ 0 := by
    intro h
    exact (ArithmeticFunction.cardFactors_eq_zero_iff_eq_zero_or_one.mp h).elim h0 hn
  simp [layer, seed, hn, hc]

/-- The guard preserves squarefreeness exactly, while each deletion lowers degree by one. -/
theorem guarded_layer_quotient (k : ℕ) {n p : ℕ} (hp : p ∈ n.primeFactors) :
    (if p ∣ n / p then 0 else layer k (n / p)) = layer (k + 1) n := by
  have hm := Nat.mem_primeFactors.mp hp
  have hq0 : n / p ≠ 0 := by have := quotient_positive hp; omega
  have he : p * (n / p) = n := Nat.mul_div_cancel' hm.2.1
  have hc : ArithmeticFunction.cardFactors n =
      1 + ArithmeticFunction.cardFactors (n / p) := by
    rw [← he, ArithmeticFunction.cardFactors_mul hm.1.ne_zero hq0,
      ArithmeticFunction.cardFactors_apply_prime hm.1]
  by_cases hsf : Squarefree n
  · have hguard : ¬ p ∣ n / p := by
      intro hr
      apply Nat.squarefree_iff_prime_squarefree.mp hsf p hm.1
      exact (Nat.dvd_div_iff_mul_dvd hm.2.1).mp hr
    have hqsf : Squarefree (n / p) :=
      hsf.squarefree_of_dvd (Nat.div_dvd_of_dvd hm.2.1)
    have hdegree : ArithmeticFunction.cardFactors (n / p) = k ↔
        ArithmeticFunction.cardFactors n = k + 1 := by omega
    simp only [if_neg hguard, layer, hsf, hqsf, true_and, hdegree]
  · by_cases hr : p ∣ n / p
    · simp [hr, layer, hsf]
    · have hqsf : ¬ Squarefree (n / p) := by
        intro hq
        apply hsf
        rw [← he, Nat.squarefree_mul (hm.1.coprime_iff_not_dvd.mpr hr)]
        exact ⟨hm.1.squarefree, hq⟩
      simp [hr, layer, hsf, hqsf]

theorem step_layer (k : ℕ) : step (layer k) = layer (k + 1) := by
  funext n
  by_cases h0 : n = 0
  · subst n; simp [layer]
  by_cases h1 : n = 1
  · subst n; simp [layer]
  have hn : 2 ≤ n := by omega
  calc
    _ = ∑ p ∈ n.primeFactors, weight n p * layer (k + 1) n := by
      apply Finset.sum_congr rfl
      intro p hp
      rw [guarded_layer_quotient k hp]
    _ = (∑ p ∈ n.primeFactors, weight n p) * layer (k + 1) n :=
      (Finset.sum_mul _ _ _).symm
    _ = _ := by rw [weights_sum_one hn, one_mul]

theorem iterate_seed_eq_layer (k : ℕ) : iterate k seed = layer k := by
  induction k with
  | zero => exact layer_zero.symm
  | succ k ih => rw [iterate_succ, ih, step_layer]

/-- The complete finite alternating factor-layer representation of mu. -/
theorem moebius_eq_alternating_layers (j n : ℕ) (hn : 1 ≤ n) (hN : n ≤ 2 ^ j) :
    moebiusReal n =
      ∑ k ∈ Finset.range (j + 1), (-1 : ℝ) ^ k * layer k n := by
  rw [moebius_eq_neumann j n hn hN]
  simp only [neumann, iterate_seed_eq_layer]

/-- Source labels with zero Mobius value remain zero in every layer. -/
theorem layer_of_not_squarefree (k n : ℕ) (h : ¬ Squarefree n) : layer k n = 0 := by
  simp [layer, h]

/-- The infinite function operator is only locally nilpotent; the cutoff is essential. -/
theorem terminal_layer_zero (j n : ℕ) (hn : 1 ≤ n) (hN : n ≤ 2 ^ j) :
    layer (j + 1) n = 0 := by
  rw [← iterate_seed_eq_layer]
  exact dyadic_nilpotence j seed n hn hN

end GRWTSK.NumberTheory.Moebius.RadicalDeletionGenerator
