# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.DominatedDescent.Variant1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92436a9c12f0d8cd894938b3e4caa575e272ee87` · SHA-256 `1749846dcd7fd782c1d30c85cb4a237c9898a0413d797021b03acc726e494a98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
import Mathlib.Analysis.Normed.Group.Tannery
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
# Z2.7 dominated descent to the original source

The smooth explicit formula is already proved for every prescribed positive
mollifier scale.  This module performs the source-faithful limit
`ε → 0+` in both sides.

The zero side is controlled by the integrated multiplicity-aware sixth-power
summability theorem.  Norms are used only as summable majorants; the values in
the limit remain ordinary complex squares.

The arithmetic side uses one fixed radius `A + 1` throughout smoothing.
Archimedean, pole, and prime-correlation terms are shown to converge through
genuine integrals, and only after taking the limit is the larger strict cutoff
reduced to the original radius `A`.

This closes Z2.7 at the arithmetic-zero equality.  Assembly of all admission
and normalization components of `ZeroSideIdentityObligation` remains a
separate final step.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroObject ZeroSmoothing ZeroSmoothingL2
  ZeroSmoothingMultiplier ZeroSmoothingTransform BridgeAdmissibility
open WeilArithmeticTransport

noncomputable section

private theorem polynomial_norm_le (t : ℂ) (ht : 1 ≤ ‖t‖) :
    ‖transformPolynomial t‖ ≤ 266 * ‖t‖ ^ 4 := by
  have h2 : ‖t‖ ≤ ‖t‖ ^ 2 := by nlinarith [norm_nonneg t]
  have h3 : ‖t‖ ^ 2 ≤ ‖t‖ ^ 3 := by nlinarith [sq_nonneg (‖t‖ - 1)]
  have h4 : ‖t‖ ^ 3 ≤ ‖t‖ ^ 4 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) (pow_nonneg (norm_nonneg t) 3)]
  have hb : ‖transformPolynomial t‖ ≤
      ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 + 105 * ‖t‖ + 105 := by
    unfold transformPolynomial
    calc
      _ ≤ ‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t‖ + ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤ (‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2‖ + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤ ((‖t ^ 4 - 10 * t ^ 3‖ + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ ≤ (((‖t ^ 4‖ + ‖10 * t ^ 3‖) + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ = _ := by norm_num [norm_mul, norm_pow]
  nlinarith

private def decayConstant (A : ℝ) : ℝ :=
  408576 * A ^ 4 * Real.exp (A / 2)

private theorem transform_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤ decayConstant A / ‖z‖ ^ 3 := by
  have hApos : 0 < A := by linarith
  have hrpos : 0 < ‖z‖ := by linarith
  have hz0 : z ≠ 0 := norm_pos_iff.mp hrpos
  have hnormA : ‖(A : ℂ)‖ = A := by simp [abs_of_pos hApos]
  have hAz : 1 ≤ ‖(A : ℂ) * z‖ := by
    rw [norm_mul, hnormA]
    nlinarith
  have hp := polynomial_norm_le ((A : ℂ) * z) hAz
  have hn := polynomial_norm_le (-((A : ℂ) * z)) (by simpa using hAz)
  simp only [norm_neg, norm_mul, hnormA, mul_pow] at hp hn
  have hepos : ‖Complex.exp ((A : ℂ) * z)‖ ≤ Real.exp (A / 2) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    nlinarith [hzre.2]
  have heneg : ‖Complex.exp (-(A : ℂ) * z)‖ ≤ Real.exp (A / 2) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im,
      Complex.ofReal_re, Complex.ofReal_im, neg_zero, zero_mul, sub_zero]
    nlinarith [hzre.1]
  have hfactor : ‖z ^ 2 - 1 / 4‖ ≤ 2 * ‖z‖ ^ 2 := by
    calc
      _ ≤ ‖z ^ 2‖ + ‖(1 / 4 : ℂ)‖ := norm_sub_le _ _
      _ ≤ _ := by norm_num [norm_pow]; nlinarith
  have hscale : 1 ≤ A ^ (17 / 2 : ℝ) := Real.one_le_rpow hA (by norm_num)
  have hscale_norm : ‖((A ^ (17 / 2 : ℝ) : ℝ) : ℂ)‖ = A ^ (17 / 2 : ℝ) := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [ZeroTransform.actual_transform A hApos z hz0]
  unfold dividedTransform
  rw [norm_mul, norm_div, norm_mul, norm_mul, norm_pow, hscale_norm]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ (384 * (2 * ‖z‖ ^ 2) / (1 * ‖z‖ ^ 9)) *
        (Real.exp (A / 2) * (266 * (A ^ 4 * ‖z‖ ^ 4)) +
          Real.exp (A / 2) * (266 * (A ^ 4 * ‖z‖ ^ 4))) := by
      gcongr
      calc
        _ ≤ ‖Complex.exp ((A : ℂ) * z) * transformPolynomial ((A : ℂ) * z)‖ +
            ‖Complex.exp (-(A : ℂ) * z) * transformPolynomial (-(A : ℂ) * z)‖ :=
          norm_sub_le _ _
        _ ≤ _ := by
          simp only [norm_mul]
          gcongr
          simpa only [neg_mul] using hn
    _ = decayConstant A / ‖z‖ ^ 3 := by
      unfold decayConstant
      field_simp
      ring

private theorem transform_square_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z ^ 2‖ ≤
      (64 * decayConstant A ^ 2) * (1 + ‖z‖) ^ (-6 : ℝ) := by
  have hr : 0 < ‖z‖ := by linarith
  have hr1 : 0 < 1 + ‖z‖ := by positivity
  have hpow : (1 + ‖z‖) ^ 6 ≤ 64 * ‖z‖ ^ 6 := by
    calc
      _ ≤ (2 * ‖z‖) ^ 6 := by gcongr; linarith
      _ = _ := by ring
  have hinv : 1 / ‖z‖ ^ 6 ≤ 64 / (1 + ‖z‖) ^ 6 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    simpa only [one_mul] using hpow
  have hs := pow_le_pow_left₀ (norm_nonneg (bilateralTransform A z))
    (transform_norm_le A hA z hzre hz) 2
  calc
    _ ≤ (decayConstant A / ‖z‖ ^ 3) ^ 2 := by simpa only [norm_pow] using hs
    _ = decayConstant A ^ 2 * (1 / ‖z‖ ^ 6) := by ring
    _ ≤ decayConstant A ^ 2 * (64 / (1 + ‖z‖) ^ 6) :=
      mul_le_mul_of_nonneg_left hinv (sq_nonneg _)
    _ = _ := by
      rw [show (-6 : ℝ) = -(6 : ℕ) by norm_num, Real.rpow_neg hr1.le,
        Real.rpow_natCast]
      ring

private theorem eventually_one_le_shifted_norm :
    ∀ᶠ o : ZeroOccurrence in cofinite, 1 ≤ ‖shiftedValue o‖ := by
  rw [eventually_cofinite]
  have hfinite : Finite (ZeroSummability.ZeroShell 0) := ZeroSummability.zeroShell_finite 0
  have hf : {o : ZeroOccurrence | ZeroSummability.shellIndex o = 0}.Finite :=
    Set.finite_coe_iff.mp hfinite
  simpa only [not_le, ZeroSummability.shellIndex, Nat.floor_eq_zero] using hf

/-- Absolute summability of the original ordinary transform squares. -/
theorem source_transform_square_norms_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ ‖bilateralTransform A (shiftedValue o) ^ 2‖) := by
  have hsum : Summable (fun o : ZeroOccurrence ↦
      (64 * decayConstant A ^ 2) * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ)) :=
    ZeroShellCount.zero_summability.mul_left _
  apply hsum.of_norm_bounded_eventually
  filter_upwards [eventually_one_le_shifted_norm] with o ho
  simpa only [norm_norm] using transform_square_norm_le A hA (shiftedValue o)
    ⟨(shiftedValue_strip o).1.le, (shiftedValue_strip o).2.le⟩ ho

/-- The original occurrence-indexed ordinary complex squares form a genuine
summable family. -/
theorem source_transform_squares_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ bilateralTransform A (shiftedValue o) ^ 2) :=
  (source_transform_square_norms_summable A hA).of_norm

private theorem smoothed_square_norm_le
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (o : ZeroOccurrence) :
    ‖smoothedBilateralTransform A ε hε (shiftedValue o) ^ 2‖ ≤
      Real.exp ε * ‖bilateralTransform A (shiftedValue o) ^ 2‖ := by
  rw [smoothed_bilateral_transform A ε hA hε, mul_pow, norm_mul,
    norm_pow (multiplier ε hε (shiftedValue o)) 2]
  have hm := pow_le_pow_left₀ (norm_nonneg _)
    (multiplier_norm_le_zeroOccurrence ε hε o) 2
  have he : Real.exp (ε / 2) ^ 2 = Real.exp ε := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [he] at hm
  calc
    _ ≤ ‖bilateralTransform A (shiftedValue o) ^ 2‖ * Real.exp ε :=
      mul_le_mul_of_nonneg_left hm (norm_nonneg _)
    _ = _ := mul_comm _ _

private theorem smoothed_transform_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (z : ℂ) :
    Tendsto (fun i ↦ smoothedBilateralTransform A (ε i) (hε i) z) l
      (𝓝 (bilateralTransform A z)) := by
  simp_rw [smoothed_bilateral_transform A _ hA]
  simpa only [mul_one] using
    (multiplier_tendsto_one z ε hε hlim).const_mul (bilateralTransform A z)

/-- Z2.7 zero-side descent: uniform sixth-power domination permits passage of
the entire occurrence sum through `ε → 0+`. -/
theorem zero_sum_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∑' o : ZeroOccurrence,
      smoothedBilateralTransform A (ε i) (hε i) (shiftedValue o) ^ 2) l
      (𝓝 (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2)) := by
  apply tendsto_tsum_of_dominated_convergence
    ((source_transform_square_norms_summable A hA).mul_left (Real.exp 1))
    (fun o ↦ (smoothed_transform_tendsto A hA ε hε hlim (shiftedValue o)).pow 2)
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  filter_upwards [hsmall] with i hi o
  exact (smoothed_square_norm_le A (ε i) hA (hε i) o).trans
    (mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr hi) (norm_nonneg _))

