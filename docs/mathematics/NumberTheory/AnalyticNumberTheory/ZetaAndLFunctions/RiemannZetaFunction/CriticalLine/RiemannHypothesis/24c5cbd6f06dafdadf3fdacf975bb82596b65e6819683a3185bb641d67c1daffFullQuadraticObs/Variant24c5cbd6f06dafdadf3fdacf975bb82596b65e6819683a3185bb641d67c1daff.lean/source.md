# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs.Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12ab86063897381fe485ab3c4b941308d99fd919` · SHA-256 `24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerPhaseDefect
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect
import FormalResearch.RiemannHypothesis.FullQuadraticOperator
import FormalResearch.RiemannHypothesis.FullQuadraticAudit
import FormalResearch.RiemannHypothesis.SourceLaplaceDetection
import Mathlib.NumberTheory.SumPrimeReciprocals
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-!
# Negative intervals of the complete source multiplier

The full multiplier retains every prime power in the actual strict inventory.
Its zero-frequency value is unbounded below as the radius grows. Continuity
extends each such value to an open frequency interval, so a uniform pointwise
lower bound for the complete multiplier is false.

The canonical negative-multiplier expectation is also unbounded on the actual
normalized source. This rules out bounding that negative overlap uniformly;
the positive and negative sectors can still cancel in the complete signed form.
Neither result classifies the negative index of the supported logarithmic-space
compression or disproves the required lower bound on the actual source orbit.
AI attribution: Codex authored these proofs.
-/

namespace FormalResearch.RiemannHypothesis.FullQuadraticObstruction

open MeasureTheory Filter Set
open scoped BigOperators Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerPhaseDefect EstimateTailReduction

noncomputable section

/-- Each prime's reciprocal is controlled by its actual full-inventory coefficient. -/
theorem prime_reciprocal_le_weight (p : Nat.Primes) :
    Real.log 2 * (1 / (p : ℝ)) ≤ primeWeight p := by
  have hp : (2 : ℝ) ≤ p := by exact_mod_cast p.prop.two_le
  have hp0 : 0 < (p : ℝ) := by linarith
  have hs : 0 < Real.sqrt (p : ℝ) := Real.sqrt_pos.mpr hp0
  have hsle : Real.sqrt (p : ℝ) ≤ p := by
    nlinarith [Real.sq_sqrt hp0.le, Real.sqrt_nonneg (p : ℝ)]
  rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime p.prop]
  calc
    Real.log 2 * (1 / (p : ℝ)) = Real.log 2 / p := by ring
    _ ≤ Real.log (p : ℝ) / p :=
      div_le_div_of_nonneg_right (Real.log_le_log (by norm_num) hp) hp0.le
    _ ≤ Real.log (p : ℝ) / Real.sqrt (p : ℝ) :=
      div_le_div_of_nonneg_left (Real.log_nonneg (by linarith)) hs hsle

/-- A finite set of primes embeds into the unchanged strict full source inventory. -/
theorem finite_primes_mem_full_inventory (s : Finset Nat.Primes) :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ p ∈ s, (p : ℕ) ∈ primeIndices A := by
  classical
  let N := s.sup (fun p ↦ (p : ℕ))
  let A : ℝ := max 1 (Real.log ((N : ℝ) + 1))
  refine ⟨A, le_max_left _ _, ?_⟩
  intro p hp
  rw [mem_primeIndices_iff]
  refine ⟨p.prop.two_le, ?_⟩
  have hpN : (p : ℝ) ≤ N := by
    exact_mod_cast (Finset.le_sup (f := fun p : Nat.Primes ↦ (p : ℕ)) hp)
  have hA : Real.log ((N : ℝ) + 1) ≤ 2 * A := by
    have hA1 : 1 ≤ A := le_max_left _ _
    have hAl : Real.log ((N : ℝ) + 1) ≤ A := le_max_right _ _
    linarith
  calc
    (p : ℝ) < (N : ℝ) + 1 := by linarith
    _ = Real.exp (Real.log ((N : ℝ) + 1)) :=
      (Real.exp_log (by positivity)).symm
    _ ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr hA

