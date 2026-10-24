# Complete source: GRWTSK.Analysis.TestFunctions.PowerFourResidualSigns

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8cbc44fa519aeb60e39acb8d5e08bb32188f104` · SHA-256 `643d6f2580dc1db3f67f0818a5f4f4e5eeae941f7846bfc60ae8d8d6bc6faf06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives

/-!
Signs and endpoint identities of the actual normalized power-four residual.

Exact historical declaration names, hypotheses and proof bodies are retained.
The inherited base dependency extraction remains deferred.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourcePositiveSector

open MeasureTheory Set
open scoped Convolution
open ArithmeticSupplier SourceResidual SourceRegularity

noncomputable section

theorem normalized_source_closed_factor {A x : ℝ} (hA : 0 < A)
    (hx : x ∈ Icc (-A) A) :
    normalizedSource A x = A ^ (-(1 / 2 : ℝ)) / Real.sqrt (sourceNormalization A) *
      (1 - (x / A) ^ 2) ^ 2 *
      (8 * (7 * (x / A) ^ 2 - 1) / A ^ 2 - (1 - (x / A) ^ 2) ^ 2 / 4) := by
  rw [normalizedSource, sourceResidual_eq_ite hA, if_pos hx]
  dsimp [residualPolynomial]
  ring

theorem normalized_source_deriv_closed_factor {A x : ℝ} (hA : 0 < A)
    (hx : x ∈ Icc (-A) A) :
    deriv (normalizedSource A) x =
      A ^ (-(1 / 2 : ℝ)) / Real.sqrt (sourceNormalization A) * (x / A) *
        (1 - (x / A) ^ 2) *
        (48 * (3 - 7 * (x / A) ^ 2) / A ^ 3 + 2 * (1 - (x / A) ^ 2) ^ 2 / A) := by
  have scaled := (scaled_mem_iff hA x).mpr hx
  change deriv (fun y ↦ sourceResidual A y / Real.sqrt (sourceNormalization A)) x = _
  rw [((residual_hasDerivAt A x).div_const (Real.sqrt (sourceNormalization A))).deriv]
  simp only [residualFirst, sourceThird, sourceFirst, clippedProfile, if_pos scaled]
  dsimp [bumpThirdPolynomial, bumpFirstPolynomial]
  ring

theorem right_strip_coordinate_bounds {A x : ℝ} (hA : 1 ≤ A)
    (hx : A - 1 / 16 ≤ x ∧ x < A) :
    (15 / 16 : ℝ) ≤ x / A ∧ x / A < 1 ∧
      0 < 1 - (x / A) ^ 2 ∧ A * (1 - (x / A) ^ 2) ≤ 1 / 8 := by
  have positive : 0 < A := by linarith
  have lower : (15 / 16 : ℝ) ≤ x / A :=
    (le_div_iff₀ positive).mpr (by nlinarith [hx.1])
  have upper : x / A < 1 := (div_lt_iff₀ positive).mpr (by simpa using hx.2)
  have unitPositive : 0 < x / A := by linarith
  have gapPositive : 0 < 1 - (x / A) ^ 2 := by nlinarith
  have identity : A * (1 - (x / A) ^ 2) = (A - x) * (1 + x / A) := by
    field_simp
    ring
  have bound := mul_le_mul (by linarith [hx.1] : A - x ≤ (1 / 16 : ℝ))
    (by linarith : 1 + x / A ≤ 2) (by linarith : 0 ≤ 1 + x / A)
    (by norm_num : (0 : ℝ) ≤ 1 / 16)
  refine ⟨lower, upper, gapPositive, ?_⟩
  rw [identity]
  norm_num at bound ⊢
  exact bound

theorem right_strip_bracket_signs {A u : ℝ} (hA : 1 ≤ A)
    (hu : (15 / 16 : ℝ) ≤ u ∧ u < 1)
    (hgap : A * (1 - u ^ 2) ≤ 1 / 8) :
    0 < 8 * (7 * u ^ 2 - 1) / A ^ 2 - (1 - u ^ 2) ^ 2 / 4 ∧
      48 * (3 - 7 * u ^ 2) / A ^ 3 + 2 * (1 - u ^ 2) ^ 2 / A < 0 := by
  have positive : 0 < A := by linarith
  have unitPositive : 0 < u := by linarith [hu.1]
  have vPositive : 0 < 1 - u ^ 2 := by nlinarith [hu.2]
  have squareLower : (3 / 4 : ℝ) < u ^ 2 := by nlinarith [hu.1]
  have massPositive : 0 ≤ A * (1 - u ^ 2) := (mul_pos positive vPositive).le
  have massSquare : (A * (1 - u ^ 2)) ^ 2 ≤ (1 / 8 : ℝ) ^ 2 :=
    (sq_le_sq₀ massPositive (by norm_num)).mpr hgap
  have squareMass : A ^ 2 * (1 - u ^ 2) ^ 2 ≤ (1 / 64 : ℝ) := by
    nlinarith [massSquare]
  have first : 8 * (7 * u ^ 2 - 1) / A ^ 2 - (1 - u ^ 2) ^ 2 / 4 =
      (8 * (7 * u ^ 2 - 1) - A ^ 2 * (1 - u ^ 2) ^ 2 / 4) / A ^ 2 := by
    field_simp
  have second : 48 * (3 - 7 * u ^ 2) / A ^ 3 + 2 * (1 - u ^ 2) ^ 2 / A =
      (48 * (3 - 7 * u ^ 2) + 2 * A ^ 2 * (1 - u ^ 2) ^ 2) / A ^ 3 := by
    field_simp
  constructor
  · rw [first]
    exact div_pos (by nlinarith) (pow_pos positive 2)
  · rw [second]
    exact div_neg_of_neg_of_pos (by nlinarith) (pow_pos positive 3)

