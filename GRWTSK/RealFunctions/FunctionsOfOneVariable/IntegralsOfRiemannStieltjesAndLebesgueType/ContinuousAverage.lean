import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Actual finite means, continuous averages and endpoint slopes

Local attribution: grwtsk contributors.
Grant Sanderson, What does area have to do with slope? (2017-05-06),
text adaptation Kurt Bruns, https://www.3blue1brown.com/lessons/area-and-slope/ .
All bodies and construction fields: NOT_RUN_USER_DEFERRED.

A finite mean has exactly n terms, not an infinite cardinality denominator.
For the actual sine samples on [0,pi], a finite trigonometric identity and
continuity of sinc prove convergence to the actual integral average 2/pi.
The exact polynomial exercise and primitive endpoint slope are separate
consumers. Analytic trig/FTC suppliers are imported mathematics, not a local
independent discovery of trig derivatives or a general Riemann-sum theorem.
-/

namespace GRWTSK.RealAnalysis.ContinuousAverage

open Filter MeasureTheory Set
open scoped BigOperators Topology

noncomputable def integralAverage (f : ℝ → ℝ) (a b : ℝ) : ℝ :=
  (∫ x in a..b, f x)/(b-a)

noncomputable def sampleMean (f : ℝ → ℝ) (a b : ℝ) (n : ℕ) : ℝ :=
  (1/(n : ℝ))*∑ k ∈ Finset.range n, f (a+(b-a)*(k : ℝ)/(n : ℝ))

noncomputable def uniformRectangles (f : ℝ → ℝ) (a b : ℝ) (n : ℕ) : ℝ :=
  ((b-a)/(n : ℝ))*∑ k ∈ Finset.range n, f (a+(b-a)*(k : ℝ)/(n : ℝ))

/-- The exact finite conversion keeps both the sample cardinality and interval width. -/
theorem finite_mean_eq_rectangles_div_width (f : ℝ → ℝ) (a b : ℝ)
    (hab : b ≠ a) (n : ℕ) (hn : 0 < n) :
    sampleMean f a b n = uniformRectangles f a b n/(b-a) := by
  have hnr : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  unfold sampleMean uniformRectangles
  field_simp [sub_ne_zero.mpr hab, hnr] <;> ring

/-- Actual derivative and integrability suppliers precede the source average-slope identity. -/
theorem average_eq_primitive_slope (f F : ℝ → ℝ) (a b : ℝ) (hab : a < b)
    (hd : ∀ x ∈ uIcc a b, HasDerivAt F (f x) x)
    (hi : IntervalIntegrable f volume a b) :
    integralAverage f a b = (F b-F a)/(b-a) := by
  unfold integralAverage
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi]

theorem negative_cos_derivative (x : ℝ) :
    HasDerivAt (fun t : ℝ => -Real.cos t) (Real.sin x) x := by
  simpa using (Real.hasDerivAt_cos x).neg

theorem sine_integral : (∫ x in (0 : ℝ)..Real.pi, Real.sin x) = 2 := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => negative_cos_derivative x)
    (Real.continuous_sin.intervalIntegrable 0 Real.pi)]
  norm_num

theorem sine_average : integralAverage Real.sin 0 Real.pi = 2/Real.pi := by
  simp only [integralAverage, sine_integral, sub_zero]

noncomputable def halfMesh (n : ℕ) : ℝ := Real.pi/(n : ℝ)/2
noncomputable def sineMean (n : ℕ) : ℝ :=
  (1/(n : ℝ))*∑ k ∈ Finset.range n, Real.sin ((Real.pi/(n : ℝ))*(k : ℝ))

theorem sine_mean_is_sample_mean (n : ℕ) :
    sineMean n = sampleMean Real.sin 0 Real.pi n := by
  unfold sineMean sampleMean
  simp only [sub_zero, zero_add]
  congr 1
  apply Finset.sum_congr rfl
  intro k _
  congr 1
  ring

theorem half_mesh_bounds (n : ℕ) (hn : 0 < n) :
    0 < halfMesh n ∧ halfMesh n < Real.pi := by
  have hp : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have h1 : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n from hn)
  have hu : Real.pi/(n : ℝ) ≤ Real.pi := by
    apply (div_le_iff₀ hp).mpr
    nlinarith [Real.pi_pos]
  unfold halfMesh
  constructor
  · positivity
  · linarith [Real.pi_pos]

/-- Exact finite identity: no desired average or limiting correspondence is assumed. -/
theorem sine_sum_identity (n : ℕ) (hn : 0 < n) :
    Real.sin (halfMesh n)*
      (∑ k ∈ Finset.range n, Real.sin ((Real.pi/(n : ℝ))*(k : ℝ))) =
      Real.cos (halfMesh n) := by
  have hnr : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  have hfirst : (n : ℝ)*(Real.pi/(n : ℝ))/2 = Real.pi/2 := by
    field_simp [hnr] <;> ring
  have hlast : ((n : ℝ)-1)*(Real.pi/(n : ℝ))/2 = Real.pi/2-halfMesh n := by
    unfold halfMesh
    field_simp [hnr] <;> ring
  have he := Real.sin_mul_sum_sin n (Real.pi/(n : ℝ)) 0
  simpa only [add_zero, hfirst, hlast, Real.sin_pi_div_two,
    Real.sin_pi_div_two_sub, one_mul] using he

