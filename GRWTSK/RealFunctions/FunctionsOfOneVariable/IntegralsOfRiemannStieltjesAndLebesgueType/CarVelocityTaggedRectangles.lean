import GRWTSK.RealFunctions.FunctionsOfOneVariable.IntegralsOfRiemannStieltjesAndLebesgueType.CarVelocityRectangles
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Topology.MetricSpace.Pseudo.Lemmas

/-!
# Arbitrary cell tags for the car-velocity rectangles

Local attribution: grwtsk contributors.
Source: Grant Sanderson, Integration and the fundamental theorem of calculus,
2017-05-05, text adaptation Kurt Bruns,
https://www.3blue1brown.com/lessons/integration/ .
All proof bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

Tags are actual points in the closed uniform cells. No regularity of the tag
sequence is assumed. The literal polynomial supplies Lipschitz constant 8,
which supplies the finite error bound 512/n relative to the actual left sum.
This gives convergence to both the existing integral and actual planar area.
The mesh is still uniform; arbitrary nonuniform partitions are not asserted.
-/

namespace GRWTSK.RealAnalysis.CarVelocityIntegration

open Filter MeasureTheory
open scoped BigOperators Topology

def AdmissibleTags (n : ℕ) (tag : ℕ → ℝ) : Prop :=
  ∀ k < n, 8*(k : ℝ)/(n : ℝ) ≤ tag k ∧
    tag k ≤ 8*((k : ℝ)+1)/(n : ℝ)

noncomputable def taggedRectangles (n : ℕ) (tag : ℕ → ℝ) : ℝ :=
  (8/(n : ℝ)) * ∑ k ∈ Finset.range n, velocity (tag k)

theorem velocity_difference (s t : ℝ) :
    velocity s - velocity t = (s-t)*(8-s-t) := by
  unfold velocity
  ring

/-- The constant is derived from the actual velocity on the actual time interval. -/
theorem velocity_lipschitz_eight (s t : ℝ)
    (hs0 : 0 ≤ s) (hs8 : s ≤ 8) (ht0 : 0 ≤ t) (ht8 : t ≤ 8) :
    |velocity s - velocity t| ≤ 8*|s-t| := by
  have h : |8-s-t| ≤ 8 := abs_le.mpr ⟨by linarith, by linarith⟩
  rw [velocity_difference, abs_mul]
  nlinarith [abs_nonneg (s-t)]

theorem tag_in_time_interval (n : ℕ) (hn : 0 < n) (tag : ℕ → ℝ)
    (htags : AdmissibleTags n tag) (k : ℕ) (hk : k < n) :
    0 ≤ tag k ∧ tag k ≤ 8 := by
  have hp : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have hl := sample_in_time_interval n k hn hk
  have hk' : (k : ℝ)+1 ≤ n := by exact_mod_cast Nat.succ_le_of_lt hk
  have hu : 8*((k : ℝ)+1)/(n : ℝ) ≤ 8 := by
    apply (div_le_iff₀ hp).mpr
    linarith
  exact ⟨le_trans hl.1 (htags k hk).1, le_trans (htags k hk).2 hu⟩

theorem tag_displacement (n : ℕ) (hn : 0 < n) (tag : ℕ → ℝ)
    (htags : AdmissibleTags n tag) (k : ℕ) (hk : k < n) :
    |tag k - 8*(k : ℝ)/(n : ℝ)| ≤ 8/(n : ℝ) := by
  rw [abs_of_nonneg (sub_nonneg.mpr (htags k hk).1)]
  have hu := (htags k hk).2
  have he : 8*((k : ℝ)+1)/(n : ℝ) = 8*(k : ℝ)/(n : ℝ)+8/(n : ℝ) := by ring
  rw [he] at hu
  linarith

theorem tagged_height_error (n : ℕ) (hn : 0 < n) (tag : ℕ → ℝ)
    (htags : AdmissibleTags n tag) (k : ℕ) (hk : k < n) :
    |velocity (tag k) - velocity (8*(k : ℝ)/(n : ℝ))| ≤ 64/(n : ℝ) := by
  have ht := tag_in_time_interval n hn tag htags k hk
  have hl := sample_in_time_interval n k hn hk
  have hv := velocity_lipschitz_eight (tag k) (8*(k : ℝ)/(n : ℝ))
    ht.1 ht.2 hl.1 hl.2
  have hd := tag_displacement n hn tag htags k hk
  calc _ ≤ 8*|tag k - 8*(k : ℝ)/(n : ℝ)| := hv
       _ ≤ 8*(8/(n : ℝ)) := mul_le_mul_of_nonneg_left hd (by norm_num)
       _ = 64/(n : ℝ) := by ring

