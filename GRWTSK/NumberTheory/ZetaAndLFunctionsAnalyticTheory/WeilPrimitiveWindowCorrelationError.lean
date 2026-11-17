/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowCorrelation

/-! # Shift errors for normalized primitive Weil correlations -/

set_option autoImplicit false

open Set MeasureTheory
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation

/-- Shift errors are controlled on the original fixed support of the first
factor, even when the two shifts lie on opposite sides of support contact. -/
theorem norm_correlation_liftReal_sub_le_of_admissible
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 0 < T) {f : ℝ → ℝ} (hf : Admissible χ T f)
    {B L : ℝ} (hB : 0 ≤ B)
    (hvalue : ∀ t ∈ Icc (-T) T, |f t| ≤ B)
    (hshift : ∀ x y, |f x - f y| ≤ L * |x - y|) (r s : ℝ) :
    ‖correlation (liftReal f) r - correlation (liftReal f) s‖ ≤
      (2 * T * B * L) * |r - s| := by
  obtain ⟨_, _, hsupp⟩ := (admissible_iff_smooth_odd_supported χ hT f).mp hf
  have hmem : MemLp (liftReal f) 2 volume := hf.2.2.2.2.1
  let g (t : ℝ) := conj (liftReal f t) * liftReal f (t + r) -
    conj (liftReal f t) * liftReal f (t + s)
  have hz : ∀ t, t ∉ Icc (-T) T → g t = 0 := by
    intro t ht
    simp [g, liftReal, hsupp t ht]
  have hg (t : ℝ) (ht : t ∈ Icc (-T) T) : ‖g t‖ ≤ B * (L * |r - s|) := by
    have hsub : (t + r) - (t + s) = r - s := by ring
    have h := hshift (t + r) (t + s)
    rw [hsub] at h
    dsimp only [g]
    rw [← mul_sub, norm_mul, Complex.norm_conj]
    simp only [liftReal, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul (hvalue t ht) h (abs_nonneg _) hB
  unfold correlation
  rw [← integral_sub (integrable_correlation_integrand hmem r)
    (integrable_correlation_integrand hmem s)]
  change ‖∫ t : ℝ, g t‖ ≤ _
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero hz]
  calc
    _ ≤ (B * (L * |r - s|)) * volume.real (Icc (-T) T) :=
      norm_setIntegral_le_of_norm_le_const isCompact_Icc.measure_lt_top hg
    _ = _ := by
      rw [Real.volume_real_Icc_of_le (by linarith : -T ≤ T)]
      ring

/-- An error bound for the actual log shift transfers to the original
normalized code correlation. The amplitude and translation bounds are
premises for that same normalized test. -/
theorem norm_normalizedCode_correlation_log_sub_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : List ℚ)
    (n : ℕ) (s : ℝ) {B L δ : ℝ} (hB : 0 ≤ B) (hL : 0 ≤ L)
    (hvalue : ∀ t ∈ Icc (-((j : ℝ) + 1)) ((j : ℝ) + 1),
      |(primitiveStageMassTestOfNormalizedCode χ j cs).val t| ≤ B)
    (hshift : ∀ x y, |(primitiveStageMassTestOfNormalizedCode χ j cs).val x -
      (primitiveStageMassTestOfNormalizedCode χ j cs).val y| ≤ L * |x - y|)
    (hlog : |Real.log (n : ℝ) - s| ≤ δ) :
    ‖correlation (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val)
        (Real.log (n : ℝ)) -
      correlation (liftReal (primitiveStageMassTestOfNormalizedCode χ j cs).val) s‖ ≤
      (2 * ((j : ℝ) + 1) * B * L) * δ := by
  have hT : (0 : ℝ) < (j : ℝ) + 1 := by positivity
  exact (norm_correlation_liftReal_sub_le_of_admissible χ hT
    (primitiveStageMassTestOfNormalizedCode χ j cs).property.1 hB hvalue hshift _ _).trans
      (mul_le_mul_of_nonneg_left hlog (by positivity))

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
