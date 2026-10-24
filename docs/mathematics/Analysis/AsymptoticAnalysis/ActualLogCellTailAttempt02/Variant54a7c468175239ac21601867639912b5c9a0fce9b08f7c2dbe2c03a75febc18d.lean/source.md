# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellTailAttempt02.Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21d15d55a1ee92a9dae6759605579e0e68fd5ff4` · SHA-256 `54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualLogCellMoment

/-! Quantitative remainder of the actual positive logarithmic-cell series.
Research direction grwtsk contributors; OpenAI Codex focused scratch construction.
No zeta-derivative identification or RH assumption. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualLogCellTail
open Set MeasureTheory Filter
open scoped Topology
open ContinuousResearch.ActualLogCellMoment
open ContinuousResearch.ActualFirstStieltjes

def cellTail (N : ℕ) : ℝ := ∑' m : ℕ, logCell (m+N+1)

theorem cellTail_summable (N : ℕ) : Summable (fun m : ℕ => logCell (m+N+1)) := by
  exact (summable_nat_add_iff N).mpr logCell_summable

theorem cellTail_nonneg (N : ℕ) : 0 ≤ cellTail N := by
  exact tsum_nonneg (fun m => logCell_nonneg (by omega))

theorem cellTail_prefix (N : ℕ) :
    logCellSum N + cellTail N = 1-Real.eulerMascheroniConstant-firstStieltjesConstant := by
  simpa only [logCellSum, cellTail, Nat.add_assoc, logCell_tsum] using
    logCell_summable.sum_add_tsum_nat_add N

theorem cellTail_exact (N : ℕ) :
    cellTail N = stieltjesSequence (N+1)-firstStieltjesConstant +
      ((harmonic (N+1) : ℝ)-Real.log (N+1)-Real.eulerMascheroniConstant) := by
  have h := cellTail_prefix N
  rw [logCellSum_eval] at h
  linarith

theorem harmonic_error_upper {k : ℕ} (hk : 0 < k) :
    (harmonic k : ℝ)-Real.log k-Real.eulerMascheroniConstant ≤ 1/(k:ℝ) := by
  have hgamma := Real.eulerMascheroniSeq_lt_eulerMascheroniConstant k
  unfold Real.eulerMascheroniSeq at hgamma
  have hk0 : (0:ℝ) < k := by exact_mod_cast hk
  have hlog := Real.log_le_sub_one_of_pos (show 0 < ((k:ℝ)+1)/k by positivity)
  rw [Real.log_div (by positivity) hk0.ne'] at hlog
  have harith : ((k:ℝ)+1)/k-1 = 1/(k:ℝ) := by field_simp; ring
  rw [harith] at hlog
  linarith

theorem cellTail_le (N : ℕ) (hN : 3 ≤ N) :
    cellTail N ≤ (Real.log (N+1)+1)/(N+1) := by
  have ha := (firstStieltjesConstant_enclosure (N+1) (by omega)).1
  have hg := harmonic_error_upper (show 0 < N+1 by omega)
  rw [cellTail_exact]
  push_cast at ha hg ⊢
  calc
    _ ≤ Real.log ((N:ℝ)+1)/((N:ℝ)+1)+1/((N:ℝ)+1) := by linarith
    _ = _ := by ring

theorem cellTail_enclosure (N : ℕ) (hN : 3 ≤ N) :
    0 ≤ cellTail N ∧ cellTail N ≤ (Real.log (N+1)+1)/(N+1) :=
  ⟨cellTail_nonneg N, cellTail_le N hN⟩

end ContinuousResearch.ActualLogCellTail
```
