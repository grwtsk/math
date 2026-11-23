import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiDiskCountCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiZetaDivisorAlignment
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CanonicalSignedHeight
import Mathlib.Analysis.Complex.JensenFormula

/-! Jensen's circle mean for the actual completed xi. Comparison with the
height-projected finite logarithmic sum detects all horizontal excursions. -/

namespace GRWTSK.XiJensenDiskProjection

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor GRWTSK.XiDiskCountCriterion
open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open GRWTSK.NumberTheory.SpectralProductDivisorReturn
open Metric MeromorphicOn Real
noncomputable section

def center : ℂ := 1/2

theorem center_nonzero : xi center ≠ 0 := by
  intro hz
  let z : ZeroPoint := ⟨center,(xi_eq_zero_iff_nontrivialZetaZero _).mp hz⟩
  have h := GRWTSK.RiemannHypothesis.CanonicalSignedHeight.im_ne_zero z
  exact h (by norm_num [z, center])

theorem dist_center (z : ZeroPoint) : ‖center-z.1‖ = radius z := by
  rw [Complex.norm_def, radius]
  congr 1
  rw [Complex.normSq_apply]
  simp [center, Complex.sub_re, Complex.sub_im]
  ring

def projected (R : ℝ) := ∑ z ∈ heightHead R, (multiplicity z : ℝ)*log (R / height z)

def circleGrowth (R : ℝ) :=
  circleAverage (fun s => log ‖xi s‖) center R - log ‖xi center‖

def circularTerm (R : ℝ) (z : ZeroPoint) :=
  if radius z ≤ R then (multiplicity z : ℝ)*log (R/radius z) else 0

theorem circleGrowth_eq_sum {R : ℝ} (hr : 0 < R) :
    circleGrowth R = ∑ z ∈ heightHead R, circularTerm R z := by
  classical
  let U := closedBall center |R|
  have ha : AnalyticOnNhd ℂ xi U := fun s _ => differentiable_xi.analyticAt s
  have hj := AnalyticOnNhd.circleAverage_log_norm hr.ne' ha center_nonzero
  unfold circleGrowth
  rw [hj, add_sub_cancel_right]
  let emb : ZeroPoint ↪ ℂ := ⟨Subtype.val, Subtype.val_injective⟩
  let f := fun s : ℂ => (divisor xi U s : ℝ)*log (R*‖center-s‖⁻¹)
  change ∑ᶠ s, f s = _
  have supp : Function.support f ⊆ (heightHead R).map emb := by
    intro s hs
    have hd : divisor xi U s ≠ 0 := by
      intro hz
      exact hs (by simp [f,hz])
    have hu := (divisor xi U).supportWithinDomain hd
    have hxi : xi s = 0 := by
      by_contra hn
      apply hd
      rw [ha.divisor_apply hu, (ha s hu).analyticOrderAt_eq_zero.mpr hn]
      simp
    let z : ZeroPoint := ⟨s,(xi_eq_zero_iff_nontrivialZetaZero s).mp hxi⟩
    refine Finset.mem_map.mpr ⟨z, (mem_heightHead _ _).mpr ((height_le_radius z).trans ?_), rfl⟩
    simpa only [U, mem_closedBall, dist_eq_norm', abs_of_pos hr, dist_center z] using
      (show z.1 ∈ U from hu)
  rw [finsum_eq_sum_of_support_subset _ supp, Finset.sum_map]
  apply Finset.sum_congr rfl
  intro z _
  change f z.1 = _
  have hmem : z.1 ∈ U ↔ radius z ≤ R := by
    simp only [U, mem_closedBall, dist_eq_norm', abs_of_pos hr, dist_center]
  by_cases hz : radius z ≤ R
  · have hm : divisor xi U z.1 = (multiplicity z : ℤ) := by
      rw [ha.divisor_apply (hmem.mpr hz), xiAnalyticOrderAt_eq_riemannZeta
        z.2.mem_critical_strip.1 z.2.mem_critical_strip.2, ← multiplicity_cast z]
      rfl
    simp [f, hm, circularTerm, hz, dist_center, div_eq_mul_inv]
  · have hm : divisor xi U z.1 = 0 := by
      rw [divisor_def]
      simp [mt hmem.mp hz]
    simp [f, hm, circularTerm, hz]

private theorem height_pos (z : ZeroPoint) : 0 < height z :=
  abs_pos.mpr (GRWTSK.RiemannHypothesis.CanonicalSignedHeight.im_ne_zero z)

theorem term_le {R : ℝ} (z : ZeroPoint) (hz : height z ≤ R) :
    circularTerm R z ≤ (multiplicity z : ℝ)*log (R/height z) := by
  have hg := height_pos z
  have hr := hg.trans_le hz
  have hrad := height_le_radius z
  unfold circularTerm
  split_ifs with h
  · apply mul_le_mul_of_nonneg_left _ (by positivity)
    exact Real.log_le_log (div_pos hr (hg.trans_le hrad))
      (div_le_div_of_nonneg_left hr.le hg hrad)
  · exact mul_nonneg (by positivity) (Real.log_nonneg ((one_le_div hg).mpr hz))

theorem circleGrowth_le {R : ℝ} (hr : 0 < R) : circleGrowth R ≤ projected R := by
  rw [circleGrowth_eq_sum hr]
  exact Finset.sum_le_sum (fun z hz => term_le z ((mem_heightHead _ _).mp hz))

theorem rational_circle_averages_iff_RH :
    (∀ r : ℚ, 0 < r → circleGrowth r = projected r) ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h s hs ht hp
    let z : ZeroPoint := ⟨s,hs,ht,hp⟩
    change z.1.re = 1/2
    by_contra hn
    have hlt := lt_of_le_of_ne (height_le_radius z)
      (fun he => hn ((radius_eq_height_iff z).mp he.symm))
    obtain ⟨r,hl,hu⟩ := exists_rat_btwn hlt
    have hr := (height_pos z).trans hl
    have hq := h r (by exact_mod_cast hr)
    rw [circleGrowth_eq_sum hr] at hq
    apply (ne_of_lt (b := projected r) ?_) hq
    apply Finset.sum_lt_sum (fun w hw => term_le w ((mem_heightHead _ _).mp hw))
    refine ⟨z, (mem_heightHead _ _).mpr hl.le, ?_⟩
    rw [circularTerm, if_neg (not_le.mpr hu)]
    exact mul_pos (by exact_mod_cast multiplicity_pos z)
      (Real.log_pos ((one_lt_div (height_pos z)).mpr hl))
  · intro h r hr
    rw [circleGrowth_eq_sum (by exact_mod_cast hr)]
    apply Finset.sum_congr rfl
    intro z hz
    have he := (radius_eq_height_iff z).mpr (h z.1 z.2.1 z.2.2.1 z.2.2.2)
    simp [circularTerm,he,(mem_heightHead _ _).mp hz]

end
end GRWTSK.XiJensenDiskProjection
