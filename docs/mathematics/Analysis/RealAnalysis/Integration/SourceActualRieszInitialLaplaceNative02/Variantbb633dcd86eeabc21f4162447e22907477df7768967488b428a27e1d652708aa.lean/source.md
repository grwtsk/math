# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative02.Variantbb633dcd86eeabc21f4162447e22907477df7768967488b428a27e1d652708aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f295b68f481924b134a60b52d9d698f356b82e9` · SHA-256 `cb8435ef7d74f227527539685561370328e6e048a9906cb598aba9b51b685e68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.RealRampAntiderivative.Variant07d67cb7bea6eab8788b62b368b8ef18e83977d7dfe06a568b327556d2017a01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07d67cb7bea6eab8788b62b368b8ef18e83977d7dfe06a568b327556d2017a01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.RealRampAntiderivative.Variant07d67cb7bea6eab8788b62b368b8ef18e83977d7dfe06a568b327556d2017a01","mathematical_subject":"Analysis.Integration","original_sha256":"07d67cb7bea6eab8788b62b368b8ef18e83977d7dfe06a568b327556d2017a01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-riesz-initial-laplace/SourceActualRieszInitialLaplace-native02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszCenteredReconstruction
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
The actual closed Mangoldt ramps are integrated only in the initial Laplace
half-plane. Genuine single-ramp L1 and improper boundaries precede infinite
summation. No critical-domain integral or signed arithmetic cap is asserted.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.RealRampAntiderivative.Variant07d67cb7bea6eab8788b62b368b8ef18e83977d7dfe06a568b327556d2017a01

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszInitialLaplace
open Set Filter MeasureTheory Complex
open scoped Topology BigOperators
open SourceActualRieszCenteredReconstruction SourceFirstPrimeAbel

private def realRampAntiderivative (σ a t : ℝ) : ℝ :=
  -Real.exp (-σ * t) * ((t - a) / σ + 1 / σ^2)

private theorem realRampAntiderivative_hasDerivAt {σ : ℝ} (hσ : σ ≠ 0) (a t : ℝ) :
    HasDerivAt (realRampAntiderivative σ a)
      ((t - a) * Real.exp (-σ * t)) t := by
  have h := (((hasDerivAt_id t).const_mul (-σ)).exp.neg).mul
    ((((hasDerivAt_id t).sub_const a).div_const σ).add_const (1 / σ^2))
  convert! h using 1
  dsimp [realRampAntiderivative]
  field_simp [hσ]
  ring

private theorem realRampAntiderivative_tendsto {σ : ℝ} (hσ : 0 < σ) (a : ℝ) :
    Tendsto (realRampAntiderivative σ a) atTop (𝓝 0) := by
  have h0 := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (0 : ℝ) σ hσ
  simp only [Real.rpow_zero, one_mul] at h0
  have h1 := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (1 : ℝ) σ hσ
  simp only [Real.rpow_one] at h1
  have h := (((h1.sub (h0.const_mul a)).div_const σ).add
    (h0.div_const (σ^2))).neg
  convert! h using 1
  · ext t
    dsimp [realRampAntiderivative]
    ring
  · simp

