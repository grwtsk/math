import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation
import FormalResearch.RiemannHypothesis.JointPhaseScaling

/-!
# First exponential moments of the actual correlation

Compact support justifies the first-moment convolution identity. Both zeroth
pole moments of the source test vanish, so its autocorrelation has vanishing
first pole moments as well. This proof uses the actual convolution and its
integrability, rather than an assumption about characteristic root multiplicity.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.GeneralizedPoleMoments

open MeasureTheory Set
open scoped Convolution
open scoped FourierTransform ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment

noncomputable section

/-- Multiplication by the convolution variable distributes into its two inputs. -/
theorem first_moment_convolution (f g : ℝ → ℝ)
    (hf : Continuous f) (hg : Continuous g) (hcf : HasCompactSupport f) (t : ℝ) :
    t * (f ⋆ g) t =
      ((fun x ↦ x * f x) ⋆ g) t + (f ⋆ (fun x ↦ x * g x)) t := by
  have hif : Integrable f := hf.integrable_of_hasCompactSupport hcf
  have hixf : Integrable (fun x ↦ x * f x) :=
    (continuous_id.mul hf).integrable_of_hasCompactSupport hcf.mul_left
  have h1 : Integrable (fun x ↦ (x * f x) * g (t - x)) := by
    exact (hcf.mul_left.convolutionExists_left_of_continuous_right
      (ContinuousLinearMap.lsmul ℝ ℝ) hixf.locallyIntegrable hg t).integrable
  have h2 : Integrable (fun x ↦ f x * ((t - x) * g (t - x))) := by
    exact (hcf.convolutionExists_left_of_continuous_right
      (ContinuousLinearMap.lsmul ℝ ℝ) hif.locallyIntegrable
      (continuous_id.mul hg) t).integrable
  rw [convolution_lsmul, ← integral_const_mul, convolution_lsmul, convolution_lsmul]
  simp only [smul_eq_mul]
  rw [← integral_add h1 h2]
  apply integral_congr_ae
  filter_upwards [] with x
  ring

/-- Fubini computes the first moment of a continuous compact convolution exactly. -/
theorem integral_first_moment_convolution (f g : ℝ → ℝ)
    (hf : Continuous f) (hg : Continuous g)
    (hcf : HasCompactSupport f) (hcg : HasCompactSupport g) :
    (∫ t, t * (f ⋆ g) t) =
      (∫ x, x * f x) * (∫ x, g x) + (∫ x, f x) * (∫ x, x * g x) := by
  have hif : Integrable f := hf.integrable_of_hasCompactSupport hcf
  have hig : Integrable g := hg.integrable_of_hasCompactSupport hcg
  have hixf : Integrable (fun x ↦ x * f x) :=
    (continuous_id.mul hf).integrable_of_hasCompactSupport hcf.mul_left
  have hixg : Integrable (fun x ↦ x * g x) :=
    (continuous_id.mul hg).integrable_of_hasCompactSupport hcg.mul_left
  simp_rw [first_moment_convolution f g hf hg hcf]
  rw [integral_add (hixf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig)
    (hif.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixg),
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixf hig,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif hixg]
  rfl

/-- Every exponential first moment of the actual compact test is genuinely integrable. -/
theorem weighted_test_first_moment_integrable (A σ : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ x * Real.exp (σ * x) *
      normalizedTest explicitSecondDerivative A x) := by
  exact ((continuous_id.mul (Real.continuous_exp.comp
    (continuous_const.mul continuous_id))).mul
    (normalizedTest_contDiff A (by linarith)).continuous).integrable_of_hasCompactSupport
      (normalizedTest_hasCompactSupport A (by linarith)).mul_left

/-- Every exponential first moment of the actual compact correlation is integrable. -/
theorem generalized_pole_moment_integrable (A σ : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t ↦ t * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t) := by
  exact ((continuous_id.mul (Real.continuous_exp.comp
    (continuous_const.mul continuous_id))).mul
    (sourceCorrelation_contDiff A (by linarith)).continuous).integrable_of_hasCompactSupport
      (sourceCorrelation_hasCompactSupport A (by linarith)).mul_left

