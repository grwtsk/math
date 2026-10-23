/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

Prime multiplicity, occupied support, and excess for nonzero natural numbers.
The underlying multiplicities are Mathlib's actual Nat.factorization, not
independently supplied cost data. Product overlap is counted exactly once.
This is the rational-integer profile, not a number-field ideal comparison.
Source proof scripts only; NOT_RUN / NOT_KERNEL_AUDITED.
-/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess

open scoped BigOperators

/-- Finite prime support of the actual factorization. Arithmetic uses n != 0. -/
def occupied (n : ℕ) : Finset ℕ := n.factorization.support

def indicator (n p : ℕ) : ℕ := if n.factorization p = 0 then 0 else 1

def excess (n p : ℕ) : ℕ := n.factorization p - 1

/-- One shared support occurrence is lost when two supports are unioned. -/
def overlap (m n p : ℕ) : ℕ :=
  if m.factorization p ≠ 0 ∧ n.factorization p ≠ 0 then 1 else 0

theorem multiplicity_split (n p : ℕ) :
    n.factorization p = indicator n p + excess n p := by
  unfold indicator excess
  split_ifs <;> omega

/-- At a declared prime this is Mathlib's p-adic valuation on naturals. -/
theorem prime_depth_eq_padicValNat (n p : ℕ) (_hn : n ≠ 0) (hp : Nat.Prime p) :
    n.factorization p = padicValNat p n := Nat.factorization_def n hp

theorem excess_zero_iff (n p : ℕ) : excess n p = 0 ↔ n.factorization p ≤ 1 := by
  unfold excess
  omega

/-- The prime and nonzero conventions are explicit; factorization(0) is not a budget. -/
theorem mem_occupied_iff (n p : ℕ) (hn : n ≠ 0) :
    p ∈ occupied n ↔ Nat.Prime p ∧ p ∣ n := by
  simp [occupied, Nat.support_factorization, Nat.mem_primeFactors, hn]

theorem occupied_mul (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    occupied (m * n) = occupied m ∪ occupied n := by
  ext p
  simp [occupied, Finsupp.mem_support_iff, Nat.factorization_mul hm hn,
    Nat.add_eq_zero, not_and_or]

/-- Positive exponent is essential: exponent zero has empty support. -/
theorem occupied_pow (n k : ℕ) (hk : k ≠ 0) : occupied (n ^ k) = occupied n := by
  ext p
  simp [occupied, Finsupp.mem_support_iff, Nat.factorization_pow,
    Finsupp.smul_apply, smul_eq_mul, Nat.mul_eq_zero, hk]

theorem occupied_prime (p : ℕ) (hp : Nat.Prime p) : occupied p = {p} := by
  simp [occupied, hp.factorization]

/-- Additive prime multiplicities require BOTH factors nonzero. -/
theorem product_depth (m n p : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    (m * n).factorization p = m.factorization p + n.factorization p := by
  simp [Nat.factorization_mul hm hn]

theorem product_support_overlap (m n p : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    indicator (m * n) p + overlap m n p = indicator m p + indicator n p := by
  unfold indicator overlap
  rw [product_depth m n p hm hn]
  by_cases ha : m.factorization p = 0 <;>
    by_cases hb : n.factorization p = 0 <;> simp [ha, hb, Nat.add_eq_zero]

/-- Shared primes create an EXTRA unit of excess, even for squarefree factors. -/
theorem product_excess (m n p : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    excess (m * n) p = excess m p + excess n p + overlap m n p := by
  unfold excess overlap
  rw [product_depth m n p hm hn]
  by_cases ha : m.factorization p = 0 <;>
    by_cases hb : n.factorization p = 0 <;> simp [ha, hb] <;> omega

theorem prime_power_excess (p k : ℕ) (hp : Nat.Prime p) :
    excess (p ^ k) p = k - 1 := by
  simp [excess, hp.factorization_pow]

/-- A universal exact counterfamily, not bounded numerical evidence. -/
theorem prime_power_unbounded (p : ℕ) (hp : Nat.Prime p) (B : ℕ) :
    ∃ k : ℕ, occupied (p ^ k) = {p} ∧ B < excess (p ^ k) p := by
  refine ⟨B + 2, ?_, ?_⟩
  · rw [occupied_pow p (B + 2) (by omega), occupied_prime p hp]
  · rw [prime_power_excess p (B + 2) hp]
    omega

/-- The product of DISTINCT prime factors, not the original multiplicity product. -/
def radical (n : ℕ) : ℕ := ∏ p ∈ occupied n, p

def supportLog (n : ℕ) : ℝ := ∑ p ∈ occupied n, Real.log (p : ℝ)

def excessLog (n : ℕ) : ℝ :=
  ∑ p ∈ occupied n, (excess n p : ℝ) * Real.log (p : ℝ)

def overlapLog (m n : ℕ) : ℝ :=
  ∑ p ∈ occupied m ∩ occupied n, Real.log (p : ℝ)

/-- Relate the actual prime product to its logarithmic support cost. -/
theorem log_radical (n : ℕ) : Real.log (radical n : ℝ) = supportLog n := by
  unfold radical supportLog
  rw [Nat.cast_prod]
  apply Real.log_prod
  intro p hp
  have hp0 : n.factorization p ≠ 0 := Finsupp.mem_support_iff.mp hp
  have hprime : Nat.Prime p := by
    by_contra h
    exact hp0 (Nat.factorization_eq_zero_of_not_prime n h)
  exact Nat.cast_ne_zero.mpr hprime.ne_zero

/-- Exact finite-prime decomposition of log n; not a fitted upper bound. -/
theorem log_decomposition (n : ℕ) (_hn : n ≠ 0) :
    Real.log (n : ℝ) = supportLog n + excessLog n := by
  rw [Real.log_nat_eq_sum_factorization]
  change (∑ p ∈ occupied n, (n.factorization p : ℝ) * Real.log (p : ℝ)) = _
  unfold supportLog excessLog
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  have hd : n.factorization p ≠ 0 := Finsupp.mem_support_iff.mp hp
  have hnat : n.factorization p = 1 + excess n p := by
    simpa [indicator, hd] using multiplicity_split n p
  have hcast : (n.factorization p : ℝ) = 1 + (excess n p : ℝ) := by
    simpa only [Nat.cast_add, Nat.cast_one] using congrArg (fun x : ℕ => (x : ℝ)) hnat
  rw [hcast]
  ring

theorem excessLog_nonneg (n : ℕ) : 0 ≤ excessLog n := by
  apply Finset.sum_nonneg
  intro p _
  exact mul_nonneg (Nat.cast_nonneg _) (Real.log_natCast_nonneg p)

/-- The support union counts each shared prime once, not twice. -/
theorem supportLog_product (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    supportLog (m * n) + overlapLog m n = supportLog m + supportLog n := by
  unfold supportLog overlapLog
  rw [occupied_mul m n hm hn]
  exact Finset.sum_union_inter

/-- Product excess includes the logarithmic shared-prime correction. -/
theorem excessLog_product (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    excessLog (m * n) = excessLog m + excessLog n + overlapLog m n := by
  have hm' := log_decomposition m hm
  have hn' := log_decomposition n hn
  have hmn := log_decomposition (m * n) (Nat.mul_ne_zero hm hn)
  have hs := supportLog_product m n hm hn
  have hl : Real.log ((m * n : ℕ) : ℝ) = Real.log (m : ℝ) + Real.log (n : ℝ) := by
    rw [Nat.cast_mul, Real.log_mul (Nat.cast_ne_zero.mpr hm) (Nat.cast_ne_zero.mpr hn)]
  linarith

end GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess
