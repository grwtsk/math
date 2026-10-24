# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualReflectionBalance.Variant7afe9ccd6f96e435ca6878953abb03c4253e55ea1ac42e7056ba7d6e8672167c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `663e43cbd359c56ff7a539004441b90e78090b86` · SHA-256 `7afe9ccd6f96e435ca6878953abb03c4253e55ea1ac42e7056ba7d6e8672167c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
Actual finite-source reflection balance, retaining the fixed +2 and prime-two term.
The reflected mixed work is identified and cancels only in the joint sector sum.
Research direction and conceptual origin: grwtsk contributors.
Source calculation and native formal construction: OpenAI Codex assistance.
-/

set_option autoImplicit false
noncomputable section
namespace RH16ActualReflectionBalance

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.MathematicalTooling.Reflection
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent

/-- Every prime-power step remains in the actual finite inventory. -/
theorem chebyshev_mul_continuous_intervalIntegrable (b : ℝ) (hb : lowerEndpoint ≤ b)
    (f : ℝ → ℝ) (hf : Continuous f) :
    IntervalIntegrable (fun t => chebyshevPrimePower (Real.exp t) * f t)
      volume lowerEndpoint b := by
  have hi : IntervalIntegrable (∑ n ∈ primePowerInventory b,
      fun t : ℝ => ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ t then f t else 0)) volume lowerEndpoint b :=
    IntervalIntegrable.sum (primePowerInventory b) (fun n _ =>
      (intervalIntegrable_closed_step lowerEndpoint b (Real.log n) f
        (hf.intervalIntegrable _ _)).const_mul (ArithmeticFunction.vonMangoldt n))
  have heq : (∑ n ∈ primePowerInventory b,
      fun t : ℝ => ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ t then f t else 0)) =
      (fun t => ∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n * (if Real.log n ≤ t then f t else 0)) := by
    funext t
    simp only [Finset.sum_apply]
  rw [heq] at hi
  apply hi.congr
  intro t ht
  exact (chebyshev_mul_eq_steps b t (f t) ((uIoc_of_le hb ▸ ht).2)).symm

theorem errorProfile_intervalIntegrable (b : ℝ) (hb : lowerEndpoint ≤ b) :
    IntervalIntegrable errorProfile volume lowerEndpoint b := by
  have h := chebyshev_mul_continuous_intervalIntegrable b hb (fun _ => 1)
    continuous_const
  simp only [mul_one] at h
  exact h.sub (Real.continuous_exp.intervalIntegrable _ _)

theorem reflected_errorProfile_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => errorProfile (sourceReflection A t))
      volume lowerEndpoint (2 * A) := by
  have h := (errorProfile_intervalIntegrable (2 * A) (source_interval_order A hA)).symm
    |>.comp_sub_left (lowerEndpoint + 2 * A)
  simpa only [sourceReflection, intervalReflection, add_sub_cancel_right,
    add_sub_cancel_left] using h

theorem source_weight_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (sourceWeight explicitSecondDerivative A) := by
  have hp : 0 < A := by linarith
  exact ((continuous_id.neg.div_const 2).rexp).mul
    ((sourceCorrelation_deriv_contDiff hp).continuous.sub
      ((sourceCorrelation_contDiff A hp).continuous.div_const 2))

def centeredError (t : ℝ) : ℝ := errorProfile t + 2

def evenWork (A : ℝ) : ℝ :=
  ∫ t in lowerEndpoint..2 * A,
    evenPart lowerEndpoint (2 * A) centeredError t *
      evenPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t

def oddWork (A : ℝ) : ℝ :=
  ∫ t in lowerEndpoint..2 * A,
    oddPart lowerEndpoint (2 * A) centeredError t *
      oddPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t

/-- Artificial mixed reflected work introduced by estimating the two sectors separately. -/
def reflectedMixedWork (A : ℝ) : ℝ :=
  ∫ t in lowerEndpoint..2 * A,
    centeredError t * sourceWeight explicitSecondDerivative A (sourceReflection A t)

theorem centeredError_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable centeredError volume lowerEndpoint (2 * A) :=
  (errorProfile_intervalIntegrable _ (source_interval_order A hA)).add
    intervalIntegrable_const

theorem centered_reflectedError_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => centeredError (sourceReflection A t))
      volume lowerEndpoint (2 * A) :=
  (reflected_errorProfile_intervalIntegrable A hA).add intervalIntegrable_const

