# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs.Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fc18267dd11743dca9ba39a7cb7bdbae5065c10` · SHA-256 `43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerPhaseDefect
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect
import FormalResearch.RiemannHypothesis.FullQuadraticOperator
import Mathlib.NumberTheory.SumPrimeReciprocals

/-!
# Negative intervals of the complete source multiplier

The full multiplier retains every prime power in the actual strict inventory.
Its zero-frequency value is unbounded below as the radius grows. Continuity
extends each such value to an open frequency interval, so a uniform pointwise
lower bound for the complete multiplier is false.

This is an obstruction to global multiplier semiboundedness, not a bound on
the actual normalized source orbit. It does not classify the negative index of
the supported logarithmic-space compression, or prove the estimate obligation.
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

end
end FormalResearch.RiemannHypothesis.FullQuadraticObstruction
```
