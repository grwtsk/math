/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A scalar-prefix countermodel, not a counterexample to Goldbach

These are explicitly artificial weights, NOT primeLogWeight. They retain
nonnegativity, zero endpoints, an isolated even atom, bounded scalar prefix
error, and zero reflected overlap on an unbounded family of even targets.
They show that those coarse properties do not imply an additive lower bound.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachScalarSupplierCountermodel

open scoped BigOperators

noncomputable section

/-- c can be chosen as log 2 in the written mathematical example. -/
def modFourProxyWeight (c : ℝ) (n : ℕ) : ℝ :=
  if n = 2 then c else if 5 ≤ n ∧ n % 4 = 1 then 4 else 0

def modFourProxyTotal (c : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (k + 1), modFourProxyWeight c n

def modFourProxyPrefix (c : ℝ) (k : ℕ) : ℝ :=
  modFourProxyTotal c k - (k + 1 : ℝ)

def modFourProxyMass (c : ℝ) (N : ℕ) : ℝ :=
  ∑ m ∈ Finset.range (N + 1), modFourProxyWeight c m * modFourProxyWeight c (N - m)

theorem modFourProxyWeight_nonneg {c : ℝ} (hc : 0 ≤ c) (n : ℕ) :
    0 ≤ modFourProxyWeight c n := by
  unfold modFourProxyWeight
  split_ifs <;> linarith

theorem modFourProxyWeight_zero (c : ℝ) : modFourProxyWeight c 0 = 0 := by
  norm_num [modFourProxyWeight]

theorem modFourProxyWeight_one (c : ℝ) : modFourProxyWeight c 1 = 0 := by
  norm_num [modFourProxyWeight]

theorem modFourProxyWeight_two (c : ℝ) : modFourProxyWeight c 2 = c := by
  norm_num [modFourProxyWeight]

theorem modFourProxyWeight_even_support (c : ℝ) {n : ℕ}
    (heven : n % 2 = 0) (hne : n ≠ 2) : modFourProxyWeight c n = 0 := by
  have hmod : n % 4 ≠ 1 := by omega
  simp [modFourProxyWeight, hne, hmod]

/-- The first omitted congruence test detects the artificial support. -/
theorem modFourProxyWeight_residue_three (c : ℝ) {n : ℕ}
    (hmod : n % 4 = 3) : modFourProxyWeight c n = 0 := by
  have hne : n ≠ 2 := by omega
  simp [modFourProxyWeight, hne, hmod]

def modFourProxyResidueThreePrefix (c : ℝ) (k : ℕ) : ℝ :=
  (∑ n ∈ Finset.range (k + 1),
    if n % 4 = 3 then modFourProxyWeight c n else 0) - (k + 1 : ℝ) / 2

/-- The reduced residue-three discrepancy has linear size despite the
bounded scalar discrepancy. The denominator two is phi(4). -/
theorem modFourProxyResidueThreePrefix_eq (c : ℝ) (k : ℕ) :
    modFourProxyResidueThreePrefix c k = -(k + 1 : ℝ) / 2 := by
  have hs : (∑ n ∈ Finset.range (k + 1),
      if n % 4 = 3 then modFourProxyWeight c n else 0) = 0 := by
    apply Finset.sum_eq_zero
    intro n _hn
    by_cases hn3 : n % 4 = 3
    · simp [hn3, modFourProxyWeight_residue_three c hn3]
    · simp [hn3]
  unfold modFourProxyResidueThreePrefix
  rw [hs]
  ring

/-- The complete inclusive prefix is evaluated, including k=0 and k=1. -/
theorem modFourProxyTotal_eq (c : ℝ) (k : ℕ) :
    modFourProxyTotal c k =
      4 * (((k - 1) / 4 : ℕ) : ℝ) + if 2 ≤ k then c else 0 := by
  induction k with
  | zero => simp [modFourProxyTotal, modFourProxyWeight]
  | succ k ih =>
    have hs : modFourProxyTotal c (k + 1) =
        modFourProxyTotal c k + modFourProxyWeight c (k + 1) := by
      simp [modFourProxyTotal, Finset.sum_range_succ]
    rw [hs, ih]
    by_cases hk : k < 4
    · interval_cases k <;> norm_num [modFourProxyWeight]
    · have hk4 : 4 ≤ k := by omega
      have hk2 : 2 ≤ k := by omega
      have hks2 : 2 ≤ k + 1 := by omega
      have hks5 : 5 ≤ k + 1 := by omega
      have hne : k + 1 ≠ 2 := by omega
      by_cases hm : (k + 1) % 4 = 1
      · have hq : k / 4 = (k - 1) / 4 + 1 := by omega
        simp [modFourProxyWeight, hk2, hks2, hks5, hne, hm, hq,
          Nat.cast_add, Nat.cast_one]
        ring
      · have hq : k / 4 = (k - 1) / 4 := by omega
        simp [modFourProxyWeight, hk2, hks2, hks5, hne, hm, hq]

/-- Uniform O(1) scalar prefix error for every prefix, not merely a terminal
estimate or an average over targets. -/
theorem modFourProxyPrefix_abs_le_five {c : ℝ}
    (hc0 : 0 ≤ c) (hc1 : c ≤ 1) (k : ℕ) :
    |modFourProxyPrefix c k| ≤ 5 := by
  have hloNat : k ≤ 4 * ((k - 1) / 4) + 4 := by omega
  have hhiNat : 4 * ((k - 1) / 4) ≤ k := by omega
  have hlo : (k : ℝ) ≤ 4 * (((k - 1) / 4 : ℕ) : ℝ) + 4 := by
    exact_mod_cast hloNat
  have hhi : 4 * (((k - 1) / 4 : ℕ) : ℝ) ≤ k := by
    exact_mod_cast hhiNat
  unfold modFourProxyPrefix
  rw [modFourProxyTotal_eq, abs_le]
  split_ifs <;> constructor <;> linarith

theorem modFourProxy_one_percent {c : ℝ}
    (hc0 : 0 ≤ c) (hc1 : c ≤ 1) {N : ℕ} (hN : 499 ≤ N) :
    ∀ k, k ≤ N → |modFourProxyPrefix c k| ≤ (N + 1 : ℝ) / 100 := by
  intro k _hk
  have hNr : (499 : ℝ) ≤ N := by exact_mod_cast hN
  exact (modFourProxyPrefix_abs_le_five hc0 hc1 k).trans (by linarith)

/-- For multiples of four above four, no two supported indices add to N. -/
theorem modFourProxy_reflected_product_zero (c : ℝ) {N m : ℕ}
    (hN : 4 < N) (hmod : N % 4 = 0) (hm : m ≤ N) :
    modFourProxyWeight c m * modFourProxyWeight c (N - m) = 0 := by
  unfold modFourProxyWeight
  split_ifs <;> simp_all <;> omega

theorem modFourProxyMass_zero (c : ℝ) {N : ℕ}
    (hN : 4 < N) (hmod : N % 4 = 0) : modFourProxyMass c N = 0 := by
  apply Finset.sum_eq_zero
  intro m hm
  exact modFourProxy_reflected_product_zero c hN hmod
    (by simpa only [Finset.mem_range, Nat.lt_succ_iff] using hm)

/-- The obstruction persists beyond EVERY proposed cutoff, despite the
same one-percent all-prefix scale. This is about the proxy weights only. -/
theorem modFourProxy_unbounded_zero_mass {c : ℝ} (hc0 : 0 ≤ c) (hc1 : c ≤ 1)
    (N₀ : ℕ) : ∃ N, N₀ ≤ N ∧ 4 < N ∧ Even N ∧
      modFourProxyMass c N = 0 ∧
      ∀ k, k ≤ N → |modFourProxyPrefix c k| ≤ (N + 1 : ℝ) / 100 := by
  refine ⟨4 * (N₀ + 500), by omega, by omega, ?_, ?_, ?_⟩
  · exact ⟨2 * (N₀ + 500), by omega⟩
  · exact modFourProxyMass_zero c (by omega) (by omega)
  · exact modFourProxy_one_percent hc0 hc1 (by omega)

end
end GRWTSK.NumberTheory.Primes.Checks.GoldbachScalarSupplierCountermodel