/-- The complete finite prime-power budget has no radius-uniform upper bound. -/
theorem total_weight_unbounded (B : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ B < totalWeight A := by
  classical
  by_contra h
  push Not at h
  have hs : Summable (fun p : Nat.Primes ↦ Real.log 2 * (1 / (p : ℝ))) := by
    apply summable_of_sum_le (c := B) (fun p ↦ by positivity)
    intro s
    obtain ⟨A, hA, hi⟩ := finite_primes_mem_full_inventory s
    calc
      ∑ p ∈ s, Real.log 2 * (1 / (p : ℝ)) ≤ ∑ p ∈ s, primeWeight p :=
        Finset.sum_le_sum (fun p _ ↦ prime_reciprocal_le_weight p)
      _ = ∑ n ∈ s.image (fun p : Nat.Primes ↦ (p : ℕ)), primeWeight n := by
        rw [Finset.sum_image]
        intro p _ q _ hpq
        exact Subtype.ext hpq
      _ ≤ totalWeight A := by
        unfold totalWeight
        apply Finset.sum_le_sum_of_subset_of_nonneg
        · intro n hn
          obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp hn
          exact hi p hp
        · exact fun n _ _ ↦ primeWeight_nonneg n
      _ ≤ B := h A hA
  exact Nat.Primes.not_summable_one_div
    ((summable_mul_left_iff (ne_of_gt (Real.log_pos (by norm_num : (1 : ℝ) < 2)))).mp hs)

/-- The full signed multiplier is continuous in frequency at every fixed radius. -/
theorem spectral_multiplier_continuous (A : ℝ) : Continuous (spectralMultiplier A) := by
  unfold spectralMultiplier cosineMultiplier
  apply AdmissionDirect.actual_multiplier_continuous.add
  exact continuous_const.mul (continuous_finsetSum _ fun n _ ↦
    continuous_const.mul (Real.continuous_cos.comp
      (continuous_id.mul continuous_const)))

/-- The complete multiplier has arbitrarily negative zero-frequency values. -/
theorem full_multiplier_zero_unbounded_below (M : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ spectralMultiplier A 0 < M := by
  obtain ⟨A, hA, hW⟩ := total_weight_unbounded ((archimedeanMultiplier 0 - M) / 2)
  refine ⟨A, hA, ?_⟩
  rw [spectralMultiplier_zero_frequency]
  linarith

/-- Arbitrarily negative full multiplier values persist on genuine open frequency intervals. -/
theorem full_multiplier_negative_interval (M : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ ∃ ε : ℝ, 0 < ε ∧
      ∀ ξ : ℝ, |ξ| < ε → spectralMultiplier A ξ < M := by
  obtain ⟨A, hA, hM⟩ := full_multiplier_zero_unbounded_below M
  have hn : {ξ : ℝ | spectralMultiplier A ξ < M} ∈ 𝓝 (0 : ℝ) :=
    (spectral_multiplier_continuous A).continuousAt.preimage_mem_nhds (Iio_mem_nhds hM)
  obtain ⟨ε, hε, hball⟩ := Metric.mem_nhds_iff.mp hn
  refine ⟨A, hA, ε, hε, ?_⟩
  intro ξ hξ
  apply hball
  simpa only [Metric.mem_ball, Real.dist_eq, sub_zero] using hξ

/-- One fixed lower constant cannot bound the complete multiplier on all source radii. -/
theorem no_uniform_full_multiplier_lower_bound :
    ¬∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A → ∀ ξ : ℝ, lower ≤ spectralMultiplier A ξ := by
  rintro ⟨lower, h⟩
  obtain ⟨A, hA, hneg⟩ := full_multiplier_zero_unbounded_below lower
  exact (not_lt_of_ge (h A hA 0)) hneg

/-- A genuine unit-mass frequency window can have arbitrarily negative complete form value.
The frequency window is not asserted to be a transform of a supported source test. -/
theorem normalized_negative_frequency_window (M : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ ∃ f : ℝ → ℝ,
      MemLp f 2 volume ∧ Integrable (fun ξ ↦ f ξ ^ 2) ∧
      (∫ ξ, f ξ ^ 2) = 1 ∧
      Integrable (fun ξ ↦ archimedeanMultiplier ξ * f ξ ^ 2) ∧
      Integrable (fun ξ ↦ spectralMultiplier A ξ * f ξ ^ 2) ∧
      (∫ ξ, spectralMultiplier A ξ * f ξ ^ 2) < M := by
  obtain ⟨A, hA, ε, hε, hneg⟩ := full_multiplier_negative_interval (M - 1)
  let f : ℝ → ℝ := (Icc (-ε / 2) (ε / 2)).indicator
    (fun _ ↦ 1 / Real.sqrt ε)
  have horder : -ε / 2 ≤ ε / 2 := by linarith
  have hsqrt : Real.sqrt ε ≠ 0 := ne_of_gt (Real.sqrt_pos.mpr hε)
  have hsq : (fun ξ ↦ f ξ ^ 2) = (Icc (-ε / 2) (ε / 2)).indicator
      (fun _ ↦ (1 / Real.sqrt ε) ^ 2) := by
    funext ξ
    simp only [f, indicator_apply]
    split_ifs <;> simp
  have hnorm : (∫ ξ, f ξ ^ 2) = 1 := by
    rw [hsq, Realization.zeroExtension_integral _ _ _ horder,
      intervalIntegral.integral_const, smul_eq_mul]
    have hsquare : (1 / Real.sqrt ε) ^ 2 = 1 / ε := by
      rw [div_pow, one_pow, Real.sq_sqrt hε.le]
    rw [hsquare]
    field_simp
    ring
  have hGamma : (fun ξ ↦ archimedeanMultiplier ξ * f ξ ^ 2) =
      (Icc (-ε / 2) (ε / 2)).indicator
        (fun ξ ↦ archimedeanMultiplier ξ * (1 / Real.sqrt ε) ^ 2) := by
    funext ξ
    simp only [f, indicator_apply]
    split_ifs <;> simp
  have hfull : (fun ξ ↦ spectralMultiplier A ξ * f ξ ^ 2) =
      (Icc (-ε / 2) (ε / 2)).indicator
        (fun ξ ↦ spectralMultiplier A ξ * (1 / Real.sqrt ε) ^ 2) := by
    funext ξ
    simp only [f, indicator_apply]
    split_ifs <;> simp
  refine ⟨A, hA, f, ?_, ?_, hnorm, ?_, ?_, ?_⟩
  · exact memLp_indicator_const 2 measurableSet_Icc _
      (Or.inr (measure_Icc_lt_top.ne))
  · rw [hsq]
    exact Realization.integrable_zeroExtension _ continuous_const _ _
  · rw [hGamma]
    exact Realization.integrable_zeroExtension _
      (AdmissionDirect.actual_multiplier_continuous.mul continuous_const) _ _
  · rw [hfull]
    exact Realization.integrable_zeroExtension _
      ((spectral_multiplier_continuous A).mul continuous_const) _ _
  · rw [hfull, Realization.zeroExtension_integral _ _ _ horder]
    have hb := intervalIntegral.integral_mono_on (μ := volume) horder
      (((spectral_multiplier_continuous A).mul continuous_const).intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _)
      (fun ξ hξ ↦ show spectralMultiplier A ξ * (1 / Real.sqrt ε) ^ 2 ≤
        (M - 1) * (1 / Real.sqrt ε) ^ 2 from
        mul_le_mul_of_nonneg_right (hneg ξ (by
          have habs : |ξ| ≤ ε / 2 := abs_le.mpr ⟨by linarith [hξ.1], hξ.2⟩
          linarith)).le (sq_nonneg _))
    have heq : (∫ _ in (-ε / 2)..(ε / 2),
        (M - 1) * (1 / Real.sqrt ε) ^ 2) = M - 1 := by
      rw [intervalIntegral.integral_const, smul_eq_mul,
        div_pow, one_pow, Real.sq_sqrt hε.le]
      field_simp
      ring
    rw [heq] at hb
    change (∫ ξ in (-ε / 2)..(ε / 2),
      spectralMultiplier A ξ * (1 / Real.sqrt ε) ^ 2) ≤ M - 1 at hb
    exact hb.trans_lt (by linarith)

/-- On the actual common Gamma form domain, unit Hilbert vectors have arbitrarily negative
complete form values as the radius varies. These vectors need not belong to the source orbit. -/
theorem full_form_unit_values_unbounded_below (M : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ ∃ v : FullQuadraticOperator.Hilbert,
      ‖v‖ = 1 ∧ FullQuadraticOperator.GammaFormDomain v ∧
      FullQuadraticOperator.fullQuadraticForm A v < M := by
  obtain ⟨A, hA, f, hf, _, hnorm, hGamma, _, hvalue⟩ :=
    normalized_negative_frequency_window M
  have hg : MemLp (fun ξ ↦ (f ξ : ℂ)) 2 volume :=
    hf.continuousLinearMap_comp Complex.ofRealCLM
  let v : FullQuadraticOperator.Hilbert := hg.toLp (fun ξ ↦ (f ξ : ℂ))
  have hae : v =ᵐ[volume] (fun ξ ↦ (f ξ : ℂ)) := MemLp.coeFn_toLp _
  have hvnorm : ‖v‖ ^ 2 = 1 := by
    rw [← inner_self_eq_norm_sq (𝕜 := ℂ), L2.inner_def]
    have he : (∫ ξ, inner ℂ (v ξ) (v ξ)) = ((∫ ξ, f ξ ^ 2 : ℝ) : ℂ) := by
      calc
        _ = ∫ ξ, ((f ξ ^ 2 : ℝ) : ℂ) := by
          apply integral_congr_ae
          filter_upwards [hae] with ξ hξ
          rw [hξ]
          simp only [RCLike.inner_apply, Complex.mul_conj, Complex.normSq_ofReal,
            pow_two, Complex.ofReal_mul]
        _ = _ := integral_ofReal
    have hh := congrArg Complex.re he
    simp only [Complex.ofReal_re] at hh
    simpa [hnorm] using hh
  refine ⟨A, hA, v, by nlinarith [norm_nonneg v], ?_, ?_⟩
  · apply hGamma.norm.congr
    filter_upwards [hae] with ξ hξ
    rw [hξ]
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (sq_nonneg (f ξ)),
      Complex.normSq_ofReal, pow_two]
  · have he : FullQuadraticOperator.fullQuadraticForm A v =
        ∫ ξ, spectralMultiplier A ξ * f ξ ^ 2 := by
      apply integral_congr_ae
      filter_upwards [hae] with ξ hξ
      rw [hξ]
      simp only [Complex.normSq_ofReal, pow_two]
    exact he ▸ hvalue

/-- The complete ambient frequency form has no radius-uniform lower bound on its unit domain.
This does not assert failure of the required lower bound on the actual source vectors. -/
theorem no_uniform_global_full_form_lower_bound :
    ¬∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A → ∀ v : FullQuadraticOperator.Hilbert,
      ‖v‖ = 1 → FullQuadraticOperator.GammaFormDomain v →
      lower ≤ FullQuadraticOperator.fullQuadraticForm A v := by
  rintro ⟨lower, h⟩
  obtain ⟨A, hA, v, hnorm, hdomain, hneg⟩ := full_form_unit_values_unbounded_below lower
  exact (not_lt_of_ge (h A hA v hnorm hdomain)) hneg

/-- The canonical negative part of the complete real frequency multiplier. -/
def negativeMultiplier (A ξ : ℝ) : ℝ := max 0 (-spectralMultiplier A ξ)

/-- The canonical negative-multiplier expectation on the unchanged actual source density. -/
def sourceNegativeValue (A : ℝ) : ℝ :=
  ∫ ξ, negativeMultiplier A ξ * CorrelationSpectralLens.spectralDensity A ξ

/-- The complete multiplier's negative part is nonnegative at every frequency. -/
theorem negative_multiplier_nonneg (A ξ : ℝ) : 0 ≤ negativeMultiplier A ξ :=
  le_max_left _ _

/-- The canonical negative expectation is genuinely integrable on every actual source. -/
theorem source_negative_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ negativeMultiplier A ξ * CorrelationSpectralLens.spectralDensity A ξ) := by
  have hc : Continuous (CorrelationSpectralLens.spectralDensity A) := by
    unfold CorrelationSpectralLens.spectralDensity
    exact (Complex.continuous_normSq.comp (BridgeFourier.sourceFourier_continuous
      (CorrelationRegularity.normalizedTest_integrable A (by linarith)))).div_const _
  have hn : Continuous (negativeMultiplier A) :=
    continuous_const.max (spectral_multiplier_continuous A).neg
  apply (actual_spectralMultiplier_integrable A hA).norm.mono'
    (hn.mul hc).aestronglyMeasurable
  filter_upwards [] with ξ
  simp only [Pi.mul_apply]
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (negative_multiplier_nonneg A ξ)
    (CorrelationSpectralLens.spectralDensity_nonneg A ξ)), Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (CorrelationSpectralLens.spectralDensity_nonneg A ξ)]
  exact mul_le_mul_of_nonneg_right (max_le (abs_nonneg _) (neg_le_abs _))
    (CorrelationSpectralLens.spectralDensity_nonneg A ξ)

/-- The exact scaled negative expectation also has genuine integrability. -/
theorem rescaled_source_negative_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun u ↦ negativeMultiplier A (u / A) * JointPhaseScaling.rescaledDensity A u) := by
  have hne : A ≠ 0 := by linarith
  convert ((source_negative_integrable A hA).comp_div hne).div_const A using 1
  funext u
  unfold JointPhaseScaling.rescaledDensity
  ring

