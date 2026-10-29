import FormalResearch.RiemannHypothesis.Conversation.TentAbsolutePayment
import FormalResearch.RiemannHypothesis.Conversation.ArithmeticPrimitive

/-!
# The actual three-scale primitive difference is the literal finite signed tent

The piecewise weight is reconstructed from three truncated primitive atoms.
All real cutoffs, zero endpoint atoms and signed coefficients are retained.
The checked finite consumer identifies the actual closed primitive at x,4x,16x
with the existing finite signed tent. No analytic Landau return or signed
arithmetic bound is supplied by this finite identity.

Source: audited RH conversation Batch 3, FA02. Human finite-window direction:
grwtsk contributors. Local adapter: OpenAI Codex. Existing repository primitive
and Mathlib square-root declarations remain at their source identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FiniteTentPrimitiveIdentity

open FiniteTentAbsoluteMass ArithmeticPrimitive
open scoped BigOperators
noncomputable section

private theorem reciprocal_sqrt_upper {y : ℝ} (hy : 0 < y) (a : ℝ)
    (ha : 0 < a) (hay : a ^ 2 ≤ y) : 1 / Real.sqrt y ≤ 1 / a := by
  apply one_div_le_one_div_of_le ha
  nlinarith [Real.sqrt_nonneg y, Real.sq_sqrt hy.le]

private theorem reciprocal_sqrt_lower {y : ℝ} (hy : 0 < y) (a : ℝ)
    (ha : 0 < a) (hay : y ≤ a ^ 2) : 1 / a ≤ 1 / Real.sqrt y := by
  apply one_div_le_one_div_of_le (Real.sqrt_pos.mpr hy)
  nlinarith [Real.sqrt_nonneg y, Real.sq_sqrt hy.le]

theorem exact_normalized_three_hinges {y : ℝ} (hy : 0 < y) :
    2 * max (1 / Real.sqrt y - 1 / 4) 0 -
      3 * max (1 / Real.sqrt y - 1 / 2) 0 +
      max (1 / Real.sqrt y - 1) 0 = tentWeight y := by
  simp only [one_div]
  by_cases h1 : y < 1
  · have hr := reciprocal_sqrt_lower hy 1 (by norm_num) (by nlinarith)
    norm_num at hr
    rw [max_eq_left (by linarith), max_eq_left (by linarith), max_eq_left (by linarith)]
    rw [tentWeight, if_neg (by intro h; linarith [h.1]),
      if_neg (by intro h; linarith [h.1])]
    ring
  · by_cases h4 : y ≤ 4
    · have hrlo := reciprocal_sqrt_lower hy 2 (by norm_num) (by nlinarith)
      have hrhi := reciprocal_sqrt_upper hy 1 (by norm_num) (by nlinarith)
      norm_num at hrlo hrhi
      rw [max_eq_left (by linarith), max_eq_left (by linarith), max_eq_right (by linarith)]
      rw [tentWeight, if_pos ⟨by linarith, h4⟩]
      ring
    · by_cases h16 : y ≤ 16
      · have hrlo := reciprocal_sqrt_lower hy 4 (by norm_num) (by nlinarith)
        have hrhi := reciprocal_sqrt_upper hy 2 (by norm_num) (by nlinarith)
        norm_num at hrlo hrhi
        rw [max_eq_left (by linarith), max_eq_right (by linarith), max_eq_right (by linarith)]
        rw [tentWeight, if_neg (by intro h; exact h4 h.2), if_pos ⟨by linarith, h16⟩]
        ring
      · have hrhi := reciprocal_sqrt_upper hy 4 (by norm_num) (by nlinarith)
        norm_num at hrhi
        rw [max_eq_right (by linarith), max_eq_right (by linarith), max_eq_right (by linarith)]
        rw [tentWeight, if_neg (by intro h; exact h4 h.2),
          if_neg (by intro h; exact h16 h.2)]
        ring