/-- Both vanishing source-test pole moments force the generalized correlation moment. -/
theorem generalized_pole_moment_zero (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ t, t * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
  let v := normalizedTest explicitSecondDerivative A
  let f : ℝ → ℝ := fun x ↦ Real.exp (σ * x) * v x
  let g : ℝ → ℝ := fun x ↦ Real.exp (σ * x) * v (-x)
  have hv : Continuous v := (normalizedTest_contDiff A (by linarith)).continuous
  have hf : Continuous f := (Real.continuous_exp.comp
    (continuous_const.mul continuous_id)).mul hv
  have hg : Continuous g := (Real.continuous_exp.comp
    (continuous_const.mul continuous_id)).mul (hv.comp continuous_neg)
  have hcf : HasCompactSupport f :=
    (normalizedTest_hasCompactSupport A (by linarith)).mul_left
  have hcg : HasCompactSupport g :=
    (reflectedTest_hasCompactSupport A (by linarith)).mul_left
  have hzplus : (∫ x, f x) = 0 := weighted_normalizedTest_integral_zero A σ hA hσ
  have hzminus : (∫ x, g x) = 0 := by
    have he := integral_neg_eq_self (fun x ↦ Real.exp ((-σ) * x) * v x) volume
    have hn := weighted_normalizedTest_integral_zero A (-σ) hA (by simpa using hσ)
    simpa only [neg_mul_neg] using he.trans hn
  have heq (t : ℝ) : t * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t = t * (f ⋆ g) t := by
    rw [mul_assoc]
    exact congrArg (fun z : ℝ ↦ t * z) (weighted_correlation_eq_convolution v σ t)
  simp_rw [heq]
  rw [integral_first_moment_convolution f g hf hg hcf hcg, hzplus, hzminus]
  ring

/-- The generalized positive-pole moment is a genuine zero integral. -/
theorem positive_generalized_pole_moment_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, t * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
  simpa only [show ∀ t : ℝ, (1 / 2 : ℝ) * t = t / 2 by intro t; ring] using
    generalized_pole_moment_zero A (1 / 2) hA (by norm_num)

/-- The generalized negative-pole moment is a genuine zero integral. -/
theorem negative_generalized_pole_moment_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, t * Real.exp (-t / 2) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
  simpa only [show ∀ t : ℝ, (-1 / 2 : ℝ) * t = -t / 2 by intro t; ring] using
    generalized_pole_moment_zero A (-1 / 2) hA (by norm_num)

/-- The ordinary source-correlation pole moment also vanishes for either real pole. -/
theorem ordinary_pole_moment_zero (A σ : ℝ) (hA : 1 ≤ A) (hσ : σ ^ 2 = 1 / 4) :
    (∫ t, Real.exp (σ * t) * sourceCorrelation explicitSecondDerivative A t) = 0 := by
  change (∫ t, Real.exp (σ * t) * correlation (normalizedTest explicitSecondDerivative A) t) = 0
  rw [weighted_correlation_integral _ _
    (weighted_normalizedTest_integrable A σ hA)
    (weighted_normalizedTest_integrable A (-σ) hA),
    weighted_normalizedTest_integral_zero A σ hA hσ, zero_mul]

/-- An affine exponential mode has genuine integrability against the actual compact correlation. -/
theorem affine_pole_moment_integrable (A σ a b : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t ↦ (a + b * t) * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t) := by
  have hc : Continuous (fun t : ℝ ↦ (a + b * t) * Real.exp (σ * t)) := by fun_prop
  have hcor := (sourceCorrelation_contDiff A (by linarith)).continuous
  exact (hc.mul hcor).integrable_of_hasCompactSupport
      (sourceCorrelation_hasCompactSupport A (by linarith)).mul_left

/-- The full-line correlation pairing annihilates every affine exponential pole mode. -/
theorem affine_pole_moment_zero (A σ a b : ℝ) (hA : 1 ≤ A) (hσ : σ ^ 2 = 1 / 4) :
    (∫ t, (a + b * t) * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
  have h0 : Integrable (fun t ↦ Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t) :=
    weighted_correlation_integrable _ _
      (weighted_normalizedTest_integrable A σ hA)
      (weighted_normalizedTest_integrable A (-σ) hA)
  have h1 := generalized_pole_moment_integrable A σ hA
  have heq (t : ℝ) : (a + b * t) * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t =
      a * (Real.exp (σ * t) * sourceCorrelation explicitSecondDerivative A t) +
        b * (t * Real.exp (σ * t) * sourceCorrelation explicitSecondDerivative A t) := by ring
  simp_rw [heq]
  rw [integral_add (h0.const_mul a) (h1.const_mul b), integral_const_mul, integral_const_mul,
    ordinary_pole_moment_zero A σ hA hσ, generalized_pole_moment_zero A σ hA hσ]
  ring

/-- Evenness turns the full first pole moment into equality of two half-line moments. -/
theorem generalized_pole_half_interval (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ t in 0..2 * A, t * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t) =
      ∫ t in 0..2 * A, t * Real.exp ((-σ) * t) *
        sourceCorrelation explicitSecondDerivative A t := by
  let C := sourceCorrelation explicitSecondDerivative A
  let f : ℝ → ℝ := fun t ↦ t * Real.exp (σ * t) * C t
  have hi : Integrable f := generalized_pole_moment_integrable A σ hA
  have hfull : (∫ t, f t) = ∫ t in -(2 * A)..2 * A, f t := by
    calc
      _ = ∫ t, (Icc (-(2 * A)) (2 * A)).indicator f t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2 * A)) (2 * A)
        · simp only [indicator_of_mem ht]
        · rw [indicator_of_notMem ht]
          have hz : C t = 0 := by
            apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
            by_contra h
            exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))
          simp [f, hz]
      _ = _ := zeroExtension_integral f (-(2 * A)) (2 * A) (by linarith)
  have hreflection : (∫ t in -(2 * A)..0, f t) =
      -(∫ t in 0..2 * A, t * Real.exp ((-σ) * t) * C t) := by
    calc
      _ = ∫ t in 0..2 * A, f (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg f (a := 0) (b := 2 * A)).symm
      _ = ∫ t in 0..2 * A, -(t * Real.exp ((-σ) * t) * C t) := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp [f, C]
        rw [sourceCorrelation_even A t]
        rw [show σ * -t = (-σ) * t by ring]
        ring
      _ = _ := intervalIntegral.integral_neg
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A)
    hi.intervalIntegrable hi.intervalIntegrable
  have hz : (∫ t, f t) = 0 := generalized_pole_moment_zero A σ hA hσ
  rw [hreflection, ← hfull, hz] at hsplit
  change _ = _
  linarith