/-- Genuine positive dilation transports the actual negative expectation without an error. -/
theorem source_negative_eq_rescaled (A : ℝ) (hA : 1 ≤ A) :
    sourceNegativeValue A =
      ∫ u, negativeMultiplier A (u / A) * JointPhaseScaling.rescaledDensity A u := by
  have hpos : 0 < A := by linarith
  unfold JointPhaseScaling.rescaledDensity
  simp_rw [← mul_div_assoc]
  rw [integral_div, Measure.integral_comp_div
    (fun ξ ↦ negativeMultiplier A ξ * CorrelationSpectralLens.spectralDensity A ξ) A,
    abs_of_pos hpos, smul_eq_mul]
  unfold sourceNegativeValue
  field_simp

/-- At small joint-scaled frequencies all full-inventory phases retain a fixed positive cosine. -/
theorem full_multiplier_small_scaled_upper (A u : ℝ) (hA : 1 ≤ A) (hu : |u| ≤ 1 / 4) :
    spectralMultiplier A (u / A) ≤ archimedeanMultiplier 0 + 6 - totalWeight A := by
  have hpos : 0 < A := by linarith
  have hcos (n : ℕ) (hn : n ∈ primeIndices A) :
      (1 / 2 : ℝ) ≤ Real.cos ((u / A) * Real.log n) := by
    obtain ⟨hl0, hl2⟩ := JointPhaseScaling.scaled_log_mem_range A hA n hn
    have he : (u / A) * Real.log n = u * (Real.log n / A) := by ring
    have habs : |(u / A) * Real.log n| ≤ 1 / 2 := by
      rw [he, abs_mul, abs_of_nonneg hl0]
      nlinarith [mul_le_mul_of_nonneg_left hl2.le (abs_nonneg u)]
    have hsq : ((u / A) * Real.log n) ^ 2 ≤ 1 / 4 := by
      nlinarith [sq_abs ((u / A) * Real.log n), abs_nonneg ((u / A) * Real.log n), sq_nonneg
        (|(u / A) * Real.log n| - 1 / 2)]
    nlinarith [Real.one_sub_sq_div_two_le_cos (x := (u / A) * Real.log n)]
  have hsum : totalWeight A / 2 ≤
      ∑ n ∈ primeIndices A, primeWeight n * Real.cos ((u / A) * Real.log n) := by
    unfold totalWeight
    rw [Finset.sum_div]
    apply Finset.sum_le_sum
    intro n hn
    nlinarith [mul_le_mul_of_nonneg_left (hcos n hn) (primeWeight_nonneg n)]
  have hfreq : |u / A| ≤ 1 := by
    rw [abs_div, abs_of_pos hpos]
    apply (div_le_iff₀ hpos).mpr
    linarith
  have hsquare : (u / A) ^ 2 ≤ 1 := by
    nlinarith [sq_abs (u / A), abs_nonneg (u / A), sq_nonneg (|u / A| - 1)]
  have hgamma := FullQuadraticAudit.archimedean_multiplier_upper (u / A)
  unfold spectralMultiplier cosineMultiplier
  linarith