private theorem realRamp_tail_integrable {σ : ℝ} (hσ : 0 < σ) (a : ℝ) :
    IntegrableOn (fun t : ℝ => (t - a) * Real.exp (-σ * t)) (Ioi a) := by
  apply integrableOn_Ioi_deriv_of_nonneg
    (realRampAntiderivative_hasDerivAt hσ.ne' a a).continuousAt.continuousWithinAt
    (fun t _ => realRampAntiderivative_hasDerivAt hσ.ne' a t)
    (fun t ht => mul_nonneg (sub_nonneg.mpr ht.le) (Real.exp_pos _).le)
    (realRampAntiderivative_tendsto hσ a)

private theorem realRamp_tail_integral {σ : ℝ} (hσ : 0 < σ) (a : ℝ) :
    (∫ t in Ioi a, (t - a) * Real.exp (-σ * t)) = Real.exp (-σ * a) / σ^2 := by
  rw [integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun t _ => realRampAntiderivative_hasDerivAt hσ.ne' a t)
    (realRamp_tail_integrable hσ a) (realRampAntiderivative_tendsto hσ a)]
  simp [realRampAntiderivative, div_eq_mul_inv]

private theorem zeroOn_lower_integrable {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] {f : ℝ → E} {a : ℝ} (hf : ∀ t ∈ Ioc (0 : ℝ) a, f t = 0) :
    IntegrableOn f (Ioc (0 : ℝ) a) := by
  exact (integrableOn_zero : IntegrableOn (fun _ : ℝ => (0 : E)) (Ioc (0 : ℝ) a)).congr_fun
    (fun t ht => (hf t ht).symm) measurableSet_Ioc

private theorem realRamp_integrable {σ a : ℝ} (hσ : 0 < σ) (ha : 0 ≤ a) :
    IntegrableOn (fun t : ℝ => max 0 (t - a) * Real.exp (-σ * t)) (Ioi 0) := by
  have hi : IntegrableOn (fun t : ℝ => max 0 (t - a) * Real.exp (-σ * t))
      (Ioi a) := (realRamp_tail_integrable hσ a).congr_fun
    (fun t ht => by dsimp only; rw [max_eq_right (sub_nonneg.mpr ht.le)]) measurableSet_Ioi
  have hlo := zeroOn_lower_integrable (f := fun t : ℝ =>
    max 0 (t - a) * Real.exp (-σ * t)) (fun t ht => by
      rw [max_eq_left (sub_nonpos.mpr ht.2), zero_mul])
  simpa only [Ioc_union_Ioi_eq_Ioi ha] using hlo.union hi

private theorem realRamp_integral {σ a : ℝ} (hσ : 0 < σ) (ha : 0 ≤ a) :
    (∫ t in Ioi 0, max 0 (t - a) * Real.exp (-σ * t)) = Real.exp (-σ * a) / σ^2 := by
  have hi := realRamp_integrable hσ ha
  have hia := hi.mono_set (Ioi_subset_Ioi ha)
  rw [← intervalIntegral.integral_interval_add_Ioi hi hia]
  have hlo : (∫ t in (0 : ℝ)..a, max 0 (t - a) * Real.exp (-σ * t)) = 0 := by
    apply intervalIntegral.integral_zero_ae
    filter_upwards with t
    intro ht
    rw [uIoc_of_le ha] at ht
    rw [max_eq_left (sub_nonpos.mpr ht.2), zero_mul]
  rw [hlo, zero_add]
  rw [← realRamp_tail_integral hσ a]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro t ht
  dsimp only
  rw [max_eq_right (sub_nonneg.mpr ht.le)]

private theorem complexRamp_norm (z : ℂ) (a t : ℝ) :
    ‖((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))‖ =
      max 0 (t - a) * Real.exp (-z.re * t) := by
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (le_max_left _ _),
    Complex.norm_exp]
  congr 2
  simp

/-- The literal max ramp has genuine complex L1, including its zero lower segment. -/
theorem actualSingleRieszRamp_integrable {z : ℂ} (hz : 0 < z.re) {a : ℝ} (ha : 0 ≤ a) :
    IntegrableOn (fun t : ℝ => ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ)))
      (Ioi 0) := by
  apply (realRamp_integrable hz ha).mono'
    (by fun_prop : AEStronglyMeasurable
      (fun t : ℝ => ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ)))
      (volume.restrict (Ioi (0 : ℝ))))
  exact Eventually.of_forall (fun t => (complexRamp_norm z a t).le)

/-- Its exact absolute integral supplies the sum-integral norm budget. -/
theorem actualSingleRieszRamp_integral_norm {z : ℂ} (hz : 0 < z.re) {a : ℝ} (ha : 0 ≤ a) :
    (∫ t in Ioi 0, ‖((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))‖) =
      Real.exp (-z.re * a) / z.re^2 := by
  simp_rw [complexRamp_norm]
  exact realRamp_integral hz ha

