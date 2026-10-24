# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PairingV1Prebytes.Variante12a7a0526276b28b00f4cac4ff6d3b11886f88bfdeb1ba042c10da52c46b712

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7d788b5486ab410cf2a2fa7849aecacc6f0b488` · SHA-256 `e12a7a0526276b28b00f4cac4ff6d3b11886f88bfdeb1ba042c10da52c46b712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import FormalResearch.RiemannHypothesis.SourceHankelReflection

/-!
# The literal source's scalar Green pairing

The independently defined continuous full-line Green kernel and convolution
retain the original normalized, zero-extended source. These scalar identities
do not construct a resolvent operator, identify a Jacobi or theta object,
or bound the signed arithmetic work.

AI attribution: developed with OpenAI Codex; Lean checks proof terms.
-/

namespace FormalResearch.RiemannHypothesis.SourceGreenKernel

open MeasureTheory Set Function
open SourcePairing SourceCausalEnergy SourceContinuousHalfEnergy SourceFirstPrimeAbel
open GevreyPolynomial SourceHankelReflection
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

noncomputable section

/-- The coefficient-one massive Green kernel on the continuous full line. -/
def greenKernel (t : ℝ) : ℝ := Real.exp (-|t| / 2)

/-- An independent whole-line pairing with the unchanged source correlation. -/
def sourceGreenPairing (A : ℝ) : ℝ :=
  ∫ t : ℝ, greenKernel t * sourceCorrelation explicitSecondDerivative A t

/-- The literal integral convolution, before its special source cancellation. -/
def sourceGreenConvolution (A x : ℝ) : ℝ :=
  ∫ y : ℝ, greenKernel (x - y) * normalizedTest explicitSecondDerivative A y

/-- Continuity includes the kernel's absolute-value seam. -/
theorem greenKernel_continuous : Continuous greenKernel :=
  Real.continuous_exp.comp (continuous_abs.neg.div_const 2)

/-- The continuous full-line kernel is even. -/
theorem greenKernel_even (t : ℝ) : greenKernel (-t) = greenKernel t := by
  simp [greenKernel]

/-- The independently defined pairing integrand is genuinely integrable. -/
theorem sourceGreenPairing_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun t : ℝ ↦ greenKernel t * sourceCorrelation explicitSecondDerivative A t) :=
  (greenKernel_continuous.mul (sourceCorrelation_contDiff A hA).continuous).integrable_of_hasCompactSupport ((sourceCorrelation_hasCompactSupport A hA).mul_left)

/-- Each actual-source convolution section is genuinely integrable. -/
theorem sourceGreenConvolution_integrable {A : ℝ} (hA : 0 < A) (x : ℝ) :
    Integrable (fun y : ℝ ↦ greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) :=
  ((greenKernel_continuous.comp (continuous_const.sub continuous_id)).mul
    (normalizedTest_contDiff A hA).continuous).integrable_of_hasCompactSupport
      ((normalizedTest_hasCompactSupport A hA).mul_left)

/-- Correlation support and evenness retain both halves and the zero seam. -/
theorem sourceGreenPairing_eq_twice_negativeSmoothMoment {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = 2 * negativeSmoothMoment A := by
  let F := fun t : ℝ ↦ greenKernel t * sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous F :=
    greenKernel_continuous.mul (sourceCorrelation_contDiff A hA).continuous
  have hs : Function.support F ⊆ Ioc (-(2*A)) (2*A) := by
    intro t ht
    have hn : |t| < 2*A := by
      by_contra hn
      apply ht
      dsimp only [F]
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA (le_of_not_gt hn), mul_zero]
    exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans hn.le⟩
  have hfull := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have he : (fun t : ℝ ↦ F (-t)) = F := by
    funext t
    dsimp only [F]
    rw [greenKernel_even, sourceCorrelation_even]
  have heven : (∫ t in -(2*A)..0, F t) = ∫ t in 0..2*A, F t := by
    have hn := intervalIntegral.integral_comp_neg F (a := -(2*A)) (b := 0)
    rw [he] at hn
    simpa using hn
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable (μ := volume) (-(2*A)) 0)
    (hc.intervalIntegrable (μ := volume) 0 (2*A))
  have hpos : (∫ t in 0..2*A, F t) = negativeSmoothMoment A := by
    unfold negativeSmoothMoment
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le (by linarith : (0 : ℝ) ≤ 2*A)] at ht
    dsimp only [F, greenKernel]
    rw [abs_of_nonneg ht.1]
  rw [heven, hfull] at hadd
  change (∫ t : ℝ, F t) = _
  rw [← hpos]
  linarith