/-- The unchanged normalization decreases from its radius-one value on admitted radii. -/
theorem source_normalization_le_radius_one (A : ℝ) (hA : 1 ≤ A) :
    sourceNormalization A ≤ sourceNormalization 1 := by
  have h2 : 1 ≤ A ^ 2 := one_le_pow₀ hA
  have h4 : 1 ≤ A ^ 4 := one_le_pow₀ hA
  have ht2 : (131072 / 45045 : ℝ) / (2 * A ^ 2) ≤ (131072 / 45045 : ℝ) / 2 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
  have ht4 : (196608 / 5005 : ℝ) / A ^ 4 ≤ (196608 / 5005 : ℝ) := by
    simpa only [div_one] using
      div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 196608 / 5005) zero_lt_one h4
  unfold sourceNormalization
  norm_num only [one_pow, mul_one, div_one]
  linarith

/-- Every actual scaled source density dominates one fixed multiple of the true bump density. -/
theorem rescaled_density_fixed_lower (A u : ℝ) (hA : 1 ≤ A) :
    JointPhaseScaling.bumpDensity u / (16 * sourceNormalization 1) ≤
      JointPhaseScaling.rescaledDensity A u := by
  have hZ := source_normalization_pos A hA
  have hZ1 := source_normalization_pos 1 (by norm_num)
  have hb0 := JointPhaseScaling.bump_moment_density_nonneg 0 u
  have hb1 : 0 ≤ JointPhaseScaling.bumpMomentDensity 1 u / (2 * A ^ 2) := by
    positivity [JointPhaseScaling.bump_moment_density_nonneg 1 u]
  have hb2 : 0 ≤ JointPhaseScaling.bumpMomentDensity 2 u / A ^ 4 := by
    positivity [JointPhaseScaling.bump_moment_density_nonneg 2 u]
  rw [JointPhaseScaling.rescaled_density_eq_three_moments A u hA]
  calc
    _ = (JointPhaseScaling.bumpMomentDensity 0 u / 16) / sourceNormalization 1 := by
      simp only [JointPhaseScaling.bumpMomentDensity, mul_zero, pow_zero, one_mul]
      ring
    _ ≤ (JointPhaseScaling.bumpMomentDensity 0 u / 16) / sourceNormalization A :=
      div_le_div_of_nonneg_left (by positivity) hZ
        (source_normalization_le_radius_one A hA)
    _ ≤ _ := div_le_div_of_nonneg_right (by linarith) hZ.le

