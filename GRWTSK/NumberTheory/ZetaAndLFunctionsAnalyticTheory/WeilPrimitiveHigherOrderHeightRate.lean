/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveHeightTailWidth

/-! # Higher-derivative error rates for primitive Weil height sums -/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.MeasureAndIntegration.DyadicDecayMoment

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

private theorem tailBudget_le_higherOrder (A B : ℝ) {C : ℝ} (hC : 0 ≤ C)
    {k : ℕ} (hk : 1 ≤ k) (J : ℕ) :
    tailBudget A B C 1 k J ≤
      2 * Real.exp (2 * A * B) * C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ ((2 * k - 1) * J) := by
  let r := dyadicRatio k
  have hr : 0 < r ∧ r < 1 := dyadicRatio_pos_lt_one hk
  have hrHalf : r ≤ 1 / 2 := by
    dsimp only [r, dyadicRatio]
    apply (div_le_iff₀ (by positivity : 0 < (2 : ℝ) ^ (2 * k))).mpr
    have hpow : (2 : ℝ) ^ 2 ≤ (2 : ℝ) ^ (2 * k) :=
      pow_le_pow_right₀ (by norm_num) (by omega)
    norm_num at hpow
    linarith
  have hden : 0 < 1 - r := sub_pos.mpr hr.2
  have haffine : ((J : ℝ) + 1) / (1 - r) ≤ 2 * ((J : ℝ) + 1) := by
    apply (div_le_iff₀ hden).mpr
    have hJ : 0 ≤ (J : ℝ) + 1 := by positivity
    nlinarith [mul_nonneg hJ (show 0 ≤ 1 - 2 * r by linarith)]
  have hgeometric : r / (1 - r) ^ 2 ≤ 2 := by
    apply (div_le_iff₀ (pow_pos hden 2)).mpr
    have hsq : (1 / 2 : ℝ) ^ 2 ≤ (1 - r) ^ 2 :=
      pow_le_pow_left₀ (by norm_num) (by linarith) 2
    linarith
  let p : ℕ := 2 * k - 1
  have hp : 2 * k = p + 1 := by dsimp [p]; omega
  have hratio : r = (1 / 2 : ℝ) ^ p := by
    dsimp only [r, dyadicRatio]
    rw [hp, pow_succ, div_pow, one_pow]
    field_simp
  change Real.exp (2 * A * B) * C * r ^ J *
    (((J : ℝ) + 1) / (1 - r) + r / (1 - r) ^ 2) ≤ _
  calc
    _ ≤ Real.exp (2 * A * B) * C * r ^ J * (2 * ((J : ℝ) + 2)) :=
      mul_le_mul_of_nonneg_left (by linarith)
        (mul_nonneg (mul_nonneg (Real.exp_pos _).le hC) (pow_nonneg hr.1.le _))
    _ = _ := by rw [hratio, ← pow_mul]; ring

/-- The original signed finite-height sum has an explicit error with dyadic
decay exponent `2*k-1`. The constants use the native count, the derivative
cost of the test, and a horizontal radius for the omitted zeros. -/
theorem primitive_heightWindow_error_le_higherOrder_rate
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive)
    (f : ℝ → ℂ) {A B H : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A)
    (hwidth : ∀ ρ : CriticalStripZero χ, H ≤ |ρ.1.im| → |ρ.1.re - 1 / 2| ≤ B)
    (k J : ℕ) (hk : 1 ≤ k) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    ‖((∫ t : ℝ, weilRightArithmeticIntegrand χ W t) / (2 * (Real.pi : ℂ)) +
        (if q = 1 then W 0 + W 1 else 0)) -
      ∑ ρ ∈ heightWindow χ hp H, (zeroMultiplicity χ ρ : ℂ) * W ρ.1‖ ≤
        16 * Real.exp (2 * A * B) * sourceCountConstant χ * derivativeL1Cost f k ^ 2 *
          ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ ((2 * k - 1) * J) := by
  intro W
  have hD := sourceCountConstant_nonneg χ
  let C : ℝ := 2 * sourceCountConstant χ * ((3 : ℝ) + 1)
  have hC : 0 ≤ C := by dsimp [C]; positivity
  calc
    _ ≤ derivativeL1Cost f k ^ 2 * tailBudget A B C 1 k J :=
      primitive_heightWindow_error_le_of_tail_width χ hp hD (by norm_num)
        (heightCount_le_source_bound χ hp) f hA hB hf hs hwidth k J hk hJ
    _ ≤ derivativeL1Cost f k ^ 2 *
        (2 * Real.exp (2 * A * B) * C * ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ ((2 * k - 1) * J)) :=
      mul_le_mul_of_nonneg_left (tailBudget_le_higherOrder A B hC hk J) (sq_nonneg _)
    _ = _ := by dsimp [C]; ring

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
