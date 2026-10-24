# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TriangularActiveCycleConsumer.Variant7c90037f33603591cd6bb83feba1cee1e7df9a78a9372ac5aad583980ab5672d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de680b176ac3009191bd9aac4fc60b41bc5589af` · SHA-256 `7c90037f33603591cd6bb83feba1cee1e7df9a78a9372ac5aad583980ab5672d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularRealRecordConsumer

/-!
# Active source cycles retain the divergent complete-pulse record price

The literal pulse has zero storage in its first and last native cells. Its
active interval from M^2+1 to M^2+2M therefore has exactly the same full
primitive and running-record rise, with a smaller positive inverse-root width.
The genuine positive-storage cycle price dominates the complete-inventory
price for each fixed p>=1; its finite prefix budgets are consequently unbounded.
All original zero cells remain in the comparison and are explicitly paid as
zero. This is the same generic positive counting system, not prime arithmetic.
Human zero-seam and complete-source direction: grwtsk contributors. Local active
cycle comparison: OpenAI Codex. Existing qualified primitives and Mathlib power
and square-root order laws retain their own source identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularActiveCycleConsumer
open ArithmeticPrimitive TriangularCountingPulse TriangularDisjointBank TriangularLinearBank
open TriangularPulseDebt TriangularRecordIdentity TriangularContinuousPrimitive
open TriangularRealRecordConsumer TriangularPulseRecordPrice
open scoped BigOperators
noncomputable section

def activeWidth (j : ℕ) : ℝ :=
  2 * (1 / Real.sqrt ((linearSize j) ^ 2 + 1 : ℕ) -
    1 / Real.sqrt ((linearSize j) ^ 2 + 2 * linearSize j : ℕ))

def activeRecordPrice (j : ℕ) (a p : ℝ) : ℝ :=
  (runningRecord linearSize a ((linearSize j) ^ 2 + 2 * linearSize j : ℕ) -
    runningRecord linearSize a ((linearSize j) ^ 2 + 1 : ℕ)) ^ p /
    (activeWidth j) ^ (p - 1)

theorem literal_cycle_has_zero_boundary_storage (j : ℕ) (a : ℝ) :
    bankStorage linearSize a ((linearSize j) ^ 2) = 0 ∧
    bankStorage linearSize a ((linearSize j) ^ 2 + 2 * linearSize j) = 0 := by
  constructor
  · rw [linear_bank_retains_every_full_pulse j _ le_rfl (by omega)]
    exact pulse_is_zero_outside (Or.inl le_rfl) a
  · rw [linear_bank_retains_every_full_pulse j _ (by omega) le_rfl]
    exact pulse_is_zero_outside (Or.inr le_rfl) a

theorem literal_active_cycle_storage_positive (j n : ℕ) {a : ℝ} (ha : 0 < a)
    (hlo : (linearSize j) ^ 2 < n)
    (hhi : n < (linearSize j) ^ 2 + 2 * linearSize j) :
    0 < bankStorage linearSize a n := by
  rw [linear_bank_retains_every_full_pulse j n hlo.le hhi.le]
  unfold storage
  apply mul_pos ha
  exact_mod_cast (show 0 < triangle (linearSize j) n by unfold triangle; omega)

theorem active_native_width_positive (j : ℕ) : 0 < activeWidth j := by
  have hM : 2 ≤ linearSize j := by unfold linearSize; omega
  have hlo : (0 : ℝ) < ((linearSize j) ^ 2 + 1 : ℕ) := by positivity
  have hlt : (((linearSize j) ^ 2 + 1 : ℕ) : ℝ) <
      ((linearSize j) ^ 2 + 2 * linearSize j : ℕ) := by
    exact_mod_cast (show (linearSize j) ^ 2 + 1 <
      (linearSize j) ^ 2 + 2 * linearSize j by omega)
  have hs := one_div_lt_one_div_of_lt (Real.sqrt_pos.mpr hlo)
    (Real.sqrt_lt_sqrt hlo.le hlt)
  unfold activeWidth
  linarith