private theorem source_fourier_smoothing
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    sourceFourier (smoothedTest A ε hε) ξ =
      sourceFourier (actualTest A) ξ *
        multiplier ε hε (Complex.I * (ξ : ℂ)) :=
  smoothed_bilateral_transform A ε hA hε (Complex.I * (ξ : ℂ))

private theorem fourier_multiplier_norm_le_one
    (ε : ℝ) (hε : 0 < ε) (ξ : ℝ) :
    ‖multiplier ε hε (Complex.I * (ξ : ℂ))‖ ≤ 1 := by
  simpa using multiplier_norm_le ε hε (Complex.I * (ξ : ℂ))

private theorem smoothed_fourier_normSq_le
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) ≤
      Complex.normSq (sourceFourier (actualTest A) ξ) := by
  have hn : ‖sourceFourier (smoothedTest A ε hε) ξ‖ ≤
      ‖sourceFourier (actualTest A) ξ‖ := by
    rw [source_fourier_smoothing A ε hA hε, norm_mul]
    simpa only [mul_one] using mul_le_mul_of_nonneg_left
      (fourier_multiplier_norm_le_one ε hε ξ)
      (norm_nonneg (sourceFourier (actualTest A) ξ))
  rw [Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq]
  exact pow_le_pow_left₀ (norm_nonneg _) hn 2

