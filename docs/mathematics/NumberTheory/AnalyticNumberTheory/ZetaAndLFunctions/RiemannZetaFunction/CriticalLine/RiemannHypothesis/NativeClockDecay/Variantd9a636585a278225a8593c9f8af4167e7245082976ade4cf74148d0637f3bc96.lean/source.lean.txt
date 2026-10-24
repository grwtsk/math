import FormalResearch.RiemannHypothesis.Conversation.AtomicCrossingLedger

/-!
# The unchanged inverse-root native cell pays its exact cubic-root decay

The atomic ledger's next geometric consumer retains the literal native width.
Every positive integer cell has width at most 1/(n*sqrt(n)). Thus its actual
selected crossing payment is bounded by log(n)/(n*sqrt(n)) on the same index.
This pointwise price supplies no infinite sum/integral comparison or bound on
source-selected signed cycle loads.

Human native-clock direction: grwtsk contributors. Local rationalization and
crossing consumer: OpenAI Codex. Mathlib square-root laws remain upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeClockDecay
open ArithmeticPrimitive NativeRecordConsumer AtomicCrossingLedger
noncomputable section

theorem literal_native_cell_decay {n : ℕ} (hn : 1 ≤ n) :
    cellClock n (n + 1 : ℕ) ≤ 1 / ((n : ℝ) * Real.sqrt n) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast hn
  have ha : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr hn0
  have hb : 0 < Real.sqrt (n + 1 : ℕ) := by positivity
  have ha2 := Real.sq_sqrt hn0.le
  have hb2 := Real.sq_sqrt (Nat.cast_nonneg (α := ℝ) (n + 1))
  have hab : Real.sqrt (n : ℝ) ≤ Real.sqrt (n + 1 : ℕ) :=
    Real.sqrt_le_sqrt (by exact_mod_cast Nat.le_succ n)
  have hs : 2 * Real.sqrt (n : ℝ) *
      (Real.sqrt (n + 1 : ℕ) - Real.sqrt n) ≤ 1 := by
    have hb2' : Real.sqrt (n + 1 : ℕ) ^ 2 = (n : ℝ) + 1 :=
      hb2.trans (by push_cast; rfl)
    nlinarith [sq_nonneg (Real.sqrt (n + 1 : ℕ) - Real.sqrt n)]
  have hmul := mul_le_mul_of_nonneg_left hs ha.le
  have hcombine : 2 * (n : ℝ) *
      (Real.sqrt (n + 1 : ℕ) - Real.sqrt n) ≤ Real.sqrt (n + 1 : ℕ) := by
    nlinarith [hmul]
  unfold cellClock
  apply (le_div_iff₀ (mul_pos hn0 ha)).mpr
  have hneq : Real.sqrt (n : ℝ) ≠ 0 := ha.ne'
  have hneq1 : Real.sqrt (n + 1 : ℕ) ≠ 0 := hb.ne'
  field_simp
  nlinarith [hcombine]

theorem actual_crossing_cell_decay {n : ℕ} (hn : 3 ≤ n) (hc : isCrossing n) :
    cellClock n (n + 1 : ℕ) * max |storage (n - 1)| |storage n| ≤
      Real.log n / ((n : ℝ) * Real.sqrt n) := by
  have hm := actual_crossing_magnitude hn hc
  have hw := literal_native_cell_decay (by omega : 1 ≤ n)
  have hl : 0 ≤ Real.log (n : ℝ) := (log_index_gt_one hn).le.trans' (by norm_num)
  calc
    _ ≤ cellClock n (n + 1 : ℕ) * Real.log n :=
      mul_le_mul_of_nonneg_left hm (cellClock_pos (by omega)).le
    _ ≤ (1 / ((n : ℝ) * Real.sqrt n)) * Real.log n :=
      mul_le_mul_of_nonneg_right hw hl
    _ = _ := by ring

end
end GRWTSK.RiemannHypothesis.Conversation.NativeClockDecay