theorem active_width_le_complete_inventory_width (j : ℕ) :
    activeWidth j ≤ width (linearSize j) := by
  have hM : 2 ≤ linearSize j := by unfold linearSize; omega
  have hstart : (0 : ℝ) < ((linearSize j) ^ 2 : ℕ) := by
    exact_mod_cast (show 0 < (linearSize j) ^ 2 by nlinarith)
  have hleftOrder : (((linearSize j) ^ 2 : ℕ) : ℝ) ≤
      ((linearSize j) ^ 2 + 1 : ℕ) := by exact_mod_cast
    (show (linearSize j) ^ 2 ≤ (linearSize j) ^ 2 + 1 by omega)
  have hleft := one_div_le_one_div_of_le (Real.sqrt_pos.mpr hstart)
    (Real.sqrt_le_sqrt hleftOrder)
  have hend : (0 : ℝ) < ((linearSize j) ^ 2 + 2 * linearSize j : ℕ) := by positivity
  have hrightOrder : (((linearSize j) ^ 2 + 2 * linearSize j : ℕ) : ℝ) ≤
      ((linearSize j) ^ 2 + 2 * linearSize j + 1 : ℕ) := by exact_mod_cast
    (show (linearSize j) ^ 2 + 2 * linearSize j ≤
      (linearSize j) ^ 2 + 2 * linearSize j + 1 by omega)
  have hright := one_div_le_one_div_of_le (Real.sqrt_pos.mpr hend)
    (Real.sqrt_le_sqrt hrightOrder)
  rw [complete_native_width_is_exact_real_width]
  unfold activeWidth
  linarith

theorem full_active_cycle_rise_is_complete_pulse_debt (j : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    runningRecord linearSize a ((linearSize j) ^ 2 + 2 * linearSize j : ℕ) -
      runningRecord linearSize a ((linearSize j) ^ 2 + 1 : ℕ) = debt (linearSize j) a := by
  have hM : 2 ≤ linearSize j := by unfold linearSize; omega
  have hn : 1 ≤ (linearSize j) ^ 2 := by nlinarith
  have hlo : (1 : ℝ) ≤ ((linearSize j) ^ 2 + 1 : ℕ) := by exact_mod_cast (by omega : 1 ≤ (linearSize j) ^ 2 + 1)
  have hhi : (1 : ℝ) ≤ ((linearSize j) ^ 2 + 2 * linearSize j : ℕ) := by exact_mod_cast (by omega : 1 ≤ (linearSize j) ^ 2 + 2 * linearSize j)
  rw [full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hhi,
    full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hlo,
    exact_integer_bank_primitive, exact_integer_bank_primitive]
  have hzero := literal_cycle_has_zero_boundary_storage j a
  have hfirst := unchanged_bank_primitive_increment linearSize linear_size_sufficient hn a
  have hlast := unchanged_bank_primitive_increment linearSize linear_size_sufficient
    (by omega : 1 ≤ (linearSize j) ^ 2 + 2 * linearSize j) a
  rw [hzero.1, zero_mul] at hfirst
  rw [hzero.2, zero_mul] at hlast
  have h := full_linear_pulse_is_exact_record_growth j ha
  rw [every_endpoint_is_its_bank_record linearSize linear_size_sufficient ha] at h
  simp only [Nat.add_assoc] at h hlast
  linarith

theorem complete_pulse_price_le_active_cycle_price (j : ℕ) {a p : ℝ}
    (ha : 0 ≤ a) (hp : 1 ≤ p) : realRecordPrice j a p ≤ activeRecordPrice j a p := by
  rw [full_real_record_price_is_exact_native_price j ha,
    exact_full_native_record_price j ha, TriangularPulseRealP.price,
    activeRecordPrice, full_active_cycle_rise_is_complete_pulse_debt j ha]
  apply div_le_div_of_nonneg_left
    (Real.rpow_nonneg ((by positivity : 0 ≤ a / (16 * linearSize j)).trans
      (complete_pulse_debt_lower (by unfold linearSize; omega) ha)) p)
    (Real.rpow_pos_of_pos (active_native_width_positive j) _)
  exact Real.rpow_le_rpow (active_native_width_positive j).le
    (active_width_le_complete_inventory_width j) (sub_nonneg.mpr hp)

theorem active_cycle_fixed_p_prices_have_no_finite_budget {a p : ℝ}
    (ha : 0 < a) (hp : 1 ≤ p) (J : ℕ) :
    ¬ ∃ E : ℝ, ∀ K : ℕ, (∑ j ∈ Finset.range K, activeRecordPrice (j + J) a p) ≤ E := by
  rintro ⟨E, hE⟩
  apply full_real_record_has_no_finite_fixed_p_budget ha hp J
  refine ⟨E, ?_⟩
  intro K
  exact (Finset.sum_le_sum (fun j _ ↦
    complete_pulse_price_le_active_cycle_price (j + J) ha.le hp)).trans (hE K)

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularActiveCycleConsumer
```