/-- The full Green pairing is the positive causal energy of the literal source. -/
theorem sourceGreenPairing_eq_causal_energy {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = ∫ x : ℝ, causalSourceTail A x ^ 2 := by
  rw [sourceGreenPairing_eq_twice_negativeSmoothMoment hA,
    negativeSmoothMoment_eq_half_causal_energy hA]
  ring

/-- The original critical half uses only its recorded radius domain. -/
theorem criticalContinuousMoment_eq_neg_half_green {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = -(1/2) * sourceGreenPairing A := by
  rw [sourceGreenPairing_eq_causal_energy (by linarith : 0 < A)]
  exact criticalContinuousMoment_eq_neg_half_causal_energy hA

/-- Evenness belongs to the actual bump, including its global zero extension. -/
theorem normalizedPrimitiveBump_even {A : ℝ} (hA : 0 < A) (x : ℝ) :
    normalizedPrimitiveBump A (-x) = normalizedPrimitiveBump A x := by
  rw [normalizedPrimitiveBump, normalizedPrimitiveBump, scaledBump_eq_indicator A hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> rintro ⟨h1,h2⟩ <;> constructor <;> linarith
  simp only [indicator_apply, hm]
  split_ifs
  · simp only [bumpInterior, neg_div]
    ring
  · rfl

/-- Oddness belongs to the actual ordinary derivative, including both seams. -/
theorem normalizedPrimitiveBump_deriv_odd {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (normalizedPrimitiveBump A) (-x) = -deriv (normalizedPrimitiveBump A) x := by
  rw [normalizedPrimitiveBump_deriv hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> rintro ⟨h1,h2⟩ <;> constructor <;> linarith
  simp only [firstDerivative, indicator_apply, hm]
  split_ifs
  · simp only [firstInterior, neg_div]
    ring
  · simp

/-- The reflected pair of actual causal tails cancels to the negative bump. -/
theorem causalSourceTail_add_reflection {A : ℝ} (hA : 0 < A) (x : ℝ) :
    causalSourceTail A x + causalSourceTail A (-x) = -normalizedPrimitiveBump A x := by
  rw [causalSourceTail_eq hA, causalSourceTail_eq hA,
    normalizedPrimitiveBump_deriv_odd hA, normalizedPrimitiveBump_even hA]
  ring

/-- The upper Green half is the original coefficient-one causal tail. -/
theorem sourceGreenConvolution_upper_half (A x : ℝ) :
    (∫ y in Ioi x, greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) =
      causalSourceTail A x := by
  unfold causalSourceTail
  rw [integral_Ici_eq_integral_Ioi, ← integral_const_mul]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro y hy
  dsimp only [greenKernel]
  rw [abs_of_nonpos (by linarith [mem_Ioi.mp hy] : x-y ≤ 0)]
  rw [show -(-(x-y))/2 = x/2 + -y/2 by ring, Real.exp_add]
  ring

/-- Reflection of the lower half uses the actual q-evenness and no atom at its endpoint. -/
theorem sourceGreenConvolution_lower_half {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (∫ y in Iic x, greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) =
      causalSourceTail A (-x) := by
  have he : (fun y : ℝ ↦ greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) =
      fun y : ℝ ↦ greenKernel (-x-(-y)) * normalizedTest explicitSecondDerivative A (-y) := by
    funext y
    rw [normalized_source_even hA]
    congr 1
    rw [show -x-(-y) = -(x-y) by ring, greenKernel_even]
  rw [he]
  exact (integral_comp_neg_Iic x (fun y : ℝ ↦
    greenKernel (-x-y) * normalizedTest explicitSecondDerivative A y)).trans
      (sourceGreenConvolution_upper_half A (-x))

/-- Genuine integrability licenses the full-line split with only one copy of the endpoint. -/
theorem sourceGreenConvolution_eq_tails {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sourceGreenConvolution A x = causalSourceTail A x + causalSourceTail A (-x) := by
  have hi := sourceGreenConvolution_integrable hA x
  have hs := intervalIntegral.integral_Iic_add_Ioi (hi.integrableOn (s := Iic x))
    (hi.integrableOn (s := Ioi x))
  rw [sourceGreenConvolution_lower_half hA, sourceGreenConvolution_upper_half A] at hs
  exact hs.symm.trans (add_comm _ _)

/-- This special source convolution is exactly the negative globally compact bump. -/
theorem sourceGreenConvolution_eq_neg_bump {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sourceGreenConvolution A x = -normalizedPrimitiveBump A x := by
  rw [sourceGreenConvolution_eq_tails hA]
  exact causalSourceTail_add_reflection hA x

/-- The point formula entails continuity for this literal source, not for an arbitrary input. -/
theorem sourceGreenConvolution_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (sourceGreenConvolution A) := by
  have he : sourceGreenConvolution A = fun x ↦ -normalizedPrimitiveBump A x :=
    funext (sourceGreenConvolution_eq_neg_bump hA)
  rw [he]
  exact (normalizedPrimitiveBump_contDiff hA).continuous.neg

/-- The cancellation giving compact support is proved for this differential source. -/
theorem sourceGreenConvolution_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (sourceGreenConvolution A) := by
  have he : sourceGreenConvolution A = fun x ↦ -normalizedPrimitiveBump A x :=
    funext (sourceGreenConvolution_eq_neg_bump hA)
  rw [he]
  exact (normalizedPrimitiveBump_hasCompactSupport hA).neg

/-- The actual convolution vanishes outside the literal source interval. -/
theorem sourceGreenConvolution_zero_of_not_mem {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∉ Icc (-A) A) : sourceGreenConvolution A x = 0 := by
  rw [sourceGreenConvolution_eq_neg_bump hA, normalizedPrimitiveBump_zero_of_not_mem hA hx]
  simp

/-- Both source factors force this genuine two-variable kernel into a compact rectangle. -/
def sourceGreenDoubleKernel (A : ℝ) (p : ℝ × ℝ) : ℝ :=
  normalizedTest explicitSecondDerivative A p.1 * greenKernel (p.1-p.2) *
    normalizedTest explicitSecondDerivative A p.2

/-- Continuity is literal across both source and Green seams. -/
theorem sourceGreenDoubleKernel_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (sourceGreenDoubleKernel A) := by
  unfold sourceGreenDoubleKernel
  have hc := (normalizedTest_contDiff A hA).continuous
  exact ((hc.comp continuous_fst).mul
    (greenKernel_continuous.comp (continuous_fst.sub continuous_snd))).mul
      (hc.comp continuous_snd)

/-- Its support is the actual two-source rectangle, without an unbounded interchange. -/
theorem sourceGreenDoubleKernel_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (sourceGreenDoubleKernel A) := by
  refine exists_compact_iff_hasCompactSupport.mp
    ⟨(Icc (-A) A) ×ˢ (Icc (-A) A), isCompact_Icc.prod isCompact_Icc, ?_⟩
  rintro ⟨x,y⟩ hp
  dsimp only [sourceGreenDoubleKernel]
  by_cases hx : x ∈ Icc (-A) A
  · have hy : y ∉ Icc (-A) A := fun hy ↦ hp ⟨hx,hy⟩
    have hya : A ≤ |y| := by
      by_contra h
      exact hy (abs_le.mp (le_of_lt (lt_of_not_ge h)))
    rw [normalizedTest_zero_of_le_abs A y hA hya, mul_zero]
  · have hxa : A ≤ |x| := by
      by_contra h
      exact hx (abs_le.mp (le_of_lt (lt_of_not_ge h)))
    rw [normalizedTest_zero_of_le_abs A x hA hxa, zero_mul, zero_mul]

/-- Product-volume absolute integrability is proved for the actual compact kernel. -/
theorem sourceGreenDoubleKernel_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (sourceGreenDoubleKernel A) (volume.prod volume) :=
  (sourceGreenDoubleKernel_continuous hA).integrable_of_hasCompactSupport
    (sourceGreenDoubleKernel_hasCompactSupport hA)

/-- The literal signed source/convolution product is integrable before evaluation. -/
theorem source_mul_sourceGreenConvolution_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A x *
      sourceGreenConvolution A x) :=
  ((normalizedTest_contDiff A hA).continuous.mul
    (sourceGreenConvolution_continuous hA)).integrable_of_hasCompactSupport
      ((normalizedTest_hasCompactSupport A hA).mul_right)

/-- Reflection does not change the source/tail integral because the actual source is even. -/
theorem source_mul_reflected_tail_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A x * causalSourceTail A (-x)) =
      ∫ x : ℝ, normalizedTest explicitSecondDerivative A x * causalSourceTail A x := by
  have hn := integral_neg_eq_self
    (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A x * causalSourceTail A (-x)) volume
  simpa only [normalized_source_even hA, neg_neg] using hn.symm

/-- The exact source-convolution matrix coefficient has the causal square energy. -/
theorem source_mul_sourceGreenConvolution_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A x * sourceGreenConvolution A x) =
      ∫ x : ℝ, causalSourceTail A x ^ 2 := by
  have hi : Integrable (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A x *
      causalSourceTail A (-x)) :=
    ((normalizedTest_contDiff A hA).continuous.mul
      ((causalSourceTail_contDiff hA).continuous.comp continuous_neg)).integrable_of_hasCompactSupport
        ((normalizedTest_hasCompactSupport A hA).mul_right)
  simp_rw [sourceGreenConvolution_eq_tails hA, mul_add]
  rw [integral_add (source_mul_causalSourceTail_integrable hA) hi,
    source_mul_reflected_tail_integral hA, source_mul_causalSourceTail_integral hA]
  ring

/-- The independent correlation pairing equals the independently defined convolution pairing. -/
theorem sourceGreenPairing_eq_convolution_pairing {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = ∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
      sourceGreenConvolution A x := by
  rw [sourceGreenPairing_eq_causal_energy hA, source_mul_sourceGreenConvolution_integral hA]

/-- The compact two-variable integral is exactly the same scalar pairing. -/
theorem sourceGreenPairing_eq_double_integral {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = ∫ x : ℝ, ∫ y : ℝ, sourceGreenDoubleKernel A (x,y) := by
  rw [sourceGreenPairing_eq_convolution_pairing hA]
  simp_rw [sourceGreenDoubleKernel, mul_assoc, integral_const_mul]
  rfl

/-- Evaluation of the convolution preserves its signed negative-bump coefficient. -/
theorem sourceGreenPairing_eq_neg_source_bump {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = -(∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
      normalizedPrimitiveBump A x) := by
  rw [sourceGreenPairing_eq_convolution_pairing hA]
  simp_rw [sourceGreenConvolution_eq_neg_bump hA, mul_neg]
  rw [integral_neg]

/-- The exact full normalization survives the Green interpretation. -/
theorem sourceGreenPairing_eq_normalized_energy {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A =
      (131072/45045 : ℝ)/(A^2*sourceNormalization A) +
        (65536/109395 : ℝ)/(4*sourceNormalization A) := by
  rw [sourceGreenPairing_eq_causal_energy hA, causalSourceTail_square_integral hA]

/-- Its explicit rational value holds at every positive source scale. -/
theorem sourceGreenPairing_eq_rational {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = (28*A^4+544*A^2)/(7*A^4+272*A^2+7344) := by
  rw [sourceGreenPairing_eq_twice_negativeSmoothMoment hA, negativeSmoothMoment_eq_rational hA]
  ring

/-- Positivity is a theorem about the pure source, with no arithmetic row in its statement. -/
theorem sourceGreenPairing_pos {A : ℝ} (hA : 0 < A) : 0 < sourceGreenPairing A := by
  rw [sourceGreenPairing_eq_twice_negativeSmoothMoment hA]
  exact mul_pos (by norm_num) (negativeSmoothMoment_pos hA)

/-- The critical half is the signed source-bump integral only at its original radius domain. -/
theorem criticalContinuousMoment_eq_half_source_bump {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = (1/2) * ∫ x : ℝ,
      normalizedTest explicitSecondDerivative A x * normalizedPrimitiveBump A x := by
  rw [criticalContinuousMoment_eq_neg_half_green hA,
    sourceGreenPairing_eq_neg_source_bump (by linarith : 0 < A)]
  ring

end

end FormalResearch.RiemannHypothesis.SourceGreenKernel
```
