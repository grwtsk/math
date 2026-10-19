import Mathlib.Analysis.InnerProductSpace.Calculus
import Mathlib.Analysis.Calculus.ParametricIntervalIntegral
import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
Exact moments and the integration-by-parts identity for the unchanged bump.
Parameter differentiation and the radial energy theorem remain separate work.
-/

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

/-! Horizontal source-bump modulus monotonicity from the full radial boundary energy. -/
set_option autoImplicit false
namespace SourceBumpHorizontalScratch
open MeasureTheory Set
open SourceBumpMomentsScratch SourceBumpGlobalScratch
noncomputable section

/-- Retaining the boundary term gives the radial energy identity for every complex parameter. -/
theorem radial_boundary_energy_identity (z : ℂ) :
    z * bumpMoment 1 z * star (bumpMoment 0 z) =
      (radialEnergy z : ℂ) + z ^ 2 * (radialMass z : ℂ) := by
  have hpc : Continuous (radialProfile z) := by
    exact (bumpMoment_continuous 0).comp (continuous_const.mul Complex.continuous_ofReal)
  have hfc : Continuous (radialFlux z) := by
    change Continuous (fun r : ℝ => (r : ℂ)^10 * z * bumpMoment 1 (z * (r : ℂ)))
    have hm := bumpMoment_continuous 1
    fun_prop
  have hdp : Continuous (fun r : ℝ => z * bumpMoment 1 (z * (r : ℂ))) := by
    have hm := bumpMoment_continuous 1
    fun_prop
  have hdf : Continuous (fun r : ℝ => z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r) := by
    exact ((continuous_const.mul (Complex.continuous_ofReal.pow 10)).mul
      hpc)
  have hid := intervalIntegral.integral_deriv_mul_eq_sub_of_hasDerivAt
    (a := (0 : ℝ)) (b := 1) hfc.continuousOn
    (hpc |>.star |>.continuousOn)
    (fun r _ => radialFlux_hasDerivAt z r)
    (fun r _ => (radialProfile_hasDerivAt z r).star)
    (hdf.intervalIntegrable 0 1) (hdp.star.intervalIntegrable 0 1)
  have hrhs : radialFlux z 1 * star (radialProfile z 1) -
      radialFlux z 0 * star (radialProfile z 0) =
        z * bumpMoment 1 z * star (bumpMoment 0 z) := by
    simp [radialFlux, radialProfile]
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
        ((continuous_id.pow 10).mul (hpc.norm.pow 2))
  have hiE : IntervalIntegrable (fun r : ℝ =>
      ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ)) volume 0 1 :=
    by
      apply Continuous.intervalIntegrable
      exact Complex.continuous_ofReal.comp
        ((continuous_id.pow 10).mul (hdp.norm.pow 2))
  have heq : z ^ 2 * (radialMass z : ℂ) + (radialEnergy z : ℂ) =
      z * bumpMoment 1 z * star (bumpMoment 0 z) := by
    calc
      _ = ∫ r : ℝ in 0..1,
          z ^ 2 * ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ) +
            ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ) := by
        rw [intervalIntegral.integral_add (hiD.const_mul (z ^ 2)) hiE,
          intervalIntegral.integral_const_mul, intervalIntegral.integral_ofReal,
          intervalIntegral.integral_ofReal]
        rfl
      _ = z * bumpMoment 1 z * star (bumpMoment 0 z) := by
        rw [← hid]
        apply intervalIntegral.integral_congr
        intro r _
        exact (hpoint r).symm
  linear_combination -heq

/-- The boundary energy forces the source logarithmic numerator to have positive real part. -/
theorem bumpMoment_derivative_pairing_nonneg (z : ℂ) (hz : 0 < z.re) :
    0 ≤ (bumpMoment 1 z * star (bumpMoment 0 z)).re := by
  have he := radial_boundary_energy_identity z
  let p : ℂ := bumpMoment 1 z * star (bumpMoment 0 z)
  have he' : z * p = (radialEnergy z : ℂ) + z^2 * (radialMass z : ℂ) := by
    simpa only [p, mul_assoc] using he
  have hr' := congrArg Complex.re he'
  have hi' := congrArg Complex.im he'
  simp only [Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
    Complex.ofReal_re, Complex.ofReal_im, pow_two, mul_zero, sub_zero,
    zero_add] at hr' hi'
  have hid : (z.re^2 + z.im^2) * p.re =
      z.re * (radialEnergy z + (z.re^2 + z.im^2) * radialMass z) := by
    linear_combination z.re * hr' + z.im * hi'
  have hp : 0 < z.re^2 + z.im^2 := add_pos_of_pos_of_nonneg
    (sq_pos_of_pos hz) (sq_nonneg _)
  have hnn : 0 ≤ z.re * (radialEnergy z + (z.re^2 + z.im^2) * radialMass z) :=
    mul_nonneg hz.le (add_nonneg (radialEnergy_nonneg z)
      (mul_nonneg hp.le (radialMass_pos z).le))
  have : 0 ≤ (z.re^2 + z.im^2) * p.re := by rw [hid]; exact hnn
  exact (mul_nonneg_iff_of_pos_left hp).mp this