private theorem actual_archimedean_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (actualTest A) ξ)) volume := by
  let f := actualTest A
  have hfint : Integrable f volume := ZeroTestRegularity.actualTest_integrable A hA
  have hfdiff : Differentiable ℝ f :=
    (ZeroTestRegularity.actualTest_contDiff A hA).differentiable (by norm_num)
  have hfderiv : Integrable (deriv f) volume :=
    ZeroSmoothingDerivative.actualTest_deriv_integrable A hA
  have hzero := BridgeFourier.fourier_normSq_integrable f hfint hfdiff hfderiv
  have hlog := BridgeFourier.logarithmic_fourier_integrable f hfint hfdiff hfderiv
  have hc := BridgeFourier.sourceFourier_continuous hfint
  have hm : AEStronglyMeasurable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier f ξ)) volume :=
    (BridgeMultiplier.archimedeanMultiplier_measurable.mul
      (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable
  have hmajor := (hzero.const_mul (|BridgeAdmissibility.archimedeanConstant| + 4)).add
    (hlog.div_const 2)
  apply hmajor.mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (Complex.normSq_nonneg _)]
  have hb := BridgeMultiplier.multiplier_abs_le_of_estimate
    AdmissionSource.multiplier_estimate ξ
  calc
    |archimedeanMultiplier ξ| * Complex.normSq (sourceFourier f ξ) ≤
        (|BridgeAdmissibility.archimedeanConstant| + 4 +
          Real.log (1 + 4 * ξ ^ 2) / 2) *
          Complex.normSq (sourceFourier f ξ) :=
      mul_le_mul_of_nonneg_right hb (Complex.normSq_nonneg _)
    _ = _ := by simp only [Pi.add_apply]; ring

private theorem smoothed_archimedean_measurable
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    AEStronglyMeasurable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ)) volume := by
  have hc := BridgeFourier.sourceFourier_continuous
    (smoothedTest_integrable A ε hA hε)
  exact (BridgeMultiplier.archimedeanMultiplier_measurable.mul
    (Complex.continuous_normSq.comp hc).measurable).aestronglyMeasurable

