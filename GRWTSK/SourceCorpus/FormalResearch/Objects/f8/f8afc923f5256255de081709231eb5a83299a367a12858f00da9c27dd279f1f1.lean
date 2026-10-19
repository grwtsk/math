import FormalResearch.RiemannHypothesis.Conversation.TriangularContinuousPrimitive
import FormalResearch.RiemannHypothesis.Conversation.TriangularPulseRecordPrice
import FormalResearch.RiemannHypothesis.Conversation.TriangularBankInventory

/-!
# Infinite fixed-p cost for the exact continuous running record

The source pulse debt is the increase of the full real running record, with
the exact inverse-root width between the same two integer endpoints. The
continuous primitive retains every closed floor atom and equals its running
record on the whole real ray. One positive counting system with all-real
square-root error has no finite budget for these complete record-panel prices
at any fixed p>=1, after every starting pulse. This is a changed-weight method
boundary; no prime or von Mangoldt estimate follows. Human full-source and
record direction: grwtsk contributors. Local real-endpoint consumer: OpenAI
Codex. Existing local primitives and Mathlib real powers retain their identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularRealRecordConsumer
open ArithmeticPrimitive TriangularDisjointBank TriangularLinearBank TriangularPulseDebt
open TriangularRecordIdentity TriangularContinuousPrimitive TriangularPulseRecordPrice
open scoped BigOperators
noncomputable section

theorem complete_native_width_is_exact_real_width (M : ℕ) :
    width M = 2 * (1 / Real.sqrt (M ^ 2 : ℕ) -
      1 / Real.sqrt (M ^ 2 + 2 * M + 1 : ℕ)) := by
  have h := full_adjacent_inventory_telescope
    (fun n : ℕ ↦ -(2 / Real.sqrt n)) (M ^ 2) (2 * M)
  have hterms : width M = ∑ n ∈ Finset.Icc (M ^ 2) (M ^ 2 + 2 * M),
      (-(2 / Real.sqrt (n + 1 : ℕ)) - -(2 / Real.sqrt n)) := by
    unfold width inventory
    apply Finset.sum_congr rfl
    intro n _
    unfold cellClock
    ring
  rw [hterms, h]
  ring

def realRecordPrice (j : ℕ) (a p : ℝ) : ℝ :=
  (runningRecord linearSize a ((linearSize j) ^ 2 + 2 * linearSize j + 1 : ℕ) -
    runningRecord linearSize a ((linearSize j) ^ 2 : ℕ)) ^ p /
    (2 * (1 / Real.sqrt ((linearSize j) ^ 2 : ℕ) -
      1 / Real.sqrt ((linearSize j) ^ 2 + 2 * linearSize j + 1 : ℕ))) ^ (p - 1)

theorem full_real_record_price_is_exact_native_price (j : ℕ) {a : ℝ}
    (ha : 0 ≤ a) (p : ℝ) : realRecordPrice j a p = recordPrice j a p := by
  have hM : 2 ≤ linearSize j := by unfold linearSize; omega
  have hlo : (1 : ℝ) ≤ ((linearSize j) ^ 2 : ℕ) := by
    exact_mod_cast (show 1 ≤ (linearSize j) ^ 2 by nlinarith)
  have hhi : (1 : ℝ) ≤ ((linearSize j) ^ 2 + 2 * linearSize j + 1 : ℕ) := by
    exact_mod_cast (show 1 ≤ (linearSize j) ^ 2 + 2 * linearSize j + 1 by omega)
  unfold realRecordPrice recordPrice
  rw [full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hhi,
    full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hlo,
    exact_integer_bank_primitive, exact_integer_bank_primitive,
    every_endpoint_is_its_bank_record linearSize linear_size_sufficient ha,
    complete_native_width_is_exact_real_width]
  simp only [Nat.add_assoc]

theorem full_real_running_record_prices_not_summable {a p : ℝ}
    (ha : 0 < a) (hp : 1 ≤ p) (J : ℕ) :
    ¬ Summable (fun j ↦ realRecordPrice (j + J) a p) := by
  simp_rw [full_real_record_price_is_exact_native_price _ ha.le]
  exact full_native_record_prices_not_summable ha hp J

theorem full_real_record_has_no_finite_fixed_p_budget {a p : ℝ}
    (ha : 0 < a) (hp : 1 ≤ p) (J : ℕ) :
    ¬ ∃ E : ℝ, ∀ K : ℕ, (∑ j ∈ Finset.range K, realRecordPrice (j + J) a p) ≤ E := by
  simp_rw [full_real_record_price_is_exact_native_price _ ha.le]
  exact every_fixed_p_record_price_exceeds_every_finite_budget ha hp J

