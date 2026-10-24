# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TriangularContinuousPrimitive.Variant3a090bc11af80022c9a67c71750d0f5a56b446056937967e4011cf1d1460a56c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31ae7b1a46ffab804bce1d52c7c3cbf9b5cda839` · SHA-256 `3a090bc11af80022c9a67c71750d0f5a56b446056937967e4011cf1d1460a56c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TriangularRecordIdentity

/-!
# The literal bank primitive has a continuous monotone real record

The exact closed floor inventory, zero touching upper atom and inverse-root
clock are retained. Nonnegative bank storage proves monotonicity through all
real cells, including births. The initial primitive at one is zero, so the
running positive record on the full closed real window equals this same
primitive. These are changed positive counting weights, not prime coefficients.
Human native-clock and exact causal-record direction: grwtsk contributors.
Local continuous bank/record adapter: OpenAI Codex. Existing qualified primitive
and Mathlib closed-supremum laws retain their identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.TriangularContinuousPrimitive
open Set ArithmeticPrimitive NativeRecordConsumer TriangularDisjointBank TriangularRecordIdentity
noncomputable section

def primitive (M : ℕ → ℕ) (a x : ℝ) : ℝ := closedPrimitive (coefficient M a) x
def runningRecord (M : ℕ → ℕ) (a x : ℝ) : ℝ :=
  sSup (insert 0 (primitive M a '' Icc 1 x))

def relativeRecord (M : ℕ → ℕ) (a N x : ℝ) : ℝ :=
  sSup (insert 0 ((fun t ↦ primitive M a t - primitive M a N) '' Icc N x))

theorem unchanged_bank_primitive_continuousAt (M : ℕ → ℕ) (a : ℝ) {x : ℝ} (hx : 0 < x) :
    ContinuousAt (primitive M a) x := closedPrimitive_continuousAt _ hx

theorem exact_integer_bank_primitive (M : ℕ → ℕ) (a : ℝ) (n : ℕ) :
    primitive M a n = path M a n := by
  simp only [primitive, closedPrimitive, Nat.floor_natCast, path]

theorem initial_bank_primitive_is_zero (M : ℕ → ℕ) (a : ℝ) : primitive M a 1 = 0 := by
  simpa [path, finitePrimitive] using exact_integer_bank_primitive M a 1

