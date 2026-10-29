import FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank
import Mathlib.Analysis.Calculus.Deriv.MeanValue

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set Filter
open scoped Topology
noncomputable section

private theorem boundary_sub (t : ℝ) (ht : 0 ≤ t) :
    Tendsto (fun u => thetaPhi u * (u - t)) atTop (𝓝 0) := by
  have h0 : Tendsto thetaPhi atTop (𝓝 0) := thetaTail_tendsto_atTop 0
  have h1 : Tendsto (fun u => thetaPhi u * evenBasis 1 u) atTop (𝓝 0) :=
    thetaTail_mul_evenBasis_tendsto_atTop 0 1
  apply squeeze_zero' (g := fun u => thetaPhi u + thetaPhi u * evenBasis 1 u)
  · filter_upwards [eventually_ge_atTop t] with u hu
    exact mul_nonneg (thetaPhi_positive u (ht.trans hu)).le (sub_nonneg.mpr hu)
  · filter_upwards [eventually_ge_atTop t] with u hu
    have hp := (thetaPhi_positive u (ht.trans hu)).le
    have he : evenBasis 1 u = 2 * u ^ 2 := by norm_num [evenBasis]; ring
    rw [he]
    have hx : u - t ≤ 1 + 2 * u ^ 2 := by nlinarith [sq_nonneg (u - 1)]
    nlinarith [mul_le_mul_of_nonneg_left hx hp]
  · simpa using h0.add h1

private theorem cross_nonneg
    (hanti : AntitoneOn (fun t => deriv thetaPhi t / thetaPhi t) (Ici (0 : ℝ)))
    {t u : ℝ} (ht : 0 ≤ t) (htu : t ≤ u) :
    0 ≤ deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u := by
  have h := (div_le_div_iff₀ (thetaPhi_positive u (ht.trans htu))
    (thetaPhi_positive t ht)).mp (hanti ht (ht.trans htu) htu)
  nlinarith only [h]

private theorem weighted_deriv_integral
    (hd : ∀ u : ℝ, 0 ≤ u → DifferentiableAt ℝ thetaPhi u)
    {t : ℝ} (ht : 0 ≤ t)
    (hi : IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t)) :
    (∫ u in Ici t, deriv thetaPhi u * (u - t)) = -thetaTail 1 t := by
  have hp := thetaPhi_integrableOn ht
  have hderiv (u : ℝ) (hu : u ∈ Ici t) :
      HasDerivAt (fun u => thetaPhi u * (u - t))
        (deriv thetaPhi u * (u - t) + thetaPhi u) u := by
    convert! (hd u (ht.trans hu)).hasDerivAt.mul ((hasDerivAt_id u).sub_const t) using 1
    simp
  have hh := integral_Ioi_of_hasDerivAt_of_tendsto' hderiv
    ((hi.add hp).mono_set Ioi_subset_Ici_self) (boundary_sub t ht)
  rw [← integral_Ici_eq_integral_Ioi] at hh
  rw [integral_add hi hp] at hh
  have ht1 : thetaTail 1 t = ∫ u in Ici t, thetaPhi u := by simp [thetaTail]
  rw [ht1]
  simp only [sub_self, mul_zero] at hh
  linarith

private theorem weighted_identity
    (hd : ∀ u : ℝ, 0 ≤ u → DifferentiableAt ℝ thetaPhi u)
    {t : ℝ} (ht : 0 ≤ t)
    (hi : IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t)) :
    thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t =
      ∫ u in Ici t, (u - t) *
        (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u) := by
  have hp : IntegrableOn (fun u => thetaPhi u * (u - t)) (Ici t) := by
    simpa only [pow_one, Nat.factorial_one, Nat.cast_one, div_one] using
      thetaTail_integrable 1 ht
  have hf : (fun u => (u - t) *
      (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u)) =
      fun u => deriv thetaPhi t * (thetaPhi u * (u - t)) -
        thetaPhi t * (deriv thetaPhi u * (u - t)) := by
    funext u
    ring
  rw [hf, integral_sub (hp.const_mul _) (hi.const_mul _), integral_const_mul,
    integral_const_mul, weighted_deriv_integral hd ht hi]
  have ht2 : thetaTail 2 t = ∫ u in Ici t, thetaPhi u * (u - t) := by simp [thetaTail]
  rw [← ht2]
  ring

