# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.B12cb511fdd452e14bc7EstimateUnitProfileMass.Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba1c72cc9860f2a027a994b6bac2d2e779a31f1c` · SHA-256 `b12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateNormalizedSourceProfile
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

/-!
# Exact signed mass of the literal unit-scale profile

The accepted interior polynomials are used only inside their actual closed
zero extension. Their finite integrals determine the source profile's mass.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateUnitProfileMass

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeNormalization EstimateNormalizedSourceProfile

noncomputable section

/-- The literal source-defined profile has this exact zero-extended interior. -/
theorem unitProfile_eq_indicator (A : ℝ) (hA : 0 < A) :
    unitProfile A = (Icc (-1 : ℝ) 1).indicator
      (fun s ↦ (unitSecond s / A ^ 2 - unitBump s / 4) /
        Real.sqrt (sourceNormalization A)) := by
  funext s
  have hmem : A * s ∈ Icc (-A) A ↔ s ∈ Icc (-1 : ℝ) 1 := by
    constructor
    · rintro ⟨hl, hr⟩
      exact ⟨(mul_le_mul_iff_right₀ hA).mp (by simpa only [mul_neg_one] using hl),
        (mul_le_mul_iff_right₀ hA).mp (by simpa only [mul_one] using hr)⟩
    · rintro ⟨hl, hr⟩
      exact ⟨by simpa only [mul_neg_one] using (mul_le_mul_iff_right₀ hA).mpr hl,
        by simpa only [mul_one] using (mul_le_mul_iff_right₀ hA).mpr hr⟩
  unfold unitProfile
  rw [normalizedTest_eq_indicator A hA]
  simp only [indicator_apply, hmem]
  by_cases hs : s ∈ Icc (-1 : ℝ) 1
  · simp only [hs, ite_true]
    dsimp [normalizedInterior, secondInterior, bumpInterior, unitSecond, unitBump]
    rw [mul_div_cancel_left₀ s hA.ne']
    have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
    field_simp [hA.ne', Real.sqrt_ne_zero'.mpr hA, Real.sqrt_ne_zero'.mpr hZ]
  · simp [hs]

/-- Finite integral of the actual source bump interior. -/
theorem unitBump_integral :
    (∫ s : ℝ in (-1)..1, unitBump s) = (256 / 315 : ℝ) := by
  have heq : unitBump = (fun s : ℝ ↦ 1 - 4*s^2 + 6*s^4 - 4*s^6 + s^8) := by
    funext s
    unfold unitBump
    ring
  rw [heq]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- The actual unit second derivative has zero signed integral. -/
theorem unitSecond_integral :
    (∫ s : ℝ in (-1)..1, unitSecond s) = 0 := by
  unfold unitSecond
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- Exact signed mass, including the literal zero extension and fixed normalization. -/
theorem unitProfile_integral (A : ℝ) (hA : 0 < A) :
    (∫ s, unitProfile A s) = -64 / (315 * Real.sqrt (sourceNormalization A)) := by
  rw [unitProfile_eq_indicator A hA, zeroExtension_integral _ (-1) 1 (by norm_num)]
  rw [intervalIntegral.integral_div]
  simp (disch := (apply Continuous.intervalIntegrable; dsimp [unitSecond, unitBump]; fun_prop)) only
    [intervalIntegral.integral_sub, intervalIntegral.integral_div]
  rw [unitSecond_integral, unitBump_integral]
  ring

/-- The positive inverse-scale terms are bounded by their value at radius one. -/
theorem sourceNormalization_le_one (A : ℝ) (hA : 1 ≤ A) :
    sourceNormalization A ≤ sourceNormalization 1 := by
  have hA2 : 1 ≤ A ^ 2 := one_le_pow₀ hA
  have hA4 : 1 ≤ A ^ 4 := one_le_pow₀ hA
  have h2 : (131072 / 45045 : ℝ) / (2 * A ^ 2) ≤ (131072 / 45045 : ℝ) / 2 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
  have h4 : (196608 / 5005 : ℝ) / A ^ 4 ≤ (196608 / 5005 : ℝ) / 1 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hA4
  unfold sourceNormalization
  norm_num only [one_pow, mul_one, div_one] at *
  linarith

/-- A simple rational ceiling for the literal normalization. -/
theorem sourceNormalization_le_41 (A : ℝ) (hA : 1 ≤ A) :
    sourceNormalization A ≤ 41 := by
  refine (sourceNormalization_le_one A hA).trans ?_
  norm_num [sourceNormalization]

end
end EstimateUnitProfileMass
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
