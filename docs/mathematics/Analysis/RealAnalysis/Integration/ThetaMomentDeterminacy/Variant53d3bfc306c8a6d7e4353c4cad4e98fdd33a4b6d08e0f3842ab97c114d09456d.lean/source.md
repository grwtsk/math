# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ThetaMomentDeterminacy.Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e8ff1dd0dd4bf609f551a91ccd3bf2611000fda` · SHA-256 `fe2c2eac976ca013ce5a100c681f09681c553401379ec52e129f266af2522ef3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegrableCoshHalfOfEvenFactorialBound.Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegrableCoshHalfOfEvenFactorialBound.Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294","mathematical_subject":"Analysis.Integration","original_sha256":"e9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/ThetaMomentDeterminacy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ThetaMomentMeasure
import Mathlib.Probability.Moments.MGFAnalytic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Series
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.Analytic.Uniqueness


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegrableCoshHalfOfEvenFactorialBound.Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294

set_option autoImplicit false

/-!
# Hamburger determinacy of the actual theta magnitude measure

Review-only source over the recorded, unmerged PR151 theta-tail closure.
The competing measure has all real power moments integrable and equal to the
actual theta moments. Its exponential integrability is derived, not assumed.
-/

namespace FormalResearch.RiemannHypothesis.ThetaMomentDeterminacy

open MeasureTheory Set Filter ProbabilityTheory
open scoped Topology
open ThetaMomentMeasure

noncomputable section

/-- A factorial bound on even moments supplies a genuine exponential domain
for an arbitrary measure on the whole real line. -/
theorem integrable_cosh_half_of_even_factorial_bound
    (ν : Measure ℝ) (C : ℝ)
    (hint : ∀ n : ℕ, Integrable (fun x : ℝ => x ^ (2 * n)) ν)
    (hbound : ∀ n : ℕ, (∫ x : ℝ, x ^ (2 * n) ∂ν) ≤ ((2 * n).factorial : ℝ) * C) :
    Integrable (fun x : ℝ => Real.cosh (x / 2)) ν := by
  let F : ℕ → ℝ → ℝ := fun n x => (1 / 2 : ℝ) ^ (2 * n) / (2 * n).factorial * x ^ (2 * n)
  have hFint (n : ℕ) : Integrable (F n) ν := (hint n).const_mul _
  have hFnonneg (n : ℕ) (x : ℝ) : 0 ≤ F n x := by
    dsimp [F]
    apply mul_nonneg (by positivity)
    rw [pow_mul]
    exact pow_nonneg (sq_nonneg x) n
  have hFbound (n : ℕ) : (∫ x, F n x ∂ν) ≤ C * (1 / 4 : ℝ) ^ n := by
    rw [show F n = fun x : ℝ => ((1 / 2 : ℝ) ^ (2 * n) / (2 * n).factorial) * x ^ (2 * n) from rfl,
      integral_const_mul]
    calc
      _ ≤ ((1 / 2 : ℝ) ^ (2 * n) / (2 * n).factorial) * (((2 * n).factorial : ℝ) * C) :=
        mul_le_mul_of_nonneg_left (hbound n) (by positivity)
      _ = _ := by
        rw [pow_mul]
        norm_num
        field_simp
  have hFsum : Summable (fun n => ∫ x, F n x ∂ν) :=
    Summable.of_nonneg_of_le (fun n => integral_nonneg (hFnonneg n)) hFbound
      ((summable_geometric_of_norm_lt_one (by norm_num : ‖(1 / 4 : ℝ)‖ < 1)).mul_left C)
  have hlin : (∫⁻ x, ENNReal.ofReal (Real.cosh (x / 2)) ∂ν) =
      ∑' n, ENNReal.ofReal (∫ x, F n x ∂ν) := by
    calc
      _ = ∫⁻ x, ∑' n, ENNReal.ofReal (F n x) ∂ν := by
        apply lintegral_congr
        intro x
        have hseries : HasSum (fun n => F n x) (Real.cosh (x / 2)) := by
          convert Real.hasSum_cosh (x / 2) using 1
          ext n
          dsimp [F]
          rw [div_pow]
          field_simp
          simp only [one_pow, div_pow, one_mul]
          rw [mul_div_cancel₀ _ (by positivity : (2 : ℝ) ^ (2 * n) ≠ 0)]
        rw [← hseries.tsum_eq, ENNReal.ofReal_tsum_of_nonneg (fun n => hFnonneg n x) hseries.summable]
      _ = ∑' n, ∫⁻ x, ENNReal.ofReal (F n x) ∂ν :=
        lintegral_tsum (fun n => (hFint n).aestronglyMeasurable.aemeasurable.ennreal_ofReal)
      _ = _ := by
        congr 1
        ext n
        exact (ofReal_integral_eq_lintegral_ofReal (hFint n)
          (Eventually.of_forall (hFnonneg n))).symm
  apply (lintegral_ofReal_ne_top_iff_integrable
    (Real.continuous_cosh.comp (continuous_id.div_const 2)).aestronglyMeasurable
    (Eventually.of_forall (fun x => (Real.cosh_pos (x / 2)).le))).mp
  change (∫⁻ x, ENNReal.ofReal (Real.cosh (x / 2)) ∂ν) ≠ ⊤
  rw [hlin]
  exact hFsum.tsum_ofReal_ne_top

