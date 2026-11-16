/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain

/-!
# Mass normalization of primitive Weil witnesses

Positive real rescaling preserves the sign of the original arithmetic
form. All three terms, including the untruncated gamma correction and the
strict-cutoff signed prime sum, acquire the same square factor.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped ComplexConjugate BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open OddRootProjection CharacterWindow SourcePrimeCorrelation LowSchur

private theorem energy_real_mul (c : ℝ) (f : ℝ → ℂ) :
    energy (fun t => (c : ℂ) * f t) = c ^ 2 * energy f := by
  rw [energy, energy, ← integral_const_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun t => by
    change ‖(c : ℂ) * f t‖ ^ 2 = c ^ 2 * ‖f t‖ ^ 2
    rw [norm_mul, mul_pow, Complex.norm_real, Real.norm_eq_abs, sq_abs]

private theorem correlation_real_mul (c : ℝ) (f : ℝ → ℂ) (r : ℝ) :
    correlation (fun t => (c : ℂ) * f t) r =
      ((c ^ 2 : ℝ) : ℂ) * correlation f r := by
  rw [correlation, correlation, ← integral_const_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun t => by
    simp only [map_mul, Complex.conj_ofReal, Complex.ofReal_pow]
    ring

private theorem gammaCorrectionDensity_real_mul
    (a : ℕ) (c : ℝ) (f : ℝ → ℂ) (r : ℝ) :
    gammaCorrectionDensity a (fun t => (c : ℂ) * f t) r =
      c ^ 2 * gammaCorrectionDensity a f r := by
  simp only [gammaCorrectionDensity, ← mul_sub, energy_real_mul]
  ring

private theorem twistedPrime_real_mul {q : ℕ} [NeZero q]
    (T : ℝ) (χ : DirichletCharacter ℂ q) (c : ℝ) (C : ℕ → ℂ) :
    twistedPrime T χ (fun n => (c : ℂ) * C n) = c * twistedPrime T χ C := by
  unfold twistedPrime
  simp only [mul_left_comm (conj (χ _)), Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  rw [mul_left_comm c 2, Finset.mul_sum (activePrimePowers T) _ c]
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  ring

/-- The original primitive arithmetic value is quadratic under real scaling. -/
theorem primitiveArithmeticValue_real_mul {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    (T c : ℝ) (f : ℝ → ℂ) :
    primitiveArithmeticValue χ hp hn T (fun t => (c : ℂ) * f t) =
      c ^ 2 * primitiveArithmeticValue χ hp hn T f := by
  simp only [primitiveArithmeticValue, energy_real_mul, correlation_real_mul,
    gammaCorrectionDensity_real_mul, integral_const_mul, twistedPrime_real_mul]
  ring

private theorem liftReal_real_mul (c : ℝ) (f : ℝ → ℝ) :
    liftReal (fun t => c * f t) = fun t => (c : ℂ) * liftReal f t := by
  funext t
  simp [liftReal]

private theorem admissible_real_mul {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q} {T : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f) (c : ℝ) : Admissible χ T (fun t => c * f t) := by
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  refine ⟨hT, contDiff_const.mul hdiff, hcompact.mul_left, ?_, ?_, ?_, ?_⟩
  · intro t
    change c * f (-t) = -(c * f t)
    rw [hodd t, mul_neg]
  · rw [liftReal_real_mul]
    exact hLp.const_mul _
  · intro t ht
    simp only [liftReal_real_mul, hsupport t ht, mul_zero]
  · rw [liftReal_real_mul]
    have hscaled : gammaCorrectionDensity (gammaParity χ) (fun t => (c : ℂ) * liftReal f t) =
        fun r => c ^ 2 * gammaCorrectionDensity (gammaParity χ) (liftReal f) r :=
      funext (gammaCorrectionDensity_real_mul (gammaParity χ) c (liftReal f))
    rw [hscaled]
    exact Integrable.const_mul harch (c ^ 2)

/-- A fixed admissible test can be rescaled in the same window to mass at most
one. The exact square factor controls the margin available to a stage. -/
theorem exists_positive_rescaling_mass_le_one {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    ∃ c : ℝ, 0 < c ∧ Admissible χ T (fun t => c * f t) ∧
      energy (liftReal (fun t => c * f t)) ≤ 1 ∧
      energy (liftReal (fun t => c * f t)) = c ^ 2 * energy (liftReal f) ∧
      primitiveArithmeticValue χ hp hn T (liftReal (fun t => c * f t)) =
        c ^ 2 * primitiveArithmeticValue χ hp hn T (liftReal f) := by
  have hE : 0 ≤ energy (liftReal f) := by
    rw [energy_eq_norm_toLp_sq hf.2.2.2.2.1]
    positivity
  let c := (1 + energy (liftReal f))⁻¹
  have hden : 0 < 1 + energy (liftReal f) := by linarith
  refine ⟨c, inv_pos.mpr hden, admissible_real_mul hf c, ?_, ?_, ?_⟩
  · rw [liftReal_real_mul, energy_real_mul]
    change ((1 + energy (liftReal f))⁻¹) ^ 2 * energy (liftReal f) ≤ 1
    rw [inv_pow, ← div_eq_inv_mul, div_le_iff₀ (pow_pos hden 2)]
    nlinarith [sq_nonneg (energy (liftReal f))]
  · rw [liftReal_real_mul, energy_real_mul]
  · rw [liftReal_real_mul, primitiveArithmeticValue_real_mul]

/-- The energy-relative stage bound may be checked on the mass-bounded tests
in the same window. A positive square cancels on the two sides of the bound. -/
theorem primitiveStageLower_iff_mass_le_one {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1) (j : ℕ) :
    PrimitiveStageLower χ hp hn j ↔
      ∀ f : ℝ → ℝ, Admissible χ ((j : ℝ) + 1) f → energy (liftReal f) ≤ 1 →
        -((1 / 2 : ℝ) ^ j) * energy (liftReal f) ≤
          primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f) := by
  constructor
  · intro h f hf _
    exact h f hf
  · intro h f hf
    obtain ⟨c, hc, hscaled, hmass, henergy, hvalue⟩ :=
      exists_positive_rescaling_mass_le_one χ hp hn hf
    have hbound := h (fun t => c * f t) hscaled hmass
    rw [henergy, hvalue, mul_left_comm (-((1 / 2 : ℝ) ^ j))] at hbound
    exact le_of_mul_le_mul_left hbound (pow_pos hc 2)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
