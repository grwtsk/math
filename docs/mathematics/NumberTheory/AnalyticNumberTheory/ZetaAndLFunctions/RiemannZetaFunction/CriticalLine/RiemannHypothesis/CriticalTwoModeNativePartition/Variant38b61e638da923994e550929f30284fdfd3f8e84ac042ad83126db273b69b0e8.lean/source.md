# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalTwoModeNativePartition.Variant38b61e638da923994e550929f30284fdfd3f8e84ac042ad83126db273b69b0e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25c2802282758a4445ffd96856f9bd2c8ff84686` · SHA-256 `38b61e638da923994e550929f30284fdfd3f8e84ac042ad83126db273b69b0e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeNativeClock

/-!
# Explicit geometry of the complete two-mode native record partition

The p-independent selected record clock is strictly increasing. Its open
intervals are pairwise disjoint and every shifted inventory lies in the
same actual time tail. Endpoint choices do not change the interval-integral
native widths. These geometric laws accompany the complete height and width
telescoping rather than being inferred from a diagram. Human full-partition
direction: grwtsk contributors. Local geometry consumer: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeNativePartition
open CriticalTwoModeDiophantine CriticalTwoModeRecordSequence Set
noncomputable section

theorem literal_record_clock_strict_mono {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) : StrictMono (recordTime hα ht₀) := by
  apply strictMono_nat_of_lt_succ
  intro j
  have h := literal_record_time_unit_step hα ht₀ j
  linarith

theorem literal_record_intervals_disjoint {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) {i j : ℕ} (hij : i < j) :
    Disjoint (Ioo (recordTime hα ht₀ i) (recordTime hα ht₀ (i+1)))
      (Ioo (recordTime hα ht₀ j) (recordTime hα ht₀ (j+1))) := by
  apply Set.disjoint_left.mpr
  intro x hxi hxj
  have h := (literal_record_clock_strict_mono hα ht₀).monotone (by omega : i+1 ≤ j)
  linarith [hxi.2,hxj.1]

theorem literal_record_interval_tail_containment {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (J j : ℕ) (hJj : J ≤ j) :
    Ioo (recordTime hα ht₀ j) (recordTime hα ht₀ (j+1)) ⊆ Ioi (recordTime hα ht₀ J) := by
  intro x hx
  have h := (literal_record_clock_strict_mono hα ht₀).monotone hJj
  exact lt_of_le_of_lt h hx.1

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeNativePartition
```
