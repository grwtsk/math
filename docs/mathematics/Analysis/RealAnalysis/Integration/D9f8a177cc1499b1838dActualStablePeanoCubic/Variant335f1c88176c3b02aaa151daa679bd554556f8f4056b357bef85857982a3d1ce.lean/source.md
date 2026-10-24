# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.D9f8a177cc1499b1838dActualStablePeanoCubic.Variant335f1c88176c3b02aaa151daa679bd554556f8f4056b357bef85857982a3d1ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42c6adbe548ff31d99a8c0096dfca09f63bd43cc` · SHA-256 `335f1c88176c3b02aaa151daa679bd554556f8f4056b357bef85857982a3d1ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePeanoSignedShortJet
import SourceCubicCorrelationTaylor

/-!
Actual lower-side Peano convolution and its full cubic source expansion.
The literal compact primitive has both touching traces retained. Its stable
kernel uses the unchanged correlation at every real shift and displacement.
No signed arithmetic upper witness is assumed or constructed.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace RH16IndependentChallengeNext
open MeasureTheory Set Filter
open scoped Interval Topology
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePrimitivePrimeInteraction SourcePositivePeanoPrimitive
open SourcePeanoUpperContinuousRow SourcePeanoSignedShortJet
open SourceCubicCorrelationTaylor SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

private theorem primitive_first_zero_lower {A t : ℝ} (hA : 0 < A)
    (ht : t ≤ -(2 * A)) : deriv (primitiveCorrelationZero A) t = 0 := by
  have hz : ∀ y ∈ Iic t, primitiveCorrelationZero A y = 0 := by
    intro y hy
    have hy' : y ≤ t := hy
    exact actualPrimitiveCorrelation_zero_of_two_mul_le_abs hA
      ((by linarith : 2 * A ≤ -y).trans (neg_le_abs y))
  have hd : HasDerivWithinAt (primitiveCorrelationZero A) 0 (Iic t) t :=
    (hasDerivWithinAt_const t (Iic t) (0 : ℝ)).congr
      (fun y hy => hz y hy) (hz t self_mem_Iic)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Iic t)

private theorem primitive_second_zero_lower {A t : ℝ} (hA : 0 < A)
    (ht : t ≤ -(2 * A)) : deriv (deriv (primitiveCorrelationZero A)) t = 0 := by
  have hz : ∀ y ∈ Iic t, deriv (primitiveCorrelationZero A) y = 0 := by
    intro y hy
    exact primitive_first_zero_lower hA (hy.trans ht)
  have hd : HasDerivWithinAt (deriv (primitiveCorrelationZero A)) 0 (Iic t) t :=
    (hasDerivWithinAt_const t (Iic t) (0 : ℝ)).congr
      (fun y hy => hz y hy) (hz t self_mem_Iic)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Iic t)

/-- Inclusive lower source support, with ordinary traces genuinely justified. -/
theorem actualPeano_zero_of_support_lower_le {A t : ℝ} (hA : 0 < A)
    (ht : t ≤ -(2 * A)) : sourcePeanoPrimitive A t = 0 := by
  unfold sourcePeanoPrimitive
  rw [actualPrimitiveCorrelation_zero_of_two_mul_le_abs hA
      ((by linarith : 2 * A ≤ -t).trans (neg_le_abs t)),
    primitive_first_zero_lower hA ht, primitive_second_zero_lower hA ht]
  ring

/-- The first derivative also vanishes at the true lower touching seam. -/
theorem actualPeano_deriv_zero_of_support_lower_le {A t : ℝ} (hA : 0 < A)
    (ht : t ≤ -(2 * A)) : deriv (sourcePeanoPrimitive A) t = 0 := by
  have hz : ∀ y ∈ Iic t, sourcePeanoPrimitive A y = 0 := by
    intro y hy
    exact actualPeano_zero_of_support_lower_le hA (hy.trans ht)
  have hd : HasDerivWithinAt (sourcePeanoPrimitive A) 0 (Iic t) t :=
    (hasDerivWithinAt_const t (Iic t) (0 : ℝ)).congr
      (fun y hy => hz y hy) (hz t self_mem_Iic)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Iic t)

/-- Both primitive and first derivative touching traces, with neither seam removed. -/
theorem actualPeano_both_touching_traces {A : ℝ} (hA : 0 < A) :
    sourcePeanoPrimitive A (-(2 * A)) = 0 ∧
    deriv (sourcePeanoPrimitive A) (-(2 * A)) = 0 ∧
    sourcePeanoPrimitive A (2 * A) = 0 ∧
    deriv (sourcePeanoPrimitive A) (2 * A) = 0 :=
  ⟨actualPeano_zero_of_support_lower_le hA le_rfl,
    actualPeano_deriv_zero_of_support_lower_le hA le_rfl,
    actualPeano_zero_of_support_upper_le hA le_rfl,
    actualPeano_deriv_zero_of_support_upper_le hA le_rfl⟩

/-- Independently specified stable lower-side source density. -/
def actualStablePeanoIntegrand (A t s : ℝ) : ℝ :=
  s * Real.exp (-s / 2) * sourceCorrelation explicitSecondDerivative A (t - s)