theorem sine_mean_formula (n : ℕ) (hn : 0 < n) :
    sineMean n = (2/Real.pi)*Real.cos (halfMesh n)/Real.sinc (halfMesh n) := by
  have hb := half_mesh_bounds n hn
  have hhn : halfMesh n ≠ 0 := ne_of_gt hb.1
  have hsn : Real.sin (halfMesh n) ≠ 0 :=
    ne_of_gt (Real.sin_pos_of_pos_of_lt_pi hb.1 hb.2)
  have hsc : Real.sinc (halfMesh n) ≠ 0 := by
    rw [Real.sinc_of_ne_zero hhn]
    exact div_ne_zero hsn hhn
  have hnr : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  have hmass : (n : ℝ)*halfMesh n = Real.pi/2 := by
    unfold halfMesh
    field_simp [hnr] <;> ring
  apply (eq_div_iff hsc).mpr
  rw [Real.sinc_of_ne_zero hhn]
  unfold sineMean
  calc _ = (Real.sin (halfMesh n)*
        (∑ k ∈ Finset.range n, Real.sin ((Real.pi/(n : ℝ))*(k : ℝ))))/
          ((n : ℝ)*halfMesh n) := by
          field_simp [hnr, hhn] <;> ring
       _ = Real.cos (halfMesh n)/(Real.pi/2) := by
          rw [sine_sum_identity n hn, hmass]
       _ = (2/Real.pi)*Real.cos (halfMesh n) := by
          field_simp [Real.pi_ne_zero] <;> ring

theorem half_mesh_tendsto_zero : Tendsto halfMesh atTop (𝓝 (0 : ℝ)) := by
  have hi : Tendsto (fun n : ℕ => 1/(n : ℝ)) atTop (𝓝 (0 : ℝ)) :=
    tendsto_one_div_atTop_nhds_zero_nat
  simpa [halfMesh, div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm]
    using hi.const_mul (Real.pi/2)

/-- The actual finite sine means converge, using analytic sinc continuity at zero. -/
theorem sine_mean_tendsto : Tendsto sineMean atTop (𝓝 (2/Real.pi)) := by
  have hc : Tendsto (fun n => Real.cos (halfMesh n)) atTop (𝓝 (1 : ℝ)) := by
    simpa using (Real.continuous_cos.tendsto 0).comp half_mesh_tendsto_zero
  have hs : Tendsto (fun n => Real.sinc (halfMesh n)) atTop (𝓝 (1 : ℝ)) := by
    simpa using (Real.continuous_sinc.tendsto 0).comp half_mesh_tendsto_zero
  have he : Tendsto (fun n => (2/Real.pi)*Real.cos (halfMesh n)/Real.sinc (halfMesh n))
      atTop (𝓝 (2/Real.pi)) := by
    simpa using (hc.const_mul (2/Real.pi)).div hs (by norm_num : (1 : ℝ) ≠ 0)
  refine (tendsto_congr' ?_).mp he
  filter_upwards [eventually_ge_atTop 1] with n hn
  exact (sine_mean_formula n (lt_of_lt_of_le Nat.zero_lt_one hn)).symm

theorem sine_samples_tendsto_actual_average :
    Tendsto (sampleMean Real.sin 0 Real.pi) atTop
      (𝓝 (integralAverage Real.sin 0 Real.pi)) := by
  rw [sine_average]
  have he : sampleMean Real.sin 0 Real.pi = sineMean := by
    funext n
    exact (sine_mean_is_sample_mean n).symm
  rw [he]
  exact sine_mean_tendsto

/-- The finite normalization returns actual sine rectangles to the actual integral. -/
theorem sine_rectangles_tendsto_integral :
    Tendsto (uniformRectangles Real.sin 0 Real.pi) atTop
      (𝓝 (∫ x in (0 : ℝ)..Real.pi, Real.sin x)) := by
  have hf : uniformRectangles Real.sin 0 Real.pi =
      fun n => Real.pi*sineMean n := by
    funext n
    rw [sine_mean_is_sample_mean]
    unfold uniformRectangles sampleMean
    simp only [sub_zero, zero_add]
    ring
  rw [hf, sine_integral]
  have hv : Real.pi*(2/Real.pi) = 2 := by field_simp [Real.pi_ne_zero]
  simpa only [hv] using sine_mean_tendsto.const_mul Real.pi

theorem sine_average_is_primitive_slope :
    integralAverage Real.sin 0 Real.pi =
      ((-Real.cos Real.pi)-(-Real.cos 0))/(Real.pi-0) := by
  exact average_eq_primitive_slope Real.sin (fun x => -Real.cos x) 0 Real.pi
    Real.pi_pos (fun x _ => negative_cos_derivative x)
    (Real.continuous_sin.intervalIntegrable 0 Real.pi)

noncomputable def exercise (x : ℝ) : ℝ := -x^2+4*x-3
noncomputable def exercisePrimitive (x : ℝ) : ℝ := -x^3/3+2*x^2-3*x

theorem exercise_primitive_derivative (x : ℝ) :
    HasDerivAt exercisePrimitive (exercise x) x := by
  have hd := ((((hasDerivAt_id x).pow 3).neg.div_const 3).add
    (((hasDerivAt_id x).pow 2).const_mul 2)).sub ((hasDerivAt_id x).const_mul 3)
  convert hd using 1 <;> simp [exercisePrimitive, exercise] <;> ring

theorem exercise_integral : (∫ x in (1 : ℝ)..3, exercise x) = 4/3 := by
  have hc : Continuous exercise := by unfold exercise; fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => exercise_primitive_derivative x) (hc.intervalIntegrable 1 3)]
  norm_num [exercisePrimitive]

theorem exercise_average : integralAverage exercise 1 3 = 2/3 := by
  norm_num [integralAverage, exercise_integral]

/-- Zero width cannot serve as the source's average interpretation, despite total division. -/
theorem zero_width_boundary (a : ℝ) :
    integralAverage (fun _ : ℝ => 1) a a = 0 ∧
      integralAverage (fun _ : ℝ => 1) a a ≠ 1 := by
  simp [integralAverage]

end GRWTSK.RealAnalysis.ContinuousAverage