theorem exact_scaled_three_hinges {x : ℝ} (hx : 0 < x) {n : ℕ} (hn : 1 ≤ n) :
    2 * max (1 / Real.sqrt n - 1 / Real.sqrt (16 * x)) 0 -
      3 * max (1 / Real.sqrt n - 1 / Real.sqrt (4 * x)) 0 +
      max (1 / Real.sqrt n - 1 / Real.sqrt x) 0 =
        (1 / Real.sqrt x) * tentWeight (n / x) := by
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hsnp := Real.sqrt_pos.mpr hnpos
  have hsxp := Real.sqrt_pos.mpr hx
  let b : ℝ := 1 / Real.sqrt x
  let r : ℝ := 1 / Real.sqrt (n / x)
  have hscale : 1 / Real.sqrt n = b * r := by
    dsimp [b, r]
    rw [Real.sqrt_div (Nat.cast_nonneg n) x]
    field_simp [hsnp.ne', hsxp.ne']
  have hmax (c : ℝ) : max (1 / Real.sqrt n - b * c) 0 = b * max (r - c) 0 := by
    have ht : 1 / Real.sqrt n - b * c = b * (r - c) := by rw [hscale]; ring
    rw [ht]
    have hb : 0 ≤ b := by dsimp [b]; positivity
    simpa only [mul_zero] using (mul_max_of_nonneg (r - c) 0 hb).symm
  have hmaxOne : max (1 / Real.sqrt n - b) 0 = b * max (r - 1) 0 := by
    simpa using hmax 1
  have h4 : Real.sqrt (4 * x) = 2 * Real.sqrt x := by
    rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 4)]
    norm_num
  have h16 : Real.sqrt (16 * x) = 4 * Real.sqrt x := by
    rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 16)]
    norm_num
  have hd4 : 1 / (2 * Real.sqrt x) = b * (1 / 2) := by dsimp [b]; ring
  have hd16 : 1 / (4 * Real.sqrt x) = b * (1 / 4) := by dsimp [b]; ring
  rw [h4, h16, hd4, hd16]
  change 2 * max (1 / Real.sqrt n - b * (1 / 4)) 0 -
    3 * max (1 / Real.sqrt n - b * (1 / 2)) 0 +
    max (1 / Real.sqrt n - b) 0 = b * tentWeight (n / x)
  rw [hmax (1 / 4), hmax (1 / 2), hmaxOne,
    ← exact_normalized_three_hinges (div_pos hnpos hx)]
  dsimp [r]
  ring

theorem tent_weight_zero_above_sixteen {y : ℝ} (hy : 16 < y) : tentWeight y = 0 := by
  rw [tentWeight, if_neg (by intro h; linarith [h.2]), if_neg (by intro h; linarith [h.2])]

theorem exact_common_inventory_tent (b : ℕ → ℝ) (M : ℕ) {x : ℝ}
    (hx : 0 < x) (hM : 16 * x ≤ M) :
    closedPrimitive b (16 * x) - (3 / 2) * closedPrimitive b (4 * x) +
      (1 / 2) * closedPrimitive b x =
        (1 / Real.sqrt x) * ∑ n ∈ Finset.Icc 2 M, b n * tentWeight (n / x) := by
  have h4 : 4 * x ≤ M := by linarith
  have h1 : x ≤ M := by linarith
  calc
    _ = 2 * (∑ n ∈ Finset.Icc 2 M,
        b n * max (1 / Real.sqrt n - 1 / Real.sqrt (16 * x)) 0) -
      3 * (∑ n ∈ Finset.Icc 2 M,
        b n * max (1 / Real.sqrt n - 1 / Real.sqrt (4 * x)) 0) +
      (∑ n ∈ Finset.Icc 2 M, b n * max (1 / Real.sqrt n - 1 / Real.sqrt x) 0) := by
        rw [closedPrimitive_eq_hinge b M (by positivity : 0 < 16 * x) hM,
          closedPrimitive_eq_hinge b M (by positivity : 0 < 4 * x) h4,
          closedPrimitive_eq_hinge b M hx h1]
        unfold hingePrimitive
        ring
    _ = ∑ n ∈ Finset.Icc 2 M,
        (2 * (b n * max (1 / Real.sqrt n - 1 / Real.sqrt (16 * x)) 0) -
          3 * (b n * max (1 / Real.sqrt n - 1 / Real.sqrt (4 * x)) 0) +
          b n * max (1 / Real.sqrt n - 1 / Real.sqrt x) 0) := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib,
          ← Finset.mul_sum, ← Finset.mul_sum]
    _ = ∑ n ∈ Finset.Icc 2 M, (1 / Real.sqrt x) * (b n * tentWeight (n / x)) := by
        apply Finset.sum_congr rfl
        intro n hn
        have hn2 := (Finset.mem_Icc.mp hn).1
        have he := exact_scaled_three_hinges hx (by omega : 1 ≤ n)
        calc
          _ = b n * (2 * max (1 / Real.sqrt n - 1 / Real.sqrt (16 * x)) 0 -
              3 * max (1 / Real.sqrt n - 1 / Real.sqrt (4 * x)) 0 +
              max (1 / Real.sqrt n - 1 / Real.sqrt x) 0) := by ring
          _ = _ := by rw [he]; ring
    _ = _ := (Finset.mul_sum _ _ _).symm

