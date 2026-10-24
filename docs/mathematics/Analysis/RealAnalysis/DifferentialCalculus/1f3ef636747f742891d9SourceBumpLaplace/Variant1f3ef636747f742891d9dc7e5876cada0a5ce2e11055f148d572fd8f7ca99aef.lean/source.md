# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.1f3ef636747f742891d9SourceBumpLaplace.Variant1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61c180fdcb90a95cf292c5bb5ac4e81c082c5127` · SHA-256 `1f3ef636747f742891d9dc7e5876cada0a5ce2e11055f148d572fd8f7ca99aef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairing
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
# The actual compact source bump's Laplace transform

The native interval integral retains the original polynomial bump. Parameter
derivatives and the radial energy argument use genuine compact integrability.
No real-zero theorem is assumed.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.SourceBumpLaplace

open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

/-- The entire Laplace transform of the actual fixed compact source bump. -/
def bumpLaplace (z : ℂ) : ℂ :=
  ∫ x in (-1 : ℝ)..1, (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp (z * (x : ℂ))

/-- The finite weighted moments used by genuine differentiation of the source transform. -/
def bumpLaplaceMoment (k : ℕ) (z : ℂ) : ℂ :=
  ∫ x in (-1 : ℝ)..1, (x : ℂ) ^ k * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
    Complex.exp (z * (x : ℂ))

/-- Every moment integrand is continuous and genuinely integrable on its compact interval. -/
theorem bump_laplace_moment_interval_integrable (k : ℕ) (z : ℂ) :
    IntervalIntegrable (fun x : ℝ ↦ (x : ℂ) ^ k * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (z * (x : ℂ))) volume (-1) 1 :=
  (by fun_prop : Continuous _).intervalIntegrable _ _

/-- The zeroth moment is exactly the source transform. -/
theorem bump_laplace_moment_zero (z : ℂ) : bumpLaplaceMoment 0 z = bumpLaplace z := by
  simp [bumpLaplaceMoment, bumpLaplace]

/-- Reflection of the actual bump proves evenness at every complex parameter. -/
theorem bump_laplace_even (z : ℂ) : bumpLaplace (-z) = bumpLaplace z := by
  unfold bumpLaplace
  have he : (fun x : ℝ ↦ (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (-z * (x : ℂ))) =
      (fun x : ℝ ↦ (((1 - (-x) ^ 2) ^ 4 : ℝ) : ℂ) *
        Complex.exp (z * ((-x : ℝ) : ℂ))) := by
    funext x
    simp
  rw [he]
  change (∫ x in (-1 : ℝ)..1,
    (fun y : ℝ ↦ (((1 - y ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp (z * (y : ℂ))) (-x)) = _
  simpa only [neg_neg] using intervalIntegral.integral_comp_neg
    (fun y : ℝ ↦ (((1 - y ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp (z * (y : ℂ)))
    (a := -1) (b := 1)

/-- The exact source mass at the origin is strictly nonzero. -/
theorem bump_laplace_at_zero : bumpLaplace 0 = (256 / 315 : ℂ) := by
  let F : ℝ → ℝ := fun x ↦ x - 4 * x ^ 3 / 3 + 6 * x ^ 5 / 5 - 4 * x ^ 7 / 7 + x ^ 9 / 9
  have hd (x : ℝ) : HasDerivAt F ((1 - x ^ 2) ^ 4) x := by
    have h := ((((hasDerivAt_id x).sub
      (((hasDerivAt_id x).pow 3).const_mul 4 |>.div_const 3)).add
        (((hasDerivAt_id x).pow 5).const_mul 6 |>.div_const 5)).sub
          (((hasDerivAt_id x).pow 7).const_mul 4 |>.div_const 7)).add
            (((hasDerivAt_id x).pow 9).div_const 9)
    convert h using 1 <;> try rfl
    simp only [id_eq]
    ring
  unfold bumpLaplace
  simp only [zero_mul, Complex.exp_zero, mul_one]
  rw [intervalIntegral.integral_ofReal]
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ ↦ hd x)
    ((by fun_prop : Continuous (fun x : ℝ ↦ (1 - x ^ 2) ^ 4)).intervalIntegrable _ _)]
  norm_num [F]

/-- The fixed source bump is never the zero transform. -/
theorem bump_laplace_zero_ne_zero : bumpLaplace 0 ≠ 0 := by
  rw [bump_laplace_at_zero]
  norm_num

/-- On the actual support the polynomial moment factor has norm at most one. -/
theorem bump_moment_factor_norm_le_one (k : ℕ) (x : ℝ) (hx : x ∈ Ioc (-1 : ℝ) 1) :
    ‖(x : ℂ) ^ k * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ)‖ ≤ 1 := by
  have ha : |x| ≤ 1 := abs_le.mpr ⟨hx.1.le, hx.2⟩
  have hs : x ^ 2 ≤ 1 := by
    simpa only [sq_abs] using (pow_le_one₀ (abs_nonneg x) ha : |x| ^ 2 ≤ 1)
  have hp : 0 ≤ 1 - x ^ 2 := by linarith
  have hp1 : 1 - x ^ 2 ≤ 1 := by nlinarith [sq_nonneg x]
  simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg hp]
  exact mul_le_one₀ (pow_le_one₀ (abs_nonneg x) ha) (pow_nonneg hp 4)
    (pow_le_one₀ hp hp1)

/-- Actual complex parameter differentiation is justified by a compact local majorant. -/
theorem bump_laplace_moment_has_deriv_at (k : ℕ) (z : ℂ) :
    HasDerivAt (bumpLaplaceMoment k) (bumpLaplaceMoment (k + 1) z) z := by
  let μ := volume.restrict (Ioc (-1 : ℝ) 1)
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := μ)
    (F := fun w x ↦ (x : ℂ) ^ k * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (w * (x : ℂ)))
    (F' := fun w x ↦ (x : ℂ) ^ (k + 1) * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (w * (x : ℂ)))
    (bound := fun _ ↦ Real.exp (‖z‖ + 1)) (s := Metric.ball z 1)
    (Metric.ball_mem_nhds z (by norm_num))
    (Eventually.of_forall (fun _ ↦ (by fun_prop : Continuous _).aestronglyMeasurable))
    ((by fun_prop : Continuous _).integrableOn_Icc.mono_set Ioc_subset_Icc_self)
    (by fun_prop : Continuous _).aestronglyMeasurable
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      intro w hw
      have hwz : ‖w‖ ≤ ‖z‖ + 1 := by
        have hh := norm_add_le (w - z) z
        have hh' : ‖w - z‖ < 1 := by simpa only [Metric.mem_ball, dist_eq_norm] using hw
        rw [sub_add_cancel] at hh
        linarith
      have hx1 : ‖(x : ℂ)‖ ≤ 1 := by
        simpa only [Complex.norm_real, Real.norm_eq_abs] using abs_le.mpr ⟨hx.1.le, hx.2⟩
      have hre : (w * (x : ℂ)).re ≤ ‖z‖ + 1 :=
        (Complex.re_le_norm _).trans ((norm_mul_le _ _).trans
          ((mul_le_mul_of_nonneg_left hx1 (norm_nonneg w)).trans (by simpa using hwz)))
      rw [norm_mul, Complex.norm_exp]
      exact (mul_le_of_le_one_left (Real.exp_pos _).le
        (bump_moment_factor_norm_le_one (k + 1) x hx)).trans (Real.exp_le_exp.mpr hre))
    (integrableOn_const (by norm_num : volume (Ioc (-1 : ℝ) 1) ≠ ⊤))
    (by
      filter_upwards [] with x
      intro w _
      have hd := ((hasDerivAt_id w).mul_const (x : ℂ)).cexp.const_mul
        ((x : ℂ) ^ k * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ))
      convert hd using 1 <;> try rfl
      simp only [id_eq, one_mul, pow_succ]
      ring)
  convert h.2 using 1 <;> try rfl
  · funext w
    unfold bumpLaplaceMoment
    rw [intervalIntegral.integral_of_le (by norm_num)]
  · unfold bumpLaplaceMoment
    rw [intervalIntegral.integral_of_le (by norm_num)]

/-- The genuine complex derivative makes every finite weighted moment continuous. -/
theorem bump_laplace_moment_continuous (k : ℕ) : Continuous (bumpLaplaceMoment k) :=
  (show Differentiable ℂ (bumpLaplaceMoment k) from
    fun z ↦ (bump_laplace_moment_has_deriv_at k z).differentiableAt).continuous

/-- A compact polynomial integration by parts proves the actual second-order moment ODE. -/
theorem bump_laplace_moment_ode (z : ℂ) :
    z * bumpLaplaceMoment 2 z + 10 * bumpLaplaceMoment 1 z = z * bumpLaplace z := by
  let F : ℝ → ℂ := fun x ↦ (((1 - x ^ 2) ^ 5 : ℝ) : ℂ) * Complex.exp (z * (x : ℂ))
  let F' : ℝ → ℂ := fun x ↦ z *
    ((((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp (z * (x : ℂ))) -
    z * ((x : ℂ) ^ 2 * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp (z * (x : ℂ))) -
    10 * ((x : ℂ) * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp (z * (x : ℂ)))
  have hd (x : ℝ) : HasDerivAt F (F' x) x := by
    have hp := ((hasDerivAt_const x (1 : ℝ)).sub ((hasDerivAt_id x).pow 2)).pow 5
    have he := (((hasDerivAt_id x).ofReal_comp).const_mul z).cexp
    have h := hp.ofReal_comp.mul he
    convert h using 1 <;> try rfl
    dsimp [F']
    push_cast
    ring
  have hi : IntervalIntegrable F' volume (-1) 1 :=
    (by dsimp [F']; fun_prop : Continuous F').intervalIntegrable _ _
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ ↦ hd x) hi
  have hzero : F 1 - F (-1) = 0 := by norm_num [F]
  rw [hzero] at h
  dsimp [F'] at h
  rw [intervalIntegral.integral_sub
    ((by fun_prop : Continuous _).intervalIntegrable _ _)
    ((by fun_prop : Continuous _).intervalIntegrable _ _),
    intervalIntegral.integral_sub
    ((by fun_prop : Continuous _).intervalIntegrable _ _)
    ((by fun_prop : Continuous _).intervalIntegrable _ _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul] at h
  have hm : (∫ x in (-1 : ℝ)..1, (x : ℂ) * (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
      Complex.exp (z * (x : ℂ))) = bumpLaplaceMoment 1 z := by simp [bumpLaplaceMoment]
  rw [hm] at h
  change z * bumpLaplace z - z * bumpLaplaceMoment 2 z - 10 * bumpLaplaceMoment 1 z = 0 at h
  linear_combination -h

/-- The radial source function is the actual complex transform on a fixed ray. -/
def radialBump (z : ℂ) (r : ℝ) : ℂ := bumpLaplace ((r : ℂ) * z)

/-- Its actual radial derivative, represented by the first compact moment. -/
def radialBumpSlope (z : ℂ) (r : ℝ) : ℂ := z * bumpLaplaceMoment 1 ((r : ℂ) * z)

/-- The weighted radial flux retains the ODE's exact power ten. -/
def radialBumpFlux (z : ℂ) (r : ℝ) : ℂ := (r : ℂ) ^ 10 * radialBumpSlope z r

/-- Complex differentiation and the native real-to-complex chain rule give every ray derivative. -/
theorem radial_moment_has_deriv_at (k : ℕ) (z : ℂ) (r : ℝ) :
    HasDerivAt (fun s : ℝ ↦ bumpLaplaceMoment k ((s : ℂ) * z))
      (z * bumpLaplaceMoment (k + 1) ((r : ℂ) * z)) r := by
  have h := (bump_laplace_moment_has_deriv_at k ((r : ℂ) * z)).comp r
    ((hasDerivAt_id r).ofReal_comp.mul_const z)
  convert h using 1 <;> try rfl
  simp [mul_comm]

/-- The actual radial bump has the stated actual first derivative. -/
theorem radial_bump_has_deriv_at (z : ℂ) (r : ℝ) :
    HasDerivAt (radialBump z) (radialBumpSlope z r) r := by
  unfold radialBump radialBumpSlope
  convert radial_moment_has_deriv_at 0 z r using 1
  funext s
  simp only [bump_laplace_moment_zero]

/-- The radial slope differentiates to the actual second compact moment. -/
theorem radial_bump_slope_has_deriv_at (z : ℂ) (r : ℝ) :
    HasDerivAt (radialBumpSlope z)
      (z ^ 2 * bumpLaplaceMoment 2 ((r : ℂ) * z)) r := by
  convert (radial_moment_has_deriv_at 1 z r).const_mul z using 1 <;> try rfl
  ring

/-- The exact divergence-form radial ODE also holds at the singular endpoint zero. -/
theorem radial_bump_flux_has_deriv_at (z : ℂ) (r : ℝ) :
    HasDerivAt (radialBumpFlux z) (z ^ 2 * (r : ℂ) ^ 10 * radialBump z r) r := by
  have h := ((hasDerivAt_id r).ofReal_comp.pow 10).mul
    (radial_bump_slope_has_deriv_at z r)
  convert h using 1 <;> try rfl
  have ho := bump_laplace_moment_ode ((r : ℂ) * z)
  unfold radialBumpSlope radialBump
  simp only [id_eq, Complex.ofReal_one, mul_one, Pi.pow_apply]
  linear_combination -((r : ℂ) ^ 9 * z) * ho

/-- Actual radial moments and flux are continuous on the full real line. -/
theorem radial_bump_continuous (z : ℂ) : Continuous (radialBump z) :=
  (show Differentiable ℝ (radialBump z) from
    fun r ↦ (radial_bump_has_deriv_at z r).differentiableAt).continuous

/-- The actual ray slope is continuous, including both energy endpoints. -/
theorem radial_bump_slope_continuous (z : ℂ) : Continuous (radialBumpSlope z) :=
  (show Differentiable ℝ (radialBumpSlope z) from
    fun r ↦ (radial_bump_slope_has_deriv_at z r).differentiableAt).continuous

/-- The actual ray flux is continuous without dividing by the radius. -/
theorem radial_bump_flux_continuous (z : ℂ) : Continuous (radialBumpFlux z) :=
  (show Differentiable ℝ (radialBumpFlux z) from
    fun r ↦ (radial_bump_flux_has_deriv_at z r).differentiableAt).continuous

/-- The genuine nonnegative radial mass in the source energy argument. -/
def radialBumpMass (z : ℂ) : ℝ :=
  ∫ r in (0 : ℝ)..1, r ^ 10 * Complex.normSq (radialBump z r)

/-- The genuine nonnegative radial slope energy. -/
def radialBumpEnergy (z : ℂ) : ℝ :=
  ∫ r in (0 : ℝ)..1, r ^ 10 * Complex.normSq (radialBumpSlope z r)

/-- The mass defining product is genuinely continuous and interval integrable. -/
theorem radial_bump_mass_interval_integrable (z : ℂ) :
    IntervalIntegrable (fun r : ℝ ↦ r ^ 10 * Complex.normSq (radialBump z r)) volume 0 1 :=
  ((continuous_id.pow 10).mul
    (Complex.continuous_normSq.comp (radial_bump_continuous z))).intervalIntegrable _ _

/-- The slope energy defining product is genuinely continuous and interval integrable. -/
theorem radial_bump_energy_interval_integrable (z : ℂ) :
    IntervalIntegrable (fun r : ℝ ↦ r ^ 10 * Complex.normSq (radialBumpSlope z r)) volume 0 1 :=
  ((continuous_id.pow 10).mul
    (Complex.continuous_normSq.comp (radial_bump_slope_continuous z))).intervalIntegrable _ _

/-- The slope energy is nonnegative on the actual positive radial interval. -/
theorem radial_bump_energy_nonneg (z : ℂ) : 0 ≤ radialBumpEnergy z := by
  apply intervalIntegral.integral_nonneg (by norm_num)
  intro r hr
  exact mul_nonneg (pow_nonneg hr.1 10) (Complex.normSq_nonneg _)

/-- Actual source mass at the radial origin excludes a zero energy denominator. -/
theorem radial_bump_mass_pos (z : ℂ) : 0 < radialBumpMass z := by
  have hu0 : radialBump z 0 ≠ 0 := by simpa [radialBump] using bump_laplace_zero_ne_zero
  have he := (radial_bump_continuous z).continuousAt.eventually_ne hu0
  obtain ⟨δ, hδ, hb⟩ := Metric.mem_nhds_iff.mp he
  let c : ℝ := min (δ / 2) (1 / 2)
  have hc0 : 0 < c := lt_min (by positivity) (by norm_num)
  have hcδ : c < δ := (min_le_left _ _).trans_lt (by linarith)
  have hc1 : c ≤ 1 := (min_le_right _ _).trans (by norm_num)
  have hu : radialBump z c ≠ 0 := hb (by
    rw [Metric.mem_ball, dist_zero_right, Real.norm_eq_abs, abs_of_pos hc0]
    exact hcδ)
  have hp : 0 < c ^ 10 * Complex.normSq (radialBump z c) :=
    mul_pos (pow_pos hc0 10) (Complex.normSq_pos.mpr hu)
  have hcont : Continuous (fun r : ℝ ↦ r ^ 10 * Complex.normSq (radialBump z r)) :=
    (continuous_id.pow 10).mul (Complex.continuous_normSq.comp (radial_bump_continuous z))
  have hi := intervalIntegral.integral_lt_integral_of_continuousOn_of_le_of_exists_lt
    (f := fun _ : ℝ ↦ (0 : ℝ)) (g := fun r ↦ r ^ 10 * Complex.normSq (radialBump z r))
    (by norm_num : (0 : ℝ) < 1) continuous_const.continuousOn hcont.continuousOn
    (fun r hr ↦ mul_nonneg (pow_nonneg hr.1.le 10) (Complex.normSq_nonneg _))
    ⟨c, ⟨hc0.le, hc1⟩, hp⟩
  simpa only [intervalIntegral.integral_zero, radialBumpMass] using hi

/-- The weighted complex energy identity retains both actual radial endpoint values. -/
theorem bump_laplace_radial_energy_of_zero (z : ℂ) (hz : bumpLaplace z = 0) :
    z ^ 2 * (radialBumpMass z : ℂ) + (radialBumpEnergy z : ℂ) = 0 := by
  let F : ℝ → ℂ := fun r ↦ radialBumpFlux z r * conj (radialBump z r)
  let F' : ℝ → ℂ := fun r ↦ z ^ 2 *
    ((r ^ 10 * Complex.normSq (radialBump z r) : ℝ) : ℂ) +
      ((r ^ 10 * Complex.normSq (radialBumpSlope z r) : ℝ) : ℂ)
  have hd (r : ℝ) : HasDerivAt F (F' r) r := by
    have h := (radial_bump_flux_has_deriv_at z r).mul
      (radial_bump_has_deriv_at z r).star
    convert h using 1 <;> try rfl
    dsimp [F', radialBumpFlux]
    push_cast
    rw [← Complex.mul_conj (radialBump z r), ← Complex.mul_conj (radialBumpSlope z r)]
    ring
  have hi : IntervalIntegrable F' volume 0 1 := by
    apply Continuous.intervalIntegrable
    dsimp [F']
    exact ((Complex.continuous_ofReal.comp
      ((continuous_id.pow 10).mul
        (Complex.continuous_normSq.comp (radial_bump_continuous z)))).const_mul _).add
      (Complex.continuous_ofReal.comp ((continuous_id.pow 10).mul
        (Complex.continuous_normSq.comp (radial_bump_slope_continuous z))))
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ ↦ hd r) hi
  have hend : F 1 - F 0 = 0 := by simp [F, radialBumpFlux, radialBump, hz]
  rw [hend] at h
  dsimp [F'] at h
  have h1 : IntervalIntegrable (fun r : ℝ ↦ z ^ 2 *
      ((r ^ 10 * Complex.normSq (radialBump z r) : ℝ) : ℂ)) volume 0 1 :=
    ((Complex.continuous_ofReal.comp ((continuous_id.pow 10).mul
      (Complex.continuous_normSq.comp (radial_bump_continuous z)))).const_mul _).intervalIntegrable
        _ _
  have h2 : IntervalIntegrable (fun r : ℝ ↦
      ((r ^ 10 * Complex.normSq (radialBumpSlope z r) : ℝ) : ℂ)) volume 0 1 :=
    (Complex.continuous_ofReal.comp ((continuous_id.pow 10).mul
      (Complex.continuous_normSq.comp (radial_bump_slope_continuous z)))).intervalIntegrable _ _
  rw [intervalIntegral.integral_add h1 h2,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_ofReal,
    intervalIntegral.integral_ofReal] at h
  exact h

/-- An energy equation with positive mass forces any complex frequency onto the imaginary axis. -/
theorem re_eq_zero_of_energy (z : ℂ) (I N : ℝ) (hI : 0 < I) (hN : 0 ≤ N)
    (h : z ^ 2 * (I : ℂ) + (N : ℂ) = 0) : z.re = 0 := by
  by_contra hz
  have him := congrArg Complex.im h
  have hre := congrArg Complex.re h
  simp only [Complex.add_im, Complex.mul_im, pow_two, Complex.ofReal_re,
    Complex.ofReal_im, Complex.zero_im, mul_zero, zero_add, add_zero] at him
  have hzim : z.im = 0 := by
    have he : 2 * z.re * z.im * I = 0 := by nlinarith [him]
    rcases mul_eq_zero.mp he with hmul | hi
    · rcases mul_eq_zero.mp hmul with hr | him0
      · exact False.elim ((mul_ne_zero (by norm_num) hz) hr)
      · exact him0
    · exact False.elim (hI.ne' hi)
  simp only [Complex.add_re, Complex.mul_re, pow_two, Complex.ofReal_re,
    Complex.ofReal_im, Complex.zero_re, mul_zero, sub_zero, hzim] at hre
  have hzsq : 0 < z.re ^ 2 := sq_pos_of_ne_zero hz
  have hp : 0 < z.re ^ 2 * I := mul_pos hzsq hI
  nlinarith

/-- The actual compact bump transform has no zero off the imaginary axis. -/
theorem bump_laplace_ne_zero_of_re_ne_zero (z : ℂ) (hz : z.re ≠ 0) : bumpLaplace z ≠ 0 := by
  intro hzero
  exact hz (re_eq_zero_of_energy z (radialBumpMass z) (radialBumpEnergy z)
    (radial_bump_mass_pos z) (radial_bump_energy_nonneg z)
    (bump_laplace_radial_energy_of_zero z hzero))

end
end FormalResearch.RiemannHypothesis.SourceBumpLaplace
```
