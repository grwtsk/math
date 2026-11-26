import OAI.LinearAlgebra.SpectralBooks.ExactExponent

/-!
# Rectangular shape exponents of clique contractions

Local attribution: grwtsk contributors.

If a merge partitions the terminals into three parts of sizes `a,b,c`, its
three bond-product weights are `a*b,a*c,b*c`. This calculation concerns dense
rectangular products in the formal arithmetic model.
-/

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.CliqueContractionExponent

open OAI.LinearAlgebra.SpectralBooks

private theorem clique_formula (a b c : ℝ) (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hc : 0 < c) (hab : b ≤ a) (hbc : c ≤ b) :
    a * b + a * c + (max ((a * b + a * c) * (b * c) - a * b * (a * c)) 0) ^ 2 /
      (4 * (a * b) * (a * c) * (b * c)) =
        (a + b + c) ^ 2 / 4 - (max (a - (a + b + c) / 2) 0) ^ 2 := by
  have ha' : 0 < a := hc.trans_le (hbc.trans hab)
  have hb' : 0 < b := hc.trans_le hbc
  have hd : (a * b + a * c) * (b * c) - a * b * (a * c) = a * b * c * (b + c - a) := by ring
  rw [hd]
  by_cases h : a ≤ b + c
  · rw [max_eq_left (mul_nonneg (by positivity) (sub_nonneg.mpr h)),
      max_eq_right (show a - (a + b + c) / 2 ≤ 0 by linarith)]
    field_simp [ha'.ne', hb'.ne', hc.ne'] <;> ring
  · rw [max_eq_right (mul_nonpos_of_nonneg_of_nonpos (by positivity) (by linarith)),
      max_eq_left (show 0 ≤ a - (a + b + c) / 2 by linarith)]
    simp only [zero_pow (by decide : 2 ≠ 0), zero_div, add_zero]
    ring

/-- Exact dense contraction shape for decreasing nonnegative part sizes,
including a merge at the root with no exterior terminals. -/
theorem clique_contraction_exponent (F : Type*) [Field F] (a b c : ℝ)
    (hc : 0 ≤ c) (hbc : c ≤ b) (hab : b ≤ a) :
    formalOmega F (a * b) (a * c) (b * c) =
      (a + b + c) ^ 2 / 4 - (max (a - (a + b + c) / 2) 0) ^ 2 := by
  have hb : 0 ≤ b := hc.trans hbc
  have ha : 0 ≤ a := hb.trans hab
  have hx : a * c ≤ a * b := mul_le_mul_of_nonneg_left hbc ha
  have hz : b * c ≤ a * c := mul_le_mul_of_nonneg_right hab hc
  rw [rectangular_exponent]
  simp only [max_eq_left (mul_nonneg ha hb), max_eq_left (mul_nonneg ha hc),
    max_eq_left (mul_nonneg hb hc), max_eq_left hx, max_eq_left (hz.trans hx),
    max_eq_left hz, min_eq_right hz, min_eq_right (hz.trans hx)]
  have hm : a * b + a * c + b * c - a * b - b * c = a * c := by ring
  rw [hm]
  rcases hc.eq_or_lt with hzero | hc'
  · subst c
    simp only [mul_zero, add_zero, div_zero]
    rw [max_eq_left (show 0 ≤ a - (a + b) / 2 by linarith)]
    ring
  · exact clique_formula a b c ha hb hc' hab hbc

end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.CliqueContractionExponent