/-- Squared modulus has the exact real derivative on every horizontal line. -/
theorem bumpMoment_horizontal_norm_sq_hasDerivAt (t x : ℝ) :
    HasDerivAt (fun a : ℝ => ‖bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I)‖^2)
      (2 * (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I) *
        star (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I))).re) x := by
  have hd := (bumpMoment_hasDerivAt 0 ((x : ℂ) + (t : ℂ) * Complex.I)).comp
    (x : ℂ) ((hasDerivAt_id (x : ℂ)).add_const ((t : ℂ) * Complex.I))
  have hd' : HasDerivAt (fun a : ℝ => bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I))
      (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I)) x := by
    simpa only [id_eq, zero_add, mul_one] using! hd.comp_ofReal
  convert! hd'.norm_sq using 1

/-- The actual bump modulus is nondecreasing along every horizontal rightward half-line. -/
theorem bumpMoment_horizontal_norm_monotone (t : ℝ) :
    MonotoneOn (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖)
      (Ici 0) := by
  have hm : MonotoneOn
      (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖^2) (Ici 0) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Ici 0)
    · have hc := bumpMoment_continuous 0
      apply Continuous.continuousOn
      fun_prop
    · intro x _
      exact (bumpMoment_horizontal_norm_sq_hasDerivAt t x).hasDerivWithinAt
    · intro x hx
      have hx' : 0 < x := by simpa only [interior_Ici, mem_Ioi] using hx
      exact mul_nonneg (by norm_num)
        (bumpMoment_derivative_pairing_nonneg _ (by simpa using hx'))
  intro x hx y hy hxy
  have hh := hm hx hy hxy
  nlinarith [norm_nonneg (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)),
    norm_nonneg (bumpMoment 0 ((y : ℂ) + (t : ℂ) * Complex.I))]

/-- The exact imaginary-axis bump value never exceeds its inward horizontal translate. -/
theorem bumpMoment_horizontal_norm_le (ε t : ℝ) (hε : 0 ≤ ε) :
    ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖ ≤
      ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  simpa only [Complex.ofReal_zero, zero_add] using
    bumpMoment_horizontal_norm_monotone t (show (0 : ℝ) ∈ Ici 0 from by simp)
      (show ε ∈ Ici 0 from hε) hε

end
end SourceBumpHorizontalScratch

open MeasureTheory Set
open SourceBumpMomentsScratch SourceBumpGlobalScratch SourceBumpHorizontalScratch
example (z : ℂ) : z * bumpMoment 1 z * star (bumpMoment 0 z) =
    (radialEnergy z : ℂ) + z^2 * (radialMass z : ℂ) := radial_boundary_energy_identity z
example (z : ℂ) (hz : 0 < z.re) :
    0 ≤ (bumpMoment 1 z * star (bumpMoment 0 z)).re :=
  bumpMoment_derivative_pairing_nonneg z hz
example (t x : ℝ) :
    HasDerivAt (fun a : ℝ => ‖bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I)‖^2)
      (2 * (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I) *
        star (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I))).re) x :=
  bumpMoment_horizontal_norm_sq_hasDerivAt t x
example (t : ℝ) :
    MonotoneOn (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖)
      (Ici 0) := bumpMoment_horizontal_norm_monotone t
example (ε t : ℝ) (hε : 0 ≤ ε) :
    ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖ ≤
      ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖ :=
  bumpMoment_horizontal_norm_le ε t hε
example (ε t : ℝ) (hε : 0 ≤ ε) :
    ‖∫ x : ℝ in (-1)..1, (1-(x : ℂ)^2)^4 * Complex.exp (((t : ℂ)*Complex.I)*(x : ℂ))‖ ≤
    ‖∫ x : ℝ in (-1)..1, (1-(x : ℂ)^2)^4 *
      Complex.exp (((ε : ℂ)+(t : ℂ)*Complex.I)*(x : ℂ))‖ := by
  simpa only [bumpMoment, pow_zero, one_mul] using bumpMoment_horizontal_norm_le ε t hε
example (z : ℂ) :
    z * bumpMoment 1 z * star (bumpMoment 0 z) =
      ((∫ r : ℝ in 0..1, r^10 * ‖z * bumpMoment 1 (z*(r : ℂ))‖^2 : ℝ) : ℂ) +
      z^2 * ((∫ r : ℝ in 0..1, r^10 * ‖bumpMoment 0 (z*(r : ℂ))‖^2 : ℝ) : ℂ) :=
  radial_boundary_energy_identity z
