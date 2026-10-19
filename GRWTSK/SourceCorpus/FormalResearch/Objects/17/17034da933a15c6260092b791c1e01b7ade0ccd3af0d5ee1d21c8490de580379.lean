import FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank
import FormalResearch.RiemannHypothesis.ThetaPhiLogConcavity

/-!
# The first nontrivial theta-tail ratio

The actual source log-slope is antitone by `ThetaPhiLogConcavity`. Weighted
source-derivative integrability and the already proved tail decay justify the
improper fundamental theorem of calculus with its boundary term. This gives an
exact integral expression for the numerator controlling `thetaTail 2 / thetaPhi`.
Its integrand is nonnegative by the source log-slope inequality, so the ratio is
antitone on the entire nonnegative half-line.

The final determinant statement is only the rank-two selection `q = (0,1)`.
It uses the existing determinant/ratio equivalence and the unchanged orientation.
No arbitrary tail-pair, higher-rank, or all-orders source sign assertion is made.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set Filter
open scoped Topology
noncomputable section

/-- Absolute integrability of every polynomially weighted actual source derivative. -/
theorem deriv_thetaPhi_poly_integrableOn (p : ℕ) :
    IntegrableOn (fun t => deriv thetaPhi t * t ^ p) (Ici (0 : ℝ)) := by
  have h := ((thetaGaussianSum_poly_integrableOn 4 9 p).const_mul (30 * Real.pi ^ 2)).sub
    ((thetaGaussianSum_poly_integrableOn 2 5 p).const_mul (15 * Real.pi)) |>.sub
    ((thetaGaussianSum_poly_integrableOn 6 13 p).const_mul (8 * Real.pi ^ 3))
  apply h.congr
  filter_upwards [] with t
  dsimp only [Pi.sub_apply]
  rw [deriv_thetaPhi_eq_raw, thetaPhiRawD1_eq_gaussians]
  ring

/-- The exact shifted source derivative weight needed by the first tail ratio. -/
theorem thetaPhi_deriv_mul_sub_integrableOn {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t) := by
  have h0 : IntegrableOn (deriv thetaPhi) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 0
  have h1 : IntegrableOn (fun u => deriv thetaPhi u * u) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 1
  have h := (h1.sub (h0.mul_const t)).mono_set (Ici_subset_Ici.mpr ht)
  apply h.congr
  filter_upwards [] with u
  dsimp only [Pi.sub_apply]
  ring

/-- The boundary product vanishes by the existing zeroth and quadratic source decay. -/
theorem thetaPhi_mul_sub_tendsto_atTop (t : ℝ) (ht : 0 ≤ t) :
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

/-- Antitonicity of the actual source log-slope fixes the cross-product orientation. -/
theorem thetaPhi_logSlope_cross_nonnegative
    {t u : ℝ} (ht : 0 ≤ t) (htu : t ≤ u) :
    0 ≤ deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u := by
  have h := (div_le_div_iff₀ (thetaPhi_positive u (ht.trans htu))
    (thetaPhi_positive t ht)).mp (thetaPhi_logSlope_antitone ht (ht.trans htu) htu)
  nlinarith only [h]

/-- Weighted improper FTC includes the actual vanishing boundary product. -/
theorem thetaPhi_deriv_mul_sub_integral {t : ℝ} (ht : 0 ≤ t) :
    (∫ u in Ici t, deriv thetaPhi u * (u - t)) = -thetaTail 1 t := by
  have hi := thetaPhi_deriv_mul_sub_integrableOn ht
  have hp := thetaPhi_integrableOn ht
  have hderiv (u : ℝ) (_hu : u ∈ Ici t) :
      HasDerivAt (fun u => thetaPhi u * (u - t))
        (deriv thetaPhi u * (u - t) + thetaPhi u) u := by
    convert! (hasDerivAt_thetaPhi_raw u).differentiableAt.hasDerivAt.mul
      ((hasDerivAt_id u).sub_const t) using 1
    simp
  have hh := integral_Ioi_of_hasDerivAt_of_tendsto' hderiv
    ((hi.add hp).mono_set Ioi_subset_Ici_self) (thetaPhi_mul_sub_tendsto_atTop t ht)
  rw [← integral_Ici_eq_integral_Ioi] at hh
  rw [integral_add hi hp] at hh
  have ht1 : thetaTail 1 t = ∫ u in Ici t, thetaPhi u := by simp [thetaTail]
  rw [ht1]
  simp only [sub_self, mul_zero] at hh
  linarith

