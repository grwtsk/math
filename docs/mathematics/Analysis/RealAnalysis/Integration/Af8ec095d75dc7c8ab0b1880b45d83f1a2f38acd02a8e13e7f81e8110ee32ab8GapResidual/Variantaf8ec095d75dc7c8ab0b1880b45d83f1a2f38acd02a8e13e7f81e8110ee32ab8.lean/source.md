# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual.Variantaf8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26de299173ce69a8e0c5656ebb59b446764d84ba` · SHA-256 `af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set Filter
open scoped Topology
noncomputable section

private theorem thetaPhi_mul_sub_pow_tendsto (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    Tendsto (fun u => thetaPhi u * (u - t) ^ k) atTop (𝓝 0) := by
  have hlim : Tendsto (fun u => ((2 * k).factorial : ℝ) *
      (thetaPhi u * evenBasis k u)) atTop (𝓝 0) := by
    simpa only [thetaTail_zero, mul_zero] using
      (thetaTail_mul_evenBasis_tendsto_atTop 0 k).const_mul ((2 * k).factorial : ℝ)
  apply squeeze_zero' (g := fun u => ((2 * k).factorial : ℝ) *
    (thetaPhi u * evenBasis k u))
  · filter_upwards [eventually_ge_atTop t] with u hu
    exact mul_nonneg (thetaPhi_positive u (ht.trans hu)).le (pow_nonneg (sub_nonneg.mpr hu) _)
  · filter_upwards [eventually_ge_atTop (max 1 t)] with u hu
    have hu1 : 1 ≤ u := (le_max_left 1 t).trans hu
    have hut : t ≤ u := (le_max_right 1 t).trans hu
    have hp : (u - t) ^ k ≤ (2 * u) ^ (2 * k) := by
      rw [pow_mul]
      exact pow_le_pow_left₀ (sub_nonneg.mpr hut) (by nlinarith) k
    calc
      _ ≤ thetaPhi u * (2 * u) ^ (2 * k) :=
        mul_le_mul_of_nonneg_left hp (thetaPhi_positive u (ht.trans hut)).le
      _ = _ := by unfold evenBasis; field_simp
  · exact hlim

private theorem thetaPhi_deriv_sub_pow_integrable (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => deriv thetaPhi u * (u - t) ^ k) (Ici t) := by
  have hi := (deriv_thetaPhi_poly_integrableOn k).mono_set (Ici_subset_Ici.mpr ht)
  apply Integrable.mono hi
  · have hc : Continuous (deriv thetaPhi) := by
      rw [show deriv thetaPhi = thetaPhiRawD1 from funext deriv_thetaPhi_eq_raw]
      exact continuous_thetaPhiRawD1
    exact (hc.mul ((continuous_id.sub continuous_const).pow k)).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    rw [norm_mul, norm_mul, Real.norm_of_nonneg (pow_nonneg (sub_nonneg.mpr hu) _),
      Real.norm_of_nonneg (pow_nonneg (ht.trans hu) _)]
    exact mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ (sub_nonneg.mpr hu) (by linarith) k) (norm_nonneg _)

private theorem thetaPhi_deriv_tailKernel_integral (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    (∫ u in Ici t, (deriv thetaPhi u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ))) = -thetaTail (s + 1) t := by
  have hd : IntegrableOn (fun u => deriv thetaPhi u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ)) (Ici t) :=
    (thetaPhi_deriv_sub_pow_integrable (s + 1) ht).div_const ((s + 1).factorial : ℝ)
  have hf := thetaTail_integrable s ht
  have hderiv (u : ℝ) (_hu : u ∈ Ici t) :
      HasDerivAt (fun u => thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ))
        (deriv thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ) +
          thetaPhi u * (u - t) ^ s / (s.factorial : ℝ)) u := by
    convert! (((hasDerivAt_thetaPhi_raw u).differentiableAt.hasDerivAt).mul
      (((hasDerivAt_id u).sub_const t).pow (s + 1))).div_const ((s + 1).factorial : ℝ) using 1
    simp only [Nat.add_sub_cancel, id_eq, Pi.pow_apply]
    rw [Nat.factorial_succ]
    push_cast
    field_simp
  have hlim := (thetaPhi_mul_sub_pow_tendsto (s + 1) ht).div_const ((s + 1).factorial : ℝ)
  have hh := integral_Ioi_of_hasDerivAt_of_tendsto' hderiv
    ((hd.add hf).mono_set Ioi_subset_Ici_self) hlim
  rw [← integral_Ici_eq_integral_Ioi, integral_add hd hf] at hh
  have ht1 : thetaTail (s + 1) t =
      (∫ u in Ici t, (thetaPhi u * (u - t) ^ s / (s.factorial : ℝ))) := rfl
  rw [ht1]
  simp only [sub_self, zero_pow (Nat.succ_ne_zero s), mul_zero, zero_div] at hh
  linarith

theorem thetaTailGap_zero_succ_succ_integral (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTailGap 0 (s + 2) t =
      (∫ u in Ici t, (((u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) *
        (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u))) := by
  rw [thetaTailGap_zero_succ (s + 1)]
  have hp := thetaTail_integrable (s + 1) ht
  have hd : IntegrableOn (fun u => deriv thetaPhi u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ)) (Ici t) :=
    (thetaPhi_deriv_sub_pow_integrable (s + 1) ht).div_const ((s + 1).factorial : ℝ)
  have heq : (fun u => ((u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) *
      (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u)) =
      fun u => deriv thetaPhi t *
        (thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) -
        thetaPhi t * (deriv thetaPhi u * (u - t) ^ (s + 1) /
          ((s + 1).factorial : ℝ)) := by
    funext u
    ring
  rw [heq, integral_sub (hp.const_mul _) (hd.const_mul _), integral_const_mul,
    integral_const_mul, thetaPhi_deriv_tailKernel_integral s ht]
  have ht2 : thetaTail (s + 2) t =
      (∫ u in Ici t, (thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ))) := rfl
  rw [← ht2]
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