theorem exact_closed_finite_tent (b : ℕ → ℝ) {x : ℝ} (hx : 0 < x) :
    closedPrimitive b (16 * x) - (3 / 2) * closedPrimitive b (4 * x) +
      (1 / 2) * closedPrimitive b x =
        (∑ n ∈ Finset.Icc 2 ⌊16 * x⌋₊, b n * tentWeight (n / x)) / Real.sqrt x := by
  let M : ℕ := ⌈16 * x⌉₊
  have hM : 16 * x ≤ M := Nat.le_ceil _
  have hfloor : ⌊16 * x⌋₊ ≤ M := by simpa using Nat.floor_mono hM
  have hsum : (∑ n ∈ Finset.Icc 2 M, b n * tentWeight (n / x)) =
      ∑ n ∈ Finset.Icc 2 ⌊16 * x⌋₊, b n * tentWeight (n / x) := by
    symm
    apply Finset.sum_subset
    · intro n hn
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
        (Finset.mem_Icc.mp hn).2.trans hfloor⟩
    · intro n hn hnot
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hlt : ⌊16 * x⌋₊ < n := by
        by_contra h
        exact hnot (Finset.mem_Icc.mpr ⟨hn2, by omega⟩)
      have hreal := (Nat.floor_lt (by positivity : 0 ≤ 16 * x)).mp hlt
      have hout : 16 < (n : ℝ) / x := (lt_div_iff₀ hx).mpr hreal
      rw [tent_weight_zero_above_sixteen hout, mul_zero]
  rw [exact_common_inventory_tent b M hx hM, hsum]
  ring

theorem actual_mangoldt_three_scale_tent {x : ℝ} (hx : 0 < x) :
    closedPrimitive (fun n ↦ ArithmeticFunction.vonMangoldt n - 1) (16 * x) -
      (3 / 2) * closedPrimitive (fun n ↦ ArithmeticFunction.vonMangoldt n - 1) (4 * x) +
      (1 / 2) * closedPrimitive (fun n ↦ ArithmeticFunction.vonMangoldt n - 1) x =
        TentAbsolutePayment.signedTent x :=
  exact_closed_finite_tent _ hx

theorem actual_primitive_is_literal_mangoldt (x : ℝ) :
    actualPrimitive x = closedPrimitive (fun n ↦ ArithmeticFunction.vonMangoldt n - 1) x := by
  unfold actualPrimitive closedPrimitive finitePrimitive
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  dsimp only
  rw [actual_coefficient n (Finset.mem_Icc.mp hn).1]

theorem actual_primitive_three_scale_tent {x : ℝ} (hx : 0 < x) :
    actualPrimitive (16 * x) - (3 / 2) * actualPrimitive (4 * x) +
      (1 / 2) * actualPrimitive x = TentAbsolutePayment.signedTent x := by
  simp only [actual_primitive_is_literal_mangoldt]
  exact actual_mangoldt_three_scale_tent hx

theorem actual_primitive_absolute_cap_consumes_to_tent {x B : ℝ} (hx : 0 < x)
    (h16 : |actualPrimitive (16 * x)| ≤ B) (h4 : |actualPrimitive (4 * x)| ≤ B)
    (h1 : |actualPrimitive x| ≤ B) : |TentAbsolutePayment.signedTent x| ≤ 3 * B := by
  rw [← actual_primitive_three_scale_tent hx]
  have hfirst := abs_add_le (actualPrimitive (16 * x) - (3 / 2) * actualPrimitive (4 * x))
    ((1 / 2) * actualPrimitive x)
  have hsecond := abs_sub_le (actualPrimitive (16 * x)) (0 : ℝ)
    ((3 / 2) * actualPrimitive (4 * x))
  simp only [sub_zero, zero_sub, abs_neg] at hsecond
  have hscale4 : |(3 / 2 : ℝ) * actualPrimitive (4 * x)| =
      (3 / 2) * |actualPrimitive (4 * x)| := by rw [abs_mul]; norm_num
  have hscale1 : |(1 / 2 : ℝ) * actualPrimitive x| = (1 / 2) * |actualPrimitive x| := by
    rw [abs_mul]
    norm_num
  rw [hscale1] at hfirst
  rw [hscale4] at hsecond
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteTentPrimitiveIdentity
