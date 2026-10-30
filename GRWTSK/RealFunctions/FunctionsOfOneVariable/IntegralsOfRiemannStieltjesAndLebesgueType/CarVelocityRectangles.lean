import GRWTSK.RealFunctions.FunctionsOfOneVariable.IntegralsOfRiemannStieltjesAndLebesgueType.CarVelocityIntegration
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral

/-!
# Actual refining left rectangles for the integration lesson

Local attribution: grwtsk contributors.
Grant Sanderson, Integration and the fundamental theorem of calculus (2017-05-05),
text adaptation Kurt Bruns, https://www.3blue1brown.com/lessons/integration/
All proof bodies: NOT_RUN_USER_DEFERRED.

The mesh and sampling points are constructed, not supplied as an interface.
For n>0, width=8/n, nodes=8k/n and the actual finite sum has exact error
256/(3n^2) from the actual signed integral. Its convergence therefore proves
this particular source Riemann-sum correspondence. An actual product-Lebesgue
regionBetween supplies the geometric area bridge; arbitrary tagged partitions
and physical trajectory arc length are not claimed.
-/

namespace GRWTSK.RealAnalysis.CarVelocityIntegration

open Filter MeasureTheory Set
open scoped BigOperators Topology

noncomputable def leftRectangles (n : ℕ) : ℝ :=
  (8/(n : ℝ)) * ∑ k ∈ Finset.range n, velocity (8*(k : ℝ)/(n : ℝ))

/-- Finite real identities avoid natural-number division/truncation assumptions. -/
theorem real_index_sum (n : ℕ) :
    (∑ k ∈ Finset.range n, (k : ℝ)) = (n : ℝ)*((n : ℝ)-1)/2 := by
  induction n with
  | zero => norm_num
  | succ n ih =>
    rw [Finset.sum_range_succ, ih]
    simp only [Nat.cast_succ]
    ring

theorem real_square_index_sum (n : ℕ) :
    (∑ k ∈ Finset.range n, (k : ℝ)^2) =
      (n : ℝ)*((n : ℝ)-1)*(2*(n : ℝ)-1)/6 := by
  induction n with
  | zero => norm_num
  | succ n ih =>
    rw [Finset.sum_range_succ, ih]
    simp only [Nat.cast_succ]
    ring

theorem sampled_velocity_formula (n : ℕ) (hn : 0 < n) (k : ℕ) :
    velocity (8*(k : ℝ)/(n : ℝ)) =
      (64/(n : ℝ))*(k : ℝ) - (64/(n : ℝ)^2)*(k : ℝ)^2 := by
  have hnr : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  unfold velocity
  field_simp [hnr] <;> ring

/-- Full actual finite sum, not a supplied count or numerical fit. -/
theorem left_rectangles_formula (n : ℕ) (hn : 0 < n) :
    leftRectangles n = (256/3 : ℝ)-256/(3*(n : ℝ)^2) := by
  have hnr : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  unfold leftRectangles
  simp_rw [sampled_velocity_formula n hn]
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum, ← Finset.mul_sum,
    real_index_sum, real_square_index_sum]
  field_simp [hnr] <;> ring

theorem sample_in_time_interval (n k : ℕ) (hn : 0 < n) (hk : k < n) :
    0 ≤ 8*(k : ℝ)/(n : ℝ) ∧ 8*(k : ℝ)/(n : ℝ) ≤ 8 := by
  have hnr : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have hkr : (k : ℝ) ≤ n := Nat.cast_le.mpr (Nat.le_of_lt hk)
  constructor
  · positivity
  · apply (div_le_iff₀ hnr).mpr
    nlinarith

theorem left_rectangles_nonnegative (n : ℕ) (hn : 0 < n) : 0 ≤ leftRectangles n := by
  unfold leftRectangles
  apply mul_nonneg (by positivity)
  apply Finset.sum_nonneg
  intro k hk
  have ht := sample_in_time_interval n k hn (Finset.mem_range.mp hk)
  exact velocity_nonnegative _ ht.1 ht.2

/-- Error is attached to the previously constructed integral, rather than only to an arithmetic target. -/
theorem integral_sub_left_rectangles (n : ℕ) (hn : 0 < n) :
    (∫ t in (0 : ℝ)..8, velocity t)-leftRectangles n = 256/(3*(n : ℝ)^2) := by
  rw [eight_second_integral, left_rectangles_formula n hn]
  ring

theorem left_rectangles_below_integral (n : ℕ) (hn : 0 < n) :
    leftRectangles n ≤ ∫ t in (0 : ℝ)..8, velocity t := by
  have he := integral_sub_left_rectangles n hn
  have hp : (0 : ℝ) ≤ 256/(3*(n : ℝ)^2) := by positivity
  linarith

