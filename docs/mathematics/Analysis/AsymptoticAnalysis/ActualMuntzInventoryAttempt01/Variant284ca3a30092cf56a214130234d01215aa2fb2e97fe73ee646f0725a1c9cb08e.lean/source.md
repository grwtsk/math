# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ActualMuntzInventoryAttempt01.Variant284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c360123f7b89d84fedf83e3940eaee1ae0a5276` · SHA-256 `284ca3a30092cf56a214130234d01215aa2fb2e97fe73ee646f0725a1c9cb08e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualGoodKernel
import Mathlib.Topology.Algebra.InfiniteSum.NatInt
import Mathlib.MeasureTheory.Function.L2Space

/-! Independently defined actual Müntz operator and complete closed finite inventory.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
No desired L2 norm, dilation closure, Mellin-zeta identity or signed budget is assumed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzInventory
open MeasureTheory Set Filter Finset
open ContinuousResearch.LogarithmicSource ContinuousResearch.ActualGoodKernel

/-- Positive integer samples. The physical A is independent of x and the integer n. -/
def positiveSamples (A x : ℝ) : ℝ :=
  ∑' n : ℕ, actualLogSource A (((n+1 : ℕ) : ℝ)*x)

/-- The actual positive-axis integral compensator is retained in the definition. -/
def actualMuntz (A x : ℝ) : ℝ :=
  positiveSamples A x - (1/x)*(∫ u in Ioi 0, actualLogSource A u)

/-- Closed upper inventory; touching source atoms remain present with their actual zero value. -/
def upperInventory (A x : ℝ) : ℕ := ⌊Real.exp A/x⌋₊

theorem actualLogSource_zero_nonpos (A : ℝ) {x : ℝ} (hx : x ≤ 0) :
    actualLogSource A x = 0 := by
  simp [actualLogSource,positiveLogLift,not_lt.mpr hx]

theorem actualLogSource_zero_at_zero (A : ℝ) : actualLogSource A 0 = 0 :=
  actualLogSource_zero_nonpos A le_rfl

theorem sample_zero_above_inventory {A x : ℝ} (hA : 0 < A) (hx : 0 < x)
    (n : ℕ) (hn : upperInventory A x < n) : actualLogSource A ((n : ℝ)*x) = 0 := by
  have hc : Real.exp A/x < (n : ℝ) :=
    (Nat.floor_lt (div_nonneg (Real.exp_pos A).le hx.le)).mp hn
  exact actualLogSource_zero_outside hA (Or.inr ((div_lt_iff₀ hx).mp hc).le)

theorem allSamples_summable {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    Summable (fun n : ℕ => actualLogSource A ((n : ℝ)*x)) := by
  apply summable_of_ne_finset_zero (s:=Icc 0 (upperInventory A x))
  intro n hn
  have hn' : upperInventory A x < n := by simpa only [mem_Icc,Nat.zero_le,true_and,not_le] using hn
  exact sample_zero_above_inventory hA hx n hn'

theorem positiveSamples_summable {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    Summable (fun n : ℕ => actualLogSource A (((n+1 : ℕ) : ℝ)*x)) :=
  (summable_nat_add_iff 1).mpr (allSamples_summable hA hx)

theorem positiveSamples_eq_allSamples {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    positiveSamples A x = ∑' n : ℕ, actualLogSource A ((n : ℝ)*x) := by
  have he := (allSamples_summable hA hx).tsum_eq_zero_add
  simpa [positiveSamples,actualLogSource_zero_at_zero] using he.symm

theorem allSamples_eq_closed_inventory {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    (∑' n : ℕ, actualLogSource A ((n : ℝ)*x)) =
      ∑ n ∈ Icc 0 (upperInventory A x), actualLogSource A ((n : ℝ)*x) := by
  apply tsum_eq_sum
  intro n hn
  have hn' : upperInventory A x < n := by simpa only [mem_Icc,Nat.zero_le,true_and,not_le] using hn
  exact sample_zero_above_inventory hA hx n hn'

theorem positiveSamples_eq_closed_inventory {A x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    positiveSamples A x =
      ∑ n ∈ Icc 1 (upperInventory A x), actualLogSource A ((n : ℝ)*x) := by
  rw [positiveSamples_eq_allSamples hA hx,allSamples_eq_closed_inventory hA hx,
    Icc_eq_cons_Ioc (Nat.zero_le _),sum_cons]
  simp only [Nat.cast_zero,zero_mul,actualLogSource_zero_at_zero,zero_add]
  rw [← Icc_add_one_left_eq_Ioc]
  rfl

theorem actualMuntz_eq_positiveSamples {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    actualMuntz A x = positiveSamples A x := by
  simp [actualMuntz,actualLogSource_integral_zero hA]

theorem actualMuntz_eq_closed_inventory {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    actualMuntz A x =
      ∑ n ∈ Icc 1 (upperInventory A x), actualLogSource A ((n : ℝ)*x) := by
  rw [actualMuntz_eq_positiveSamples hA,positiveSamples_eq_closed_inventory (by linarith) hx]

theorem touching_sample_zero {A : ℝ} (hA : 0 < A) {n : ℕ} (hn : 0 < n) :
    actualLogSource A ((n : ℝ)*(Real.exp A/(n : ℝ))) = 0 := by
  rw [mul_div_cancel₀ _ (by exact_mod_cast hn.ne' : (n : ℝ) ≠ 0)]
  exact actualLogSource_zero_outside hA (Or.inr le_rfl)

theorem positiveSamples_zero_nonpos (A : ℝ) {x : ℝ} (hx : x ≤ 0) :
    positiveSamples A x = 0 := by
  unfold positiveSamples
  have hz (n : ℕ) : actualLogSource A (((n+1 : ℕ) : ℝ)*x) = 0 :=
    actualLogSource_zero_nonpos A (mul_nonpos_of_nonneg_of_nonpos (by positivity) hx)
  simp only [hz,tsum_zero]

theorem positiveSamples_zero_above {A x : ℝ} (hA : 0 < A) (hx : Real.exp A ≤ x) :
    positiveSamples A x = 0 := by
  unfold positiveSamples
  have hp : 0 < x := (Real.exp_pos A).trans_le hx
  have hz (n : ℕ) : actualLogSource A (((n+1 : ℕ) : ℝ)*x) = 0 := by
    apply actualLogSource_zero_outside hA
    apply Or.inr
    calc
      Real.exp A ≤ x := hx
      _ ≤ ((n+1 : ℕ) : ℝ)*x := by nlinarith [Nat.cast_nonneg n]
  simp only [hz,tsum_zero]

theorem actualMuntz_zero_outside {A x : ℝ} (hA : 1 ≤ A)
    (hx : x ≤ 0 ∨ Real.exp A ≤ x) : actualMuntz A x = 0 := by
  rw [actualMuntz_eq_positiveSamples hA]
  rcases hx with hx | hx
  · exact positiveSamples_zero_nonpos A hx
  · exact positiveSamples_zero_above (by linarith) hx

theorem positiveSamples_measurable {A : ℝ} (hA : 0 < A) : Measurable (positiveSamples A) :=
  Measurable.tsum (fun n : ℕ => ((actualLogSource_contDiff hA).continuous.comp
    (continuous_const.mul continuous_id)).measurable)

theorem actualMuntz_measurable {A : ℝ} (hA : 1 ≤ A) : Measurable (actualMuntz A) := by
  have he : actualMuntz A = positiveSamples A := funext (actualMuntz_eq_positiveSamples hA)
  rw [he]
  exact positiveSamples_measurable (by linarith)

end ContinuousResearch.ActualMuntzInventory
```