/-- Exact integral identity for the numerator controlling the first tail ratio. -/
theorem thetaTail_two_logSlope_identity {t : ℝ} (ht : 0 ≤ t) :
    thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t =
      ∫ u in Ici t, (u - t) *
        (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u) := by
  have hi := thetaPhi_deriv_mul_sub_integrableOn ht
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
    integral_const_mul, thetaPhi_deriv_mul_sub_integral ht]
  have ht2 : thetaTail 2 t = ∫ u in Ici t, thetaPhi u * (u - t) := by simp [thetaTail]
  rw [← ht2]
  ring

/-- The exact weighted identity has a nonnegative source integrand. -/
theorem thetaTail_two_logSlope_nonnegative {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t := by
  rw [thetaTail_two_logSlope_identity ht]
  exact setIntegral_nonneg measurableSet_Ici fun u hu =>
    mul_nonneg (sub_nonneg.mpr hu) (thetaPhi_logSlope_cross_nonnegative ht hu)

/-- Differentiate the unchanged second tail divided by the literal positive source. -/
theorem hasDerivAt_thetaTail_two_div_thetaPhi {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun t => thetaTail 2 t / thetaPhi t)
      (-(thetaTail 1 t * thetaPhi t + thetaTail 2 t * deriv thetaPhi t) /
        thetaPhi t ^ 2) t := by
  convert! (hasDerivAt_thetaTail_succ 1 t).div
    (hasDerivAt_thetaPhi_raw t).differentiableAt.hasDerivAt
    (thetaPhi_positive t ht).ne' using 1
  ring

/-- The source identity gives the nonpositive derivative of the first tail ratio. -/
theorem thetaTail_two_div_thetaPhi_deriv_nonpos {t : ℝ} (ht : 0 ≤ t) :
    deriv (fun t => thetaTail 2 t / thetaPhi t) t ≤ 0 := by
  rw [(hasDerivAt_thetaTail_two_div_thetaPhi ht).deriv]
  exact div_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr (thetaTail_two_logSlope_nonnegative ht))
    (sq_nonneg _)

/-- The first nontrivial tail/source ratio decreases on the full nonnegative half-line. -/
theorem thetaTail_two_div_thetaPhi_antitone :
    AntitoneOn (fun t => thetaTail 2 t / thetaPhi t) (Ici (0 : ℝ)) := by
  apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
  · exact (continuous_thetaTail 2).continuousOn.div continuous_thetaPhi.continuousOn
      (fun t ht => (thetaPhi_positive t ht).ne')
  · intro t ht
    exact (hasDerivAt_thetaTail_two_div_thetaPhi (interior_subset ht)).differentiableAt
      |>.differentiableWithinAt
  · intro t ht
    exact thetaTail_two_div_thetaPhi_deriv_nonpos (interior_subset ht)

/-- The existing rank-two equivalence gives exactly the tail selection `q = (0,1)`. -/
theorem thetaTailSignRegular_two_zero_one
    (t : Fin 2 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (2 * (2 - 1) / 2) *
      Matrix.det (fun i j : Fin 2 => thetaTail (2 * i.val) (t j)) := by
  let q : Fin 2 ↪o ℕ := OrderEmbedding.ofStrictMono (fun i => i.val) (fun _ _ h => h)
  apply (thetaTailSignRegular_two_iff_ratio q t ht).mpr
  change thetaTail 2 (t 1) / thetaPhi (t 1) ≤ thetaTail 2 (t 0) / thetaPhi (t 0)
  exact thetaTail_two_div_thetaPhi_antitone (ht 0) (ht 1) (t.monotone (by decide : (0 : Fin 2) ≤ 1))

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