private theorem smoothed_archimedean_norm_le
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    ‖archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ)‖ ≤
      ‖archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (actualTest A) ξ)‖ := by
  simp only [Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (Complex.normSq_nonneg _)]
  exact mul_le_mul_of_nonneg_left
    (smoothed_fourier_normSq_le A ε hA hε ξ) (abs_nonneg _)

private theorem archimedean_integral_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ ξ, archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (smoothedTest A (ε i) (hε i)) ξ)) l
      (𝓝 (∫ ξ, archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (actualTest A) ξ))) := by
  apply tendsto_integral_filter_of_dominated_convergence
    (fun ξ ↦ ‖archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (actualTest A) ξ)‖)
    (Eventually.of_forall fun i ↦
      smoothed_archimedean_measurable A (ε i) hA (hε i))
    (Eventually.of_forall fun i ↦ Eventually.of_forall
      (smoothed_archimedean_norm_le A (ε i) hA (hε i)))
    (actual_archimedean_integrable A hA).norm
  exact Eventually.of_forall fun ξ ↦
    (Complex.continuous_normSq.continuousAt.tendsto.comp
      (smoothed_transform_tendsto A hA ε hε hlim
        (Complex.I * (ξ : ℂ)))).const_mul (archimedeanMultiplier ξ)

private def primeIndices (B : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊Real.exp (2 * B)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * B))

private theorem mem_primeIndices_iff (B : ℝ) (n : ℕ) :
    n ∈ primeIndices B ↔ 2 ≤ n ∧ (n : ℝ) < Real.exp (2 * B) := by
  simp only [primeIndices, Finset.mem_filter, Finset.mem_Icc,
    Nat.le_floor_iff (Real.exp_pos (2 * B)).le]
  exact ⟨fun h ↦ ⟨h.1.1, h.2⟩, fun h ↦ ⟨⟨h.1, h.2.le⟩, h.2⟩⟩

private theorem primeIndices_mono {A B : ℝ} (hAB : A ≤ B) :
    primeIndices A ⊆ primeIndices B := by
  intro n hn
  rw [mem_primeIndices_iff] at hn ⊢
  exact ⟨hn.1, hn.2.trans_le (Real.exp_le_exp.mpr (by linarith))⟩

private theorem actual_eq_sqrt_mul_normalized (A : ℝ) (hA : 1 ≤ A) :
    actualTest A = fun x ↦ Real.sqrt (sourceNormalization A) *
      normalizedTest Realization.explicitSecondDerivative A x := by
  have hs : Real.sqrt (sourceNormalization A) ≠ 0 :=
    ne_of_gt (Real.sqrt_pos.mpr (source_normalization_pos A hA))
  funext x
  change dilationTest Realization.explicitSecondDerivative A x =
    Real.sqrt (sourceNormalization A) *
      (dilationTest Realization.explicitSecondDerivative A x /
        Real.sqrt (sourceNormalization A))
  field_simp [hs]