/-- The actual bump spectral density is strictly positive at zero, using its exact native mass. -/
theorem bump_density_at_zero_pos : 0 < JointPhaseScaling.bumpDensity 0 := by
  have he : sourceFourier sourceBump 0 = SourceBumpLaplace.bumpLaplace 0 := by
    rw [← SourceLaplaceDetection.bilateral_laplace_source_bump]
    simp [sourceFourier, SourceLaplaceDetection.bilateralLaplace]
  unfold JointPhaseScaling.bumpDensity
  rw [he]
  exact div_pos (Complex.normSq_pos.mpr SourceBumpLaplace.bump_laplace_zero_ne_zero)
    (by positivity)

/-- A fixed small scaled frequency interval retains a strictly positive amount of actual density. -/
theorem actual_density_fixed_scaled_window :
    ∃ r c : ℝ, 0 < r ∧ r ≤ 1 / 4 ∧ 0 < c ∧
      ∀ A : ℝ, 1 ≤ A → ∀ u : ℝ, |u| ≤ r → c ≤ JointPhaseScaling.rescaledDensity A u := by
  have hc : Continuous JointPhaseScaling.bumpDensity :=
    (Complex.continuous_normSq.comp
      (BridgeFourier.sourceFourier_continuous JointPhaseScaling.source_bump_integrable)).div_const _
  have hn : {u : ℝ | JointPhaseScaling.bumpDensity 0 / 2 <
      JointPhaseScaling.bumpDensity u} ∈ 𝓝 (0 : ℝ) :=
    hc.continuousAt.preimage_mem_nhds (Ioi_mem_nhds (by linarith [bump_density_at_zero_pos]))
  obtain ⟨δ, hδ, hd⟩ := Metric.mem_nhds_iff.mp hn
  let r : ℝ := min (δ / 2) (1 / 4)
  let c : ℝ := (JointPhaseScaling.bumpDensity 0 / 2) / (16 * sourceNormalization 1)
  have hr : 0 < r := lt_min (by linarith) (by norm_num)
  refine ⟨r, c, hr, min_le_right _ _, by
    dsimp [c]
    exact div_pos (by linarith [bump_density_at_zero_pos])
      (mul_pos (by norm_num) (source_normalization_pos 1 (by norm_num))), ?_⟩
  intro A hA u hu
  have huδ : |u| < δ := by
    have hrd : r ≤ δ / 2 := min_le_left _ _
    linarith
  have hb : JointPhaseScaling.bumpDensity 0 / 2 < JointPhaseScaling.bumpDensity u :=
    hd (by simpa only [Metric.mem_ball, Real.dist_eq, sub_zero] using huδ)
  exact (div_le_div_of_nonneg_right hb.le (by
    positivity [source_normalization_pos 1 (by norm_num)])).trans
      (rescaled_density_fixed_lower A u hA)

