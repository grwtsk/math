-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BumpMomentHasDerivAt.Variant2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.BumpMomentHasDerivAt.Variant2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543","mathematical_subject":"Analysis.Calculus","original_sha256":"2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/SourceBumpGlobalFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! Parameter derivatives and radial energy for the original source bump. -/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BumpMomentHasDerivAt.Variant2428a7a4e63e4212dea2548a823dfee230f7a4619105336431f37609a6a79543

set_option autoImplicit false

namespace SourceBumpGlobalScratch

open MeasureTheory Set Filter
open scoped Topology
open SourceBumpMomentsScratch

noncomputable section

/-- Differentiating a source moment in its complex parameter raises the moment index. -/
theorem bumpMoment_hasDerivAt (k : ℕ) (z : ℂ) :
    HasDerivAt (bumpMoment k) (bumpMoment (k + 1) z) z := by
  let F : ℂ → ℝ → ℂ := fun w x =>
    (x : ℂ) ^ k * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (w * (x : ℂ))
  let G : ℂ → ℝ → ℂ := fun w x =>
    (x : ℂ) ^ (k + 1) * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (w * (x : ℂ))
  have hG : Continuous (fun p : ℂ × ℝ => G p.1 p.2) := by
    dsimp [G]
    fun_prop
  obtain ⟨C, hC⟩ := (isCompact_closedBall z 1 |>.prod
    (isCompact_Icc : IsCompact (Icc (-1 : ℝ) 1))).exists_bound_of_continuousOn
      hG.continuousOn
  have h := intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := F) (F' := G) (bound := fun _ : ℝ => C)
    (a := (-1 : ℝ)) (b := 1) (μ := volume)
    (Metric.ball_mem_nhds z (by norm_num : (0 : ℝ) < 1))
    (Filter.Eventually.of_forall (fun w =>
      (show Continuous (F w) by dsimp [F]; fun_prop).aestronglyMeasurable))
    (bumpMoment_intervalIntegrable k z)
    ((show Continuous (G z) by dsimp [G]; fun_prop).aestronglyMeasurable)
    (Filter.Eventually.of_forall (fun x hx w hw => hC (w, x)
      ⟨Metric.ball_subset_closedBall hw, by
        have hx' : x ∈ Ioc (-1 : ℝ) 1 := by
          simpa only [uIoc_of_le (by norm_num : (-1 : ℝ) ≤ 1)] using hx
        exact ⟨hx'.1.le, hx'.2⟩⟩))
    (intervalIntegrable_const)
    (Filter.Eventually.of_forall (fun x _ w _ => by
      have hd := (((hasDerivAt_id w).mul_const (x : ℂ)).cexp).const_mul
        ((x : ℂ) ^ k * (1 - (x : ℂ) ^ 2) ^ 4)
      convert! hd using 1
      dsimp [G]
      simp only [pow_succ]
      ring))
  exact h.2

/-- Every source moment is continuous in the whole complex parameter plane. -/
theorem bumpMoment_continuous (k : ℕ) : Continuous (bumpMoment k) :=
  (show Differentiable ℂ (bumpMoment k) from
    fun z => (bumpMoment_hasDerivAt k z).differentiableAt).continuous

/-- The original bump transform restricted to a radial segment in parameter space. -/
def radialProfile (z : ℂ) (r : ℝ) : ℂ := bumpMoment 0 (z * (r : ℂ))

/-- The coefficient-ten radial flux, including its regular value at the origin. -/
def radialFlux (z : ℂ) (r : ℝ) : ℂ :=
  (r : ℂ) ^ 10 * z * bumpMoment 1 (z * (r : ℂ))

/-- The radial profile has its actual derivative even at the origin. -/
theorem radialProfile_hasDerivAt (z : ℂ) (r : ℝ) :
    HasDerivAt (radialProfile z) (z * bumpMoment 1 (z * (r : ℂ))) r := by
  have h := (bumpMoment_hasDerivAt 0 (z * (r : ℂ))).comp (r : ℂ)
    ((hasDerivAt_id (r : ℂ)).const_mul z)
  convert! h.comp_ofReal using 1
  dsimp
  ring

/-- The exact radial flux derivative follows from the source moment equation without division. -/
theorem radialFlux_hasDerivAt (z : ℂ) (r : ℝ) :
    HasDerivAt (radialFlux z) (z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r) r := by
  have hp := ((hasDerivAt_id (r : ℂ)).pow 10).mul_const z
  have hm := (bumpMoment_hasDerivAt 1 (z * (r : ℂ))).comp (r : ℂ)
    ((hasDerivAt_id (r : ℂ)).const_mul z)
  convert! (hp.mul hm).comp_ofReal using 1
  dsimp [radialProfile]
  have he := bumpMoment_equation (z * (r : ℂ))
  linear_combination -(z * (r : ℂ) ^ 9) * he

private theorem radialProfile_continuous (z : ℂ) : Continuous (radialProfile z) :=
  (show Differentiable ℝ (radialProfile z) from
    fun r => (radialProfile_hasDerivAt z r).differentiableAt).continuous

private theorem radialFlux_continuous (z : ℂ) : Continuous (radialFlux z) :=
  (show Differentiable ℝ (radialFlux z) from
    fun r => (radialFlux_hasDerivAt z r).differentiableAt).continuous

/-- The nonnegative radial mass with weight `r^10`. -/
def radialMass (z : ℂ) : ℝ := ∫ r : ℝ in 0..1, r ^ 10 * ‖radialProfile z r‖ ^ 2

/-- The nonnegative radial Dirichlet energy with weight `r^10`. -/
def radialEnergy (z : ℂ) : ℝ :=
  ∫ r : ℝ in 0..1, r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2

/-- Both real radial energy integrands are genuinely integrable. -/
theorem radial_integrands_intervalIntegrable (z : ℂ) :
    IntervalIntegrable (fun r : ℝ => r ^ 10 * ‖radialProfile z r‖ ^ 2) volume 0 1 ∧
    IntervalIntegrable (fun r : ℝ =>
      r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2) volume 0 1 := by
  constructor
  · apply Continuous.intervalIntegrable
    exact (continuous_id.pow 10).mul ((radialProfile_continuous z).norm.pow 2)
  · apply Continuous.intervalIntegrable
    have hm := bumpMoment_continuous 1
    fun_prop

/-- The radial energy is nonnegative, independent of whether the endpoint is a zero. -/
theorem radialEnergy_nonneg (z : ℂ) : 0 ≤ radialEnergy z := by
  apply intervalIntegral.integral_nonneg (by norm_num)
  intro r hr
  exact mul_nonneg (pow_nonneg hr.1 10) (sq_nonneg _)

/-- The source profile is nonzero on a sufficiently short radial interval. -/
private theorem radialProfile_eventually_ne_zero (z : ℂ) :
    ∀ᶠ r : ℝ in 𝓝 0, radialProfile z r ≠ 0 := by
  have h0 : radialProfile z 0 ≠ 0 := by
    simp [radialProfile, bumpMoment_zero_zero]
  exact (radialProfile_continuous z).continuousAt.eventually_ne h0

/-- The weighted radial mass is strictly positive because the actual bump mass is positive. -/
theorem radialMass_pos (z : ℂ) : 0 < radialMass z := by
  obtain ⟨ε, hε, hεn⟩ := Metric.eventually_nhds_iff.mp
    (radialProfile_eventually_ne_zero z)
  let r : ℝ := min ε 1 / 2
  have hr : 0 < r := half_pos (lt_min hε (by norm_num))
  have hrε : r < ε := by dsimp [r]; linarith [min_le_left ε 1]
  have hr1 : r ≤ 1 := by dsimp [r]; linarith [min_le_right ε 1]
  have hnr : radialProfile z r ≠ 0 := hεn (by simpa [Real.dist_eq, abs_of_pos hr] using hrε)
  apply intervalIntegral.integral_pos (by norm_num)
    ((continuous_id.pow 10).mul ((radialProfile_continuous z).norm.pow 2)).continuousOn
  · intro t ht
    exact mul_nonneg (pow_nonneg ht.1.le 10) (sq_nonneg _)
  · exact ⟨r, ⟨hr.le, hr1⟩, mul_pos (pow_pos hr 10)
      (sq_pos_of_pos (norm_pos_iff.mpr hnr))⟩

/-- At a zero of the source transform, the exact regular radial energy identity holds. -/
theorem radial_energy_identity (z : ℂ) (hz : bumpMoment 0 z = 0) :
    -(radialEnergy z : ℂ) = z ^ 2 * (radialMass z : ℂ) := by
  have hdp : Continuous (fun r : ℝ => z * bumpMoment 1 (z * (r : ℂ))) := by
    have hm := bumpMoment_continuous 1
    fun_prop
  have hdf : Continuous (fun r : ℝ => z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r) := by
    exact ((continuous_const.mul (Complex.continuous_ofReal.pow 10)).mul
      (radialProfile_continuous z))
  have hid := intervalIntegral.integral_deriv_mul_eq_sub_of_hasDerivAt
    (a := (0 : ℝ)) (b := 1) (radialFlux_continuous z).continuousOn
    (radialProfile_continuous z |>.star |>.continuousOn)
    (fun r _ => radialFlux_hasDerivAt z r)
    (fun r _ => (radialProfile_hasDerivAt z r).star)
    (hdf.intervalIntegrable 0 1) (hdp.star.intervalIntegrable 0 1)
  have hrhs : radialFlux z 1 * star (radialProfile z 1) -
      radialFlux z 0 * star (radialProfile z 0) = 0 := by
    simp [radialFlux, radialProfile, hz]
  rw [hrhs] at hid
  have hpoint (r : ℝ) :
      z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r * star (radialProfile z r) +
      radialFlux z r * star (z * bumpMoment 1 (z * (r : ℂ))) =
      z ^ 2 * ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ) +
        ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ) := by
    rw [Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_pow,
      ← Complex.mul_conj']
    rw [Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_pow,
      ← Complex.mul_conj']
    dsimp [radialFlux]
    ring
  have hiD : IntervalIntegrable
      (fun r : ℝ => ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ)) volume 0 1 :=
    by
      apply Continuous.intervalIntegrable
      exact Complex.continuous_ofReal.comp
        ((continuous_id.pow 10).mul ((radialProfile_continuous z).norm.pow 2))
  have hiE : IntervalIntegrable (fun r : ℝ =>
      ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ)) volume 0 1 :=
    by
      apply Continuous.intervalIntegrable
      exact Complex.continuous_ofReal.comp
        ((continuous_id.pow 10).mul (hdp.norm.pow 2))
  have heq : z ^ 2 * (radialMass z : ℂ) + (radialEnergy z : ℂ) = 0 := by
    calc
      _ = ∫ r : ℝ in 0..1,
          z ^ 2 * ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ) +
            ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ) := by
        rw [intervalIntegral.integral_add (hiD.const_mul (z ^ 2)) hiE,
          intervalIntegral.integral_const_mul, intervalIntegral.integral_ofReal,
          intervalIntegral.integral_ofReal]
        rfl
      _ = 0 := by
        rw [← hid]
        apply intervalIntegral.integral_congr
        intro r _
        exact (hpoint r).symm
  linear_combination -heq

/-- Every zero of the actual source bump transform lies on the imaginary axis. -/
theorem bumpMoment_zero_re (z : ℂ) (hz : bumpMoment 0 z = 0) : z.re = 0 :=
  re_eq_zero_of_weighted_energy z (radialMass z) (radialEnergy z)
    (radialMass_pos z) (radialEnergy_nonneg z) (radial_energy_identity z hz)

end
end SourceBumpGlobalScratch
