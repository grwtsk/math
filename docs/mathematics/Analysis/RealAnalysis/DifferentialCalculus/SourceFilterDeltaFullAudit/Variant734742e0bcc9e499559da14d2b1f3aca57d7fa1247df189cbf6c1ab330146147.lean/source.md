# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFilterDeltaFullAudit.Variant734742e0bcc9e499559da14d2b1f3aca57d7fa1247df189cbf6c1ab330146147

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20e24f0a2b72365bd2252e0e171497cab9428fd2` · SHA-256 `cac7057e0516df9f535ab98ce8c4c386f072f03a85f88ad49793551add90287d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BumpMoment.Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.BumpMoment.Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a","mathematical_subject":"Analysis.Calculus","original_sha256":"4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/source-filter-delta-full-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Analytic.IsolatedZeros
import Mathlib.Topology.Compactness.Lindelof
import Mathlib.MeasureTheory.Measure.Typeclasses.NullSingletonClass
import Mathlib.Analysis.Calculus.ParametricIntervalIntegral
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient
import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
Exact moments and the integration-by-parts identity for the unchanged bump.
Parameter differentiation and the radial energy theorem remain separate work.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BumpMoment.Variant4db02cd1c080b9a5714e87a0ca95e2b48daa2668204f2ab3b504050746cbe02a

set_option autoImplicit false
namespace SourceBumpMomentsScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter PrimeSquareCorrelation

noncomputable section

/-- Polynomial exponential moments of the original radius-one bump on its full support. -/
def bumpMoment (k : ℕ) (z : ℂ) : ℂ :=
  ∫ x : ℝ in (-1)..1, (x : ℂ) ^ k * (1 - (x : ℂ) ^ 2) ^ 4 *
    Complex.exp (z * (x : ℂ))

/-- Every moment is genuinely integrable before any integral algebra is applied. -/
theorem bumpMoment_intervalIntegrable (k : ℕ) (z : ℂ) :
    IntervalIntegrable (fun x : ℝ => (x : ℂ) ^ k * (1 - (x : ℂ) ^ 2) ^ 4 *
      Complex.exp (z * (x : ℂ))) volume (-1) 1 := by
  apply Continuous.intervalIntegrable
  fun_prop

/-- The zeroth moment is the bilateral transform of the actual zero-extended source bump. -/
theorem bumpMoment_zero_eq_source (z : ℂ) : bumpMoment 0 z =
    ∫ x : ℝ, (fixedBump x : ℂ) * Complex.exp (z * (x : ℂ)) := by
  have he : (fun x : ℝ => (fixedBump x : ℂ) * Complex.exp (z * (x : ℂ))) =
      (Icc (-1 : ℝ) 1).indicator
        (fun x : ℝ => (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) := by
    funext x
    simp only [fixedBump, sourceBump, indicator_apply]
    split_ifs <;> push_cast <;> simp
  rw [he, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by norm_num : (-1 : ℝ) ≤ 1)]
  simp only [bumpMoment, pow_zero, one_mul]

/-- At zero the source mass is the exact positive rational `256 / 315`. -/
theorem bumpMoment_zero_zero : bumpMoment 0 0 = (256 / 315 : ℂ) := by
  rw [bumpMoment_zero_eq_source]
  simp only [zero_mul, Complex.exp_zero, mul_one]
  rw [integral_complex_ofReal]
  have h := scaledBump_integral 1 (by norm_num)
  rw [← fixedBump_eq_scaled] at h
  norm_num at h
  rw [h]
  norm_num

private theorem bumpFlux_hasDerivAt (z : ℂ) (x : ℝ) :
    HasDerivAt (fun t : ℝ => (1 - (t : ℂ) ^ 2) ^ 5 * Complex.exp (z * (t : ℂ)))
      ((z * (1 - (x : ℂ) ^ 2) ^ 5 - 10 * (x : ℂ) * (1 - (x : ℂ) ^ 2) ^ 4) *
        Complex.exp (z * (x : ℂ))) x := by
  have hp := (((hasDerivAt_id (x : ℂ)).pow 2).const_sub 1).pow 5
  have he := ((hasDerivAt_id (x : ℂ)).const_mul z).cexp
  convert! (hp.mul he).comp_ofReal using 1
  simp only [id_eq, Pi.pow_apply]
  ring

