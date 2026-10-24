# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeAccordionFold.Variant46765704453d97d59466fd0ac8d9f8f424022f1b2ec390b050a2e0f050dce7b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eed069e1d606c75c9bba896c79921346e47fc225` · SHA-256 `46765704453d97d59466fd0ac8d9f8f424022f1b2ec390b050a2e0f050dce7b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.HeightNormalizedCompression

/-!
# The discrete native fold retains the exact source cell mass

Batch 05 AA05-01 supplies a fold by cumulative inverse-root native mass.
On every actual integer panel [N,N+K], its endpoints are -1 and 1, every
cell's mapped half-length is precisely its original width divided by total
width, and the source debt is unchanged by the normalized folded sum.
Storage remains the literal theta discrepancy; no excursion selection,
continuous inverse/Jacobian, or shape estimate is inferred from this adapter.
The invalid UTF-8 region in a separate source document is not reconstructed.

Human native-fold direction: grwtsk contributors. Local exact discrete fold and
source consumer: OpenAI Codex. Mathlib square-root laws remain upstream.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeAccordionFold

open ArithmeticPrimitive NativeRecordConsumer NativeSuperlevelConsumer
open scoped BigOperators
noncomputable section

def width (N K : ℕ) : ℝ := cellClock N (N + K : ℕ)
def fold (N K j : ℕ) : ℝ := -1 + 2 * cellClock N (N + j : ℕ) / width N K
def debt (N K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, storage N j * cellClock (N + j) (N + j + 1 : ℕ)

theorem clock_add (N M L : ℕ) : cellClock N L = cellClock N M + cellClock M L := by
  unfold cellClock
  ring

theorem width_pos {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) : 0 < width N K := by
  have hN0 : (0 : ℝ) < N := by exact_mod_cast (by omega : 0 < N)
  have hs := Real.sqrt_lt_sqrt hN0.le (show (N : ℝ) < (N + K : ℕ) by exact_mod_cast (by omega : N < N + K))
  have hi := one_div_lt_one_div_of_lt (Real.sqrt_pos.2 hN0) hs
  unfold width cellClock
  linarith

theorem fold_left (N K : ℕ) : fold N K 0 = -1 := by simp [fold, cellClock]

theorem fold_right {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) : fold N K K = 1 := by
  have hW := width_pos hN hK
  unfold fold
  change -1 + 2 * width N K / width N K = 1
  field_simp
  ring

theorem fold_in_unit {N K j : ℕ} (hN : 1 ≤ N) (hK : 0 < K) (hj : j ≤ K) :
    fold N K j ∈ Set.Icc (-1 : ℝ) 1 := by
  have hW := width_pos hN hK
  have hp := cellClock_nonneg hN (show (N : ℝ) ≤ (N + j : ℕ) by exact_mod_cast (by omega : N ≤ N + j))
  have hr := cellClock_nonneg (by omega : 1 ≤ N + j)
    (show ((N + j : ℕ) : ℝ) ≤ (N + K : ℕ) by exact_mod_cast (by omega : N + j ≤ N + K))
  have hsum := clock_add N (N + j) (N + K)
  have hle : cellClock N (N + j : ℕ) ≤ width N K := by dsimp [width]; linarith
  have hq0 := div_nonneg hp hW.le
  have hq1 := (div_le_one hW).mpr hle
  unfold fold
  rw [mul_div_assoc]
  constructor <;> linarith

theorem mapped_cell_half_length {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) (j : ℕ) :
    (fold N K (j + 1) - fold N K j) / 2 =
      cellClock (N + j) (N + j + 1 : ℕ) / width N K := by
  have hW := width_pos hN hK
  unfold fold cellClock width at *
  rw [show N + (j + 1) = N + j + 1 by omega]
  field_simp
  ring

theorem mapped_cells_increasing {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) (j : ℕ) :
    fold N K j < fold N K (j + 1) := by
  have hd := mapped_cell_half_length hN hK j
  have hp := div_pos (cellClock_pos (by omega : 1 ≤ N + j)) (width_pos hN hK)
  linarith

theorem native_cell_probabilities_sum_one {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) :
    (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ) / width N K) = 1 := by
  rw [← Finset.sum_div, native_width_telescope]
  change width N K / width N K = 1
  exact div_self (width_pos hN hK).ne'

theorem actual_folded_debt {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) :
    (∑ j ∈ Finset.range K, storage N j * (fold N K (j + 1) - fold N K j) / 2) =
      debt N K / width N K := by
  unfold debt
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j _
  rw [mul_div_assoc, mapped_cell_half_length hN hK, ← mul_div_assoc]

theorem actual_height_normalized_fold {N K : ℕ} {H : ℝ}
    (hN : 1 ≤ N) (hK : 0 < K) (hH : 0 < H) :
    (∑ j ∈ Finset.range K, (storage N j / H) *
      (fold N K (j + 1) - fold N K j) / 2) = debt N K / (H * width N K) := by
  have hW := width_pos hN hK
  unfold debt
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j _
  rw [mul_div_assoc, mapped_cell_half_length hN hK]
  field_simp [hH.ne', hW.ne']

end
end GRWTSK.RiemannHypothesis.Conversation.NativeAccordionFold
```