/-- The positive-half affine pole budget is uniformly bounded, rather than zero. -/
theorem positive_generalized_half_moment_abs_le_four (A : ℝ) (hA : 1 ≤ A) :
    |∫ t in 0..2 * A, t * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t| ≤ 4 := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ t * Real.exp (-t / 2)) := by fun_prop
  have hp : (∫ t in 0..2 * A, t * Real.exp (-t / 2)) =
      4 - (4 * A + 4) * Real.exp (-A) := by
    have hd (t : ℝ) : HasDerivAt (fun x ↦ -2 * (x + 2) * Real.exp (-x / 2))
        (t * Real.exp (-t / 2)) t := by
      apply ((((hasDerivAt_id t).add_const 2).const_mul (-2)).mul
        (((hasDerivAt_id t).neg.div_const 2).exp)).congr_deriv
      dsimp
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.intervalIntegrable _ _)]
    simp only [zero_add, neg_zero, zero_div, Real.exp_zero, mul_one]
    rw [show -(2 * A) / 2 = -A by ring]
    ring
  have hhalf := generalized_pole_half_interval A (1 / 2) hA (by norm_num)
  have hs (t : ℝ) : (1 / 2 : ℝ) * t = t / 2 := by ring
  have hn (t : ℝ) : (-(1 / 2) : ℝ) * t = -t / 2 := by ring
  simp only [hs, hn] at hhalf
  rw [hhalf]
  calc
    _ ≤ ∫ t in 0..2 * A, |t * Real.exp (-t / 2) *
        sourceCorrelation explicitSecondDerivative A t| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ t in 0..2 * A, t * Real.exp (-t / 2) := by
      apply intervalIntegral.integral_mono_on (by linarith)
        ((he.mul hc).abs.intervalIntegrable _ _) (he.intervalIntegrable _ _)
      intro t ht
      have hnonneg : 0 ≤ t * Real.exp (-t / 2) :=
        mul_nonneg ht.1 (Real.exp_pos _).le
      change |t * Real.exp (-t / 2) * sourceCorrelation explicitSecondDerivative A t| ≤
        t * Real.exp (-t / 2)
      rw [abs_mul, abs_of_nonneg hnonneg]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (EstimateCorrelation.actual_correlation_abs_le_one A t hA) hnonneg
    _ = 4 - (4 * A + 4) * Real.exp (-A) := hp
    _ ≤ 4 := by nlinarith [Real.exp_pos (-A)]