/-- Every admissible choice is compared to the actual previously constructed left sum. -/
theorem tagged_sub_left_bound (n : ℕ) (hn : 0 < n) (tag : ℕ → ℝ)
    (htags : AdmissibleTags n tag) :
    |taggedRectangles n tag - leftRectangles n| ≤ 512/(n : ℝ) := by
  have hp : (0 : ℝ) < n := Nat.cast_pos.mpr hn
  have hw : 0 ≤ 8/(n : ℝ) := by positivity
  have he : taggedRectangles n tag - leftRectangles n =
      (8/(n : ℝ))*∑ k ∈ Finset.range n,
        (velocity (tag k)-velocity (8*(k : ℝ)/(n : ℝ))) := by
    simp only [taggedRectangles, leftRectangles, Finset.sum_sub_distrib, mul_sub]
  rw [he, abs_mul, abs_of_nonneg hw]
  calc _ ≤ (8/(n : ℝ))*∑ k ∈ Finset.range n,
          |velocity (tag k)-velocity (8*(k : ℝ)/(n : ℝ))| :=
          mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) hw
       _ ≤ (8/(n : ℝ))*∑ _k ∈ Finset.range n, (64/(n : ℝ)) := by
          apply mul_le_mul_of_nonneg_left _ hw
          exact Finset.sum_le_sum (fun k hk =>
            tagged_height_error n hn tag htags k (Finset.mem_range.mp hk))
       _ = 512/(n : ℝ) := by
          simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
          field_simp [ne_of_gt hp] <;> ring

theorem tagged_integral_error (n : ℕ) (hn : 0 < n) (tag : ℕ → ℝ)
    (htags : AdmissibleTags n tag) :
    |taggedRectangles n tag - ∫ t in (0 : ℝ)..8, velocity t| ≤
      512/(n : ℝ)+256/(3*(n : ℝ)^2) := by
  have hl : |leftRectangles n - ∫ t in (0 : ℝ)..8, velocity t| =
      256/(3*(n : ℝ)^2) := by
    rw [abs_sub_comm, abs_of_nonneg
      (sub_nonneg.mpr (left_rectangles_below_integral n hn)), integral_sub_left_rectangles n hn]
  calc _ ≤ |taggedRectangles n tag-leftRectangles n|+
      |leftRectangles n-∫ t in (0 : ℝ)..8, velocity t| := abs_sub_le _ _ _
       _ ≤ 512/(n : ℝ)+256/(3*(n : ℝ)^2) := by
         rw [hl]
         exact add_le_add_right (tagged_sub_left_bound n hn tag htags) _

/-- Quantification is over every tag sequence with actual cell-domain witnesses. -/
theorem tagged_rectangles_tendsto_integral (tag : ℕ → ℕ → ℝ)
    (htags : ∀ n, 0 < n → AdmissibleTags n (tag n)) :
    Tendsto (fun n => taggedRectangles n (tag n)) atTop
      (𝓝 (∫ t in (0 : ℝ)..8, velocity t)) := by
  have hi : Tendsto (fun n : ℕ => 1/(n : ℝ)) atTop (𝓝 (0 : ℝ)) :=
    tendsto_one_div_atTop_nhds_zero_nat
  have hb : Tendsto (fun n : ℕ => 512/(n : ℝ)+256/(3*(n : ℝ)^2))
      atTop (𝓝 (0 : ℝ)) := by
    have he : Tendsto (fun n : ℕ => 512*(1/(n : ℝ))+
        (256/3 : ℝ)*(1/(n : ℝ))^2) atTop (𝓝 (0 : ℝ)) := by
      simpa using (hi.const_mul 512).add ((hi.pow 2).const_mul (256/3 : ℝ))
    refine (tendsto_congr (fun n => ?_)).mp he
    simp [div_eq_mul_inv, mul_pow] <;> ring
  apply tendsto_iff_dist_tendsto_zero.mpr
  simp only [Real.dist_eq]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _ hb
  filter_upwards [eventually_ge_atTop 1] with n hn
  have hp : 0 < n := lt_of_lt_of_le Nat.zero_lt_one hn
  exact tagged_integral_error n hp (tag n) (htags n hp)

theorem tagged_rectangles_tendsto_area (tag : ℕ → ℕ → ℝ)
    (htags : ∀ n, 0 < n → AdmissibleTags n (tag n)) :
    Tendsto (fun n => taggedRectangles n (tag n)) atTop
      (𝓝 (((volume : Measure ℝ).prod volume (carRegion 8)).toReal)) := by
  rw [car_region_real_area_eight, ← eight_second_integral]
  exact tagged_rectangles_tendsto_integral tag htags

/-- Empty sums impose no sampling requirement and are outside positive-mesh bounds. -/
theorem tagged_zero_mesh (tag : ℕ → ℝ) : taggedRectangles 0 tag = 0 := by
  simp [taggedRectangles]

end GRWTSK.RealAnalysis.CarVelocityIntegration