/-- Integrating the exact fifth-power flux gives the coefficient-ten moment equation. -/
theorem bumpMoment_equation (z : ℂ) :
    z * bumpMoment 2 z + 10 * bumpMoment 1 z - z * bumpMoment 0 z = 0 := by
  let g : ℝ → ℂ := fun x =>
    (z * (1 - (x : ℂ) ^ 2) ^ 5 - 10 * (x : ℂ) * (1 - (x : ℂ) ^ 2) ^ 4) *
      Complex.exp (z * (x : ℂ))
  have hg : IntervalIntegrable g volume (-1) 1 := by
    apply Continuous.intervalIntegrable
    dsimp [g]
    fun_prop
  have hz := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => bumpFlux_hasDerivAt z x) hg
  have hzero : (∫ x : ℝ in (-1)..1, g x) = 0 := by
    simpa only [Complex.ofReal_one, Complex.ofReal_neg, one_pow, neg_one_sq,
      sub_self, zero_pow (by omega : 5 ≠ 0), zero_mul, sub_zero] using hz
  calc
    _ = ∫ x : ℝ in (-1)..1,
        z * ((x : ℂ) ^ 2 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) +
        10 * ((x : ℂ) ^ 1 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) -
        z * ((x : ℂ) ^ 0 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) := by
      rw [intervalIntegral.integral_sub
        (((bumpMoment_intervalIntegrable 2 z).const_mul z).add
          ((bumpMoment_intervalIntegrable 1 z).const_mul 10))
        ((bumpMoment_intervalIntegrable 0 z).const_mul z),
        intervalIntegral.integral_add ((bumpMoment_intervalIntegrable 2 z).const_mul z)
          ((bumpMoment_intervalIntegrable 1 z).const_mul 10)]
      simp only [intervalIntegral.integral_const_mul, bumpMoment]
    _ = -(∫ x : ℝ in (-1)..1, g x) := by
      rw [← intervalIntegral.integral_neg]
      apply intervalIntegral.integral_congr
      intro x _
      dsimp [g]
      ring
    _ = 0 := by rw [hzero, neg_zero]

/-- A positive weighted mass and the signed radial energy identity force zero real part. -/
theorem re_eq_zero_of_weighted_energy (z : ℂ) (D E : ℝ) (hD : 0 < D) (hE : 0 ≤ E)
    (henergy : -(E : ℂ) = z ^ 2 * (D : ℂ)) : z.re = 0 := by
  have hr := congrArg Complex.re henergy
  have hi := congrArg Complex.im henergy
  simp only [Complex.neg_re, Complex.neg_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.mul_re, Complex.mul_im, pow_two, mul_zero, sub_zero, zero_add, neg_zero] at hr hi
  have hp : (2 * (z.re * z.im)) * D = 0 := by nlinarith [hi]
  have hprod : z.re * z.im = 0 := by
    have h := (mul_eq_zero.mp hp).resolve_right hD.ne'
    nlinarith
  rcases mul_eq_zero.mp hprod with hz | hz
  · exact hz
  · rw [hz] at hr
    have hq : z.re ^ 2 * D ≤ 0 := by nlinarith [hr, hE]
    have hs : z.re ^ 2 ≤ 0 := le_of_mul_le_mul_right (by simpa only [zero_mul] using hq) hD
    nlinarith [sq_nonneg z.re]

end
end SourceBumpMomentsScratch

set_option autoImplicit false
namespace SourceBumpAdapterScratch
open MeasureTheory Set Polynomial
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FixedSourceFilter PrimeSquareCorrelation ZeroSideTargets
open SourceBumpMomentsScratch
noncomputable section

private theorem bumpPrimitive_hasDerivAt (z : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ => Complex.exp (z * y) *
      (ZeroTransform.primitivePolynomial 1 z).eval (y : ℂ))
      (z ^ 9 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * x)) x := by
  have hx : HasDerivAt (fun y : ℝ => z * (y : ℂ)) z x := by
    simpa using (((hasDerivAt_id (x : ℂ)).const_mul z).comp_ofReal)
  have h := hx.cexp.mul
    (((ZeroTransform.primitivePolynomial 1 z).hasDerivAt (x : ℂ)).comp_ofReal)
  convert! h using 1
  have hp := congrArg (Polynomial.eval (x : ℂ)) (ZeroTransform.primitive_derivative 1 z)
  simp only [eval_add, eval_mul, eval_C, ZeroTransform.bumpPolynomial, eval_pow,
    eval_sub, eval_X, one_pow] at hp
  linear_combination (-(Complex.exp (z * x))) * hp