/-- Actual stable density is genuinely L1 before any improper FTC calculation. -/
theorem actualStablePeanoIntegrand_integrable (A t : ℝ) (hA : 0 < A) :
    Integrable (actualStablePeanoIntegrand A t) := by
  have hc := (sourceCorrelation_contDiff A hA).continuous
  have hcont : Continuous (actualStablePeanoIntegrand A t) := by
    unfold actualStablePeanoIntegrand
    fun_prop
  have hs : HasCompactSupport
      (fun s => sourceCorrelation explicitSecondDerivative A (t - s)) := by
    refine exists_compact_iff_hasCompactSupport.mp
      ⟨Icc (t - 2 * A) (t + 2 * A), isCompact_Icc, ?_⟩
    intro s hs
    apply sourceCorrelation_eq_zero_of_two_mul_le_abs A (t - s) hA
    by_contra h
    have hh := abs_lt.mp (lt_of_not_ge h)
    exact hs ⟨by linarith [hh.2], by linarith [hh.1]⟩
  exact hcont.integrable_of_hasCompactSupport hs.mul_left

/-- Stable lower-side convolution equals the unchanged actual local Peano profile. -/
theorem actualLocalPeanoProfile_eq_stable_integral (A t : ℝ) (hA : 0 < A) :
    actualLocalPeanoProfile A t = ∫ s in Ioi (0 : ℝ), actualStablePeanoIntegrand A t s := by
  let G : ℝ → ℝ := fun s => -Real.exp (-t / 2) *
    (s * deriv (sourcePeanoPrimitive A) (t - s) + sourcePeanoPrimitive A (t - s))
  have hc := sourcePeanoPrimitive_contDiff_two hA
  have hc1 : ContDiff ℝ 1 (deriv (sourcePeanoPrimitive A)) := hc.deriv'
  have hp (x : ℝ) := (hc.differentiable (by norm_num) x).hasDerivAt
  have hpp (x : ℝ) := (hc1.differentiable (by norm_num) x).hasDerivAt
  have hd (s : ℝ) : HasDerivAt G (actualStablePeanoIntegrand A t s) s := by
    have hn := (hasDerivAt_id s).const_sub t
    have hh := (((hasDerivAt_id s).mul ((hpp (t - s)).comp s hn)).add
      ((hp (t - s)).comp s hn)).const_mul (-Real.exp (-t / 2))
    apply hh.congr_deriv
    rw [sourcePeanoPrimitive_second_deriv hA]
    unfold actualStablePeanoIntegrand
    have he : Real.exp (-t / 2) * Real.exp ((t - s) / 2) = Real.exp (-s / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    simp only [id_eq, Function.comp_apply]
    calc
      _ = s * (Real.exp (-t / 2) * Real.exp ((t - s) / 2)) *
          sourceCorrelation explicitSecondDerivative A (t - s) := by ring
      _ = _ := by rw [he]
  have hz : G =ᶠ[atTop] fun _ => 0 := by
    filter_upwards [eventually_ge_atTop (t + 2 * A)] with s hs
    unfold G
    rw [actualPeano_zero_of_support_lower_le hA (by linarith),
      actualPeano_deriv_zero_of_support_lower_le hA (by linarith)]
    ring
  have hl : Tendsto G atTop (𝓝 0) := Tendsto.congr' hz.symm tendsto_const_nhds
  have hf := integral_Ioi_of_hasDerivAt_of_tendsto'
    (a := (0 : ℝ))
    (fun s _ => hd s) (actualStablePeanoIntegrand_integrable A t hA).integrableOn hl
  rw [hf]
  unfold G
  simp only [zero_mul, zero_add, sub_zero, zero_sub, neg_mul, neg_neg]
  rw [actualLocalPeanoProfile_eq_conjugated, ← mul_assoc, ← Real.exp_add]
  rw [show -t / 2 + t / 2 = 0 by ring, Real.exp_zero, one_mul]

/-- Independently specified full cubic inverse-filter source jet. -/
def actualStablePeanoCubicJet (A t : ℝ) : ℝ :=
  4 * sourceCorrelation explicitSecondDerivative A t -
    16 * deriv (sourceCorrelation explicitSecondDerivative A) t +
    48 * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
    128 * deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t

/-- The actual source remainder keeps the full local Peano profile and all four jets. -/
def actualStablePeanoCubicRemainder (A t : ℝ) : ℝ :=
  actualLocalPeanoProfile A t - actualStablePeanoCubicJet A t

private def stableCubicModelDensity (A t s : ℝ) : ℝ :=
  s * Real.exp (-s / 2) * cubicCorrelationJet A t (-s)

private def stableCubicRemainderDensity (A t s : ℝ) : ℝ :=
  s * Real.exp (-s / 2) * cubicCorrelationRemainder A t (-s)

private theorem stableCubicModelDensity_eq (A t s : ℝ) :
    stableCubicModelDensity A t s =
      sourceCorrelation explicitSecondDerivative A t * (s ^ 1 * Real.exp (-s / 2)) -
      deriv (sourceCorrelation explicitSecondDerivative A) t * (s ^ 2 * Real.exp (-s / 2)) +
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2 *
        (s ^ 3 * Real.exp (-s / 2)) -
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t / 6 *
        (s ^ 4 * Real.exp (-s / 2)) := by
  unfold stableCubicModelDensity cubicCorrelationJet
  ring

private theorem stableCubicModelDensity_integrable (A t : ℝ) :
    IntegrableOn (stableCubicModelDensity A t) (Ioi (0 : ℝ)) := by
  have he := funext (stableCubicModelDensity_eq A t)
  rw [he]
  exact ((((exponential_half_integrable 1).const_mul _).sub
    ((exponential_half_integrable 2).const_mul _)).add
    ((exponential_half_integrable 3).const_mul _)).sub
    ((exponential_half_integrable 4).const_mul _)

private theorem stableCubicModelDensity_integral (A t : ℝ) :
    (∫ s in Ioi (0 : ℝ), stableCubicModelDensity A t s) = actualStablePeanoCubicJet A t := by
  have h0 := (exponential_half_integrable 1).const_mul
    (sourceCorrelation explicitSecondDerivative A t)
  have h1 := (exponential_half_integrable 2).const_mul
    (deriv (sourceCorrelation explicitSecondDerivative A) t)
  have h2 := (exponential_half_integrable 3).const_mul
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2)
  have h3 := (exponential_half_integrable 4).const_mul
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t / 6)
  simp_rw [stableCubicModelDensity_eq]
  have hs3 := integral_sub ((h0.sub h1).add h2) h3
  have hs2 := integral_add (h0.sub h1) h2
  have hs1 := integral_sub h0 h1
  simp only [Pi.sub_apply, Pi.add_apply] at hs3 hs2 hs1
  rw [hs3, hs2, hs1]
  simp_rw [integral_const_mul, exponential_half_integral]
  unfold actualStablePeanoCubicJet
  norm_num
  ring