theorem one_positive_counting_system_with_divergent_full_real_record_prices :
    (∀ n : ℕ, 0 < bankWeight linearSize (1 / 2) n) ∧
      (∀ x : ℝ, 1 ≤ x → |count linearSize (1 / 2) x - x| ≤ (3 / 2) * Real.sqrt x) ∧
      ∀ p : ℝ, 1 < p → ∀ J : ℕ, ¬ ∃ E : ℝ,
        ∀ K : ℕ, (∑ j ∈ Finset.range K, realRecordPrice (j + J) (1 / 2) p) ≤ E := by
  refine ⟨linear_positive_counting_square_root_error.1,
    linear_positive_counting_square_root_error.2, ?_⟩
  intro p hp J
  exact full_real_record_has_no_finite_fixed_p_budget (by norm_num) hp.le J

def relativeRealRecordPrice (N : ℝ) (j : ℕ) (a p : ℝ) : ℝ :=
  (relativeRecord linearSize a N ((linearSize j) ^ 2 + 2 * linearSize j + 1 : ℕ) -
    relativeRecord linearSize a N ((linearSize j) ^ 2 : ℕ)) ^ p /
    (width (linearSize j)) ^ (p - 1)

theorem later_entrance_retains_exact_full_pulse_price {N a : ℝ}
    (hN : 1 ≤ N) (ha : 0 ≤ a) (j : ℕ)
    (hj : N ≤ ((linearSize j) ^ 2 : ℕ)) (p : ℝ) :
    relativeRealRecordPrice N j a p = realRecordPrice j a p := by
  have hlo : (1 : ℝ) ≤ ((linearSize j) ^ 2 : ℕ) := hN.trans hj
  have hhi : N ≤ ((linearSize j) ^ 2 + 2 * linearSize j + 1 : ℕ) := by
    exact hj.trans (by exact_mod_cast
      (show (linearSize j) ^ 2 ≤ (linearSize j) ^ 2 + 2 * linearSize j + 1 by omega))
  unfold relativeRealRecordPrice realRecordPrice
  rw [every_later_real_entrance_retains_the_same_primitive_record linearSize
    linear_size_sufficient ha hN hhi,
    every_later_real_entrance_retains_the_same_primitive_record linearSize
      linear_size_sufficient ha hN hj,
    full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha
      (hN.trans hhi),
    full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hlo,
    complete_native_width_is_exact_real_width]
  congr 2
  ring

theorem every_real_entrance_has_an_unbounded_fixed_p_record_price {N a p : ℝ}
    (hN : 1 ≤ N) (ha : 0 < a) (hp : 1 ≤ p) :
    ∃ J : ℕ, (∀ j : ℕ, N ≤ ((linearSize (j + J)) ^ 2 : ℕ)) ∧
      ¬ ∃ E : ℝ, ∀ K : ℕ,
        (∑ j ∈ Finset.range K, relativeRealRecordPrice N (j + J) a p) ≤ E := by
  let J : ℕ := ⌈N⌉₊
  have hstart (j : ℕ) : N ≤ ((linearSize (j + J)) ^ 2 : ℕ) := by
    apply (Nat.le_ceil N).trans
    exact_mod_cast (show J ≤ (linearSize (j + J)) ^ 2 by
      unfold linearSize
      have hm : 1 ≤ j + J + 2 := by omega
      have hs : j + J + 2 ≤ (j + J + 2) ^ 2 := by nlinarith
      exact (show J ≤ j + J + 2 by omega).trans hs)
  refine ⟨J, hstart, ?_⟩
  simp_rw [later_entrance_retains_exact_full_pulse_price hN ha.le _ (hstart _) p]
  exact full_real_record_has_no_finite_fixed_p_budget ha hp J

theorem one_complete_positive_counting_countermodel :
    (∀ n : ℕ, HasSum (fun j ↦ TriangularCountingPulse.storage
      (linearSize j) (1 / 2) n) (bankStorage linearSize (1 / 2) n)) ∧
    (∀ n : ℕ, 0 < bankWeight linearSize (1 / 2) n) ∧
    (∀ x : ℝ, 1 ≤ x → |count linearSize (1 / 2) x - x| ≤ (3 / 2) * Real.sqrt x) ∧
    ∀ N p : ℝ, 1 ≤ N → 1 < p → ∃ J : ℕ,
      (∀ j : ℕ, N ≤ ((linearSize (j + J)) ^ 2 : ℕ)) ∧
      ¬ ∃ E : ℝ, ∀ K : ℕ,
        (∑ j ∈ Finset.range K, relativeRealRecordPrice N (j + J) (1 / 2) p) ≤ E := by
  refine ⟨?_, linear_positive_counting_square_root_error.1,
    linear_positive_counting_square_root_error.2, ?_⟩
  · intro n
    exact TriangularBankInventory.exact_entire_infinite_pulse_inventory linearSize
      linear_size_sufficient linear_intervals_separated (1 / 2) n
  · intro N p hN hp
    exact every_real_entrance_has_an_unbounded_fixed_p_record_price hN (by norm_num) hp.le

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularRealRecordConsumer
