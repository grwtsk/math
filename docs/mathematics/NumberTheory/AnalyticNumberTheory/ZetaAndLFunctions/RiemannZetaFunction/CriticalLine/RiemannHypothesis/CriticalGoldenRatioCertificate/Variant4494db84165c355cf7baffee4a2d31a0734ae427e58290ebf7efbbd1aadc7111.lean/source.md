# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalGoldenRatioCertificate.Variant4494db84165c355cf7baffee4a2d31a0734ae427e58290ebf7efbbd1aadc7111

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88e09b0f558d761d6117d45b8a641484029ec8a7` · SHA-256 `4494db84165c355cf7baffee4a2d31a0734ae427e58290ebf7efbbd1aadc7111`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeSourceCondition

/-!
# Explicit badly approximable certificate for the source's golden-ratio mode

The unchanged alpha=(1+sqrt(5))/2 has rational approximation price at least
1/(5*m^2) for every positive integer denominator and every integer numerator.
The integer quadratic numerator is nonzero; its absolute value is at least
one. Both conjugate roots and the complete near/far cases are retained.
Human concrete-mode direction: grwtsk contributors. Local exact certificate:
OpenAI Codex. Pinned Mathlib irrational square-root infrastructure keeps its
upstream identity; no original-number-theory or RH claim is made.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalGoldenRatioCertificate
open CriticalTwoModeDiophantine CriticalTwoModeSourceCondition
noncomputable section

def goldenFrequency : ℝ := (1+Real.sqrt 5)/2
def conjugateFrequency : ℝ := (1-Real.sqrt 5)/2

theorem literal_golden_frequency_irrational : Irrational goldenFrequency := by
  have hs : Irrational (Real.sqrt 5) := (by decide : Nat.Prime 5).irrational_sqrt
  simpa only [goldenFrequency,Rat.cast_one,Rat.cast_ofNat] using
    (hs.ratCast_add (1 : ℚ)).div_ratCast (q := (2 : ℚ)) (by norm_num)

theorem literal_conjugate_frequency_irrational : Irrational conjugateFrequency := by
  have hs : Irrational (Real.sqrt 5) := (by decide : Nat.Prime 5).irrational_sqrt
  simpa only [conjugateFrequency,sub_eq_add_neg,Rat.cast_one,Rat.cast_ofNat] using
    (hs.neg.ratCast_add (1 : ℚ)).div_ratCast (q := (2 : ℚ)) (by norm_num)

theorem literal_golden_quadratic_factor (q : ℝ) :
    (q-goldenFrequency)*(q-conjugateFrequency) = q^2-q-1 := by
  unfold goldenFrequency conjugateFrequency
  nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 5)]

theorem literal_golden_quadratic_integer_ne_zero (m : ℕ) (hm : 1 ≤ m) (n : ℤ) :
    n^2-n*(m : ℤ)-(m : ℤ)^2 ≠ 0 := by
  have hmR : (0 : ℝ) < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have hscaled : ((n : ℝ)/(m : ℝ)-goldenFrequency)*
      ((n : ℝ)/(m : ℝ)-conjugateFrequency) =
        ((n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2)/(m : ℝ)^2 := by
    rw [literal_golden_quadratic_factor]
    field_simp [hmR.ne']
  intro he
  have heR : (n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2 = 0 := by exact_mod_cast he
  rw [heR,zero_div] at hscaled
  rcases mul_eq_zero.mp hscaled with hgold | hconj
  · apply literal_golden_frequency_irrational.ne_rat ((n : ℚ)/(m : ℚ))
    push_cast
    linarith
  · apply literal_conjugate_frequency_irrational.ne_rat ((n : ℚ)/(m : ℚ))
    push_cast
    linarith

theorem literal_golden_rational_approximation_price (m : ℕ) (hm : 1 ≤ m) (n : ℤ) :
    1/(5*(m : ℝ)^2) ≤ |goldenFrequency-(n : ℝ)/(m : ℝ)| := by
  have hmR : (0 : ℝ) < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have hm1 : (1 : ℝ) ≤ (m : ℝ) := by exact_mod_cast hm
  let q : ℝ := (n : ℝ)/(m : ℝ)
  by_cases hfar : 1 ≤ |goldenFrequency-q|
  · have hden : (1 : ℝ) ≤ 5*(m : ℝ)^2 := by nlinarith
    have hsmall : (1 : ℝ)/(5*(m : ℝ)^2) ≤ 1 :=
      (div_le_one (by positivity : (0 : ℝ) < 5*(m : ℝ)^2)).mpr hden
    exact hsmall.trans hfar
  · have hnear : |q-goldenFrequency| < 1 := by rw [abs_sub_comm]; exact lt_of_not_ge hfar
    have hsqrt : Real.sqrt 5 ≤ 3 := by
      nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 5),Real.sqrt_nonneg 5]
    have hdiff : goldenFrequency-conjugateFrequency = Real.sqrt 5 := by
      unfold goldenFrequency conjugateFrequency
      ring
    have hsecond : |q-conjugateFrequency| ≤ 4 := by
      have h := abs_sub_le q goldenFrequency conjugateFrequency
      rw [hdiff,abs_of_nonneg (Real.sqrt_nonneg 5)] at h
      linarith
    have hne := literal_golden_quadratic_integer_ne_zero m hm n
    have hZ : (1 : ℤ) ≤ |n^2-n*(m : ℤ)-(m : ℤ)^2| := by
      have hpos := abs_pos.mpr hne
      omega
    have hR : (1 : ℝ) ≤ |(n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2| := by exact_mod_cast hZ
    have hscaled : (q-goldenFrequency)*(q-conjugateFrequency) =
        ((n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2)/(m : ℝ)^2 := by
      rw [literal_golden_quadratic_factor]
      dsimp [q]
      field_simp [hmR.ne']
    have hprice : 1/(m : ℝ)^2 ≤ |q-goldenFrequency| * |q-conjugateFrequency| := by
      calc
        _ ≤ |(n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2|/(m : ℝ)^2 :=
          div_le_div_of_nonneg_right hR (sq_nonneg (m : ℝ))
        _ = |((n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2)/(m : ℝ)^2| := by
          rw [abs_div,abs_of_pos (sq_pos_of_pos hmR)]
        _ = _ := by rw [← hscaled,abs_mul]
    have hupper : |q-goldenFrequency| * |q-conjugateFrequency| ≤ |q-goldenFrequency| * 4 :=
      mul_le_mul_of_nonneg_left hsecond (abs_nonneg _)
    have hpaid := (div_le_iff₀ (sq_pos_of_pos hmR)).mp (hprice.trans hupper)
    rw [abs_sub_comm]
    apply (div_le_iff₀ (by positivity : (0 : ℝ) < 5*(m : ℝ)^2)).mpr
    nlinarith [mul_nonneg (abs_nonneg (q-goldenFrequency)) (sq_nonneg (m : ℝ))]

theorem literal_golden_frequency_badly_approximable : BadlyApproximable goldenFrequency := by
  apply (badly_approximable_iff_rational_source_condition goldenFrequency).mpr
  refine ⟨1/5,by norm_num,?_⟩
  intro m hm n
  have h := literal_golden_rational_approximation_price m hm n
  convert h using 1
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalGoldenRatioCertificate
```
