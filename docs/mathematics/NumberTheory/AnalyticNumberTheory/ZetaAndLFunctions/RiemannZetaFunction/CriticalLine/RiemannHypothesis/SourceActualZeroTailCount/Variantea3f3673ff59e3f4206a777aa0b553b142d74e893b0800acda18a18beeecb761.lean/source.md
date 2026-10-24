# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualZeroTailCount.Variantea3f3673ff59e3f4206a777aa0b553b142d74e893b0800acda18a18beeecb761

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97b37777610e0ca169f0a72621e93964dcc20209` · SHA-256 `ea3f3673ff59e3f4206a777aa0b553b142d74e893b0800acda18a18beeecb761`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualFullZeroContour
import Zeta23.Tail.Count

/-!
Actual multiplicity-aware sixth-power ordinate tails from the genuine two-sided local
zero count. Both equality endpoints |Im ρ|=R remain in the tail. The positive and negative
unit-window keys differ to preserve the actual closed-upper count convention. No zero is
filtered by real part, no critical-line hypothesis is used, and no signed head bound follows.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualZeroTailCount
open Zeta23 MeasureTheory Set Finset
noncomputable section

/-- The literal full-carrier multiplicity-weighted sixth-power ordinate tail. -/
def actualZeroSixTail (R : ℝ) : ℝ :=
  ∑' ρ : (zetaZeros zetaSeam).carrier,
    if R ≤ |(ρ : ℂ).im| then ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0

private theorem positive_key_bounds (y : ℝ) (hy : 0 < y) :
    ((⌈y⌉₊ - 1 : ℕ) : ℝ) < y ∧ y ≤ ((⌈y⌉₊ - 1 : ℕ) : ℝ) + 1 := by
  have hc : 1 ≤ ⌈y⌉₊ := Nat.one_le_ceil_iff.mpr hy
  have he : (⌈y⌉₊ - 1 : ℕ) + 1 = ⌈y⌉₊ := Nat.sub_add_cancel hc
  have h1 := Nat.le_ceil y
  have h2 := Nat.ceil_lt_add_one hy.le
  have hcast : ((⌈y⌉₊ : ℕ) : ℝ) = ((⌈y⌉₊ - 1 : ℕ) : ℝ) + 1 := by
    exact_mod_cast he.symm
  rw [hcast] at h1 h2
  exact ⟨by linarith, h1⟩

private theorem side_budget_le (R : ℝ) (hR : 4 ≤ R) :
    (2 * (R ^ 3)⁻¹ + (R ^ 2)⁻¹ / 2) * Real.log R +
      (2 * (R ^ 2)⁻¹ + R⁻¹) / R ≤ (Real.log R + 2) / R ^ 2 := by
  have hp : 0 < R := by linarith
  have hl : 0 ≤ Real.log R := Real.log_nonneg (by linarith)
  have h1 : 2 * (R ^ 3)⁻¹ + (R ^ 2)⁻¹ / 2 ≤ (R ^ 2)⁻¹ := by
    field_simp
    nlinarith
  have h2 : (2 * (R ^ 2)⁻¹ + R⁻¹) / R ≤ 2 * (R ^ 2)⁻¹ := by
    field_simp
    nlinarith
  calc
    _ ≤ (R ^ 2)⁻¹ * Real.log R + 2 * (R ^ 2)⁻¹ :=
      add_le_add (mul_le_mul_of_nonneg_right h1 hl) h2
    _ = _ := by ring

private theorem positive_six_sum_le (A0 R : ℝ) (hA0 : 1 ≤ A0) (hR : 4 ≤ R)
    (hloc : Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) A0)
    (s : Finset (zetaZeros zetaSeam).carrier)
    (hs : ∀ ρ ∈ s, R ≤ (ρ : ℂ).im) :
    ∑ ρ ∈ s, ((zetaZeros zetaSeam).mult ρ : ℝ) / (ρ : ℂ).im ^ 6 ≤
      A0 * (Real.log R + 2) / R ^ 5 := by
  have hp : 0 < R := by linarith
  let key : (zetaZeros zetaSeam).carrier → ℕ := fun ρ => ⌈(ρ : ℂ).im⌉₊ - 1
  have hk (ρ) (hρ : ρ ∈ s) := positive_key_bounds (ρ : ℂ).im (hp.trans_le (hs ρ hρ))
  have hcount : ∀ j : ℕ, ∑ ρ ∈ s with key ρ = j,
      ((zetaZeros zetaSeam).mult ρ : ℝ) ≤ A0 * Real.log (R + j) := by
    intro j
    have hw := hloc.window (j : ℝ) (s.filter fun ρ => key ρ = j) (by
      intro ρ hρ
      have hx := hk ρ (mem_filter.mp hρ).1
      simpa only [key, (mem_filter.mp hρ).2] using hx)
    have hj : (0 : ℝ) ≤ j := Nat.cast_nonneg _
    have hl : Real.log (|(j : ℝ)| + 3) ≤ Real.log (R + j) := by
      rw [abs_of_nonneg hj]
      exact Real.log_le_log (by positivity) (by linarith)
    exact hw.trans (mul_le_mul_of_nonneg_left hl (by linarith))
  have h3 := Tail.one_side_sum_le s (fun ρ => (ρ : ℂ).im)
    (fun ρ => (zetaZeros zetaSeam).mult ρ) key (show 0 ≤ A0 by linarith)
    (show 1 ≤ R by linarith) (show 2 ≤ R by linarith) hs
    (fun ρ hρ => (hk ρ hρ).1.le) (fun ρ hρ => (hk ρ hρ).2) hcount
  have h3' : ∑ ρ ∈ s, ((zetaZeros zetaSeam).mult ρ : ℝ) * ((ρ : ℂ).im ^ 3)⁻¹ ≤
      A0 * (Real.log R + 2) / R ^ 2 := by
    exact h3.trans (by
      have h := mul_le_mul_of_nonneg_left (side_budget_le R hR) (show 0 ≤ A0 by linarith)
      simpa only [mul_div_assoc] using h)
  calc
    _ ≤ R⁻¹ ^ 3 * ∑ ρ ∈ s,
        ((zetaZeros zetaSeam).mult ρ : ℝ) * ((ρ : ℂ).im ^ 3)⁻¹ := by
      rw [mul_sum]
      apply sum_le_sum
      intro ρ hρ
      have hx : 0 < (ρ : ℂ).im := hp.trans_le (hs ρ hρ)
      have hi := inv_anti₀ hp (hs ρ hρ)
      have hi3 := pow_le_pow_left₀ (by positivity : 0 ≤ ((ρ : ℂ).im)⁻¹) hi 3
      have hm : 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) := Nat.cast_nonneg _
      have ht := mul_le_mul_of_nonneg_right hi3
        (show 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) * ((ρ : ℂ).im ^ 3)⁻¹ by positivity)
      convert ht using 1
      field_simp
    _ ≤ R⁻¹ ^ 3 * (A0 * (Real.log R + 2) / R ^ 2) :=
      mul_le_mul_of_nonneg_left h3' (by positivity)
    _ = _ := by field_simp

private theorem negative_six_sum_le (A0 R : ℝ) (hA0 : 1 ≤ A0) (hR : 4 ≤ R)
    (hloc : Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) A0)
    (s : Finset (zetaZeros zetaSeam).carrier)
    (hs : ∀ ρ ∈ s, R ≤ (-(ρ : ℂ).im)) :
    ∑ ρ ∈ s, ((zetaZeros zetaSeam).mult ρ : ℝ) / (-(ρ : ℂ).im) ^ 6 ≤
      A0 * (Real.log R + 2) / R ^ 5 := by
  have hp : 0 < R := by linarith
  let key : (zetaZeros zetaSeam).carrier → ℕ := fun ρ => ⌊-(ρ : ℂ).im⌋₊
  have hk (ρ) (hρ : ρ ∈ s) : (key ρ : ℝ) ≤ -(ρ : ℂ).im ∧
      -(ρ : ℂ).im ≤ (key ρ : ℝ) + 1 :=
    ⟨Nat.floor_le (hp.trans_le (hs ρ hρ)).le, (Nat.lt_floor_add_one _).le⟩
  have hcount : ∀ j : ℕ, ∑ ρ ∈ s with key ρ = j,
      ((zetaZeros zetaSeam).mult ρ : ℝ) ≤ A0 * Real.log (R + j) := by
    intro j
    have hw := hloc.window (-(j : ℝ) - 1) (s.filter fun ρ => key ρ = j) (by
      intro ρ hρ
      have hx := hk ρ (mem_filter.mp hρ).1
      have he : (key ρ : ℝ) = j := by exact_mod_cast (mem_filter.mp hρ).2
      have ht : -(ρ : ℂ).im < (key ρ : ℝ) + 1 := Nat.lt_floor_add_one _
      rw [he] at hx ht
      constructor <;> linarith)
    have hj : (0 : ℝ) ≤ j := Nat.cast_nonneg _
    have habs : |-(j : ℝ) - 1| = (j : ℝ) + 1 := by
      rw [show -(j : ℝ) - 1 = -((j : ℝ) + 1) by ring, abs_neg,
        abs_of_nonneg (by positivity : 0 ≤ (j : ℝ) + 1)]
    have hl : Real.log (|-(j : ℝ) - 1| + 3) ≤ Real.log (R + j) := by
      rw [habs]
      exact Real.log_le_log (by positivity) (by linarith)
    exact hw.trans (mul_le_mul_of_nonneg_left hl (by linarith))
  have h3 := Tail.one_side_sum_le s (fun ρ => (-(ρ : ℂ).im))
    (fun ρ => (zetaZeros zetaSeam).mult ρ) key (show 0 ≤ A0 by linarith)
    (show 1 ≤ R by linarith) (show 2 ≤ R by linarith) hs
    (fun ρ hρ => (hk ρ hρ).1) (fun ρ hρ => (hk ρ hρ).2) hcount
  have h3' : ∑ ρ ∈ s, ((zetaZeros zetaSeam).mult ρ : ℝ) * ((-(ρ : ℂ).im) ^ 3)⁻¹ ≤
      A0 * (Real.log R + 2) / R ^ 2 := by
    exact h3.trans (by
      have h := mul_le_mul_of_nonneg_left (side_budget_le R hR) (show 0 ≤ A0 by linarith)
      simpa only [mul_div_assoc] using h)
  calc
    _ ≤ R⁻¹ ^ 3 * ∑ ρ ∈ s,
        ((zetaZeros zetaSeam).mult ρ : ℝ) * ((-(ρ : ℂ).im) ^ 3)⁻¹ := by
      rw [mul_sum]
      apply sum_le_sum
      intro ρ hρ
      have hx : 0 < (-(ρ : ℂ).im) := hp.trans_le (hs ρ hρ)
      have hi := inv_anti₀ hp (hs ρ hρ)
      have hi3 := pow_le_pow_left₀ (by positivity : 0 ≤ ((-(ρ : ℂ).im))⁻¹) hi 3
      have hm : 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) := Nat.cast_nonneg _
      have ht := mul_le_mul_of_nonneg_right hi3
        (show 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) * ((-(ρ : ℂ).im) ^ 3)⁻¹ by positivity)
      convert ht using 1
      field_simp
    _ ≤ R⁻¹ ^ 3 * (A0 * (Real.log R + 2) / R ^ 2) :=
      mul_le_mul_of_nonneg_left h3' (by positivity)
    _ = _ := by field_simp

/-- A genuine full-carrier count bound, with all multiplicities and both closed tail seams. -/
theorem actualZeroSixTail_count_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ R : ℝ, 4 ≤ R →
      Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
        if R ≤ |(ρ : ℂ).im| then
          ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) ∧
      actualZeroSixTail R ≤ 2 * A0 * (Real.log R + 2) / R ^ 5 := by
  classical
  obtain ⟨A0, hA0, hloc0⟩ := RvM.zeta_local_zero_count
  have hloc := Tail.LocalCount.ofWindowCount (zetaZeros zetaSeam) hA0
    (fun t => by simpa only [zetaZeros_N] using hloc0 t)
  refine ⟨A0, hA0, fun R hR => ?_⟩
  have hp : 0 < R := by linarith
  let f : (zetaZeros zetaSeam).carrier → ℝ := fun ρ =>
    if R ≤ |(ρ : ℂ).im| then
      ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0
  have hf : ∀ ρ, 0 ≤ f ρ := by intro ρ; dsimp [f]; split_ifs <;> positivity
  have hbound (s : Finset (zetaZeros zetaSeam).carrier) :
      ∑ ρ ∈ s, f ρ ≤ 2 * A0 * (Real.log R + 2) / R ^ 5 := by
    let sp := s.filter (fun ρ : (zetaZeros zetaSeam).carrier => R ≤ (ρ : ℂ).im)
    let sn := s.filter (fun ρ : (zetaZeros zetaSeam).carrier => R ≤ -(ρ : ℂ).im)
    have hsum : ∑ ρ ∈ s, f ρ =
        (∑ ρ ∈ sp, ((zetaZeros zetaSeam).mult ρ : ℝ) / (ρ : ℂ).im ^ 6) +
        ∑ ρ ∈ sn, ((zetaZeros zetaSeam).mult ρ : ℝ) / (-(ρ : ℂ).im) ^ 6 := by
      simp only [sp, sn, sum_filter]
      rw [← sum_add_distrib]
      apply sum_congr rfl
      intro ρ _
      by_cases hpos : R ≤ (ρ : ℂ).im
      · have hneg : ¬ R ≤ -(ρ : ℂ).im := by linarith
        have habs := abs_of_pos (hp.trans_le hpos)
        simp only [f, habs, hpos, hneg, if_true, if_false, add_zero]
      · by_cases hneg : R ≤ -(ρ : ℂ).im
        · have habs := abs_of_neg (show (ρ : ℂ).im < 0 by linarith)
          simp only [f, habs, hpos, hneg, if_true, if_false, zero_add]
        · have hnot : ¬ R ≤ |(ρ : ℂ).im| := by
            exact not_le.mpr (abs_lt.mpr ⟨by linarith, by linarith⟩)
          simp only [f, hnot, hpos, hneg, if_false, zero_add]
    rw [hsum]
    have hsp := positive_six_sum_le A0 R hA0 hR hloc sp
      (fun ρ hρ => (mem_filter.mp hρ).2)
    have hsn := negative_six_sum_le A0 R hA0 hR hloc sn
      (fun ρ hρ => (mem_filter.mp hρ).2)
    exact (add_le_add hsp hsn).trans_eq (by ring)
  exact ⟨summable_of_sum_le hf hbound, Real.tsum_le_of_sum_le hf hbound⟩

end
end FormalResearch.RiemannHypothesis.SourceActualZeroTailCount
```