/-- The original bump moment has the source's exact two-endpoint closed formula. -/
theorem bumpMoment_closedFormula (z : ℂ) (hz : z ≠ 0) :
    bumpMoment 0 z = 384 *
      (Complex.exp z * transformPolynomial z -
        Complex.exp (-z) * transformPolynomial (-z)) / z ^ 9 := by
  have hi : IntervalIntegrable (fun x : ℝ =>
      z ^ 9 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * x)) volume (-1) 1 := by
    apply Continuous.intervalIntegrable
    fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => bumpPrimitive_hasDerivAt z x) hi
  have hleft : (∫ x : ℝ in (-1)..1,
      z ^ 9 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * x)) =
      z ^ 9 * bumpMoment 0 z := by
    simp only [bumpMoment, pow_zero, one_mul, ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro x _
    ring
  rw [hleft] at h
  simp only [Complex.ofReal_one, Complex.ofReal_neg, mul_one, mul_neg] at h
  rw [ZeroTransform.primitive_endpoint_pos 1 z, ZeroTransform.primitive_endpoint_neg 1 z] at h
  simp only [one_mul] at h
  apply (eq_div_iff (pow_ne_zero 9 hz)).mpr
  linear_combination h

/-- The exact normalized source integral supplies its value at zero. -/
theorem V_zero : V 0 = ((-64 / (315 * Real.sqrt (45056 / 1105 : ℝ)) : ℝ) : ℂ) := by
  simp only [V, zero_mul, Complex.exp_zero, mul_one, integral_complex_ofReal]
  have h := normalizedTest_integral 1 (by norm_num)
  change (∫ x : ℝ, v x) = _ at h
  rw [h]
  norm_num [sourceNormalization_one]
  ring

/-- The actual normalized source filter factors through the admitted original bump at every z. -/
theorem V_eq_bumpMoment (z : ℂ) :
    V z = (z ^ 2 - 1 / 4) * bumpMoment 0 z /
      (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  by_cases hz : z = 0
  · subst z
    rw [V_zero, bumpMoment_zero_zero]
    push_cast
    ring
  · rw [V_eq_removedFilter z hz, bumpMoment_closedFormula z hz]
    unfold removedFilter
    ring

/-- Translation retains the exact entire bump factor and both prescribed polynomial zeros. -/
theorem W_eq_bumpMoment (z : ℂ) :
    MobiusSourceFilterQuotient.W z =
      Complex.exp (-z) * (z ^ 2 - 1 / 4) * bumpMoment 0 z /
        (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  rw [MobiusSourceFilterQuotient.W, V_eq_bumpMoment]
  ring

end
end SourceBumpAdapterScratch
/-! Parameter derivatives and radial energy for the original source bump. -/

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
/-! Actual source boundary filters and their source-only convergence. -/
set_option autoImplicit false
namespace SourceFilterDeltaScratch
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter MobiusSourceFilterQuotient
open SourceBumpMomentsScratch SourceBumpGlobalScratch SourceBumpAdapterScratch
noncomputable section

/-- The actual entire source filter has only countably many complex zeros. -/
theorem W_zero_set_countable : {z : ℂ | W z = 0}.Countable := by
  have hW : W = fun z : ℂ => Complex.exp (-z) * (z ^ 2 - 1 / 4) * bumpMoment 0 z /
      (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := funext W_eq_bumpMoment
  have hd : Differentiable ℂ W := by
    rw [hW]
    intro z
    have hb := (bumpMoment_hasDerivAt 0 z).differentiableAt
    fun_prop
  have h0 : W 0 ≠ 0 := by
    simp [W, V_zero]
  have ha : AnalyticOnNhd ℂ W univ := fun z _ => hd.analyticAt z
  have hc : {z : ℂ | W z ≠ 0} ∈ codiscrete ℂ := by
    rcases ha.eqOn_zero_or_eventually_ne_zero_of_preconnected isPreconnected_univ with h | h
    · exact (h0 (h (mem_univ 0))).elim
    · exact h
  have hi := (mem_codiscrete'.mp hc).2
  have hcount := (HereditarilyLindelofSpace.isLindelof _).countable_of_isDiscrete hi
  simpa only [compl_ofPred, not_not] using hcount

/-- Boundary division by the actual source filter is valid almost everywhere
on the full real axis. -/
theorem boundaryW_ae_ne_zero : ∀ᵐ t : ℝ, W ((t : ℂ) * Complex.I) ≠ 0 := by
  have hi : Function.Injective (fun t : ℝ => (t : ℂ) * Complex.I) :=
    (mul_left_injective₀ Complex.I_ne_zero).comp Complex.ofReal_injective
  have hc := W_zero_set_countable.preimage hi
  simpa only [mem_preimage, mem_ofPred_eq] using hc.ae_notMem volume

/-- The exact shifted, smoothed boundary source filter, retaining every prescribed factor. -/
def boundaryFilter (ε h t : ℝ) : ℂ :=
  W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I) *
    (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I))⁻¹ ^ 6 /
      (1 + (ε : ℂ) + (t : ℂ) * Complex.I)

end
end SourceFilterDeltaScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceFilterDeltaScratch.W_zero_set_countable
#print SourceFilterDeltaScratch.W_zero_set_countable
#print axioms SourceFilterDeltaScratch.W_zero_set_countable
#check @SourceFilterDeltaScratch.boundaryW_ae_ne_zero
#print SourceFilterDeltaScratch.boundaryW_ae_ne_zero
#print axioms SourceFilterDeltaScratch.boundaryW_ae_ne_zero
#check @SourceFilterDeltaScratch.boundaryFilter
#print SourceFilterDeltaScratch.boundaryFilter
#print axioms SourceFilterDeltaScratch.boundaryFilter
```