/-- The entire competing measure acquires an absolute exponential moment. -/
theorem integrable_exp_abs_half_of_even_factorial_bound
    (ν : Measure ℝ) (C : ℝ)
    (hint : ∀ n : ℕ, Integrable (fun x : ℝ => x ^ (2 * n)) ν)
    (hbound : ∀ n : ℕ, (∫ x : ℝ, x ^ (2 * n) ∂ν) ≤ ((2 * n).factorial : ℝ) * C) :
    Integrable (fun x : ℝ => Real.exp (|x| / 2)) ν := by
  apply ((integrable_cosh_half_of_even_factorial_bound ν C hint hbound).const_mul 2).mono'
  · exact (Real.continuous_exp.comp (continuous_abs.div_const 2)).aestronglyMeasurable
  · filter_upwards [] with x
    rw [Real.norm_of_nonneg (Real.exp_pos _).le]
    have hc : Real.cosh (|x| / 2) = Real.cosh (x / 2) := by
      rw [show |x| / 2 = |x / 2| by rw [abs_div]; norm_num, Real.cosh_abs]
    rw [← hc, Real.cosh_eq]
    have := (Real.exp_pos (- (|x| / 2))).le
    linarith

/-- Absolute exponential integrability gives a common open transform strip. -/
theorem half_interval_subset_interior_integrableExpSet
    (ν : Measure ℝ) (hexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) ν) :
    Ioo (- (1 / 2 : ℝ)) (1 / 2 : ℝ) ⊆ interior (integrableExpSet id ν) := by
  apply isOpen_Ioo.subset_interior_iff.mpr
  intro s hs
  apply hexp.mono'
  · exact (Real.continuous_exp.comp (continuous_const.mul continuous_id)).aestronglyMeasurable
  · filter_upwards [] with x
    rw [Real.norm_of_nonneg (Real.exp_pos _).le]
    apply Real.exp_le_exp.mpr
    have habs : |s| ≤ (1 / 2 : ℝ) := (abs_le.mpr ⟨hs.1.le, hs.2.le⟩)
    calc
      s * x ≤ |s * x| := le_abs_self _
      _ = |s| * |x| := abs_mul _ _
      _ ≤ (1 / 2 : ℝ) * |x| := mul_le_mul_of_nonneg_right habs (abs_nonneg _)
      _ = |x| / 2 := by ring

