import FormalResearch.RiemannHypothesis.ThetaTailCalculus
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Topology.Algebra.Polynomial
import Mathlib.Algebra.Order.Archimedean.Basic

set_option autoImplicit false

/-!
# Actual continuous theta-tail moment measure (review source only)

This proof uses the unchanged theta definitions from the clean PR151 review
checkout at 1764fb3453d073aa910a5dac55d271174bf4eed1. These dependencies are
unmerged; this file is not part of the accepted main import graph.

The measure is the pushforward of the positive theta density restricted to
[t,infinity) under u -> u-t. Its moments keep the source's factorial and
endpoint conventions. No Jacobi operator or RH estimate is assumed.
-/

namespace FormalResearch.RiemannHypothesis.ThetaMomentMeasure

open MeasureTheory Set Polynomial
open ThetaPositiveLift

noncomputable section

/-- Positive theta magnitude measure before translating the initial site. -/
def sourceMeasure (t : ℝ) : Measure ℝ :=
  (volume.restrict (Ici t)).withDensity (fun u => ENNReal.ofReal (thetaPhi u))

/-- The actual nonnegative-tail measure on x=u-t. -/
def momentMeasure (t : ℝ) : Measure ℝ :=
  Measure.map (fun u : ℝ => u - t) (sourceMeasure t)

/-- Unnormalized real moments; the cyclic vector must retain this total mass. -/
def moment (t : ℝ) (n : ℕ) : ℝ := ∫ x : ℝ, x ^ n ∂momentMeasure t

private theorem density_measurable :
    Measurable (fun u : ℝ => ENNReal.ofReal (thetaPhi u)) :=
  continuous_thetaPhi.measurable.ennreal_ofReal

private theorem phi_nonnegative_ae {t : ℝ} (ht : 0 ≤ t) :
    ∀ᵐ u ∂volume.restrict (Ici t), 0 ≤ thetaPhi u := by
  filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
  exact (thetaPhi_positive u (ht.trans hu)).le

/-- Source power moments are integrable, with factorial restored exactly. -/
theorem source_power_integrable (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => thetaPhi u * (u - t) ^ n) (Ici t) := by
  have h := (thetaTail_integrable n ht).mul_const (n.factorial : ℝ)
  apply h.congr
  filter_upwards [] with u
  exact div_mul_cancel₀ _ (by positivity : (n.factorial : ℝ) ≠ 0)

