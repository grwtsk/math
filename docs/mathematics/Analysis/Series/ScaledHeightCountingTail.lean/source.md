# Complete source: GRWTSK.Analysis.Series.ScaledHeightCountingTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `330123ddaace860044eda362ecaddbac64b5450d` · SHA-256 `a2edc7f308315dd6c32990844075083c262b2f8acb5d9d652731cc07a7d0b451`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Series.HeightCountingTail

set_option autoImplicit false

/-!
# Inverse-square tails with a retained counting coefficient

Normalize only the nonnegative counting weights in the proof. The source
family itself is unchanged. The existing finite partial-summation theorem
retains its terminal boundary and applies to every finite subfamily.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Series.ScaledHeightCountingTail

open scoped BigOperators
open GRWTSK.Analysis.Series.HeightCountingTail

noncomputable section

variable {ι : Type*}

/-- Scaling the counting inequality does not identify or reweight source points. -/
theorem finiteCountingMass_div (S : Finset ι) (height weight : ι → ℝ)
    (A t : ℝ) :
    finiteCountingMass S height (fun i => weight i / A) t =
      finiteCountingMass S height weight t / A := by
  classical
  simp only [finiteCountingMass, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i hi
  split_ifs <;> simp

/-- The factor A is kept; a coarse count does not imply a coefficient-one count. -/
theorem finite_inverseSquare_le_scaled (S : Finset ι)
    (height weight : ι → ℝ) (T A : ℝ) (hT : 1 ≤ T) (hA : 0 < A)
    (hlower : ∀ i ∈ S, T < height i)
    (hcount : ∀ t, T ≤ t →
      finiteCountingMass S height weight t ≤ A * (t * Real.log t)) :
    (∑ i ∈ S, weight i / height i ^ 2) ≤ A * inverseSquareBudget T := by
  have hc : ∀ t, T ≤ t →
      finiteCountingMass S height (fun i => weight i / A) t ≤ t * Real.log t := by
    intro t ht
    rw [finiteCountingMass_div]
    apply (div_le_iff₀ hA).mpr
    simpa only [mul_comm A] using hcount t ht
  have hb := finite_inverseSquare_le S height (fun i => weight i / A) T hT hlower hc
  have he : (∑ i ∈ S, weight i / height i ^ 2) =
      A * ∑ i ∈ S, (weight i / A) / height i ^ 2 := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i hi
    have hhi : height i ≠ 0 :=
      ne_of_gt ((lt_of_lt_of_le zero_lt_one hT).trans (hlower i hi))
    field_simp [hA.ne', hhi]
  rw [he]
  exact mul_le_mul_of_nonneg_left hb hA.le

/-- Absolute norm mass and summability are derived from all finite subfamilies.
The conclusion bounds the sum of norms, stronger than the norm of the sum. -/
theorem dominated_family_scaled {E : Type*}
    [NormedAddCommGroup E] [CompleteSpace E]
    (height weight : ι → ℝ) (f : ι → E) (T C A : ℝ)
    (hT : 1 ≤ T) (hC : 0 ≤ C) (hA : 0 < A)
    (_hw : ∀ i, 0 ≤ weight i) (hlower : ∀ i, T < height i)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S height weight t ≤ A * (t * Real.log t))
    (hdom : ∀ i, ‖f i‖ ≤ C * (weight i / height i ^ 2)) :
    Summable (fun i => ‖f i‖) ∧ Summable f ∧
      (∑' i, ‖f i‖) ≤ (C * A) * inverseSquareBudget T := by
  have hfinite : ∀ S : Finset ι,
      (∑ i ∈ S, ‖f i‖) ≤ (C * A) * inverseSquareBudget T := by
    intro S
    calc
      _ ≤ ∑ i ∈ S, C * (weight i / height i ^ 2) :=
        Finset.sum_le_sum (fun i hi => hdom i)
      _ = C * ∑ i ∈ S, weight i / height i ^ 2 := by rw [Finset.mul_sum]
      _ ≤ C * (A * inverseSquareBudget T) := mul_le_mul_of_nonneg_left
        (finite_inverseSquare_le_scaled S height weight T A hT hA
          (fun i hi => hlower i) (hcount S)) hC
      _ = _ := by ring
  have hn := summable_of_sum_le (fun i => norm_nonneg (f i)) hfinite
  exact ⟨hn, hn.of_norm,
    Real.tsum_le_of_sum_le (fun i => norm_nonneg (f i)) hfinite⟩

end
end GRWTSK.Analysis.Series.ScaledHeightCountingTail
```