private theorem weighted_nonneg
    (hd : ∀ u : ℝ, 0 ≤ u → DifferentiableAt ℝ thetaPhi u)
    (hanti : AntitoneOn (fun t => deriv thetaPhi t / thetaPhi t) (Ici (0 : ℝ)))
    {t : ℝ} (ht : 0 ≤ t)
    (hi : IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t)) :
    0 ≤ thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t := by
  rw [weighted_identity hd ht hi]
  exact setIntegral_nonneg measurableSet_Ici fun u hu =>
    mul_nonneg (sub_nonneg.mpr hu) (cross_nonneg hanti ht hu)

private theorem ratio_deriv
    (hd : ∀ u : ℝ, 0 ≤ u → DifferentiableAt ℝ thetaPhi u)
    {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun t => thetaTail 2 t / thetaPhi t)
      (-(thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t) /
        thetaPhi t ^ 2) t := by
  convert! (hasDerivAt_thetaTail_succ 1 t).div (hd t ht).hasDerivAt
    (thetaPhi_positive t ht).ne' using 1
  ring

private theorem ratio_deriv_nonpos
    (hd : ∀ u : ℝ, 0 ≤ u → DifferentiableAt ℝ thetaPhi u)
    (hanti : AntitoneOn (fun t => deriv thetaPhi t / thetaPhi t) (Ici (0 : ℝ)))
    {t : ℝ} (ht : 0 ≤ t)
    (hi : IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t)) :
    deriv (fun t => thetaTail 2 t / thetaPhi t) t ≤ 0 := by
  rw [(ratio_deriv hd ht).deriv]
  exact div_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (weighted_nonneg hd hanti ht hi))
    (sq_nonneg _)

private theorem ratio_antitone
    (hd : ∀ u : ℝ, 0 ≤ u → DifferentiableAt ℝ thetaPhi u)
    (hanti : AntitoneOn (fun t => deriv thetaPhi t / thetaPhi t) (Ici (0 : ℝ)))
    (hi : ∀ t : ℝ, 0 ≤ t →
      IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t)) :
    AntitoneOn (fun t => thetaTail 2 t / thetaPhi t) (Ici (0 : ℝ)) := by
  apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
  · exact (continuous_thetaTail 2).continuousOn.div continuous_thetaPhi.continuousOn
      (fun t ht => (thetaPhi_positive t ht).ne')
  · intro t ht
    exact (ratio_deriv hd (interior_subset ht)).differentiableAt.differentiableWithinAt
  · intro t ht
    exact ratio_deriv_nonpos hd hanti (interior_subset ht) (hi t (interior_subset ht))

private theorem source_two_zero_one
    (hanti : AntitoneOn (fun t => thetaTail 2 t / thetaPhi t) (Ici (0 : ℝ)))
    (t : Fin 2 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (2 * (2 - 1) / 2) *
      Matrix.det (fun i j : Fin 2 => thetaTail (2 * i.val) (t j)) := by
  let q : Fin 2 ↪o ℕ := OrderEmbedding.ofStrictMono (fun i => i.val) (fun _ _ h => h)
  apply (thetaTailSignRegular_two_iff_ratio q t ht).mpr
  change thetaTail 2 (t 1) / thetaPhi (t 1) ≤ thetaTail 2 (t 0) / thetaPhi (t 0)
  exact hanti (ht 0) (ht 1) (t.monotone (by decide : (0 : Fin 2) ≤ 1))

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
