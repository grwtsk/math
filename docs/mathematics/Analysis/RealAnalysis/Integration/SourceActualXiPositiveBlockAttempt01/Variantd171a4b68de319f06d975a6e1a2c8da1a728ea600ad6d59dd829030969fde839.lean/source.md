# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualXiPositiveBlockAttempt01.Variantd171a4b68de319f06d975a6e1a2c8da1a728ea600ad6d59dd829030969fde839

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd928f46ff726353b133f039e499555666e9aea9` · SHA-256 `d171a4b68de319f06d975a6e1a2c8da1a728ea600ad6d59dd829030969fde839`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPsiInverseSquare
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm
import FormalResearch.RiemannHypothesis.SourcePositiveSampling

/-!
A positive finite block in the exact transformed actual Chebyshev pairing.
The prime-power four atom and the actual closed value at seven are retained;
the pointwise estimate excludes seven and the integral uses its null endpoint.
Research direction, theorem selection and evaluation: grwtsk contributors.
Formal construction and focused scratch checking: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section
namespace RH16ActualXiPositiveBlock

open MeasureTheory Set
open scoped Interval
open FormalResearch.RiemannHypothesis
open SourcePairing SourceMangoldtNorm SourceCorrelationEnergy SourcePositiveSampling
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity RH16ActualPsiNegativeBlock

/-- The actual transformed density, with its full signed arithmetic source. -/
def actualTransformedXiBlockDensity (A y : ℝ) : ℝ :=
  shiftedActualChebyshev y *
    (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
        y ^ (3 / 2 : ℝ)

/-- The explicitly prescribed positive margin is independent of the scale. -/
def blockMargin : ℝ := (Real.sqrt (2 / 13) - 1 / Real.sqrt 7) / 12

private theorem log_seven_lt_two : Real.log (7 : ℝ) < 2 := by
  have he : (8 / 3 : ℝ) ≤ Real.exp 1 := by
    linarith [Real.exp_one_gt_d9]
  have hs : (8 / 3 : ℝ) ^ 2 ≤ (Real.exp 1) ^ 2 := by gcongr
  have he2 : Real.exp (2 : ℝ) = (Real.exp 1) ^ 2 := by
    rw [show (2 : ℝ) = 1 + 1 by norm_num, Real.exp_add]
    ring
  apply (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 7)).mpr
  rw [he2]
  nlinarith

/-- Actual normalized correlation bounds give the required negative transformed kernel. -/
theorem actual_transformed_kernel_negative {A y : ℝ} (hA : 40 ≤ A)
    (hy : (13 / 2 : ℝ) ≤ y) (hy7 : y ≤ 7) :
    deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
      sourceCorrelation explicitSecondDerivative A (Real.log y) / 2 ≤ -(1 / 4 : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hypos : 0 < y := by linarith
  have hl0 : 0 ≤ Real.log y := Real.log_nonneg (by linarith)
  have hl2 : Real.log y ≤ 2 :=
    (Real.log_le_log hypos hy7).trans log_seven_lt_two.le
  have hc := sourceCorrelation_sub_one_abs_le hA1 (Real.log y)
  rw [abs_of_nonneg hl0] at hc
  have hbound : 5 * Real.log y / A ≤ (1 / 4 : ℝ) :=
    (div_le_iff₀ hp).mpr (by linarith)
  have hcl : (3 / 4 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (Real.log y) := by
    linarith [(abs_le.mp hc).1]
  have hd := sourceCorrelation_deriv_abs_le_five_div hA1 (Real.log y)
  have hdb : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  linarith [(abs_le.mp hd).2]

/-- Both negative factors give a uniform positive density strictly before prime seven. -/
theorem actual_transformed_density_lower {A y : ℝ} (hA : 40 ≤ A)
    (hy : (13 / 2 : ℝ) ≤ y) (hy7 : y < 7) :
    (1 / 24 : ℝ) / y ^ (3 / 2 : ℝ) ≤ actualTransformedXiBlockDensity A y := by
  have hn := shiftedActualChebyshev_negative_on_block y hy hy7
  have hk := actual_transformed_kernel_negative hA hy hy7.le
  have hp : 0 < y := by linarith
  have hprod : (1 / 24 : ℝ) ≤ shiftedActualChebyshev y *
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) := by
    have hm := mul_le_mul_of_nonneg_left (show (1 / 4 : ℝ) ≤
      -(deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) by linarith)
      (show 0 ≤ -shiftedActualChebyshev y by linarith)
    nlinarith
  exact div_le_div_of_nonneg_right hprod (Real.rpow_pos_of_pos hp _).le

theorem actual_transformed_density_intervalIntegrable (A : ℝ) (hA : 40 ≤ A) :
    IntervalIntegrable (actualTransformedXiBlockDensity A) volume (13 / 2) 7 := by
  have hp : 0 < A := by linarith
  have hc := (sourceCorrelation_contDiff A hp).continuous
  have hd := (sourceCorrelation_contDiff A hp).continuous_deriv_one
  have hw : ContinuousOn (fun y : ℝ =>
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
          y ^ (3 / 2 : ℝ)) (Icc 2 7) := by
    intro y hy
    have hypos : 0 < y := by linarith [hy.1]
    exact ((hd.continuousAt.comp (Real.continuousAt_log hypos.ne')).sub
      ((hc.continuousAt.comp (Real.continuousAt_log hypos.ne')).div_const 2) |>.div
        (continuousAt_id.rpow_const (Or.inl hypos.ne'))
        (Real.rpow_pos_of_pos hypos _).ne').continuousWithinAt
  have hi := SourceActualPsiInverseSquare.shiftedActualChebyshev_mul_intervalIntegrable
    7 (by norm_num) _ hw
  have hs : Set.uIcc (13 / 2 : ℝ) 7 ⊆ Set.uIcc (2 : ℝ) 7 := by
    rw [uIcc_of_le (by norm_num : (13 / 2 : ℝ) ≤ 7),
      uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)]
    intro y hy
    exact ⟨by linarith [hy.1], hy.2⟩
  simpa only [actualTransformedXiBlockDensity, mul_div_assoc] using hi.mono hs

private theorem reciprocal_sqrt_six_half :
    1 / Real.sqrt (13 / 2 : ℝ) = Real.sqrt (2 / 13 : ℝ) := by
  rw [one_div, ← Real.sqrt_inv]
  congr 1
  norm_num

theorem blockMargin_pos : 0 < blockMargin := by
  have hs : Real.sqrt (13 / 2 : ℝ) < Real.sqrt 7 :=
    Real.sqrt_lt_sqrt (by norm_num) (by norm_num)
  have hsp : 0 < Real.sqrt (13 / 2 : ℝ) := Real.sqrt_pos.2 (by norm_num)
  have hi := one_div_lt_one_div_of_lt hsp hs
  rw [reciprocal_sqrt_six_half] at hi
  unfold blockMargin
  positivity

private theorem lower_density_integral :
    (∫ y in (13 / 2 : ℝ)..7, (1 / 24 : ℝ) / y ^ (3 / 2 : ℝ)) = blockMargin := by
  have hz : (0 : ℝ) ∉ Set.uIcc (13 / 2 : ℝ) 7 := by
    rw [uIcc_of_le (by norm_num : (13 / 2 : ℝ) ≤ 7)]
    norm_num
  have hpow := integral_rpow (a := (13 / 2 : ℝ)) (b := 7) (r := -(3 / 2 : ℝ))
    (Or.inr ⟨by norm_num, hz⟩)
  have he : (fun y : ℝ => (1 / 24 : ℝ) / y ^ (3 / 2 : ℝ)) =
      fun y => (1 / 24 : ℝ) * y ^ (-(3 / 2 : ℝ)) := by
    funext y
    by_cases hy : 0 ≤ y
    · rw [Real.rpow_neg hy, div_eq_mul_inv]
    · have hyneg : y < 0 := lt_of_not_ge hy
      simp only [Real.rpow_def_of_neg hyneg]
      ring
  rw [he, intervalIntegral.integral_const_mul, hpow]
  norm_num only [show -(3 / 2 : ℝ) + 1 = -(1 / 2 : ℝ) by norm_num]
  rw [Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 7),
    Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 13 / 2),
    ← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow]
  unfold blockMargin
  rw [← reciprocal_sqrt_six_half]
  ring

/-- The actual closed-atom dy block has a scale-independent strictly positive margin. -/
theorem actual_transformed_block_integral_lower (A : ℝ) (hA : 40 ≤ A) :
    blockMargin ≤ ∫ y in (13 / 2 : ℝ)..7, actualTransformedXiBlockDensity A y := by
  have hc : ContinuousOn (fun y : ℝ => (1 / 24 : ℝ) / y ^ (3 / 2 : ℝ))
      (Icc (13 / 2) 7) := by
    intro y hy
    have hyp : 0 < y := by linarith [hy.1]
    exact (continuousAt_const.div
      (continuousAt_id.rpow_const (Or.inl hyp.ne'))
      (Real.rpow_pos_of_pos hyp _).ne').continuousWithinAt
  rw [← lower_density_integral]
  apply intervalIntegral.integral_mono_on_of_le_Ioo (by norm_num)
    (hc.intervalIntegrable_of_Icc (by norm_num))
    (actual_transformed_density_intervalIntegrable A hA)
  intro y hy
  exact actual_transformed_density_lower hA hy.1.le hy.2

end RH16ActualXiPositiveBlock
```
