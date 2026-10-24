# Complete source: GRWTSK.Analysis.CriticalTwoModeNativeClock.Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57b9f7b45df6d7ca9be24ef23aaedcd8b28d1531` · SHA-256 `f381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeRecordSequence
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Topology.Algebra.InfiniteSum.ENNReal
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Full native clock and total record height of the actual two-mode sequence

Every interval between the increasing record endpoints has its exact native
width 2*(exp(-T_j/2)-exp(-T_(j+1)/2)). The entire natural-index inventory
telescopes to 2*exp(-t0/2); its actual record-height sum is 2-L(t0). Shifted
tails retain their complete endpoints and exact remaining mass. No truncation
or floating-point clock is substituted. Human full-inventory direction:
grwtsk contributors. Local infinite native-clock consumer: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeNativeClock
open CriticalTwoModeDiophantine CriticalTwoModeRecordSequence Filter
open MeasureTheory
open scoped BigOperators Topology
noncomputable section

/-- The native clock in this module, with the following exact parameterization.

def nativeClock {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (j : ℕ) : ℝ :=
2*(Real.exp (-recordTime hα ht₀ j/2)-Real.exp (-recordTime hα ht₀ (j+1)/2))
-/
def nativeClock {α t₀ : ℝ} (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (j : ℕ) : ℝ :=
  2*(Real.exp (-recordTime hα ht₀ j/2)-Real.exp (-recordTime hα ht₀ (j+1)/2))

theorem literal_native_clock_exact_integral {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) :
    (∫ t in recordTime hα ht₀ j..recordTime hα ht₀ (j+1),Real.exp (-t/2)) =
      nativeClock hα ht₀ j := by
  have hd (x : ℝ) : HasDerivAt (fun t : ℝ ↦ -2*Real.exp (-t/2)) (Real.exp (-x/2)) x := by
    have h := ((Real.hasDerivAt_exp (-x/2)).comp x ((hasDerivAt_id x).neg.div_const
      2)).const_mul (-2)
    have he : (-2 : ℝ)*(Real.exp (-x/2)*(-1/2)) = Real.exp (-x/2) := by ring
    simpa only [he] using! h
  have hi : IntervalIntegrable (fun t : ℝ ↦ Real.exp (-t/2)) volume
      (recordTime hα ht₀ j) (recordTime hα ht₀ (j+1)) :=
    (by fun_prop : Continuous (fun t : ℝ ↦ Real.exp (-t/2))).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ ↦ hd x) hi]
  unfold nativeClock
  ring

theorem literal_native_clock_pos {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) : 0 < nativeClock hα ht₀ j := by
  have h := literal_record_time_unit_step hα ht₀ j
  unfold nativeClock
  have he : Real.exp (-recordTime hα ht₀ (j+1)/2) < Real.exp (-recordTime hα ht₀ j/2) :=
    Real.exp_lt_exp.mpr (by linarith)
  linarith

theorem literal_height_prefix_telescope {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (J K : ℕ) :
    (∑ j ∈ Finset.range K, recordHeight hα ht₀ (j+J)) =
      recordLevel hα ht₀ (K+J)-recordLevel hα ht₀ J := by
  induction K with
  | zero => simp
  | succ K ih =>
    rw [Finset.sum_range_succ,ih]
    unfold recordHeight
    rw [show K+1+J=K+J+1 by omega]
    ring

theorem literal_native_clock_prefix_telescope {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (J K : ℕ) :
    (∑ j ∈ Finset.range K, nativeClock hα ht₀ (j+J)) =
      2*(Real.exp (-recordTime hα ht₀ J/2)-Real.exp (-recordTime hα ht₀ (K+J)/2)) := by
  induction K with
  | zero => simp
  | succ K ih =>
    rw [Finset.sum_range_succ,ih]
    unfold nativeClock
    rw [show K+1+J=K+J+1 by omega]
    ring

theorem literal_native_clock_prefix_le_remaining_width {α t₀ : ℝ}
    (hα : BadlyApproximable α) (ht₀ : 0 < t₀) (J K : ℕ) :
    (∑ j ∈ Finset.range K, nativeClock hα ht₀ (j+J)) ≤
      2*Real.exp (-recordTime hα ht₀ J/2) := by
  rw [literal_native_clock_prefix_telescope]
  linarith [Real.exp_pos (-recordTime hα ht₀ (K+J)/2)]

theorem literal_record_height_tail_has_sum {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (J : ℕ) :
    HasSum (fun j : ℕ ↦ recordHeight hα ht₀ (j+J)) (2-recordLevel hα ht₀ J) := by
  apply (hasSum_iff_tendsto_nat_of_nonneg
    (fun j ↦ (literal_record_height_pos hα ht₀ (j+J)).le) _).mpr
  have hl := (literal_record_levels_tend_to_two hα ht₀).comp (tendsto_add_atTop_nat J)
  have h := hl.sub_const (recordLevel hα ht₀ J)
  convert h using 1
  ext K
  exact literal_height_prefix_telescope hα ht₀ J K

theorem literal_native_endpoint_weight_tends_to_zero {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) :
    Tendsto (fun j : ℕ ↦ Real.exp (-recordTime hα ht₀ j/2)) atTop (𝓝 0) := by
  have h := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (0 : ℝ) (1/2) (by norm_num)
  have he : (fun T : ℝ ↦ Real.exp (-T/2)) = (fun T : ℝ ↦ Real.exp (-(1/2)*T)) := by
    funext T
    congr 1
    ring
  have hbase : Tendsto (fun T : ℝ ↦ Real.exp (-T/2)) atTop (𝓝 0) := by
    rw [he]
    simpa only [Real.rpow_zero,one_mul] using h
  exact hbase.comp (literal_record_time_tends_to_infinity hα ht₀)

theorem literal_native_clock_tail_has_sum {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (J : ℕ) :
    HasSum (fun j : ℕ ↦ nativeClock hα ht₀ (j+J)) (2*Real.exp (-recordTime hα ht₀ J/2)) := by
  apply (hasSum_iff_tendsto_nat_of_nonneg
    (fun j ↦ (literal_native_clock_pos hα ht₀ (j+J)).le) _).mpr
  have ht := (literal_native_endpoint_weight_tends_to_zero hα ht₀).comp (tendsto_add_atTop_nat J)
  have h : Tendsto (fun K : ℕ ↦
      2*(Real.exp (-recordTime hα ht₀ J/2)-Real.exp (-recordTime hα ht₀ (K+J)/2)))
      atTop (𝓝 (2*Real.exp (-recordTime hα ht₀ J/2))) := by
    simpa only [sub_zero,Function.comp_apply] using! tendsto_const_nhds.mul
      (tendsto_const_nhds.sub ht)
  convert h using 1
  ext K
  exact literal_native_clock_prefix_telescope hα ht₀ J K

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeNativeClock
```