private theorem stableCubicRemainderDensity_abs_le (A t s : ℝ) (hA : 91 ≤ A)
    (hs : 0 < s) :
    |stableCubicRemainderDensity A t s| ≤
      (67 / A ^ 4 / 24) * (s ^ 5 * Real.exp (-s / 2)) := by
  have hw : 0 ≤ s * Real.exp (-s / 2) := by positivity
  have hm := mul_le_mul_of_nonneg_left (cubicCorrelationRemainder_abs_le A t (-s) hA) hw
  unfold stableCubicRemainderDensity
  rw [abs_mul, abs_of_nonneg hw]
  apply hm.trans
  apply le_of_eq
  ring

/-- The actual stable cubic remainder is genuinely integrable, independently of its bound. -/
theorem actualStablePeanoCubicRemainder_integrable (A t : ℝ) (hA : 0 < A) :
    IntegrableOn (fun s => s * Real.exp (-s / 2) *
      cubicCorrelationRemainder A t (-s)) (Ioi (0 : ℝ)) := by
  apply ((actualStablePeanoIntegrand_integrable A t hA).integrableOn.sub
    (stableCubicModelDensity_integrable A t)).congr
  filter_upwards [] with s
  unfold actualStablePeanoIntegrand stableCubicModelDensity cubicCorrelationRemainder
  simp only [Pi.sub_apply]
  rw [show t + -s = t - s by ring]
  ring

/-- Exact actual remainder integral, preserving every negative displacement and all source signs. -/
theorem actualStablePeanoCubicRemainder_eq_integral (A t : ℝ) (hA : 0 < A) :
    actualStablePeanoCubicRemainder A t =
      ∫ s in Ioi (0 : ℝ), stableCubicRemainderDensity A t s := by
  unfold actualStablePeanoCubicRemainder
  rw [actualLocalPeanoProfile_eq_stable_integral A t hA,
    ← stableCubicModelDensity_integral A t,
    ← integral_sub (actualStablePeanoIntegrand_integrable A t hA).integrableOn
      (stableCubicModelDensity_integrable A t)]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro s _
  unfold actualStablePeanoIntegrand stableCubicModelDensity stableCubicRemainderDensity
    cubicCorrelationRemainder
  rw [show t + -s = t - s by ring]
  ring

/-- Unconditional actual-source C4 inverse-filter remainder bound, for every real shift. -/
theorem actualStablePeanoCubicRemainder_abs_le (A t : ℝ) (hA : 91 ≤ A) :
    |actualStablePeanoCubicRemainder A t| ≤ 320 * 67 / A ^ 4 := by
  rw [actualStablePeanoCubicRemainder_eq_integral A t (by linarith)]
  have hb := (exponential_half_integrable 5).const_mul (67 / A ^ 4 / 24)
  have hn := norm_integral_le_of_norm_le
    (f := stableCubicRemainderDensity A t) hb (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with s hs
      rw [Real.norm_eq_abs]
      exact stableCubicRemainderDensity_abs_le A t s hA hs)
  rw [Real.norm_eq_abs, integral_const_mul, exponential_half_integral] at hn
  norm_num at hn
  convert hn using 1
  ring

end
end RH16IndependentChallengeNext
```
