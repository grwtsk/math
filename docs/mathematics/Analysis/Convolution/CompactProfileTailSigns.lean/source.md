# Complete source: GRWTSK.Analysis.Convolution.CompactProfileTailSigns

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97a04434a3ee8926caafa98cc7bd3a590bb4e4c8` · SHA-256 `08867d5adc6cdc1fffb2d43b309c5dd78482548c120057a6d8db55db766017d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.TestFunctions.PowerFourResidualSigns

/-!
Sign and strict positivity of the actual compact-profile tail convolution products.

Exact historical declaration names, hypotheses and proof bodies are retained.
The inherited base dependency extraction remains deferred.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourcePositiveSector

open MeasureTheory Set
open scoped Convolution
open ArithmeticSupplier SourceResidual SourceRegularity

noncomputable section

theorem tail_product_signs {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    deriv (normalizedSource A) x * normalizedSource A (x - (2 * A - 1 / 16)) ≤ 0 ∧
      0 ≤ -(deriv (normalizedSource A) x *
        deriv (normalizedSource A) (x - (2 * A - 1 / 16))) := by
  have positive : 0 < A := by linarith
  by_cases hx : x ∈ Icc (-A) A
  · by_cases hy : x - (2 * A - 1 / 16) ∈ Icc (-A) A
    · by_cases rightEndpoint : x = A
      · rw [rightEndpoint, (normalized_source_endpoint_zero positive).2.2.1]
        simp
      · by_cases leftEndpoint : x - (2 * A - 1 / 16) = -A
        · rw [leftEndpoint, (normalized_source_endpoint_zero positive).2.1,
            (normalized_source_endpoint_zero positive).2.2.2]
          simp
        · have rightStrip : A - 1 / 16 ≤ x ∧ x < A :=
            ⟨by linarith [hy.1], lt_of_le_of_ne hx.2 rightEndpoint⟩
          have leftStrip : -A < x - (2 * A - 1 / 16) ∧
              x - (2 * A - 1 / 16) ≤ -A + 1 / 16 :=
            ⟨lt_of_le_of_ne hy.1 (Ne.symm leftEndpoint), by linarith [hx.2]⟩
          obtain ⟨_, rightNegative⟩ := normalized_source_right_strip_signs hA rightStrip
          obtain ⟨leftPositive, leftDerivativePositive⟩ :=
            normalized_source_left_strip_signs hA leftStrip
          exact ⟨(mul_neg_of_neg_of_pos rightNegative leftPositive).le,
            (neg_pos.mpr (mul_neg_of_neg_of_pos rightNegative leftDerivativePositive)).le⟩
    · rw [normalized_source_zero_outside positive hy,
        normalized_source_deriv_zero_outside positive hy]
      simp
  · rw [normalized_source_deriv_zero_outside positive hx]
    simp

theorem tail_first_product_continuous (A : ℝ) :
    Continuous (fun x : ℝ ↦ deriv (normalizedSource A) x *
      normalizedSource A (x - (2 * A - 1 / 16))) :=
  (normalized_source_contDiff_one A).continuous_deriv_one.mul
    ((SourceNormalization.normalized_source_continuous A).comp
      (continuous_id.sub continuous_const))

theorem tail_curvature_product_continuous (A : ℝ) :
    Continuous (fun x : ℝ ↦ -(deriv (normalizedSource A) x *
      deriv (normalizedSource A) (x - (2 * A - 1 / 16)))) :=
  ((normalized_source_contDiff_one A).continuous_deriv_one.mul
    ((normalized_source_contDiff_one A).continuous_deriv_one.comp
      (continuous_id.sub continuous_const))).neg

theorem tail_first_product_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x : ℝ ↦ deriv (normalizedSource A) x *
      normalizedSource A (x - (2 * A - 1 / 16))) := by
  apply (tail_first_product_continuous A).integrable_of_hasCompactSupport
  apply HasCompactSupport.intro (show IsCompact (Icc (-A) A) from isCompact_Icc)
  intro x hx
  rw [normalized_source_deriv_zero_outside hA hx]
  simp

theorem tail_curvature_product_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x : ℝ ↦ -(deriv (normalizedSource A) x *
      deriv (normalizedSource A) (x - (2 * A - 1 / 16)))) := by
  apply (tail_curvature_product_continuous A).integrable_of_hasCompactSupport
  apply HasCompactSupport.intro (show IsCompact (Icc (-A) A) from isCompact_Icc)
  intro x hx
  rw [normalized_source_deriv_zero_outside hA hx]
  simp

theorem tail_first_deriv_eq_integral {A : ℝ} (hA : 0 < A) :
    deriv (correlation A) (2 * A - 1 / 16) =
      ∫ x : ℝ, deriv (normalizedSource A) x *
        normalizedSource A (x - (2 * A - 1 / 16)) := by
  rw [correlation_deriv_eq_convolution hA, convolution_mul]
  apply integral_congr_ae
  filter_upwards [] with x
  unfold reflectedSource
  rw [show -(2 * A - 1 / 16 - x) = x - (2 * A - 1 / 16) by ring]

theorem tail_first_deriv_nonpos {A : ℝ} (hA : 1 ≤ A) :
    deriv (correlation A) (2 * A - 1 / 16) ≤ 0 := by
  rw [tail_first_deriv_eq_integral (by linarith : 0 < A)]
  exact integral_nonpos fun x ↦ (tail_product_signs hA x).1

theorem tail_second_deriv_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < deriv (deriv (correlation A)) (2 * A - 1 / 16) := by
  have positive : 0 < A := by linarith
  rw [correlation_second_deriv_eq_integral positive, ← integral_neg]
  apply integral_pos_of_integrable_nonneg_nonzero
    (tail_curvature_product_continuous A) (tail_curvature_product_integrable positive)
    (fun x ↦ (tail_product_signs hA x).2) (x := A - 1 / 32)
  have rightStrip : A - 1 / 16 ≤ A - 1 / 32 ∧ A - 1 / 32 < A := by
    constructor <;> linarith
  have leftStrip : -A < A - 1 / 32 - (2 * A - 1 / 16) ∧
      A - 1 / 32 - (2 * A - 1 / 16) ≤ -A + 1 / 16 := by
    constructor <;> linarith
  obtain ⟨_, rightNegative⟩ := normalized_source_right_strip_signs hA rightStrip
  obtain ⟨_, leftPositive⟩ := normalized_source_left_strip_signs hA leftStrip
  exact (neg_pos.mpr (mul_neg_of_neg_of_pos rightNegative leftPositive)).ne'

theorem tail_atom_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < deriv (deriv (correlation A)) (2 * A - 1 / 16) -
      (1 / 2 : ℝ) * deriv (correlation A) (2 * A - 1 / 16) := by
  have first := tail_first_deriv_nonpos hA
  have second := tail_second_deriv_pos hA
  linarith

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourcePositiveSector
```