/-- Equal moments and independently checked exponential domains imply exact
Hamburger measure equality, via local complex series and the common strip. -/
theorem measure_eq_of_moments_of_exp_abs_half
    (μ ν : Measure ℝ) [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (hμexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) μ)
    (hνexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) ν)
    (hmom : ∀ n : ℕ, (∫ x : ℝ, x ^ n ∂μ) = ∫ x : ℝ, x ^ n ∂ν) : μ = ν := by
  have hμ := half_interval_subset_interior_integrableExpSet μ hμexp
  have hν := half_interval_subset_interior_integrableExpSet ν hνexp
  have hzero : (0 : ℝ) ∈ Ioo (- (1 / 2 : ℝ)) (1 / 2 : ℝ) := by norm_num
  have hμzero : (0 : ℝ) ∈ interior (integrableExpSet id μ) := hμ hzero
  have hνzero : (0 : ℝ) ∈ interior (integrableExpSet id ν) := hν hzero
  have hderiv (n : ℕ) :
      iteratedDeriv n (complexMGF id μ) (0 : ℂ) =
        iteratedDeriv n (complexMGF id ν) (0 : ℂ) := by
    rw [iteratedDeriv_complexMGF (by simpa using hμzero),
      iteratedDeriv_complexMGF (by simpa using hνzero)]
    simp only [id_eq, zero_mul, Complex.exp_zero, mul_one, ← Complex.ofReal_pow]
    rw [integral_complex_ofReal, integral_complex_ofReal, hmom n]
  have hμseries := (analyticAt_complexMGF (by simpa using hμzero) :
    AnalyticAt ℂ (complexMGF id μ) 0).hasFPowerSeriesAt
  have hνseries : HasFPowerSeriesAt (complexMGF id ν)
      (FormalMultilinearSeries.ofScalars ℂ
        (fun n => iteratedDeriv n (complexMGF id μ) 0 / n.factorial)) 0 := by
    simpa only [hderiv] using (analyticAt_complexMGF (by simpa using hνzero) :
      AnalyticAt ℂ (complexMGF id ν) 0).hasFPowerSeriesAt
  have hlocal : complexMGF id μ =ᶠ[𝓝 (0 : ℂ)] complexMGF id ν := by
    filter_upwards [hμseries.eventually_hasSum_sub, hνseries.eventually_hasSum_sub] with z hμz hνz
    exact hμz.unique hνz
  let S : Set ℂ := {z | z.re ∈ Ioo (- (1 / 2 : ℝ)) (1 / 2 : ℝ)}
  have hμanalytic : AnalyticOnNhd ℂ (complexMGF id μ) S :=
    fun z hz => analyticAt_complexMGF (hμ hz)
  have hνanalytic : AnalyticOnNhd ℂ (complexMGF id ν) S :=
    fun z hz => analyticAt_complexMGF (hν hz)
  have hS : IsPreconnected S :=
    ((convex_Ioo (- (1 / 2 : ℝ)) (1 / 2 : ℝ)).linear_preimage Complex.reLm).isPreconnected
  have hEq := hμanalytic.eqOn_of_preconnected_of_eventuallyEq hνanalytic hS
    (show (0 : ℂ) ∈ S by simp [S]) hlocal
  apply Measure.ext_of_charFun
  ext s
  rw [← complexMGF_id_mul_I, ← complexMGF_id_mul_I]
  apply hEq
  simp [S]

/-- Actual theta moments uniquely determine the positive magnitude measure
among all finite real-line measures with integrable matching power moments.
No support or exponential-integrability premise is imposed on the competitor. -/
theorem thetaMomentMeasure_determinate
    {t : ℝ} (ht : 0 ≤ t) (ν : Measure ℝ) [IsFiniteMeasure ν]
    (hint : ∀ n : ℕ, Integrable (fun x : ℝ => x ^ n) ν)
    (hmom : ∀ n : ℕ, (∫ x : ℝ, x ^ n ∂ν) = moment t n) :
    ν = momentMeasure t := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  let C : ℝ := ThetaPositiveLift.thetaPhiDecayConstant * Real.exp (-3 * t)
  have hbound (n : ℕ) : moment t (2 * n) ≤ ((2 * n).factorial : ℝ) * C := by
    simpa only [C, mul_assoc] using moment_le_factorial_bound (2 * n) ht
  have hνexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) ν :=
    integrable_exp_abs_half_of_even_factorial_bound ν C (fun n => hint (2 * n))
      (fun n => (hmom (2 * n)).trans_le (hbound n))
  have hμexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) (momentMeasure t) :=
    integrable_exp_abs_half_of_even_factorial_bound (momentMeasure t) C
      (fun n => moment_power_integrable (2 * n) ht) hbound
  exact measure_eq_of_moments_of_exp_abs_half ν (momentMeasure t) hνexp hμexp hmom

end
end FormalResearch.RiemannHypothesis.ThetaMomentDeterminacy
```