private def complexRampAntiderivative (z : ℂ) (a t : ℝ) : ℂ :=
  -Complex.exp (-z * (t : ℂ)) * (((t - a : ℝ) : ℂ) / z + 1 / z^2)

private theorem complexRampAntiderivative_hasDerivAt {z : ℂ} (hz : z ≠ 0) (a t : ℝ) :
    HasDerivAt (complexRampAntiderivative z a)
      (((t - a : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) t := by
  have hx : HasDerivAt (fun t : ℝ => (t : ℂ)) 1 t := (hasDerivAt_id t).ofReal_comp
  have h := ((hx.const_mul (-z)).cexp.neg).mul
    (((hx.sub_const (a : ℂ)).div_const z).add_const (1 / z^2))
  convert! h using 1
  dsimp [complexRampAntiderivative]
  push_cast
  field_simp [hz]
  ring

private theorem complex_exp_monomial_zero {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    Tendsto (fun t : ℝ => (t : ℂ)^n * Complex.exp (-z * (t : ℂ))) atTop (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  have h := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (n : ℝ) z.re hz
  have he : (fun t : ℝ => ‖(t : ℂ)^n * Complex.exp (-z * (t : ℂ))‖) =ᶠ[atTop]
      fun t : ℝ => t^(n : ℝ) * Real.exp (-z.re * t) := by
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with t ht
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg ht, Complex.norm_exp]
    rw [Real.rpow_natCast]
    congr 2
    simp
  exact h.congr' he.symm

private theorem complexRampAntiderivative_tendsto {z : ℂ} (hz : 0 < z.re) (a : ℝ) :
    Tendsto (complexRampAntiderivative z a) atTop (𝓝 0) := by
  have h0 := complex_exp_monomial_zero hz 0
  have h1 := complex_exp_monomial_zero hz 1
  have h := (((h1.sub (h0.const_mul (a : ℂ))).div_const z).add
    (h0.div_const (z^2))).neg
  convert! h using 1
  · ext t
    dsimp [complexRampAntiderivative]
    push_cast
    ring
  · simp

/-- The genuine single closed ramp has its exact initial improper transform. -/
theorem actualSingleRieszRamp_integral {z : ℂ} (hz : 0 < z.re) {a : ℝ} (ha : 0 ≤ a) :
    (∫ t in Ioi 0, ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) =
      Complex.exp (-z * (a : ℂ)) / z^2 := by
  have hzn : z ≠ 0 := by intro h; simp [h] at hz
  have hi := actualSingleRieszRamp_integrable hz ha
  have hia := hi.mono_set (Ioi_subset_Ioi ha)
  have htail : IntegrableOn
      (fun t : ℝ => ((t - a : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) (Ioi a) := by
    apply hia.congr_fun _ measurableSet_Ioi
    intro t ht
    dsimp only
    rw [max_eq_right (sub_nonneg.mpr ht.le)]
  have he := integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun t _ => complexRampAntiderivative_hasDerivAt hzn a t) htail
    (complexRampAntiderivative_tendsto hz a)
  rw [← intervalIntegral.integral_interval_add_Ioi hi hia]
  have hlo : (∫ t in (0 : ℝ)..a,
      ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) = 0 := by
    apply intervalIntegral.integral_zero_ae
    filter_upwards with t
    intro ht
    rw [uIoc_of_le ha] at ht
    rw [max_eq_left (sub_nonpos.mpr ht.2), Complex.ofReal_zero, zero_mul]
  rw [hlo, zero_add]
  calc
    _ = ∫ t in Ioi a, ((t - a : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ)) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      dsimp only
      rw [max_eq_right (sub_nonneg.mpr ht.le)]
    _ = _ := by rw [he]; simp [complexRampAntiderivative, div_eq_mul_inv]

end FormalResearch.RiemannHypothesis.SourceActualRieszInitialLaplace
```