/-- Convergence follows from exact algebra and the genuine natural-mesh limit. -/
theorem left_rectangles_tendsto :
    Tendsto leftRectangles atTop (𝓝 (256/3 : ℝ)) := by
  have hi : Tendsto (fun n : ℕ => 1/(n : ℝ)) atTop (𝓝 (0 : ℝ)) :=
    tendsto_one_div_atTop_nhds_zero_nat
  have he : Tendsto (fun n : ℕ => (256/3 : ℝ)-(256/3 : ℝ)*(1/(n : ℝ))^2)
      atTop (𝓝 (256/3 : ℝ)) := by
    simpa using tendsto_const_nhds.sub ((hi.pow 2).const_mul (256/3 : ℝ))
  refine (tendsto_congr' ?_).mp he
  filter_upwards [eventually_ge_atTop 1] with n hn
  have hp : 0 < n := lt_of_lt_of_le Nat.zero_lt_one hn
  rw [left_rectangles_formula n hp]
  have hnr : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hp)
  field_simp [hnr] <;> ring

theorem left_rectangles_tendsto_integral :
    Tendsto leftRectangles atTop (𝓝 (∫ t in (0 : ℝ)..8, velocity t)) := by
  rw [eight_second_integral]
  exact left_rectangles_tendsto

theorem mesh_width_tendsto_zero :
    Tendsto (fun n : ℕ => 8/(n : ℝ)) atTop (𝓝 (0 : ℝ)) := by
  have hi : Tendsto (fun n : ℕ => 1/(n : ℝ)) atTop (𝓝 (0 : ℝ)) :=
    tendsto_one_div_atTop_nhds_zero_nat
  simpa [div_eq_mul_inv] using hi.const_mul 8

/-- The source's quarter-second width corresponds to n=32 actual rectangles. -/
theorem quarter_second_full_mesh : leftRectangles 32 = (341/4 : ℝ) := by
  rw [left_rectangles_formula 32 (by norm_num)]
  norm_num

theorem quarter_second_full_error :
    (∫ t in (0 : ℝ)..8, velocity t)-leftRectangles 32 = (1/12 : ℝ) := by
  rw [integral_sub_left_rectangles 32 (by norm_num)]
  norm_num

/-- The zero-mesh total convention is excluded from the positive-mesh formula. -/
theorem zero_mesh_value : leftRectangles 0 = 0 := by simp [leftRectangles]

/-- Actual planar region with half-open time strip and open vertical fibers. -/
def carRegion (T : ℝ) : Set (ℝ × ℝ) :=
  regionBetween (fun _ : ℝ => 0) velocity (Ioc 0 T)

/-- Product-Lebesgue area is connected to the actual integral with all suppliers explicit. -/
theorem car_region_measure (T : ℝ) (hT0 : 0 ≤ T) (hT8 : T ≤ 8) :
    (volume : Measure ℝ).prod volume (carRegion T) = ENNReal.ofReal (accumulation T) := by
  have hz : IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Ioc 0 T) volume :=
    (continuous_const.intervalIntegrable 0 T).1
  have hv : IntegrableOn velocity (Ioc 0 T) volume :=
    (velocity_intervalIntegrable 0 T).1
  have he := volume_regionBetween_eq_integral hz hv measurableSet_Ioc
    (fun t ht => velocity_nonnegative t (le_of_lt ht.1) (le_trans ht.2 hT8))
  calc (volume : Measure ℝ).prod volume (carRegion T) =
      ENNReal.ofReal (∫ t in Ioc 0 T, velocity t) := by simpa [carRegion] using he
       _ = ENNReal.ofReal (accumulation T) := by
         rw [accumulation, intervalIntegral.integral_of_le hT0]

theorem car_region_measure_eight :
    (volume : Measure ℝ).prod volume (carRegion 8) = ENNReal.ofReal (256/3 : ℝ) := by
  rw [car_region_measure 8 (by norm_num) (by norm_num), accumulation_eq_position]
  norm_num [position]

/-- The finite real area is obtained from the proved ENNReal measure, not defined to be an integral. -/
theorem car_region_real_area_eight :
    ((volume : Measure ℝ).prod volume (carRegion 8)).toReal = (256/3 : ℝ) := by
  rw [car_region_measure_eight, ENNReal.toReal_ofReal (by norm_num)]

/-- The actual rectangle sums converge to the actual planar region's real measure. -/
theorem rectangles_tendsto_geometric_area :
    Tendsto leftRectangles atTop
      (𝓝 (((volume : Measure ℝ).prod volume (carRegion 8)).toReal)) := by
  rw [car_region_real_area_eight]
  exact left_rectangles_tendsto

end GRWTSK.RealAnalysis.CarVelocityIntegration