theorem exact_closed_bank_cell (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {n : ℕ} (hn : 1 ≤ n) {x : ℝ} (hx : (n : ℝ) ≤ x) (hx1 : x < (n : ℝ) + 1) (a : ℝ) :
    primitive M a x = path M a n + bankStorage M a n * cellClock n x := by
  rw [primitive, closed_cell_interpolation _ n hx hx1, exact_bank_cumulative_storage M hM hn]
  rfl

theorem full_real_cell_primitive_bracket (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {n : ℕ} (hn : 1 ≤ n) {a x : ℝ} (ha : 0 ≤ a)
    (hx : (n : ℝ) ≤ x) (hx1 : x < (n : ℝ) + 1) :
    path M a n ≤ primitive M a x ∧ primitive M a x ≤ path M a (n + 1) := by
  rw [exact_closed_bank_cell M hM hn hx hx1]
  have hB := (bank_square_root_storage M n ha).1
  have hlo := mul_nonneg hB (cellClock_nonneg hn hx)
  have hhi := mul_le_mul_of_nonneg_left
    (cellClock_le_full hn hx (by simpa only [Nat.cast_add, Nat.cast_one] using hx1.le)) hB
  have hs := unchanged_bank_primitive_increment M hM hn a
  constructor <;> linarith

theorem unchanged_bank_primitive_monotoneOn (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {a : ℝ} (ha : 0 ≤ a) : MonotoneOn (primitive M a) (Ici 1) := by
  intro x hx y hy hxy
  change 1 ≤ x at hx
  change 1 ≤ y at hy
  have hnx : 1 ≤ ⌊x⌋₊ := Nat.le_floor (by simpa only [Nat.cast_one] using hx)
  have hny : 1 ≤ ⌊y⌋₊ := Nat.le_floor (by simpa only [Nat.cast_one] using hy)
  have hxl : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le (by linarith)
  have hyl : (⌊y⌋₊ : ℝ) ≤ y := Nat.floor_le (by linarith)
  have hxu : x < (⌊x⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one x
  have hyu : y < (⌊y⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one y
  have hfloor : ⌊x⌋₊ ≤ ⌊y⌋₊ := Nat.floor_mono hxy
  by_cases heq : ⌊x⌋₊ = ⌊y⌋₊
  · rw [exact_closed_bank_cell M hM hnx hxl hxu,
      exact_closed_bank_cell M hM hny hyl hyu, ← heq]
    have hinv := one_div_le_one_div_of_le (Real.sqrt_pos.mpr (by linarith : 0 < x))
      (Real.sqrt_le_sqrt hxy)
    have hB := (bank_square_root_storage M ⌊x⌋₊ ha).1
    have hprod := mul_nonneg hB (sub_nonneg.mpr hinv)
    unfold cellClock
    nlinarith
  · have hnext : ⌊x⌋₊ + 1 ≤ ⌊y⌋₊ := by omega
    exact (full_real_cell_primitive_bracket M hM hnx ha hxl hxu).2.trans
      ((bank_primitive_monotone M hM ha hnext).trans
        (full_real_cell_primitive_bracket M hM hny ha hyl hyu).1)

theorem unchanged_bank_primitive_nonnegative (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    {a x : ℝ} (ha : 0 ≤ a) (hx : 1 ≤ x) : 0 ≤ primitive M a x := by
  have h : primitive M a 1 ≤ primitive M a x :=
    unchanged_bank_primitive_monotoneOn M hM ha
      (show (1 : ℝ) ∈ Ici 1 by simp) hx hx
  simpa only [initial_bank_primitive_is_zero] using h

theorem full_real_running_record_is_unchanged_primitive (M : ℕ → ℕ)
    (hM : ∀ j, j + 2 ≤ M j) {a x : ℝ} (ha : 0 ≤ a) (hx : 1 ≤ x) :
    runningRecord M a x = primitive M a x := by
  have hupper : ∀ v ∈ insert 0 (primitive M a '' Icc 1 x), v ≤ primitive M a x := by
    intro v hv
    rcases mem_insert_iff.mp hv with rfl | hv
    · exact unchanged_bank_primitive_nonnegative M hM ha hx
    · obtain ⟨t, ht, rfl⟩ := hv
      exact unchanged_bank_primitive_monotoneOn M hM ha ht.1 hx ht.2
  have hb : BddAbove (insert 0 (primitive M a '' Icc 1 x)) := ⟨primitive M a x, hupper⟩
  apply le_antisymm
  · apply csSup_le ⟨0, mem_insert 0 _⟩
    intro v hv
    exact hupper v hv
  · apply le_csSup hb
    exact mem_insert_of_mem 0 ⟨x, ⟨hx, le_rfl⟩, rfl⟩

theorem every_later_real_entrance_retains_the_same_primitive_record (M : ℕ → ℕ)
    (hM : ∀ j, j + 2 ≤ M j) {a N x : ℝ} (ha : 0 ≤ a)
    (hN : 1 ≤ N) (hx : N ≤ x) :
    relativeRecord M a N x = primitive M a x - primitive M a N := by
  have hx1 : 1 ≤ x := hN.trans hx
  have hupper : ∀ v ∈ insert 0
      ((fun t ↦ primitive M a t - primitive M a N) '' Icc N x),
      v ≤ primitive M a x - primitive M a N := by
    intro v hv
    rcases mem_insert_iff.mp hv with rfl | hv
    · have h := unchanged_bank_primitive_monotoneOn M hM ha hN hx1 hx
      linarith
    · obtain ⟨t, ht, rfl⟩ := hv
      have h := unchanged_bank_primitive_monotoneOn M hM ha (hN.trans ht.1) hx1 ht.2
      linarith
  have hb : BddAbove (insert 0
      ((fun t ↦ primitive M a t - primitive M a N) '' Icc N x)) :=
    ⟨primitive M a x - primitive M a N, hupper⟩
  apply le_antisymm
  · apply csSup_le ⟨0, mem_insert 0 _⟩
    exact hupper
  · apply le_csSup hb
    exact mem_insert_of_mem 0 ⟨x, ⟨hx, le_rfl⟩, rfl⟩

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularContinuousPrimitive
```
