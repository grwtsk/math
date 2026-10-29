-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ExponentialTerm.Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ExponentialTerm.Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3","mathematical_subject":"Analysis.Integration","original_sha256":"7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/landau-positivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Probability.Moments.MGFAnalytic
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.Complex.TaylorSeries


namespace GRWTSK.Analysis.RealAnalysis.Integration.ExponentialTerm.Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3

open MeasureTheory Filter
open scoped Topology ENNReal

namespace FormalResearch.Analysis.LaplacePositivity

noncomputable section

variable {Ω : Type*} [MeasurableSpace Ω] {μ : Measure Ω} {X : Ω → ℝ}

private def exponentialTerm (v r : ℝ) (n : ℕ) (ω : Ω) : ℝ :=
  r ^ n / (n.factorial : ℝ) * (X ω ^ n * Real.exp (v * X ω))

omit [MeasurableSpace Ω] in
private lemma exponentialTerm_hasSum (v r : ℝ) (ω : Ω) :
    HasSum (fun n ↦ exponentialTerm (X := X) v r n ω)
      (Real.exp ((v + r) * X ω)) := by
  have h := (NormedSpace.expSeries_div_hasSum_exp (r * X ω)).mul_right
    (Real.exp (v * X ω))
  rw [← Real.exp_eq_exp_ℝ] at h
  convert! h using 1
  · ext n
    simp only [exponentialTerm, mul_pow]
    ring
  · rw [← Real.exp_add]
    congr 1
    ring