/-- The actual polynomial bump is pointwise nonnegative. -/
theorem source_bump_nonneg (x : ℝ) : 0 ≤ sourceBump x := by
  unfold sourceBump
  split_ifs
  · positivity
  · exact le_rfl

/-- Positive dilation preserves the bump's pointwise nonnegativity. -/
theorem scaled_bump_nonneg (A x : ℝ) : 0 ≤ scaledBump A x :=
  div_nonneg (source_bump_nonneg _) (Real.sqrt_nonneg _)

/-- The actual zero-extended bump is continuous at its two support seams. -/
theorem scaled_bump_continuous (A : ℝ) (hA : 0 < A) : Continuous (scaledBump A) := by
  rw [scaledBump_eq_indicator A hA]
  apply (bumpInterior_continuous A).indicator
  intro x hx
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx]
  · exact (bumpInterior_endpoints A (ne_of_gt hA)).1
  · exact (bumpInterior_endpoints A (ne_of_gt hA)).2

/-- Exponential weighting preserves the actual bump's compact support. -/
theorem weighted_bump_eq_indicator (A σ : ℝ) (hA : 0 < A) :
    (fun x ↦ Real.exp (σ * x) * scaledBump A x) =
      (Icc (-A) A).indicator (fun x ↦ Real.exp (σ * x) * bumpInterior A x) := by
  rw [scaledBump_eq_indicator A hA]
  funext x
  exact (Set.indicator_mul_right (Icc (-A) A) (fun x ↦ Real.exp (σ * x))
    (bumpInterior A)).symm

/-- Every fixed exponential moment of the actual bump is genuinely integrable. -/
theorem weighted_bump_integrable (A σ : ℝ) (hA : 0 < A) :
    Integrable (fun x ↦ Real.exp (σ * x) * scaledBump A x) := by
  rw [weighted_bump_eq_indicator A σ hA]
  exact integrable_zeroExtension _
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (bumpInterior_continuous A)) (-A) A

/-- Each real exponential bump moment is strictly positive. -/
theorem weighted_bump_integral_pos (A σ : ℝ) (hA : 0 < A) :
    0 < ∫ x, Real.exp (σ * x) * scaledBump A x := by
  have hs : 0 < Real.sqrt A := Real.sqrt_pos.2 hA
  have hz : Real.exp (σ * 0) * scaledBump A 0 ≠ 0 := by
    simp [scaledBump, sourceBump, ne_of_gt hs]
  exact integral_pos_of_integrable_nonneg_nonzero
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (scaled_bump_continuous A hA)) (weighted_bump_integrable A σ hA)
    (fun x ↦ mul_nonneg (Real.exp_pos _).le (scaled_bump_nonneg A x)) hz

/-- A primitive isolates the test's first pole moment from the positive bump moment. -/
def testFirstPrimitive (A σ x : ℝ) : ℝ :=
  x * polePrimitive A σ x - Real.exp (σ * x) * bumpInterior A x