/-- All powers are integrable for the actual theta magnitude measure. -/
theorem sourceMeasure_power_integrable (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    Integrable (fun u : ℝ => (u - t) ^ n) (sourceMeasure t) := by
  rw [sourceMeasure, integrable_withDensity_iff_integrable_smul' density_measurable
    (Filter.Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
  apply (source_power_integrable n ht).congr
  filter_upwards [phi_nonnegative_ae ht] with u hu
  simp [ENNReal.toReal_ofReal hu, smul_eq_mul]

/-- The pushforward preserves integrability of every exact power moment. -/
theorem moment_power_integrable (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    Integrable (fun x : ℝ => x ^ n) (momentMeasure t) := by
  unfold momentMeasure
  apply (integrable_map_measure (g := fun x : ℝ => x ^ n)
    (f := fun u : ℝ => u - t) (continuous_id.pow n).aestronglyMeasurable
    (measurable_id.sub_const t).aemeasurable).mpr
  simpa [Function.comp_def] using sourceMeasure_power_integrable n ht

/-- The moment is exactly the source power integral after translation. -/
theorem moment_eq_source_integral (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    moment t n = ∫ u in Ici t, thetaPhi u * (u - t) ^ n := by
  unfold moment momentMeasure
  rw [integral_map (f := fun x : ℝ => x ^ n) (φ := fun u : ℝ => u - t)
    (measurable_id.sub_const t).aemeasurable (continuous_id.pow n).aestronglyMeasurable]
  rw [sourceMeasure, integral_withDensity_eq_integral_toReal_smul density_measurable
    (Filter.Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
  apply integral_congr_ae
  filter_upwards [phi_nonnegative_ae ht] with u hu
  simp [ENNReal.toReal_ofReal hu, smul_eq_mul]

/-- Exact theta-tail moment adapter with the original successor indexing. -/
theorem moment_eq_factorial_mul_thetaTail (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    moment t n = (n.factorial : ℝ) * thetaTail (n + 1) t := by
  rw [moment_eq_source_integral n ht]
  change (∫ u in Ici t, thetaPhi u * (u - t) ^ n) =
    (n.factorial : ℝ) * ∫ u in Ici t, thetaPhi u * (u - t) ^ n / (n.factorial : ℝ)
  rw [← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with u
  field_simp

/-- Actual theta moments are strictly positive at every order. -/
theorem moment_positive (n : ℕ) {t : ℝ} (ht : 0 ≤ t) : 0 < moment t n := by
  rw [moment_eq_factorial_mul_thetaTail n ht]
  exact mul_pos (by positivity) (thetaTail_positive (n + 1) ht)

/-- Quantitative factorial moment control, uniform in the order. -/
theorem moment_le_factorial_bound (n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    moment t n ≤ (n.factorial : ℝ) * thetaPhiDecayConstant * Real.exp (-3 * t) := by
  rw [moment_eq_factorial_mul_thetaTail n ht, mul_assoc]
  exact mul_le_mul_of_nonneg_left (thetaTail_le_exp_neg_three_mul (n + 1) ht)
    (by positivity)

/-- The actual magnitude measure is finite; integrability is proved first. -/
theorem momentMeasure_finite {t : ℝ} (ht : 0 ≤ t) : IsFiniteMeasure (momentMeasure t) := by
  apply (integrable_const_iff_isFiniteMeasure (by norm_num : (1 : ℝ) ≠ 0)).mp
  simpa using moment_power_integrable 0 ht

/-- The unnormalized measure cannot vanish because its total moment is positive. -/
theorem momentMeasure_ne_zero {t : ℝ} (ht : 0 ≤ t) : momentMeasure t ≠ 0 := by
  intro h
  have hp := moment_positive 0 ht
  simp [moment, h] at hp

/-- The source restriction and translation put the whole measure on x≥0. -/
theorem momentMeasure_nonnegative_ae (t : ℝ) : ∀ᵐ x ∂momentMeasure t, 0 ≤ x := by
  unfold momentMeasure
  apply (ae_map_iff (f := fun u : ℝ => u - t)
    (measurable_id.sub_const t).aemeasurable (p := fun x : ℝ => 0 ≤ x)
    measurableSet_Ici).mpr
  apply (withDensity_absolutelyContinuous
    (volume.restrict (Ici t)) (fun u => ENNReal.ofReal (thetaPhi u))).ae_le
  filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
  exact sub_nonneg.mpr hu


/-- Continuous observables have the exact density/translation adapter. -/
theorem integral_momentMeasure_eq_source {t : ℝ} (ht : 0 ≤ t)
    (f : ℝ → ℝ) (hf : Continuous f) :
    (∫ x, f x ∂momentMeasure t) = ∫ u in Ici t, thetaPhi u * f (u - t) := by
  unfold momentMeasure
  rw [integral_map (f := f) (φ := fun u : ℝ => u - t)
    (measurable_id.sub_const t).aemeasurable hf.aestronglyMeasurable]
  rw [sourceMeasure, integral_withDensity_eq_integral_toReal_smul density_measurable
    (Filter.Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
  apply integral_congr_ae
  filter_upwards [phi_nonnegative_ae ht] with u hu
  simp [ENNReal.toReal_ofReal hu, smul_eq_mul]

/-- Integrability follows the same exact density and translation convention. -/
theorem integrable_momentMeasure_iff {t : ℝ} (ht : 0 ≤ t)
    (f : ℝ → ℝ) (hf : Continuous f) :
    Integrable f (momentMeasure t) ↔
      IntegrableOn (fun u => thetaPhi u * f (u - t)) (Ici t) := by
  unfold momentMeasure sourceMeasure
  rw [integrable_map_measure (g := f) (f := fun u : ℝ => u - t)
    hf.aestronglyMeasurable (measurable_id.sub_const t).aemeasurable,
    integrable_withDensity_iff_integrable_smul' density_measurable
      (Filter.Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
  apply integrable_congr
  filter_upwards [phi_nonnegative_ae ht] with u hu
  simp [ENNReal.toReal_ofReal hu, smul_eq_mul]

/-- Every polynomial observable is integrable; no finite moment cutoff is used. -/
theorem polynomial_integrable (p : ℝ[X]) {t : ℝ} (ht : 0 ≤ t) :
    Integrable (fun x => p.eval x) (momentMeasure t) := by
  have h := integrable_finsetSum (Finset.range (p.natDegree + 1))
    (fun n _ => (moment_power_integrable n ht).const_mul (p.coeff n))
  simpa only [← Polynomial.eval_eq_sum_range] using h

/-- Squares of arbitrary polynomials are integrable for the actual measure. -/
theorem polynomial_square_integrable (p : ℝ[X]) {t : ℝ} (ht : 0 ≤ t) :
    Integrable (fun x => p.eval x ^ 2) (momentMeasure t) := by
  simpa only [Polynomial.eval_mul, pow_two] using polynomial_integrable (p * p) ht

/-- Strict nondegeneracy at every polynomial degree, proved from an open
positive-density interval rather than finite numerical moment data. -/
theorem polynomial_square_integral_positive (p : ℝ[X]) (hp : p ≠ 0)
    {t : ℝ} (ht : 0 ≤ t) : 0 < ∫ x, p.eval x ^ 2 ∂momentMeasure t := by
  rw [integral_momentMeasure_eq_source ht (fun x : ℝ => p.eval x ^ 2) (p.continuous.pow 2)]
  have hint : IntegrableOn (fun u => thetaPhi u * p.eval (u - t) ^ 2) (Ici t) :=
    (integrable_momentMeasure_iff ht (fun x : ℝ => p.eval x ^ 2) (p.continuous.pow 2)).mp
      (polynomial_square_integrable p ht)
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_ hint).mpr
  · obtain ⟨r, hr⟩ := p.exists_max_root hp
    let x : ℝ := max r 0 + 1
    have hx : 0 < x := by dsimp [x]; have := le_max_right r 0; linarith
    have hxr : r < x := by dsimp [x]; have := le_max_left r 0; linarith
    have heval : p.eval x ≠ 0 := by
      intro heval
      have hroot : p.IsRoot x := heval
      exact (not_le_of_gt hxr) (hr x hroot)
    have hc : Continuous (fun u => thetaPhi u * p.eval (u - t) ^ 2) :=
      continuous_thetaPhi.mul ((p.continuous.comp (continuous_id.sub continuous_const)).pow 2)
    have hopen : IsOpen (Function.support (fun u => thetaPhi u * p.eval (u - t) ^ 2) ∩ Ioi t) :=
      hc.isOpen_support.inter isOpen_Ioi
    have hnonempty : (Function.support (fun u => thetaPhi u * p.eval (u - t) ^ 2) ∩ Ioi t).Nonempty := by
      refine ⟨t + x, ?_, ?_⟩
      · change thetaPhi (t + x) * p.eval (t + x - t) ^ 2 ≠ 0
        have hphi := thetaPhi_positive (t + x) (by linarith)
        have heval' : p.eval (t + x - t) ≠ 0 := by simpa using heval
        exact (mul_pos hphi (sq_pos_of_ne_zero heval')).ne'
      · exact lt_add_of_pos_right t hx
    apply (hopen.measure_pos volume hnonempty).trans_le
    apply measure_mono
    intro u hu
    exact ⟨hu.1, (show t < u from hu.2).le⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact mul_nonneg (thetaPhi_positive u (ht.trans hu)).le (sq_nonneg _)

/-- Exact zeroth normalization: total mass is T₁, not silently one. -/
theorem moment_zero_eq_thetaTail_one {t : ℝ} (ht : 0 ≤ t) :
    moment t 0 = thetaTail 1 t := by
  simpa using moment_eq_factorial_mul_thetaTail 0 ht

/-- Initial normalized multiplication coefficient, with total mass retained. -/
def initialDiagonal (t : ℝ) : ℝ := moment t 1 / moment t 0

/-- Squared initial off-diagonal obtained from the centered degree-one norm. -/
def initialOffDiagonalSquared (t : ℝ) : ℝ :=
  moment t 2 / moment t 0 - initialDiagonal t ^ 2

/-- The actual initial diagonal is positive, excluding literal free coefficients. -/
theorem initialDiagonal_positive {t : ℝ} (ht : 0 ≤ t) : 0 < initialDiagonal t :=
  div_pos (moment_positive 1 ht) (moment_positive 0 ht)

/-- The full centered quadratic integral, before any normalization. -/
theorem centered_square_integral (c : ℝ) {t : ℝ} (ht : 0 ≤ t) :
    (∫ x, (x - c) ^ 2 ∂momentMeasure t) =
      moment t 2 - 2 * c * moment t 1 + c ^ 2 * moment t 0 := by
  have h0 := moment_power_integrable 0 ht
  have h1 := moment_power_integrable 1 ht
  have h2 := moment_power_integrable 2 ht
  calc
    _ = ∫ x, x ^ 2 + (-2 * c) * x ^ 1 + c ^ 2 * x ^ 0 ∂momentMeasure t := by
      apply integral_congr_ae
      filter_upwards [] with x
      ring
    _ = moment t 2 + (-2 * c) * moment t 1 + c ^ 2 * moment t 0 := by
      rw [integral_add (f := fun x : ℝ => x ^ 2 + (-2 * c) * x ^ 1)
        (g := fun x : ℝ => c ^ 2 * x ^ 0) (h2.add (h1.const_mul _)) (h0.const_mul _),
        integral_add (f := fun x : ℝ => x ^ 2) (g := fun x : ℝ => (-2 * c) * x ^ 1)
          h2 (h1.const_mul _), integral_const_mul, integral_const_mul]
      rfl
    _ = _ := by ring

/-- No affine observable is almost everywhere constant for the actual density. -/
theorem centered_square_integral_positive (c : ℝ) {t : ℝ} (ht : 0 ≤ t) :
    0 < ∫ x, (x - c) ^ 2 ∂momentMeasure t := by
  have hp : (Polynomial.X - Polynomial.C c : ℝ[X]) ≠ 0 := by
    intro h
    have hc := congrArg (fun p : ℝ[X] => p.coeff 1) h
    norm_num at hc
  simpa using polynomial_square_integral_positive (Polynomial.X - Polynomial.C c) hp ht

/-- Strict variance gives the genuine positive first off-diagonal square. -/
theorem initialOffDiagonalSquared_positive {t : ℝ} (ht : 0 ≤ t) :
    0 < initialOffDiagonalSquared t := by
  have hm0 := moment_positive 0 ht
  have hv := centered_square_integral_positive (initialDiagonal t) ht
  rw [centered_square_integral _ ht] at hv
  have heq : initialOffDiagonalSquared t =
      (moment t 2 - 2 * initialDiagonal t * moment t 1 +
        initialDiagonal t ^ 2 * moment t 0) / moment t 0 := by
    unfold initialOffDiagonalSquared initialDiagonal
    field_simp
    ring
  rw [heq]
  exact div_pos hv hm0


/-- Positive first hopping coefficient; this supplies the nonzero hypothesis
at the first transfer step without assuming a Jacobi construction. -/
def initialOffDiagonal (t : ℝ) : ℝ := Real.sqrt (initialOffDiagonalSquared t)

/-- The first normalized off-diagonal is strictly positive. -/
theorem initialOffDiagonal_positive {t : ℝ} (ht : 0 ≤ t) : 0 < initialOffDiagonal t :=
  Real.sqrt_pos.mpr (initialOffDiagonalSquared_positive ht)

/-- Its square has exactly the centered moment normalization. -/
theorem initialOffDiagonal_sq {t : ℝ} (ht : 0 ≤ t) :
    initialOffDiagonal t ^ 2 = initialOffDiagonalSquared t :=
  Real.sq_sqrt (initialOffDiagonalSquared_positive ht).le

/-- Exact first diagonal in the source's tail coordinates. -/
theorem initialDiagonal_eq_tail_ratio {t : ℝ} (ht : 0 ≤ t) :
    initialDiagonal t = thetaTail 2 t / thetaTail 1 t := by
  unfold initialDiagonal
  rw [moment_eq_factorial_mul_thetaTail 1 ht, moment_zero_eq_thetaTail_one ht]
  norm_num

/-- Exact first off-diagonal square in the source's tail coordinates. -/
theorem initialOffDiagonalSquared_eq_tail_ratio {t : ℝ} (ht : 0 ≤ t) :
    initialOffDiagonalSquared t = 2 * thetaTail 3 t / thetaTail 1 t -
      (thetaTail 2 t / thetaTail 1 t) ^ 2 := by
  unfold initialOffDiagonalSquared
  rw [moment_eq_factorial_mul_thetaTail 2 ht, moment_zero_eq_thetaTail_one ht,
    initialDiagonal_eq_tail_ratio ht]
  norm_num

/-- The unnormalized cyclic vector would have this norm, rather than norm one. -/
def cyclicVectorNorm (t : ℝ) : ℝ := Real.sqrt (moment t 0)

/-- Keeping the original measure forces the cyclic-vector norm square to T₁. -/
theorem cyclicVectorNorm_sq {t : ℝ} (ht : 0 ≤ t) :
    cyclicVectorNorm t ^ 2 = thetaTail 1 t := by
  rw [cyclicVectorNorm, Real.sq_sqrt (moment_positive 0 ht).le,
    moment_zero_eq_thetaTail_one ht]

/-- The theta density is equivalent to restricted volume on its actual domain. -/
theorem sourceMeasure_dominates_restricted_volume {t : ℝ} (ht : 0 ≤ t) :
    volume.restrict (Ici t) ≪ sourceMeasure t := by
  apply withDensity_absolutelyContinuous' density_measurable.aemeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
  exact (ENNReal.ofReal_pos.mpr (thetaPhi_positive u (ht.trans hu))).ne'

/-- Positive magnitude mass persists above every cutoff.  The multiplication
operator therefore requires an unbounded-domain treatment, not an unstated
bounded perturbation of the free Jacobi operator. -/
theorem momentMeasure_Ioi_positive (r : ℝ) {t : ℝ} (ht : 0 ≤ t) :
    0 < momentMeasure t (Ioi r) := by
  apply pos_iff_ne_zero.mpr
  intro hz
  rw [momentMeasure, Measure.map_apply (f := fun u : ℝ => u - t) (measurable_id.sub_const t) measurableSet_Ioi] at hz
  have hb := sourceMeasure_dominates_restricted_volume ht hz
  have hm : MeasurableSet ((fun u : ℝ => u - t) ⁻¹' Ioi r) :=
    (measurable_id.sub_const t) measurableSet_Ioi
  rw [Measure.restrict_apply hm] at hb
  have hpos : 0 < volume (Ioo (t + max r 0 + 1) (t + max r 0 + 2)) := by simp
  have hle : volume (Ioo (t + max r 0 + 1) (t + max r 0 + 2)) ≤
      volume ((fun u : ℝ => u - t) ⁻¹' Ioi r ∩ Ici t) := by
    apply measure_mono
    intro u hu
    have hm1 := le_max_left r 0
    have hm2 := le_max_right r 0
    constructor
    · change r < u - t
      linarith [hu.1]
    · change t ≤ u
      linarith [hu.1]
  rw [hb] at hle
  exact not_lt_of_ge hle hpos

private theorem exponential_majorant_integrable (s : ℝ) (hs : s < 4) (t : ℝ) :
    IntegrableOn
      (fun u : ℝ => (thetaPhiDecayConstant * Real.exp (-s * t)) * Real.exp ((s - 4) * u))
      (Ici t) :=
  ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
    (integrableOn_exp_mul_Ioi (a := s - 4) (by linarith) t)).const_mul _

private theorem source_exp_le_majorant (s : ℝ) {t u : ℝ} (ht : 0 ≤ t) (hu : t ≤ u) :
    thetaPhi u * Real.exp (s * (u - t)) ≤
      (thetaPhiDecayConstant * Real.exp (-s * t)) * Real.exp ((s - 4) * u) := by
  calc
    _ ≤ (thetaPhiDecayConstant * Real.exp (-4 * u)) * Real.exp (s * (u - t)) :=
      mul_le_mul_of_nonneg_right (thetaPhi_le_exp_neg_four_mul (ht.trans hu))
        (Real.exp_pos _).le
    _ = _ := by
      simp only [mul_assoc, ← Real.exp_add]
      congr 1
      ring

/-- Quantitative exponential domain: every real exponent s<4 is integrable. -/
theorem exponential_integrable (s : ℝ) (hs : s < 4) {t : ℝ} (ht : 0 ≤ t) :
    Integrable (fun x : ℝ => Real.exp (s * x)) (momentMeasure t) := by
  apply (integrable_momentMeasure_iff ht (fun x : ℝ => Real.exp (s * x)) (Real.continuous_exp.comp
    (continuous_const.mul continuous_id))).mpr
  apply (exponential_majorant_integrable s hs t).mono'
  · exact (continuous_thetaPhi.mul (Real.continuous_exp.comp
      (continuous_const.mul (continuous_id.sub continuous_const)))).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    rw [Real.norm_of_nonneg (mul_nonneg (thetaPhi_positive u (ht.trans hu)).le
      (Real.exp_pos _).le)]
    exact source_exp_le_majorant s ht hu

/-- An explicit Laplace bound accompanies the domain theorem.  Normalizing
would divide this bound by the actual T₁ mass, which is not discarded. -/
theorem exponential_integral_le (s : ℝ) (hs : s < 4) {t : ℝ} (ht : 0 ≤ t) :
    (∫ x, Real.exp (s * x) ∂momentMeasure t) ≤
      thetaPhiDecayConstant * Real.exp (-4 * t) / (4 - s) := by
  rw [integral_momentMeasure_eq_source ht (fun x : ℝ => Real.exp (s * x))
    (Real.continuous_exp.comp (continuous_const.mul continuous_id))]
  have hint := (integrable_momentMeasure_iff ht (fun x : ℝ => Real.exp (s * x)) (Real.continuous_exp.comp
    (continuous_const.mul continuous_id))).mp (exponential_integrable s hs ht)
  calc
    _ ≤ ∫ u in Ici t, (thetaPhiDecayConstant * Real.exp (-s * t)) * Real.exp ((s - 4) * u) :=
      setIntegral_mono_on hint (exponential_majorant_integrable s hs t) measurableSet_Ici
        (fun u hu => source_exp_le_majorant s ht hu)
    _ = (thetaPhiDecayConstant * Real.exp (-s * t)) *
        (-Real.exp ((s - 4) * t) / (s - 4)) := by
      rw [integral_const_mul, integral_Ici_eq_integral_Ioi,
        integral_exp_mul_Ioi (by linarith : s - 4 < 0)]
    _ = thetaPhiDecayConstant * (Real.exp (-s * t) * Real.exp ((s - 4) * t)) /
        (4 - s) := by
      have hd1 : s - 4 ≠ 0 := by linarith
      have hd2 : 4 - s ≠ 0 := by linarith
      field_simp
      ring
    _ = _ := by
      rw [← Real.exp_add]
      congr 3
      ring


/-- Markov's lower estimate retains the actual positive tail mass. -/
theorem even_moment_tail_lower (n : ℕ) (r : ℝ) (hr : 0 ≤ r)
    {t : ℝ} (ht : 0 ≤ t) :
    (momentMeasure t).real (Ioi r) * r ^ (2 * n) ≤ moment t (2 * n) := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  have hc : IntegrableOn (fun _ : ℝ => r ^ (2 * n)) (Ioi r) (momentMeasure t) :=
    integrable_const _
  have hp := moment_power_integrable (2 * n) ht
  calc
    _ = ∫ _ in Ioi r, r ^ (2 * n) ∂momentMeasure t := by
      rw [setIntegral_const, smul_eq_mul]
    _ ≤ ∫ x in Ioi r, x ^ (2 * n) ∂momentMeasure t :=
      setIntegral_mono_on hc hp.integrableOn measurableSet_Ioi
        (fun x hx => pow_le_pow_left₀ hr (show r ≤ x from hx.le) _)
    _ ≤ moment t (2 * n) := by
      apply setIntegral_le_integral hp
      filter_upwards [] with x
      rw [pow_mul]
      exact pow_nonneg (sq_nonneg x) n

/-- No finite operator-norm radius can bound all actual even moments.
This is an obstruction to a bounded pointed Jacobi realization, not an
obstruction to an unbounded self-adjoint realization with a checked domain. -/
theorem no_geometric_even_moment_bound (B : ℝ) (hB : 0 ≤ B)
    {t : ℝ} (ht : 0 ≤ t) :
    ¬ ∀ n : ℕ, moment t (2 * n) ≤ moment t 0 * B ^ (2 * n) := by
  intro hbound
  by_cases hz : B = 0
  · have hb := hbound 1
    have hp := moment_positive 2 ht
    norm_num [hz] at hb
    linarith
  · have hBpos : 0 < B := lt_of_le_of_ne hB (Ne.symm hz)
    have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
    let d : ℝ := (momentMeasure t).real (Ioi (2 * B))
    have hd : 0 < d := ENNReal.toReal_pos
      (momentMeasure_Ioi_positive (2 * B) ht).ne' (measure_ne_top _ _)
    have hcoeff (n : ℕ) : d * (4 : ℝ) ^ n ≤ moment t 0 := by
      have hl := even_moment_tail_lower n (2 * B) (by positivity) ht
      have hp : (2 * B) ^ (2 * n) = (4 : ℝ) ^ n * B ^ (2 * n) := by
        rw [mul_pow, pow_mul (2 : ℝ) 2 n]
        norm_num
      have hBpow : 0 < B ^ (2 * n) := pow_pos hBpos _
      apply (mul_le_mul_iff_right₀ hBpow).mp
      calc
        _ = d * (2 * B) ^ (2 * n) := by rw [hp]; ring
        _ ≤ moment t (2 * n) := hl
        _ ≤ moment t 0 * B ^ (2 * n) := hbound n
        _ = B ^ (2 * n) * moment t 0 := by ring
    obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt (moment t 0 / d) (by norm_num : (1 : ℝ) < 4)
    have hg := (div_lt_iff₀ hd).mp hn
    have hb := hcoeff n
    nlinarith

end
end FormalResearch.RiemannHypothesis.ThetaMomentMeasure

set_option pp.proofs false
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.sourceMeasure
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.sourceMeasure
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.source_power_integrable
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.source_power_integrable
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.sourceMeasure_power_integrable
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.sourceMeasure_power_integrable
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_power_integrable
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_power_integrable
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_eq_source_integral
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_eq_source_integral
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_eq_factorial_mul_thetaTail
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_eq_factorial_mul_thetaTail
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_positive
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_positive
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_le_factorial_bound
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_le_factorial_bound
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure_finite
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure_finite
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure_ne_zero
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure_ne_zero
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure_nonnegative_ae
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure_nonnegative_ae
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.integral_momentMeasure_eq_source
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.integral_momentMeasure_eq_source
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.integrable_momentMeasure_iff
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.integrable_momentMeasure_iff
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.polynomial_integrable
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.polynomial_integrable
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.polynomial_square_integrable
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.polynomial_square_integrable
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.polynomial_square_integral_positive
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.polynomial_square_integral_positive
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_zero_eq_thetaTail_one
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.moment_zero_eq_thetaTail_one
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialDiagonal
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialDiagonal
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonalSquared
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonalSquared
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialDiagonal_positive
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialDiagonal_positive
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.centered_square_integral
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.centered_square_integral
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.centered_square_integral_positive
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.centered_square_integral_positive
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonalSquared_positive
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonalSquared_positive
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonal
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonal
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonal_positive
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonal_positive
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonal_sq
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonal_sq
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialDiagonal_eq_tail_ratio
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialDiagonal_eq_tail_ratio
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonalSquared_eq_tail_ratio
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.initialOffDiagonalSquared_eq_tail_ratio
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.cyclicVectorNorm
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.cyclicVectorNorm
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.cyclicVectorNorm_sq
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.cyclicVectorNorm_sq
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.sourceMeasure_dominates_restricted_volume
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.sourceMeasure_dominates_restricted_volume
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure_Ioi_positive
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.momentMeasure_Ioi_positive
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.exponential_integrable
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.exponential_integrable
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.exponential_integral_le
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.exponential_integral_le
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.even_moment_tail_lower
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.even_moment_tail_lower
#print FormalResearch.RiemannHypothesis.ThetaMomentMeasure.no_geometric_even_moment_bound
#print axioms FormalResearch.RiemannHypothesis.ThetaMomentMeasure.no_geometric_even_moment_bound