/-- Summable nonnegative tilted moments yield genuine exponential integrability at
an additional nonnegative parameter. This is the positivity step in Landau's argument. -/
theorem integrable_exp_add_of_summable_moments (v r : ℝ) (hr : 0 ≤ r)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hmom : ∀ n : ℕ, Integrable (fun ω ↦ X ω ^ n * Real.exp (v * X ω)) μ)
    (hsum : Summable (fun n : ℕ ↦ r ^ n / (n.factorial : ℝ) *
      ∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ)) :
    Integrable (fun ω ↦ Real.exp ((v + r) * X ω)) μ := by
  let F : ℕ → Ω → ℝ := exponentialTerm (X := X) v r
  have hF (n : ℕ) : Integrable (F n) μ := (hmom n).const_mul _
  have hnonneg (n : ℕ) : ∀ᵐ ω ∂μ, 0 ≤ F n ω := by
    filter_upwards [hX] with ω hω
    dsimp [F, exponentialTerm]
    positivity
  have hsum_norm : Summable (fun n ↦ ∫ ω, ‖F n ω‖ ∂μ) := by
    have heq (n : ℕ) : (∫ ω, ‖F n ω‖ ∂μ) =
        r ^ n / (n.factorial : ℝ) * ∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ := by
      have hnorm : (fun ω ↦ ‖F n ω‖) =ᵐ[μ] F n := by
        filter_upwards [hnonneg n] with ω hω
        exact Real.norm_of_nonneg hω
      rw [integral_congr_ae hnorm]
      exact integral_const_mul _ _
    simpa only [heq] using hsum
  have hmass : (∑' n, ∫⁻ ω, ‖F n ω‖ₑ ∂μ) ≠ ⊤ := by
    simp_rw [← ofReal_integral_norm_eq_lintegral_enorm (hF _)]
    rw [← ENNReal.ofReal_tsum_of_nonneg
      (fun n ↦ integral_nonneg (fun ω ↦ norm_nonneg (F n ω))) hsum_norm]
    exact ENNReal.ofReal_ne_top
  have hint : Integrable (fun ω ↦ ∑' n, F n ω) μ := by
    constructor
    · have hm (n : ℕ) : AEStronglyMeasurable (F n) μ := (hF n).1
      fun_prop
    · rw [hasFiniteIntegral_iff_enorm]
      apply lt_of_le_of_lt (lintegral_mono (fun ω ↦ enorm_tsum_le_tsum_enorm))
      rw [lintegral_tsum (fun n ↦ (hF n).1.enorm)]
      exact lt_top_iff_ne_top.mpr hmass
  exact hint.congr (Filter.Eventually.of_forall
    (fun ω ↦ (exponentialTerm_hasSum v r ω).tsum_eq))


/-- Inside the original convergence interval, Mathlib supplies all tilted moments. -/
theorem integrable_exp_add_of_summable_mgf_moments (v r : ℝ) (hr : 0 ≤ r)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hv : v ∈ interior (ProbabilityTheory.integrableExpSet X μ))
    (hsum : Summable (fun n : ℕ ↦ r ^ n / (n.factorial : ℝ) *
      ∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ)) :
    Integrable (fun ω ↦ Real.exp ((v + r) * X ω)) μ :=
  integrable_exp_add_of_summable_moments v r hr hX
    (ProbabilityTheory.integrable_pow_mul_exp_of_mem_interior_integrableExpSet hv) hsum

private lemma iteratedDeriv_complexMGF_real (v : ℝ)
    (hv : v ∈ interior (ProbabilityTheory.integrableExpSet X μ)) (n : ℕ) :
    iteratedDeriv n (ProbabilityTheory.complexMGF X μ) (v : ℂ) =
      ((∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ : ℝ) : ℂ) := by
  rw [ProbabilityTheory.iteratedDeriv_complexMGF (by simpa using hv)]
  norm_cast
  exact integral_complex_ofReal

/-- A holomorphic disk extending the moment-generating function extends genuine
exponential integrability through every nonnegative real displacement in that disk. -/
theorem integrable_exp_add_of_holomorphic_extension (v r R : ℝ)
    (hr : 0 ≤ r) (hrR : r < R) (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hv : v ∈ interior (ProbabilityTheory.integrableExpSet X μ))
    (F : ℂ → ℂ) (hF : DifferentiableOn ℂ F (Metric.ball (v : ℂ) R))
    (heq : F =ᶠ[𝓝 (v : ℂ)] ProbabilityTheory.complexMGF X μ) :
    Integrable (fun ω ↦ Real.exp ((v + r) * X ω)) μ := by
  apply integrable_exp_add_of_summable_mgf_moments v r hr hX hv
  have hz : ((v + r : ℝ) : ℂ) ∈ Metric.ball (v : ℂ) R := by
    simpa [Metric.mem_ball, dist_eq_norm, Real.norm_eq_abs, abs_of_nonneg hr]
      using hrR
  have hTaylor := Complex.hasSum_taylorSeries_on_ball hF hz
  have hreal := (Complex.hasSum_re hTaylor).summable
  have hcoeff (n : ℕ) :
      (((n.factorial : ℂ)⁻¹ • (((v + r : ℝ) : ℂ) - (v : ℂ)) ^ n •
        iteratedDeriv n F (v : ℂ))).re =
      r ^ n / (n.factorial : ℝ) * ∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ := by
    rw [heq.iteratedDeriv_eq n, iteratedDeriv_complexMGF_real v hv n]
    simp only [smul_eq_mul, Complex.ofReal_add, add_sub_cancel_left]
    have hcast : (n.factorial : ℂ)⁻¹ * ((r : ℂ) ^ n *
        ((∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ : ℝ) : ℂ)) =
        ((r ^ n / (n.factorial : ℝ) *
          ∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ : ℝ) : ℂ) := by
      push_cast
      ring
    exact congrArg Complex.re hcast
  simpa only [hcoeff] using hreal


/-- Landau's finite-boundary conclusion for a positive measure on nonnegative
values. No value or integrability is prescribed at the boundary itself. Every
function agreeing with the integral in a left neighborhood has a singularity there. -/
theorem not_analyticAt_of_finite_convergence_boundary (β : ℝ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hleft : ∀ t : ℝ, t < β → Integrable (fun ω ↦ Real.exp (t * X ω)) μ)
    (hright : ∀ t : ℝ, β < t → ¬ Integrable (fun ω ↦ Real.exp (t * X ω)) μ)
    (F : ℂ → ℂ)
    (heq : F =ᶠ[𝓝[{z : ℂ | z.re < β}] (β : ℂ)]
      ProbabilityTheory.complexMGF X μ) :
    ¬ AnalyticAt ℂ F (β : ℂ) := by
  intro han
  obtain ⟨R, hR, hF⟩ := han.exists_ball_analyticOnNhd
  obtain ⟨ε, hε, hmatch⟩ := Metric.mem_nhdsWithin_iff.mp heq
  let δ : ℝ := min R ε / 4
  have hδ : 0 < δ := div_pos (lt_min hR hε) (by norm_num)
  have hδR : 4 * δ ≤ R := by
    dsimp [δ]
    linarith [min_le_left R ε]
  have hδε : 4 * δ ≤ ε := by
    dsimp [δ]
    linarith [min_le_right R ε]
  let v : ℝ := β - δ
  have hvlt : v < β := by dsimp [v]; linarith
  have hv : v ∈ interior (ProbabilityTheory.integrableExpSet X μ) := by
    have hs : Set.Iio β ⊆ ProbabilityTheory.integrableExpSet X μ := hleft
    apply interior_mono hs
    simpa using hvlt
  have hdist : dist (v : ℂ) (β : ℂ) = δ := by
    simp [v, dist_eq_norm, ← Complex.ofReal_sub, Real.norm_eq_abs,
      abs_of_nonneg hδ.le]
  have hball : Metric.ball (v : ℂ) (2 * δ) ⊆ Metric.ball (β : ℂ) R := by
    apply Metric.ball_subset_ball'
    rw [hdist]
    linarith
  have hvε : (v : ℂ) ∈ Metric.ball (β : ℂ) ε := by
    rw [Metric.mem_ball, hdist]
    linarith
  have hlocal : F =ᶠ[𝓝 (v : ℂ)] ProbabilityTheory.complexMGF X μ := by
    have hopen : IsOpen (Metric.ball (β : ℂ) ε ∩ {z : ℂ | z.re < β}) :=
      Metric.isOpen_ball.inter (isOpen_lt Complex.continuous_re continuous_const)
    have hmem : (v : ℂ) ∈ Metric.ball (β : ℂ) ε ∩ {z : ℂ | z.re < β} :=
      ⟨hvε, by simpa using hvlt⟩
    exact Filter.mem_of_superset (hopen.mem_nhds hmem) hmatch
  have hint := integrable_exp_add_of_holomorphic_extension v (3 * δ / 2) (2 * δ)
    (by positivity) (by linarith) hX hv F (hF.differentiableOn.mono hball) hlocal
  exact hright (v + 3 * δ / 2) (by dsimp [v]; linarith) hint


/-- Laplace-sign version of the finite-abscissa singularity theorem. The real
abscissa is finite and is specified by genuine integrability and nonintegrability
on its two sides; agreement is only required on a complex right neighborhood. -/
theorem not_analyticAt_laplace_of_finite_abscissa (σ : ℝ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, σ < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (hdiv : ∀ t : ℝ, t < σ → ¬ Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (F : ℂ → ℂ)
    (heq : F =ᶠ[𝓝[{z : ℂ | σ < z.re}] (σ : ℂ)]
      (fun z ↦ ProbabilityTheory.complexMGF X μ (-z))) :
    ¬ AnalyticAt ℂ F (σ : ℂ) := by
  intro han
  have hleft (t : ℝ) (ht : t < -σ) :
      Integrable (fun ω ↦ Real.exp (t * X ω)) μ := by
    simpa using hconv (-t) (by linarith)
  have hright (t : ℝ) (ht : -σ < t) :
      ¬ Integrable (fun ω ↦ Real.exp (t * X ω)) μ := by
    simpa using hdiv (-t) (by linarith)
  have hneg : Tendsto (fun z : ℂ ↦ -z)
      (𝓝[{z : ℂ | z.re < -σ}] ((-σ : ℝ) : ℂ))
      (𝓝[{z : ℂ | σ < z.re}] (σ : ℂ)) := by
    apply tendsto_nhdsWithin_iff.mpr
    constructor
    · convert! (continuous_neg.tendsto ((-σ : ℝ) : ℂ)).mono_left
        (nhdsWithin_le_nhds (s := {z : ℂ | z.re < -σ})) using 1
      simp
    · filter_upwards [self_mem_nhdsWithin] with z hz
      simpa using (show σ < -z.re by linarith [hz])
  have hmatch : (fun z : ℂ ↦ F (-z)) =ᶠ[𝓝[{z : ℂ | z.re < -σ}] ((-σ : ℝ) : ℂ)]
      ProbabilityTheory.complexMGF X μ := by
    simpa only [Function.comp_def, neg_neg] using heq.comp_tendsto hneg
  apply not_analyticAt_of_finite_convergence_boundary (-σ) hX hleft hright
    (fun z ↦ F (-z)) hmatch
  have ha : AnalyticAt ℂ F (-((-σ : ℝ) : ℂ)) := by simpa using han
  exact ha.comp (by fun_prop)

end

end FormalResearch.Analysis.LaplacePositivity
