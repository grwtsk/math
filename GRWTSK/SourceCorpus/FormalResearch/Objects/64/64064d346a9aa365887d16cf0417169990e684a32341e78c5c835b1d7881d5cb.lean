import FormalResearch.RiemannHypothesis.ThetaTailRankTwo
import Mathlib.Analysis.Calculus.Deriv.Slope

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set Filter
open scoped Topology
noncomputable section

def thetaTailGap (r s : ℕ) (t : ℝ) : ℝ :=
  deriv (thetaTail r) t * thetaTail s t - thetaTail r t * deriv (thetaTail s) t

theorem hasDerivAt_thetaTail_normalized (r s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun u => thetaTail s u / thetaTail r u)
      (-thetaTailGap r s t / thetaTail r t ^ 2) t := by
  convert! ((differentiable_thetaTail s t).hasDerivAt).div
    (differentiable_thetaTail r t).hasDerivAt (thetaTail_positive r ht).ne' using 1
  unfold thetaTailGap
  ring

theorem thetaTailGap_nonnegative {r s : ℕ} (hrs : r ≤ s) {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ thetaTailGap r s t := by
  rcases hrs.eq_or_lt with rfl | hrs
  · simp [thetaTailGap, mul_comm]
  have h := (thetaTail_div_antitone hrs).derivWithin_nonpos (x := t)
  rw [(hasDerivAt_thetaTail_normalized r s ht).hasDerivWithinAt.derivWithin
    (uniqueDiffOn_Ici 0 t ht)] at h
  have hn := (div_le_iff₀ (sq_pos_of_pos (thetaTail_positive r ht))).mp h
  nlinarith

theorem thetaTailGap_derivative_ratio (r s u : ℕ) {t : ℝ} (ht : 0 ≤ t)
    (hgap : 0 < thetaTailGap r s t) :
    deriv (fun t => thetaTail u t / thetaTail r t) t /
      deriv (fun t => thetaTail s t / thetaTail r t) t =
        thetaTailGap r u t / thetaTailGap r s t := by
  rw [(hasDerivAt_thetaTail_normalized r u ht).deriv,
    (hasDerivAt_thetaTail_normalized r s ht).deriv]
  field_simp [(thetaTail_positive r ht).ne', hgap.ne']

theorem thetaTailGap_succ_succ (r s : ℕ) (t : ℝ) :
    thetaTailGap (r + 1) (s + 1) t =
      thetaTail (r + 1) t * thetaTail s t - thetaTail r t * thetaTail (s + 1) t := by
  unfold thetaTailGap
  rw [(hasDerivAt_thetaTail_succ r t).deriv, (hasDerivAt_thetaTail_succ s t).deriv]
  ring

theorem thetaTailGap_zero_succ (s : ℕ) (t : ℝ) :
    thetaTailGap 0 (s + 1) t =
      deriv thetaPhi t * thetaTail (s + 1) t + thetaPhi t * thetaTail s t := by
  change deriv thetaPhi t * thetaTail (s + 1) t -
    thetaPhi t * deriv (thetaTail (s + 1)) t = _
  rw [(hasDerivAt_thetaTail_succ s t).deriv]
  ring

theorem thetaPhi_logSlope_strictAnti :
    StrictAntiOn (fun t : ℝ => deriv thetaPhi t / thetaPhi t) (Ici 0) := by
  apply strictAntiOn_of_deriv_neg (convex_Ici 0)
  · intro t ht
    exact (hasDerivAt_thetaPhi_logSlope ht).continuousAt.continuousWithinAt
  · intro t ht
    exact thetaPhi_logSlope_deriv_neg (interior_subset ht)

theorem thetaPhi_logSlope_cross_positive {t u : ℝ} (ht : 0 ≤ t) (htu : t < u) :
    0 < deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u := by
  have h := (div_lt_div_iff₀ (thetaPhi_positive u (ht.trans htu.le))
    (thetaPhi_positive t ht)).mp (thetaPhi_logSlope_strictAnti ht (ht.trans htu.le) htu)
  nlinarith only [h]

theorem thetaTailGap_zero_two_integral {t : ℝ} (ht : 0 ≤ t) :
    thetaTailGap 0 2 t = (∫ u in Ici t, (u - t) *
      (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u)) := by
  rw [thetaTailGap_zero_succ 1]
  convert! thetaTail_two_logSlope_identity ht using 1
  ring

private theorem zero_two_gap_integrand_integrable {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => (u - t) *
      (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u)) (Ici t) := by
  have hp : IntegrableOn (fun u => thetaPhi u * (u - t)) (Ici t) := by
    simpa only [pow_one, Nat.factorial_one, Nat.cast_one, div_one] using thetaTail_integrable 1 ht
  have hi := (hp.const_mul (deriv thetaPhi t)).sub
    ((thetaPhi_deriv_mul_sub_integrableOn ht).const_mul (thetaPhi t))
  apply hi.congr
  filter_upwards [] with u
  dsimp only [Pi.sub_apply]
  ring

theorem thetaTailGap_zero_two_positive {t : ℝ} (ht : 0 ≤ t) :
    0 < thetaTailGap 0 2 t := by
  rw [thetaTailGap_zero_two_integral ht]
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_
    (zero_two_gap_integrand_integrable ht)).mpr
  · have hpos : (0 : ENNReal) < volume (Ioo (t + 1) (t + 2)) := by simp
    apply hpos.trans_le (measure_mono ?_)
    intro u hu
    have htu : t < u := by have := hu.1; linarith
    exact ⟨(mul_pos (sub_pos.mpr htu) (thetaPhi_logSlope_cross_positive ht htu)).ne', htu.le⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact mul_nonneg (sub_nonneg.mpr hu) (thetaPhi_logSlope_cross_nonnegative ht hu)

theorem hasDerivAt_thetaTailGap_zero_succ_succ (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (thetaTailGap 0 (s + 2))
      (deriv (deriv thetaPhi) t * thetaTail (s + 2) t - thetaPhi t * thetaTail s t) t := by
  have heq : thetaTailGap 0 (s + 2) = fun u =>
      deriv thetaPhi u * thetaTail (s + 2) u + thetaPhi u * thetaTail (s + 1) u :=
    funext (thetaTailGap_zero_succ (s + 1))
  rw [heq]
  have hd : HasDerivAt (deriv thetaPhi) (deriv (deriv thetaPhi) t) t :=
    (hasDerivAt_deriv_thetaPhi ht).differentiableAt.hasDerivAt
  convert! (hd.mul (hasDerivAt_thetaTail_succ (s + 1) t)).add
    ((hasDerivAt_thetaPhi_raw t).differentiableAt.hasDerivAt.mul
      (hasDerivAt_thetaTail_succ s t)) using 1
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