/-- The source-test first moment has one remaining simple-pole derivative. -/
theorem test_first_primitive_has_deriv_at (A σ x : ℝ) (hσ : σ ^ 2 = 1 / 4) :
    HasDerivAt (testFirstPrimitive A σ)
      (x * Real.exp (σ * x) * (secondInterior A x - bumpInterior A x / 4) -
        2 * σ * (Real.exp (σ * x) * bumpInterior A x)) x := by
  have hd := ((hasDerivAt_id x).mul (polePrimitive_hasDerivAt A σ x hσ)).sub
    ((((hasDerivAt_id x).const_mul σ).exp).mul (bumpInterior_hasDerivAt A x))
  apply hd.congr_deriv
  dsimp [polePrimitive]
  ring

/-- The unnormalized source test has a nonzero first pole moment with exact sign. -/
theorem weighted_dilation_test_first_moment (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ x, x * Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) =
      2 * σ * ∫ x, Real.exp (σ * x) * scaledBump A x := by
  have hpos : 0 < A := by linarith
  have ht : (fun x ↦ x * Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) =
      (Icc (-A) A).indicator (fun x ↦ x * Real.exp (σ * x) *
        (secondInterior A x - bumpInterior A x / 4)) := by
    rw [explicit_dilationTest_eq_indicator A hpos]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  have hct : Continuous (fun x ↦ x * Real.exp (σ * x) *
      (secondInterior A x - bumpInterior A x / 4)) :=
    (continuous_id.mul (Real.continuous_exp.comp
      (continuous_const.mul continuous_id))).mul
      ((secondInterior_continuous A).sub ((bumpInterior_continuous A).div_const 4))
  have hcb : Continuous (fun x ↦ Real.exp (σ * x) * bumpInterior A x) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (bumpInterior_continuous A)
  have hd := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ test_first_primitive_has_deriv_at A σ x hσ)
    ((hct.sub (continuous_const.mul hcb)).intervalIntegrable (-A) A)
  have his : IntervalIntegrable (fun x ↦ 2 * σ *
      (Real.exp (σ * x) * bumpInterior A x)) volume (-A) A :=
    (hcb.const_mul (2 * σ)).intervalIntegrable _ _
  rw [intervalIntegral.integral_sub (hct.intervalIntegrable _ _)
    his,
    intervalIntegral.integral_const_mul] at hd
  have he : testFirstPrimitive A σ A = 0 ∧ testFirstPrimitive A σ (-A) = 0 := by
    simp [testFirstPrimitive, (polePrimitive_endpoints A σ (ne_of_gt hpos)).1,
      (polePrimitive_endpoints A σ (ne_of_gt hpos)).2,
      (bumpInterior_endpoints A (ne_of_gt hpos)).1,
      (bumpInterior_endpoints A (ne_of_gt hpos)).2]
  rw [he.1, he.2] at hd
  rw [ht, weighted_bump_eq_indicator A σ hpos,
    zeroExtension_integral _ (-A) A (by linarith),
    zeroExtension_integral _ (-A) A (by linarith)]
  linarith

/-- Normalization retains the exact simple-pole first moment of the source test. -/
theorem weighted_test_first_moment (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ x, x * Real.exp (σ * x) * normalizedTest explicitSecondDerivative A x) =
      (2 * σ * ∫ x, Real.exp (σ * x) * scaledBump A x) /
        Real.sqrt (sourceNormalization A) := by
  simp_rw [normalizedTest, ← mul_div_assoc]
  rw [integral_div, weighted_dilation_test_first_moment A σ hA hσ]

/-- The source test has only simple pole cancellation: its first pole moments are nonzero. -/
theorem weighted_test_first_moment_ne_zero (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ x, x * Real.exp (σ * x) * normalizedTest explicitSecondDerivative A x) ≠ 0 := by
  rw [weighted_test_first_moment A σ hA hσ]
  apply div_ne_zero
  · have hs : σ ≠ 0 := by intro h; simp [h] at hσ
    exact mul_ne_zero (mul_ne_zero (by norm_num) hs)
      (ne_of_gt (weighted_bump_integral_pos A σ (by linarith)))
  · exact ne_of_gt (Real.sqrt_pos.2 (source_normalization_pos A hA))