theorem normalized_source_right_strip_signs {A x : ℝ} (hA : 1 ≤ A)
    (hx : A - 1 / 16 ≤ x ∧ x < A) :
    0 < normalizedSource A x ∧ deriv (normalizedSource A) x < 0 := by
  have positive : 0 < A := by linarith
  have hxSupport : x ∈ Icc (-A) A := ⟨by linarith [hx.1], hx.2.le⟩
  obtain ⟨lower, upper, gapPositive, gapBound⟩ := right_strip_coordinate_bounds hA hx
  obtain ⟨first, second⟩ := right_strip_bracket_signs hA ⟨lower, upper⟩ gapBound
  have factorPositive : 0 < A ^ (-(1 / 2 : ℝ)) / Real.sqrt (sourceNormalization A) :=
    div_pos (Real.rpow_pos_of_pos positive _) (Real.sqrt_pos.mpr
      (SourceNormalization.source_normalization_pos positive))
  constructor
  · rw [normalized_source_closed_factor positive hxSupport]
    exact mul_pos (mul_pos factorPositive (pow_pos gapPositive 2)) first
  · rw [normalized_source_deriv_closed_factor positive hxSupport]
    exact mul_neg_of_pos_of_neg (mul_pos (mul_pos factorPositive (by linarith))
      gapPositive) second

theorem normalized_source_reflected_on_support {A x : ℝ} (hA : 0 < A)
    (hx : x ∈ Icc (-A) A) :
    normalizedSource A (-x) = normalizedSource A x ∧
      deriv (normalizedSource A) (-x) = -deriv (normalizedSource A) x := by
  have reflected : -x ∈ Icc (-A) A := ⟨by linarith [hx.2], by linarith [hx.1]⟩
  constructor
  · rw [normalized_source_closed_factor hA reflected,
      normalized_source_closed_factor hA hx]
    ring
  · rw [normalized_source_deriv_closed_factor hA reflected,
      normalized_source_deriv_closed_factor hA hx]
    ring

theorem normalized_source_left_strip_signs {A x : ℝ} (hA : 1 ≤ A)
    (hx : -A < x ∧ x ≤ -A + 1 / 16) :
    0 < normalizedSource A x ∧ 0 < deriv (normalizedSource A) x := by
  have positive : 0 < A := by linarith
  have reflectedStrip : A - 1 / 16 ≤ -x ∧ -x < A := by constructor <;> linarith
  obtain ⟨sourcePositive, derivativeNegative⟩ :=
    normalized_source_right_strip_signs hA reflectedStrip
  have support : x ∈ Icc (-A) A := ⟨hx.1.le, by linarith [hx.2]⟩
  obtain ⟨sourceReflected, derivativeReflected⟩ :=
    normalized_source_reflected_on_support positive support
  rw [sourceReflected] at sourcePositive
  rw [derivativeReflected] at derivativeNegative
  exact ⟨sourcePositive, by linarith⟩

theorem normalized_source_deriv_zero_outside {A x : ℝ} (hA : 0 < A)
    (hx : x ∉ Icc (-A) A) : deriv (normalizedSource A) x = 0 := by
  have scaled : x / A ∉ Icc (-1 : ℝ) 1 := (scaled_mem_iff hA x).not.mpr hx
  change deriv (fun y ↦ sourceResidual A y / Real.sqrt (sourceNormalization A)) x = 0
  rw [((residual_hasDerivAt A x).div_const (Real.sqrt (sourceNormalization A))).deriv]
  simp [residualFirst, sourceThird, sourceFirst, clippedProfile, scaled]

theorem normalized_source_endpoint_zero {A : ℝ} (hA : 0 < A) :
    normalizedSource A A = 0 ∧ normalizedSource A (-A) = 0 ∧
      deriv (normalizedSource A) A = 0 ∧ deriv (normalizedSource A) (-A) = 0 := by
  have right : A ∈ Icc (-A) A := ⟨by linarith, le_rfl⟩
  have left : -A ∈ Icc (-A) A := ⟨le_rfl, by linarith⟩
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [normalized_source_closed_factor hA right]
    simp [hA.ne']
  · rw [normalized_source_closed_factor hA left]
    simp [hA.ne']
  · rw [normalized_source_deriv_closed_factor hA right]
    simp [hA.ne']
  · rw [normalized_source_deriv_closed_factor hA left]
    simp [hA.ne']

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourcePositiveSector
```