/-- The complete multiplier's canonical negative part has unbounded expectation on the actual
normalized source. Signed cancellation can still bound the assembled quadratic value. -/
theorem source_negative_value_unbounded (B : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ B < sourceNegativeValue A := by
  obtain ⟨r, c, hr, hrsmall, hc, hwindow⟩ := actual_density_fixed_scaled_window
  let d : ℝ := (|B| + 1) / (2 * r * c)
  have hd : 0 < d := div_pos (by positivity) (by positivity)
  obtain ⟨A, hA, hW⟩ := total_weight_unbounded (archimedeanMultiplier 0 + 6 + d)
  have hbound : (∫ u, (Icc (-r) r).indicator (fun _ ↦ d * c) u) ≤
      ∫ u, negativeMultiplier A (u / A) * JointPhaseScaling.rescaledDensity A u := by
    apply integral_mono (Realization.integrable_zeroExtension _ continuous_const _ _)
      (rescaled_source_negative_integrable A hA)
    intro u
    by_cases hu : u ∈ Icc (-r) r
    · rw [indicator_of_mem hu]
      have habs : |u| ≤ r := abs_le.mpr hu
      have hm := full_multiplier_small_scaled_upper A u hA (habs.trans hrsmall)
      have hn : d ≤ negativeMultiplier A (u / A) := by
        have hmax := le_max_right 0 (-spectralMultiplier A (u / A))
        unfold negativeMultiplier
        linarith
      exact mul_le_mul hn (hwindow A hA u habs) hc.le (negative_multiplier_nonneg A (u / A))
    · rw [indicator_of_notMem hu]
      exact mul_nonneg (negative_multiplier_nonneg A (u / A))
        (JointPhaseScaling.rescaled_density_nonneg A u hA)
  have hmass : (∫ u, (Icc (-r) r).indicator (fun _ ↦ d * c) u) = |B| + 1 := by
    rw [Realization.zeroExtension_integral _ _ _ (by linarith),
      intervalIntegral.integral_const, smul_eq_mul]
    dsimp [d]
    field_simp
    ring
  rw [hmass, ← source_negative_eq_rescaled A hA] at hbound
  refine ⟨A, hA, ?_⟩
  linarith [le_abs_self B]

/-- The scalar negative expectation is exactly the canonical actual Hilbert source overlap. -/
theorem source_negative_value_eq_vector (A : ℝ) (hA : 1 ≤ A) :
    sourceNegativeValue A = ∫ ξ, negativeMultiplier A ξ *
      Complex.normSq (FullQuadraticOperator.sourceVector A hA ξ) := by
  apply integral_congr_ae
  filter_upwards [FullQuadraticOperator.source_vector_ae_eq A hA] with ξ hξ
  rw [hξ, FullQuadraticOperator.source_fourier_vector_norm_sq]

/-- The canonical negative overlap of the actual norm-one Hilbert source is genuinely integrable. -/
theorem source_negative_vector_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ negativeMultiplier A ξ *
      Complex.normSq (FullQuadraticOperator.sourceVector A hA ξ)) := by
  apply (source_negative_integrable A hA).congr
  filter_upwards [FullQuadraticOperator.source_vector_ae_eq A hA] with ξ hξ
  rw [hξ, FullQuadraticOperator.source_fourier_vector_norm_sq]

/-- No single upper constant controls the negative part on the actual source density family. -/
theorem no_uniform_source_negative_upper_bound :
    ¬∃ upper : ℝ, ∀ A : ℝ, 1 ≤ A → sourceNegativeValue A ≤ upper := by
  rintro ⟨upper, h⟩
  obtain ⟨A, hA, hneg⟩ := source_negative_value_unbounded upper
  exact (not_lt_of_ge (h A hA)) hneg

/-- The preferred uniformly bounded negative-overlap route fails even on the exact actual vectors.
This concerns only the canonical multiplication negative part, not every possible representation. -/
theorem no_uniform_actual_vector_negative_overlap_bound :
    ¬∃ upper : ℝ, ∀ A : ℝ, ∀ hA : 1 ≤ A,
      (∫ ξ, negativeMultiplier A ξ *
        Complex.normSq (FullQuadraticOperator.sourceVector A hA ξ)) ≤ upper := by
  rintro ⟨upper, h⟩
  apply no_uniform_source_negative_upper_bound
  refine ⟨upper, ?_⟩
  intro A hA
  rw [source_negative_value_eq_vector A hA]
  exact h A hA

end
end FormalResearch.RiemannHypothesis.FullQuadraticObstruction
```