/-- The actual scaled bump has the closed compact support used by the source. -/
theorem scaled_bump_has_compact_support (A : ℝ) (hA : 0 < A) :
    HasCompactSupport (scaledBump A) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  rw [scaledBump_eq_indicator A hA]
  exact indicator_of_notMem hx _

/-- Genuine Fourier inversion identifies a compact real autocorrelation with its cosine density. -/
theorem compact_correlation_eq_integral_cos_source (v : ℝ → ℝ)
    (hv : Continuous v) (hcv : HasCompactSupport v)
    (hsquare : Integrable (fun ξ ↦ Complex.normSq (sourceFourier v ξ))) (t : ℝ) :
    correlation v t = ∫ ξ, Real.cos (ξ * t) *
      (Complex.normSq (sourceFourier v ξ) / (2 * Real.pi)) := by
  have hiv : Integrable v := hv.integrable_of_hasCompactSupport hcv
  have hir : Integrable (fun x ↦ v (-x)) := hiv.comp_neg
  have hconv : correlation v = v ⋆ (fun x ↦ v (-x)) := by
    funext s
    unfold correlation
    rw [convolution_lsmul]
    apply integral_congr_ae
    filter_upwards [] with x
    simp [neg_sub]
  have hi : Integrable (fun s ↦ (correlation v s : ℂ)) := by
    apply Complex.ofRealCLM.integrable_comp
    change Integrable (correlation v)
    rw [hconv]
    exact hiv.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hir
  have hc : Continuous (fun s ↦ (correlation v s : ℂ)) := by
    apply Complex.continuous_ofReal.comp
    rw [hconv]
    exact hcv.continuous_convolution_left (ContinuousLinearMap.lsmul ℝ ℝ) hv
      hir.locallyIntegrable
  have hcomplex : (fun s ↦ (correlation v s : ℂ)) =
      (fun x ↦ (v x : ℂ)) ⋆[ContinuousLinearMap.mul ℂ ℂ]
        (fun x ↦ (v (-x) : ℂ)) := by
    funext s
    unfold correlation
    calc
      _ = ∫ x, ((v x * v (x - s) : ℝ) : ℂ) := integral_ofReal.symm
      _ = _ := by
        rw [convolution]
        apply integral_congr_ae
        filter_upwards [] with x
        simp [neg_sub]
  have hfourier (ξ : ℝ) :
      𝓕 (fun s ↦ (correlation v s : ℂ)) ξ =
        (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ) := by
    have hf : Integrable (fun x ↦ (v x : ℂ)) := Complex.ofRealCLM.integrable_comp hiv
    have hg : Integrable (fun x ↦ (v (-x) : ℂ)) := Complex.ofRealCLM.integrable_comp hir
    rw [hcomplex, Real.fourier_mul_convolution_eq hf hg,
      SourcePlancherel.fourier_reflected_real, Complex.mul_conj]
  have hstd : Integrable (fun ξ ↦ Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ)) := by
    simp_rw [SourcePlancherel.standardFourier_eq_sourceFourier]
    exact (integrable_comp_mul_left_iff _
      (neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero))).mpr hsquare
  have hfc : Integrable (𝓕 (fun s ↦ (correlation v s : ℂ))) := by
    convert Complex.ofRealCLM.integrable_comp hstd using 1
    funext ξ
    exact hfourier ξ
  have hinv : (correlation v t : ℂ) =
      ∫ ξ, Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ) := by
    have heq := hi.fourierInv_fourier_eq hfc (hc.continuousAt (x := t))
    rw [← heq, Real.fourierInv_eq']
    apply integral_congr_ae
    filter_upwards [] with ξ
    rw [hfourier ξ]
    simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial,
      Complex.ofReal_mul, Complex.ofReal_ofNat]
    congr 2
    ring
  have hcinv : Integrable (fun ξ : ℝ ↦
      Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ)) := by
    apply (Complex.ofRealCLM.integrable_comp hstd).bdd_mul (c := 1)
    · exact (by fun_prop : Continuous (fun ξ : ℝ ↦
        Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I))).aestronglyMeasurable
    · filter_upwards [] with ξ
      simp [Complex.norm_exp]
  have hcos : correlation v t = ∫ ξ, Real.cos (2 * Real.pi * ξ * t) *
      Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) := by
    have heq := congrArg Complex.re hinv
    have hre : (∫ ξ, Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
        (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ)).re =
        ∫ ξ, (Complex.exp ((2 * Real.pi * ξ * t : ℝ) * Complex.I) *
          (Complex.normSq (𝓕 (fun x ↦ (v x : ℂ)) ξ) : ℂ)).re :=
      (integral_re hcinv).symm
    rw [hre] at heq
    simpa [Complex.exp_re, Complex.mul_re] using heq
  rw [hcos]
  simp_rw [SourcePlancherel.standardFourier_eq_sourceFourier]
  have heq : (fun ξ : ℝ ↦ Real.cos (2 * Real.pi * ξ * t) *
      Complex.normSq (sourceFourier v (-(2 * Real.pi) * ξ))) =
      (fun ξ : ℝ ↦ Real.cos (ξ * t) * Complex.normSq (sourceFourier v ξ)) ∘
        (fun ξ : ℝ ↦ -(2 * Real.pi) * ξ) := by
    funext ξ
    simp only [Function.comp_apply]
    rw [show -(2 * Real.pi) * ξ * t = -(2 * Real.pi * ξ * t) by ring, Real.cos_neg]
  rw [heq]
  change (∫ ξ : ℝ, (fun η : ℝ ↦ Real.cos (η * t) *
      Complex.normSq (sourceFourier v η)) (-(2 * Real.pi) * ξ)) = _
  rw [Measure.integral_comp_mul_left (fun ξ : ℝ ↦ Real.cos (ξ * t) *
    Complex.normSq (sourceFourier v ξ)) (-(2 * Real.pi))]
  have habs : |(-(2 * Real.pi))⁻¹| = (2 * Real.pi)⁻¹ := by
    rw [inv_neg, abs_neg, abs_of_pos (inv_pos.mpr (mul_pos (by norm_num) Real.pi_pos))]
  rw [habs, smul_eq_mul, ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with ξ
  ring

/-- The exact zeroth fixed kernel is the autocorrelation of the actual nonnegative bump. -/
theorem fixed_kernel_zero_eq_bump_correlation (s : ℝ) :
    JointPhaseScaling.fixedKernel 0 s = ∫ x, sourceBump x * sourceBump (x - s) := by
  have hb : scaledBump 1 = sourceBump := by
    funext x
    simp [scaledBump]
  have hc : Continuous sourceBump := by
    rw [← hb]
    exact scaled_bump_continuous 1 (by norm_num)
  have hcs : HasCompactSupport sourceBump := by
    rw [← hb]
    exact scaled_bump_has_compact_support 1 (by norm_num)
  have hsquare : Integrable (fun ξ ↦ Complex.normSq (sourceFourier sourceBump ξ)) := by
    have hd : Integrable JointPhaseScaling.bumpDensity := by
      have he : JointPhaseScaling.bumpMomentDensity 0 = JointPhaseScaling.bumpDensity := by
        funext u
        simp [JointPhaseScaling.bumpMomentDensity]
      rw [← he]
      exact JointPhaseScaling.bump_moment_density_integrable 0 (by norm_num)
    have hm := hd.const_mul (2 * Real.pi)
    convert hm using 1
    funext ξ
    unfold JointPhaseScaling.bumpDensity
    field_simp
  have heq := compact_correlation_eq_integral_cos_source sourceBump hc hcs hsquare s
  simpa [correlation, JointPhaseScaling.fixedKernel,
    JointPhaseScaling.bumpMomentDensity, JointPhaseScaling.bumpDensity] using heq.symm

/-- Actual bump positivity gives pointwise positivity of the base kernel. -/
theorem fixed_kernel_zero_nonneg (s : ℝ) : 0 ≤ JointPhaseScaling.fixedKernel 0 s := by
  rw [fixed_kernel_zero_eq_bump_correlation]
  exact integral_nonneg (fun x ↦ mul_nonneg (source_bump_nonneg x)
    (source_bump_nonneg (x - s)))

end

end FormalResearch.RiemannHypothesis.GeneralizedPoleMoments