/-- All four actual source sector products are integrable, including both cross terms. -/
theorem actual_sector_integrability (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => evenPart lowerEndpoint (2 * A) centeredError t *
      evenPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t)
      volume lowerEndpoint (2 * A) ∧
    IntervalIntegrable (fun t => evenPart lowerEndpoint (2 * A) centeredError t *
      oddPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t)
      volume lowerEndpoint (2 * A) ∧
    IntervalIntegrable (fun t => oddPart lowerEndpoint (2 * A) centeredError t *
      evenPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t)
      volume lowerEndpoint (2 * A) ∧
    IntervalIntegrable (fun t => oddPart lowerEndpoint (2 * A) centeredError t *
      oddPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A) t)
      volume lowerEndpoint (2 * A) := by
  have hi := centeredError_intervalIntegrable A hA
  have hr := centered_reflectedError_intervalIntegrable A hA
  have he : IntervalIntegrable (evenPart lowerEndpoint (2 * A) centeredError)
      volume lowerEndpoint (2 * A) := (hi.add hr).div_const 2
  have ho : IntervalIntegrable (oddPart lowerEndpoint (2 * A) centeredError)
      volume lowerEndpoint (2 * A) := (hi.sub hr).div_const 2
  have hc := source_weight_continuous A hA
  have hcr : Continuous (fun t =>
      sourceWeight explicitSecondDerivative A (sourceReflection A t)) :=
    hc.comp (continuous_const.sub continuous_id)
  have hce : Continuous
      (evenPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A)) :=
    (hc.add hcr).div_const 2
  have hco : Continuous
      (oddPart lowerEndpoint (2 * A) (sourceWeight explicitSecondDerivative A)) :=
    (hc.sub hcr).div_const 2
  exact ⟨he.mul_continuousOn hce.continuousOn, he.mul_continuousOn hco.continuousOn,
    ho.mul_continuousOn hce.continuousOn, ho.mul_continuousOn hco.continuousOn⟩

/-- The actual prime-two atom is the complete lower potential trace. -/
theorem source_weight_integral_eq_prime_two (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in lowerEndpoint..2 * A, sourceWeight explicitSecondDerivative A t) =
      primeTwoBoundary explicitSecondDerivative A / 4 := by
  have hp : 0 < A := by linarith
  let g := fun t => Real.exp (-t / 2) * sourceCorrelation explicitSecondDerivative A t
  have hd (t : ℝ) : HasDerivAt g (sourceWeight explicitSecondDerivative A t) t := by
    have hc := ((sourceCorrelation_contDiff A hp).differentiable (by norm_num) t).hasDerivAt
    have he := (((hasDerivAt_id t).neg).div_const 2).exp
    convert! he.mul hc using 1
    simp only [sourceWeight, Pi.neg_apply, id_eq]
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((source_weight_continuous A hA).intervalIntegrable _ _)]
  simp only [g, sourceCorrelation_upper_endpoint A hp, mul_zero, zero_sub]
  have he : Real.exp (-lowerEndpoint / 2) = (Real.sqrt 2)⁻¹ := by
    rw [neg_div, Real.exp_neg, Real.exp_half, lowerEndpoint,
      Real.exp_log (by norm_num)]
  rw [he]
  have hs : (Real.sqrt (2 : ℝ)) ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hn : Real.sqrt (2 : ℝ) ≠ 0 := ne_of_gt (Real.sqrt_pos.2 (by norm_num))
  unfold primeTwoBoundary
  field_simp
  rw [hs]
  ring

/-- This is the original arithmetic pairing with the fixed endpoint correction. -/
theorem centered_pairing_eq_source (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in lowerEndpoint..2 * A,
      centeredError t * sourceWeight explicitSecondDerivative A t) =
      signedPairing explicitSecondDerivative A +
        primeTwoBoundary explicitSecondDerivative A / 2 := by
  have hi := (errorProfile_intervalIntegrable _ (source_interval_order A hA)).mul_continuousOn
    (source_weight_continuous A hA).continuousOn
  have hw : IntervalIntegrable (sourceWeight explicitSecondDerivative A)
      volume lowerEndpoint (2 * A) :=
    (source_weight_continuous A hA).intervalIntegrable lowerEndpoint (2 * A)
  calc
    _ = (∫ t in lowerEndpoint..2 * A,
        errorProfile t * sourceWeight explicitSecondDerivative A t +
          2 * sourceWeight explicitSecondDerivative A t) := by
      apply intervalIntegral.integral_congr
      intro t _
      unfold centeredError
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add hi (hw.const_mul 2),
        intervalIntegral.integral_const_mul, source_weight_integral_eq_prime_two A hA]
      unfold signedPairing
      ring