private theorem correlation_integral_const_mul
    (c : ℝ) (f : ℝ → ℝ) (t : ℝ) :
    (∫ x, (c * f x) * (c * f (x - t))) =
      c ^ 2 * ∫ x, f x * f (x - t) := by
  have hfun :
      (fun x ↦ (c * f x) * (c * f (x - t))) =
        (fun x ↦ c ^ 2 * (f x * f (x - t))) := by
    funext x
    ring
  rw [hfun, integral_const_mul]

private theorem unnormalized_correlation_eq (A t : ℝ) (hA : 1 ≤ A) :
    (∫ x, actualTest A x * actualTest A (x - t)) =
      sourceNormalization A *
        sourceCorrelation Realization.explicitSecondDerivative A t := by
  rw [actual_eq_sqrt_mul_normalized A hA,
    correlation_integral_const_mul,
    Real.sq_sqrt (source_normalization_pos A hA).le]
  rfl

private theorem unnormalized_correlation_zero
    (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ |t|) :
    (∫ x, actualTest A x * actualTest A (x - t)) = 0 := by
  rw [unnormalized_correlation_eq A t hA,
    CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs
      A t (by linarith) ht,
    mul_zero]

private theorem additional_prime_correlation_zero
    (A : ℝ) (hA : 1 ≤ A) (n : ℕ)
    (hn : 2 ≤ n) (hout : n ∉ primeIndices A) :
    (∫ x, actualTest A x * actualTest A (x - Real.log n)) = 0 := by
  have hexp : Real.exp (2 * A) ≤ (n : ℝ) := by
    by_contra h
    exact hout ((mem_primeIndices_iff A n).mpr ⟨hn, lt_of_not_ge h⟩)
  have hlog : 2 * A ≤ Real.log n := by
    simpa only [Real.log_exp] using
      Real.log_le_log (Real.exp_pos (2 * A)) hexp
  exact unnormalized_correlation_zero A (Real.log n) hA
    (hlog.trans (le_abs_self _))

private theorem actual_form_radius_independent
    (A B : ℝ) (hA : 1 ≤ A) (hAB : A ≤ B) :
    realArithmeticForm B (actualTest A) =
      realArithmeticForm A (actualTest A) := by
  have hsum :
      (∑ n ∈ primeIndices A,
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, actualTest A x * actualTest A (x - Real.log n))) =
      ∑ n ∈ primeIndices B,
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, actualTest A x * actualTest A (x - Real.log n)) := by
    apply Finset.sum_subset (primeIndices_mono hAB)
    intro n hn hout
    rw [additional_prime_correlation_zero A hA n
      ((mem_primeIndices_iff B n).mp hn).1 hout, mul_zero]
  simp only [primeIndices] at hsum
  unfold realArithmeticForm
  rw [← hsum]

private theorem common_norm_bound (A : ℝ) (hA : 1 ≤ A) :
    ∃ M : ℝ, 0 ≤ M ∧ (∀ x, ‖actualTest A x‖ ≤ M) ∧
      ∀ (ε : ℝ) (hε : 0 < ε) (x : ℝ),
        ‖smoothedTest A ε hε x‖ ≤ M := by
  have hc := (ZeroTestRegularity.actualTest_contDiff A hA).continuous
  obtain ⟨M, hM⟩ :=
    (ZeroTestRegularity.actualTest_hasCompactSupport A hA).exists_bound_of_continuous hc
  exact ⟨M, (norm_nonneg _).trans (hM 0), hM,
    fun ε hε x ↦ ZeroSmoothingL2Core.mollify_norm_le hc hM ε hε x⟩

private theorem smoothed_zero_outside_common
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    (hε1 : ε ≤ 1) (x : ℝ)
    (hx : x ∉ Icc (-A - 1) (A + 1)) :
    smoothedTest A ε hε x = 0 := by
  by_contra h
  have hs := smoothedTest_support_subset A ε hA hε h
  exact hx ⟨by linarith [hs.1], by linarith [hs.2]⟩

