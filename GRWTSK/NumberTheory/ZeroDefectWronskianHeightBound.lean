/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZeroDefectWronskianProductDivisibility

set_option autoImplicit false
noncomputable section

/-! Restricted height estimate with zero-defect AND nonzero-W hypotheses.
Neither hypothesis is supplied for arbitrary additive triples.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.ZeroDefectWronskianHeightBound
open RetainedFactorization RetainedArithmeticDerivative NaturalRepetitionSource
open IntegerAdditiveDefectCongruences IntegerWronskianRepetitionCorrection
open ZeroDefectWronskianProductDivisibility AdditiveDefectEstimate ArithmeticDerivativeLogBounds

theorem repetition_product_lower (T : CoprimeAdditiveTriple)
    (hδ : integerAdditiveDefect T = 0) (hW : integerWronskian T.a T.b ≠ 0) :
    ((repetitionQuotient T.a * repetitionQuotient T.b * repetitionQuotient T.c : ℕ) : ℝ) ≤
      |(integerWronskian T.a T.b : ℝ)| := by
  have hd := Int.natCast_dvd.mp (full_product_dvd_of_zero_defect T hδ)
  have hn := Nat.le_of_dvd (Int.natAbs_pos.mpr hW) hd
  have he : (((integerWronskian T.a T.b).natAbs : ℕ) : ℝ) =
      |(integerWronskian T.a T.b : ℝ)| := by simp
  rw [← he]
  exact_mod_cast hn

theorem wronskian_height_upper (T : CoprimeAdditiveTriple) :
    |(integerWronskian T.a T.b : ℝ)| ≤
      (T.a : ℝ) * (T.b : ℝ) * Real.log (T.c : ℝ) / Real.log 2 := by
  have hsum := T.additive
  have ha : (T.a : ℝ) ≤ T.c := by exact_mod_cast (by omega : T.a ≤ T.c)
  have hb : (T.b : ℝ) ≤ T.c := by exact_mod_cast (by omega : T.b ≤ T.c)
  have hla := Real.log_le_log (by exact_mod_cast T.a_pos) ha
  have hlb := Real.log_le_log (by exact_mod_cast T.b_pos) hb
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hden : 0 ≤ (2 : ℝ) * Real.log 2 := by positivity
  have hDa := derivative_le_height_log T.a (ne_of_gt T.a_pos) 2 (by norm_num)
    (fun p hp => by exact_mod_cast (Nat.prime_of_mem_primeFactors hp).two_le)
  have hDb := derivative_le_height_log T.b (ne_of_gt T.b_pos) 2 (by norm_num)
    (fun p hp => by exact_mod_cast (Nat.prime_of_mem_primeFactors hp).two_le)
  have hAa := div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_left hla (Nat.cast_nonneg T.a)) hden
  have hBb := div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_left hlb (Nat.cast_nonneg T.b)) hden
  have hA := mul_le_mul_of_nonneg_left (hDa.trans hAa) (Nat.cast_nonneg T.b)
  have hB := mul_le_mul_of_nonneg_left (hDb.trans hBb) (Nat.cast_nonneg T.a)
  have hWreal : (integerWronskian T.a T.b : ℝ) =
      (T.a : ℝ) * (naturalArithmeticDerivative T.b : ℝ) -
        (T.b : ℝ) * (naturalArithmeticDerivative T.a : ℝ) := by
    simp [integerWronskian]
  have haD : (0 : ℝ) ≤ (T.a : ℝ) * (naturalArithmeticDerivative T.b : ℝ) := by positivity
  have hbD : (0 : ℝ) ≤ (T.b : ℝ) * (naturalArithmeticDerivative T.a : ℝ) := by positivity
  have he : (T.b : ℝ) * ((T.a : ℝ) * Real.log (T.c : ℝ) / (2 * Real.log 2)) +
      (T.a : ℝ) * ((T.b : ℝ) * Real.log (T.c : ℝ) / (2 * Real.log 2)) =
      (T.a : ℝ) * (T.b : ℝ) * Real.log (T.c : ℝ) / Real.log 2 := by
    field_simp [ne_of_gt hlog]
    <;> ring
  rw [abs_le, hWreal]
  constructor <;> linarith

theorem radical_mul_repetition_product (T : CoprimeAdditiveTriple) :
    UniqueFactorizationMonoid.radical T.product *
      (repetitionQuotient T.a * repetitionQuotient T.b * repetitionQuotient T.c) = T.product := by
  rw [radical_product]
  calc
    _ = (UniqueFactorizationMonoid.radical T.a * repetitionQuotient T.a) *
        (UniqueFactorizationMonoid.radical T.b * repetitionQuotient T.b) *
        (UniqueFactorizationMonoid.radical T.c * repetitionQuotient T.c) := by ring
    _ = T.product := by rw [radical_mul_repetitionQuotient,
      radical_mul_repetitionQuotient, radical_mul_repetitionQuotient]; rfl

theorem zero_defect_nonzero_wronskian_height (T : CoprimeAdditiveTriple)
    (hδ : integerAdditiveDefect T = 0) (hW : integerWronskian T.a T.b ≠ 0) :
    (T.c : ℝ) ≤ (UniqueFactorizationMonoid.radical T.product : ℝ) *
      Real.log (T.c : ℝ) / Real.log 2 := by
  have hl := (repetition_product_lower T hδ hW).trans (wronskian_height_upper T)
  have hm := mul_le_mul_of_nonneg_left hl
    (Nat.cast_nonneg (UniqueFactorizationMonoid.radical T.product) :
      (0 : ℝ) ≤ (UniqueFactorizationMonoid.radical T.product : ℝ))
  have he : (UniqueFactorizationMonoid.radical T.product : ℝ) *
      ((repetitionQuotient T.a * repetitionQuotient T.b * repetitionQuotient T.c : ℕ) : ℝ) =
        (T.a : ℝ) * (T.b : ℝ) * (T.c : ℝ) := by
    exact_mod_cast radical_mul_repetition_product T
  rw [he] at hm
  have hp : (0 : ℝ) < (T.a : ℝ) * (T.b : ℝ) := by
    exact mul_pos (by exact_mod_cast T.a_pos) (by exact_mod_cast T.b_pos)
  apply (mul_le_mul_left hp).mp
  convert hm using 1 <;> ring

end GRWTSK.NumberTheory.ABC.ZeroDefectWronskianHeightBound