/-- The invariant sector includes the whole mixed reflected work with a plus sign. -/
theorem evenWork_eq_source_and_mixed (A : ℝ) (hA : 1 ≤ A) :
    evenWork A = (signedPairing explicitSecondDerivative A +
      primeTwoBoundary explicitSecondDerivative A / 2 + reflectedMixedWork A) / 2 := by
  have hi := centeredError_intervalIntegrable A hA
  have hc := source_weight_continuous A hA
  have hir := centered_reflectedError_intervalIntegrable A hA
  have hcr : Continuous (fun t =>
      sourceWeight explicitSecondDerivative A (sourceReflection A t)) :=
    hc.comp (continuous_const.sub continuous_id)
  have h00 := hi.mul_continuousOn hc.continuousOn
  have h01 := hi.mul_continuousOn hcr.continuousOn
  have h10 := hir.mul_continuousOn hc.continuousOn
  have h11 := hir.mul_continuousOn hcr.continuousOn
  unfold evenWork
  calc
    _ = (∫ t in lowerEndpoint..2 * A,
      ((centeredError t * sourceWeight explicitSecondDerivative A t +
        centeredError t * sourceWeight explicitSecondDerivative A (sourceReflection A t)) +
        centeredError (sourceReflection A t) * sourceWeight explicitSecondDerivative A t) +
        centeredError (sourceReflection A t) *
          sourceWeight explicitSecondDerivative A (sourceReflection A t)) / 4 := by
      rw [← intervalIntegral.integral_div]
      apply intervalIntegral.integral_congr
      intro t _
      dsimp [evenPart, sourceReflection]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add ((h00.add h01).add h10) h11,
        intervalIntegral.integral_add (h00.add h01) h10,
        intervalIntegral.integral_add h00 h01]
      have hs11 := integral_reflection lowerEndpoint (2 * A)
        (fun t => centeredError t * sourceWeight explicitSecondDerivative A t)
      change (∫ t in lowerEndpoint..2 * A,
        centeredError (sourceReflection A t) *
          sourceWeight explicitSecondDerivative A (sourceReflection A t)) = _ at hs11
      have hs10 := integral_reflection lowerEndpoint (2 * A)
        (fun t => centeredError t * sourceWeight explicitSecondDerivative A (sourceReflection A t))
      change (∫ t in lowerEndpoint..2 * A,
        centeredError (sourceReflection A t) *
          sourceWeight explicitSecondDerivative A (sourceReflection A (sourceReflection A t))) = _
        at hs10
      have h10eq : (fun t => centeredError (sourceReflection A t) *
          sourceWeight explicitSecondDerivative A (sourceReflection A (sourceReflection A t))) =
          (fun t => centeredError (sourceReflection A t) *
            sourceWeight explicitSecondDerivative A t) := by
        funext t
        rw [source_reflection_involutive A t]
      rw [h10eq] at hs10
      rw [hs11, hs10, centered_pairing_eq_source A hA]
      unfold reflectedMixedWork
      ring

/-- The antisymmetric sector carries precisely the same mixed work with a minus sign. -/
theorem oddWork_eq_source_and_mixed (A : ℝ) (hA : 1 ≤ A) :
    oddWork A = (signedPairing explicitSecondDerivative A +
      primeTwoBoundary explicitSecondDerivative A / 2 - reflectedMixedWork A) / 2 := by
  have hs := actual_sector_integrability A hA
  have h := integral_product_eq_even_add_odd lowerEndpoint (2 * A)
    centeredError (sourceWeight explicitSecondDerivative A) hs.1 hs.2.1 hs.2.2.1 hs.2.2.2
  rw [centered_pairing_eq_source A hA] at h
  change _ = evenWork A + oddWork A at h
  rw [evenWork_eq_source_and_mixed A hA] at h
  linarith

/-- Joint reflection retains exactly the physical signed source and prime-two correction. -/
theorem joint_sector_eq_source (A : ℝ) (hA : 1 ≤ A) :
    evenWork A + oddWork A = signedPairing explicitSecondDerivative A +
      primeTwoBoundary explicitSecondDerivative A / 2 := by
  rw [evenWork_eq_source_and_mixed A hA, oddWork_eq_source_and_mixed A hA]
  ring

end RH16ActualReflectionBalance
```