private theorem smoothed_correlation_integrable
    (A ε t : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun x ↦
      smoothedTest A ε hε x *
        smoothedTest A ε hε (x - t)) volume := by
  have hc := (smoothedTest_contDiff A ε hA hε).continuous
  have ht : Continuous (fun x : ℝ ↦ x - t) :=
    continuous_id.sub continuous_const
  exact (hc.mul (hc.comp ht)).integrable_of_hasCompactSupport
    (smoothedTest_hasCompactSupport A ε hA hε).mul_right

private theorem correlation_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (t : ℝ) :
    Tendsto (fun i ↦ ∫ x,
      smoothedTest A (ε i) (hε i) x *
        smoothedTest A (ε i) (hε i) (x - t)) l
      (𝓝 (∫ x, actualTest A x * actualTest A (x - t))) := by
  obtain ⟨M, hM, _, hbound⟩ := common_norm_bound A hA
  let bound : ℝ → ℝ :=
    (Icc (-A - 1) (A + 1)).indicator (fun _ ↦ M ^ 2)
  have hi : Integrable bound volume :=
    continuous_const.integrableOn_Icc.integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖smoothedTest A (ε i) (hε i) x *
        smoothedTest A (ε i) (hε i) (x - t)‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · simp only [bound, indicator_of_mem hx, norm_mul]
        calc
          _ ≤ M * M :=
            mul_le_mul (hbound (ε i) (hε i) x)
              (hbound (ε i) (hε i) (x - t))
              (norm_nonneg _) hM
          _ = _ := (pow_two M).symm
      · rw [smoothed_zero_outside_common A (ε i) hA (hε i) hi x hx]
        simp only [zero_mul, norm_zero, bound,
          indicator_of_notMem hx, le_refl]
  exact tendsto_integral_filter_of_dominated_convergence bound
    (Eventually.of_forall fun i ↦
      (smoothed_correlation_integrable A (ε i) t hA (hε i)).1)
    hdom hi
    (Eventually.of_forall fun x ↦
      (smoothedTest_tendsto A hA ε hε hlim x).mul
        (smoothedTest_tendsto A hA ε hε hlim (x - t)))

private theorem smoothed_moment_integrable
    (A ε σ : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun x ↦
      Real.exp (σ * x) * smoothedTest A ε hε x) volume := by
  have he : Continuous (fun x : ℝ ↦ Real.exp (σ * x)) := by fun_prop
  exact (he.mul (smoothedTest_contDiff A ε hA hε).continuous).integrable_of_hasCompactSupport
    (smoothedTest_hasCompactSupport A ε hA hε).mul_left

private theorem moment_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (σ : ℝ) :
    Tendsto (fun i ↦ ∫ x,
      Real.exp (σ * x) * smoothedTest A (ε i) (hε i) x) l
      (𝓝 (∫ x, Real.exp (σ * x) * actualTest A x)) := by
  obtain ⟨M, hM, _, hbound⟩ := common_norm_bound A hA
  let bound : ℝ → ℝ :=
    (Icc (-A - 1) (A + 1)).indicator
      (fun _ ↦ Real.exp (|σ| * (A + 1)) * M)
  have hi : Integrable bound volume :=
    continuous_const.integrableOn_Icc.integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖Real.exp (σ * x) * smoothedTest A (ε i) (hε i) x‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · have hxx : |x| ≤ A + 1 :=
          abs_le.mpr ⟨by linarith [hx.1], hx.2⟩
        have hs : σ * x ≤ |σ| * (A + 1) := by
          calc
            σ * x ≤ |σ * x| := le_abs_self _
            _ = |σ| * |x| := abs_mul _ _
            _ ≤ _ := mul_le_mul_of_nonneg_left hxx (abs_nonneg _)
        simp only [bound, indicator_of_mem hx, norm_mul,
          Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
        exact mul_le_mul (Real.exp_le_exp.mpr hs)
          (hbound (ε i) (hε i) x)
          (abs_nonneg _) (Real.exp_pos _).le
      · rw [smoothed_zero_outside_common A (ε i) hA (hε i) hi x hx]
        simp only [mul_zero, norm_zero, bound,
          indicator_of_notMem hx, le_refl]
  exact tendsto_integral_filter_of_dominated_convergence bound
    (Eventually.of_forall fun i ↦
      (smoothed_moment_integrable A (ε i) σ hA (hε i)).1)
    hdom hi
    (Eventually.of_forall fun x ↦
      (smoothedTest_tendsto A hA ε hε hlim x)
        .const_mul (Real.exp (σ * x)))

private theorem pole_contribution_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦
      realPoleContribution (smoothedTest A (ε i) (hε i))) l
      (𝓝 (realPoleContribution (actualTest A))) := by
  have hp := moment_tendsto A hA ε hε hlim (1 / 2)
  have hn := moment_tendsto A hA ε hε hlim (-1 / 2)
  have hpos (x : ℝ) : (1 / 2 : ℝ) * x = x / 2 := by ring
  have hneg (x : ℝ) : (-1 / 2 : ℝ) * x = -x / 2 := by ring
  simpa only [realPoleContribution, hpos, hneg] using
    (hp.const_mul 2).mul hn

