# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeRecordConsumer.Variant8fffa217001e98d6e90f0829a3265b12c9e237589d245e5c30bf9a68bbaf6ded

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cee4d48276f3261ed3681571f45eef475200b263` · SHA-256 `8fffa217001e98d6e90f0829a3265b12c9e237589d245e5c30bf9a68bbaf6ded`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.OpenArithmeticSuppliers
import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge

/-!
# Actual prime records consume the finite energy interface

The finite Hodge inequality now acts on the actual chronological record
increments and inverse-root widths. The supplier remains conditional; no
prime record-energy bound or reserve certificate is constructed here.

Source: audited RH conversation Batches 06–13. Human mathematical direction:
grwtsk contributors. Local consumer and Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeRecordConsumer

open OpenArithmeticSuppliers ArithmeticPrimitive CausalRecords
open scoped BigOperators
noncomputable section

/-- The record energy in this module, with the following exact parameterization.

def recordEnergy (N K : ℕ) : ℝ := ∑ j ∈ Finset.range K, (primeRecordIncrement N j) ^ 2 /
cellClock (N + j) (N + j + 1 : ℕ)
-/
def recordEnergy (N K : ℕ) : ℝ := ∑ j ∈ Finset.range K,
  (primeRecordIncrement N j) ^ 2 / cellClock (N + j) (N + j + 1 : ℕ)

theorem cellClock_pos {n : ℕ} (hn : 1 ≤ n) : 0 < cellClock n (n + 1 : ℕ) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hs := Real.sqrt_lt_sqrt hn0.le (show (n : ℝ) < (n + 1 : ℕ) by norm_cast; omega)
  have hi := one_div_lt_one_div_of_lt (Real.sqrt_pos.2 hn0) hs
  unfold cellClock
  linarith

theorem cellClock_nonneg {n : ℕ} {x : ℝ} (hn : 1 ≤ n) (hx : (n : ℝ) ≤ x) :
    0 ≤ cellClock n x := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hi := one_div_le_one_div_of_le (Real.sqrt_pos.2 hn0) (Real.sqrt_le_sqrt hx)
  unfold cellClock
  linarith

theorem cellClock_le_full {n : ℕ} {x : ℝ} (hn : 1 ≤ n)
    (hx : (n : ℝ) ≤ x) (hx1 : x ≤ (n + 1 : ℕ)) :
    cellClock n x ≤ cellClock n (n + 1 : ℕ) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hx0 : 0 < x := hn0.trans_le hx
  have hi := one_div_le_one_div_of_le (Real.sqrt_pos.2 hx0) (Real.sqrt_le_sqrt hx1)
  unfold cellClock
  linarith

/-- Both signed endpoint bounds control every real point of the exact source cell. -/
theorem finite_cell_sign {b : ℕ → ℝ} {n : ℕ} {x : ℝ} (hn : 1 ≤ n)
    (hx : (n : ℝ) ≤ x) (hx1 : x ≤ (n + 1 : ℕ))
    (hleft : finitePrimitive b n n ≤ 0)
    (hright : finitePrimitive b (n + 1 : ℕ) (n + 1) ≤ 0) :
    finitePrimitive b x n ≤ 0 := by
  rw [fixed_inventory_interpolation]
  by_cases hB : cumulativeDiscrepancy b n ≤ 0
  · have hprod := mul_nonpos_of_nonpos_of_nonneg hB (cellClock_nonneg hn hx)
    linarith
  · have hBp : 0 ≤ cumulativeDiscrepancy b n := (lt_of_not_ge hB).le
    have hprod := mul_le_mul_of_nonneg_left (cellClock_le_full hn hx hx1) hBp
    have hstep := adjacent_integer_increment b n hn
    linarith

theorem native_width_telescope (N K : ℕ) :
    (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) =
      2 * (1 / Real.sqrt N - 1 / Real.sqrt (N + K : ℕ)) := by
  induction K with
  | zero => simp
  | succ K ih =>
      rw [Finset.sum_range_succ, ih]
      rw [show N + K.succ = N + K + 1 by omega]
      simp only [cellClock]
      ring

theorem record_increment_eq_level_difference (N j : ℕ) :
    primeRecordIncrement N j = primeRecordLevel N (j + 1) - primeRecordLevel N j := rfl

theorem record_sum_eq_level (N K : ℕ) :
    (∑ j ∈ Finset.range K, primeRecordIncrement N j) = primeRecordLevel N K := by
  simp_rw [record_increment_eq_level_difference]
  rw [sum_increments]
  simp [primeRecordLevel]

theorem primeRecordLevel_nonneg (N K : ℕ) : 0 ≤ primeRecordLevel N K := by
  induction K with
  | zero => rfl
  | succ K ih => exact ih.trans (le_max_left _ _)

theorem actual_prefix_le_record (N K : ℕ) :
    ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ≤ primeRecordLevel N K := by
  cases K with
  | zero => simp [primeRecordLevel]
  | succ K =>
      rw [primeRecordLevel]
      simpa only [Nat.add_assoc] using le_max_right (primeRecordLevel N K)
        (ordinaryPrimePrimitive (N + K + 1 : ℕ) - ordinaryPrimePrimitive N)

/-- Every actual record prefix satisfies the native-width Cauchy bound. -/
theorem actual_record_square_le {N K : ℕ} (hN : 1 ≤ N) :
    (primeRecordLevel N K) ^ 2 ≤
      (2 / Real.sqrt N) * recordEnergy N K := by
  by_cases hK : K = 0
  · subst K
    simp [primeRecordLevel, recordEnergy]
  have hw (j : ℕ) (_hj : j ∈ Finset.range K) :
      0 < cellClock (N + j) (N + j + 1 : ℕ) := cellClock_pos (by omega)
  have hW : 0 < ∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ) := by
    apply Finset.sum_pos
    · exact hw
    · exact ⟨0, Finset.mem_range.mpr (by omega)⟩
  have h := WeightedHodge.finite_refinement_mono (Finset.range K)
    (fun j => cellClock (N + j) (N + j + 1 : ℕ)) (primeRecordIncrement N) hw hW.ne'
  rw [record_sum_eq_level] at h
  have hroot := (div_le_iff₀ hW).mp h
  have hE : 0 ≤ recordEnergy N K :=
    Finset.sum_nonneg (fun j hj => div_nonneg (sq_nonneg _) (hw j hj).le)
  have hWidth : (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) ≤
      2 / Real.sqrt N := by
    rw [native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt N = 2 * (1 / Real.sqrt N) by ring]
    linarith
  calc
    _ ≤ recordEnergy N K *
        (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) := hroot
    _ ≤ recordEnergy N K * (2 / Real.sqrt N) := mul_le_mul_of_nonneg_left hWidth hE
    _ = _ := by ring

/-- A supplier with an explicit reserve proves every future integer endpoint nonpositive. -/
theorem certified_energy_integer_sign {N : ℕ} {E R : ℝ} (hN : 1 ≤ N)
    (hR : 0 ≤ R) (hstart : ordinaryPrimePrimitive N ≤ -R)
    (hE : ∀ K : ℕ, recordEnergy N K ≤ E)
    (hreserve : (2 / Real.sqrt N) * E ≤ R ^ 2) (K : ℕ) :
    ordinaryPrimePrimitive (N + K : ℕ) ≤ 0 := by
  have hroot := actual_record_square_le (K := K) hN
  have hbudget := mul_le_mul_of_nonneg_left (hE K)
    (show 0 ≤ (2 : ℝ) / Real.sqrt N by positivity)
  have hL : primeRecordLevel N K ≤ R := by nlinarith
  have hp := actual_prefix_le_record N K
  linarith

/-- The exact cell clock transports a certified record reserve to all real arguments. -/
theorem certified_energy_eventual_sign {N : ℕ} {E R : ℝ} (hN : 2 ≤ N)
    (hR : 0 ≤ R) (hstart : ordinaryPrimePrimitive N ≤ -R)
    (hE : ∀ K : ℕ, recordEnergy N K ≤ E)
    (hreserve : (2 / Real.sqrt N) * E ≤ R ^ 2) : OrdinaryPrimeEventualSignSupplier := by
  have hint (n : ℕ) (hn : N ≤ n) : ordinaryPrimePrimitive n ≤ 0 := by
    obtain ⟨K, rfl⟩ := Nat.exists_eq_add_of_le hn
    exact certified_energy_integer_sign (by omega) hR hstart hE hreserve K
  refine ⟨N, by exact_mod_cast hN, ?_⟩
  intro x hx
  have hNx : N ≤ ⌊x⌋₊ := Nat.le_floor hx
  have hx0 : 0 ≤ x := (Nat.cast_nonneg N).trans hx
  have hleft := hint ⌊x⌋₊ hNx
  have hright := hint (⌊x⌋₊ + 1) (by omega)
  change finitePrimitive ordinaryPrimeCoefficient x ⌊x⌋₊ ≤ 0
  apply finite_cell_sign (by omega) (Nat.floor_le hx0)
    (by simpa only [Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one x).le)
  · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hleft
  · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hright

end
end GRWTSK.RiemannHypothesis.Conversation.NativeRecordConsumer
```