private theorem fixed_radius_form_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated]
    (A B : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦
      realArithmeticForm B (smoothedTest A (ε i) (hε i))) l
      (𝓝 (realArithmeticForm B (actualTest A))) := by
  have hprime := tendsto_finsetSum (primeIndices B) (fun n _ ↦
    (correlation_tendsto A hA ε hε hlim (Real.log n)).const_mul
      (ArithmeticFunction.vonMangoldt n / Real.sqrt n))
  simpa only [realArithmeticForm, primeIndices] using
    (((archimedean_integral_tendsto A hA ε hε hlim)
      .div_const (2 * Real.pi)).add
      (pole_contribution_tendsto A hA ε hε hlim)).sub
      (hprime.const_mul 2)

/-- Z2.7 arithmetic descent: the fixed smoothing inventory `A + 1` converges
to the original arithmetic form, and the larger strict cutoff is removed only
after the limit. -/
theorem arithmetic_form_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦
      realArithmeticForm (A + 1) (smoothedTest A (ε i) (hε i))) l
      (𝓝 (realArithmeticForm A (actualTest A))) := by
  simpa only [actual_form_radius_independent A (A + 1) hA (by linarith)] using
    fixed_radius_form_tendsto A (A + 1) hA ε hε hlim

/-- The exact nonsmooth arithmetic-zero comparison reached by Z2.7. -/
def ArithmeticZeroEqualityObligation : Prop :=
  ∀ A : ℝ, 1 ≤ A →
    (realArithmeticForm A (actualTest A) : ℂ) =
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2

/-- Z2.7 closure: both sides of the smooth explicit formula converge to the
unchanged original source objects, hence the nonsmooth arithmetic-zero equality. -/
theorem arithmetic_zero_equality : ArithmeticZeroEqualityObligation := by
  intro A hA
  let : positiveScaleAtZero.NeBot := positiveScaleAtZero_neBot
  have hleft := Complex.continuous_ofReal.continuousAt.tendsto.comp
    (arithmetic_form_tendsto A hA
      (fun ε : {ε : ℝ // 0 < ε} ↦ ε.val)
      (fun ε ↦ ε.property) positiveScale_tendsto_zero)
  have hright := zero_sum_tendsto A hA
    (fun ε : {ε : ℝ // 0 < ε} ↦ ε.val)
    (fun ε ↦ ε.property) positiveScale_tendsto_zero
  have hsmall :
      ∀ᶠ ε : {ε : ℝ // 0 < ε} in positiveScaleAtZero, ε.val ≤ 1 :=
    ((tendsto_order.1 positiveScale_tendsto_zero).2 1 (by norm_num)).mono
      fun _ hε ↦ hε.le
  have heq :
      (fun ε : {ε : ℝ // 0 < ε} ↦
        (realArithmeticForm (A + 1)
          (smoothedTest A ε.val ε.property) : ℂ))
        =ᶠ[positiveScaleAtZero]
      (fun ε ↦ ∑' o : ZeroOccurrence,
        smoothedBilateralTransform A ε.val ε.property
          (shiftedValue o) ^ 2) :=
    hsmall.mono fun ε hε ↦
      (smooth_explicit_formula A hA ε.val ε.property hε).tsum_eq.symm
  exact tendsto_nhds_unique hleft (hright.congr' heq.symm)

end
end FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent
```
