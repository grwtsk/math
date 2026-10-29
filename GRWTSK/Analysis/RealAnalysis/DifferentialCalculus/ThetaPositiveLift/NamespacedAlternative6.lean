-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaTailGap.Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ThetaTailGap.Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de","mathematical_subject":"Analysis.Calculus","original_sha256":"8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailRankTwo
import Mathlib.Analysis.Calculus.Deriv.Slope
import FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives

/-!
# Exact gaps between literal theta-tail ratios

The gap is the cross-product controlling the derivative of a higher-to-lower
tail ratio. Previously proved rank-two antitonicity gives its nonnegative sign.
The endpoint zero is included using the derivative within `Ici 0` and uniqueness
of that derivative, rather than applying an interior-only monotonicity theorem.

The original source has strictly decreasing log-slope. Its exact weighted
integral identity gives a strictly positive `(0,2)` gap on the full half-line.
The identities here retain actual derivatives, predecessor tails, factorials,
and the source residual. They do not assert any rank-three determinant sign.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaTailGap.Variant8597463e34ab0aefd5fa5bc656d542b484be541b8dfc1408214b2ee7d41701de

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set Filter
open scoped Topology
noncomputable section

/-- The exact oriented derivative cross-product for two literal tail orders. -/
def thetaTailGap (r s : ℕ) (t : ℝ) : ℝ :=
  deriv (thetaTail r) t * thetaTail s t - thetaTail r t * deriv (thetaTail s) t

/-- The normalized tail ratio has derivative minus the gap over the positive square. -/
theorem hasDerivAt_thetaTail_normalized (r s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun u => thetaTail s u / thetaTail r u)
      (-thetaTailGap r s t / thetaTail r t ^ 2) t := by
  convert! ((differentiable_thetaTail s t).hasDerivAt).div
    (differentiable_thetaTail r t).hasDerivAt (thetaTail_positive r ht).ne' using 1
  unfold thetaTailGap
  ring

/-- Rank-two ratio antitonicity gives every ordered gap sign, including at zero. -/
theorem thetaTailGap_nonnegative {r s : ℕ} (hrs : r ≤ s) {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ thetaTailGap r s t := by
  rcases hrs.eq_or_lt with rfl | hrs
  · simp [thetaTailGap, mul_comm]
  have h := (thetaTail_div_antitone hrs).derivWithin_nonpos (x := t)
  rw [(hasDerivAt_thetaTail_normalized r s ht).hasDerivWithinAt.derivWithin
    (uniqueDiffOn_Ici 0 t ht)] at h
  have hn := (div_le_iff₀ (sq_pos_of_pos (thetaTail_positive r ht))).mp h
  nlinarith

/-- A ratio of normalized derivatives is the exact gap ratio when its denominator is positive. -/
theorem thetaTailGap_derivative_ratio (r s u : ℕ) {t : ℝ} (ht : 0 ≤ t)
    (hgap : 0 < thetaTailGap r s t) :
    deriv (fun t => thetaTail u t / thetaTail r t) t /
      deriv (fun t => thetaTail s t / thetaTail r t) t =
        thetaTailGap r u t / thetaTailGap r s t := by
  rw [(hasDerivAt_thetaTail_normalized r u ht).deriv,
    (hasDerivAt_thetaTail_normalized r s ht).deriv]
  field_simp [(thetaTail_positive r ht).ne', hgap.ne']

/-- For positive tail orders, the derivative ladder exposes both predecessor tails. -/
theorem thetaTailGap_succ_succ (r s : ℕ) (t : ℝ) :
    thetaTailGap (r + 1) (s + 1) t =
      thetaTail (r + 1) t * thetaTail s t - thetaTail r t * thetaTail (s + 1) t := by
  unfold thetaTailGap
  rw [(hasDerivAt_thetaTail_succ r t).deriv, (hasDerivAt_thetaTail_succ s t).deriv]
  ring

/-- The zeroth row retains the derivative of the actual theta source. -/
theorem thetaTailGap_zero_succ (s : ℕ) (t : ℝ) :
    thetaTailGap 0 (s + 1) t =
      deriv thetaPhi t * thetaTail (s + 1) t + thetaPhi t * thetaTail s t := by
  change deriv thetaPhi t * thetaTail (s + 1) t -
    thetaPhi t * deriv (thetaTail (s + 1)) t = _
  rw [(hasDerivAt_thetaTail_succ s t).deriv]
  ring

/-- Strict negative source curvature gives a strictly decreasing source log-slope. -/
theorem thetaPhi_logSlope_strictAnti :
    StrictAntiOn (fun t : ℝ => deriv thetaPhi t / thetaPhi t) (Ici 0) := by
  apply strictAntiOn_of_deriv_neg (convex_Ici 0)
  · intro t ht
    exact (hasDerivAt_thetaPhi_logSlope ht).continuousAt.continuousWithinAt
  · intro t ht
    exact thetaPhi_logSlope_deriv_neg (interior_subset ht)

/-- The source cross-product is strictly positive at strictly increasing points. -/
theorem thetaPhi_logSlope_cross_positive {t u : ℝ} (ht : 0 ≤ t) (htu : t < u) :
    0 < deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u := by
  have h := (div_lt_div_iff₀ (thetaPhi_positive u (ht.trans htu.le))
    (thetaPhi_positive t ht)).mp (thetaPhi_logSlope_strictAnti ht (ht.trans htu.le) htu)
  nlinarith only [h]

/-- The existing first-tail numerator identity is exactly the `(0,2)` gap. -/
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

/-- Strict gap positivity uses a positive-measure source interval and integrability. -/
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

/-- Differentiating a source gap cancels the two mixed first-derivative terms. -/
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

/-- Every positive source gap of order at least two is an integral of the exact
log-slope cross difference. Polynomially weighted source decay kills the upper
boundary term; the positive power kills the lower boundary term. -/
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


private theorem thetaPhi_deriv_mul_sub_pow_tendsto (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    Tendsto (fun u => deriv thetaPhi u * (u - t) ^ k) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  apply squeeze_zero' (g := fun u => ‖deriv thetaPhi u * u ^ k‖)
  · exact Filter.Eventually.of_forall (fun _ => norm_nonneg _)
  · filter_upwards [eventually_ge_atTop t] with u hu
    rw [norm_mul, norm_mul, Real.norm_of_nonneg (pow_nonneg (sub_nonneg.mpr hu) _),
      Real.norm_of_nonneg (pow_nonneg (ht.trans hu) _)]
    exact mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ (sub_nonneg.mpr hu) (by linarith) k) (norm_nonneg _)
  · exact tendsto_zero_iff_norm_tendsto_zero.mp (deriv_thetaPhi_poly_tendsto_atTop k)

private theorem thetaPhi_second_sub_pow_integrable (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => deriv (deriv thetaPhi) u * (u - t) ^ k) (Ici t) := by
  have hi := (deriv_deriv_thetaPhi_poly_integrableOn k).mono_set (Ici_subset_Ici.mpr ht)
  apply Integrable.mono hi
  · have hc : Continuous (deriv (deriv thetaPhi)) :=
      continuous_iff_continuousAt.mpr (fun u =>
        (hasDerivAt_deriv_deriv_thetaPhi u).continuousAt)
    exact (hc.mul ((continuous_id.sub continuous_const).pow k)).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    rw [norm_mul, norm_mul, Real.norm_of_nonneg (pow_nonneg (sub_nonneg.mpr hu) _),
      Real.norm_of_nonneg (pow_nonneg (ht.trans hu) _)]
    exact mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ (sub_nonneg.mpr hu) (by linarith) k) (norm_nonneg _)

private theorem thetaPhi_deriv_tailKernel_integral_all (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    (∫ u in Ici t, (deriv thetaPhi u * (u - t) ^ s / (s.factorial : ℝ))) =
      -thetaTail s t := by
  cases s with
  | zero =>
    simp only [pow_zero, mul_one, Nat.factorial_zero, Nat.cast_one, div_one, thetaTail_zero]
    apply integral_deriv_Ici_eq_neg
      (fun u => (hasDerivAt_thetaPhi_raw u).differentiableAt)
      (by simpa using deriv_thetaPhi_poly_integrableOn 0) (thetaTail_tendsto_atTop 0) ht
  | succ s => exact thetaPhi_deriv_tailKernel_integral s ht

private theorem thetaPhi_second_tailKernel_integral (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    (∫ u in Ici t, (deriv (deriv thetaPhi) u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ))) = thetaTail s t := by
  have hd : IntegrableOn (fun u => deriv (deriv thetaPhi) u * (u - t) ^ (s + 1) /
      ((s + 1).factorial : ℝ)) (Ici t) :=
    (thetaPhi_second_sub_pow_integrable (s + 1) ht).div_const ((s + 1).factorial : ℝ)
  have hf : IntegrableOn (fun u => deriv thetaPhi u * (u - t) ^ s / (s.factorial : ℝ))
      (Ici t) := (thetaPhi_deriv_sub_pow_integrable s ht).div_const (s.factorial : ℝ)
  have hderiv (u : ℝ) (_hu : u ∈ Ici t) :
      HasDerivAt (fun u => deriv thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ))
        (deriv (deriv thetaPhi) u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ) +
          deriv thetaPhi u * (u - t) ^ s / (s.factorial : ℝ)) u := by
    have hphi : HasDerivAt (deriv thetaPhi) (deriv (deriv thetaPhi) u) u := by
      rw [show deriv thetaPhi = thetaPhiRawD1 from funext deriv_thetaPhi_eq_raw]
      exact (hasDerivAt_thetaPhiRawD1 u).differentiableAt.hasDerivAt
    convert! (hphi.mul (((hasDerivAt_id u).sub_const t).pow (s + 1))).div_const
      ((s + 1).factorial : ℝ) using 1
    simp only [Nat.add_sub_cancel, id_eq, Pi.pow_apply]
    rw [Nat.factorial_succ]
    push_cast
    field_simp
  have hlim := (thetaPhi_deriv_mul_sub_pow_tendsto (s + 1) ht).div_const
    ((s + 1).factorial : ℝ)
  have hh := integral_Ioi_of_hasDerivAt_of_tendsto' hderiv
    ((hd.add hf).mono_set Ioi_subset_Ici_self) hlim
  rw [← integral_Ici_eq_integral_Ioi, integral_add hd hf,
    thetaPhi_deriv_tailKernel_integral_all s ht] at hh
  simp only [sub_self, zero_pow (Nat.succ_ne_zero s), mul_zero, zero_div] at hh
  linarith

/-- The derivative source gap is also an exact integral, after two justified
improper integrations by parts. Both boundary products decay by Gaussian bounds. -/
theorem thetaTailGap_zero_succ_succ_deriv_integral (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    deriv (thetaTailGap 0 (s + 2)) t =
      (∫ u in Ici t, (((u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) *
        (deriv (deriv thetaPhi) t * thetaPhi u - thetaPhi t * deriv (deriv thetaPhi) u))) := by
  rw [(hasDerivAt_thetaTailGap_zero_succ_succ s ht).deriv]
  have hp := thetaTail_integrable (s + 1) ht
  have hd := (thetaPhi_second_sub_pow_integrable (s + 1) ht).div_const
    ((s + 1).factorial : ℝ)
  have heq : (fun u => ((u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) *
      (deriv (deriv thetaPhi) t * thetaPhi u - thetaPhi t * deriv (deriv thetaPhi) u)) =
      fun u => deriv (deriv thetaPhi) t *
        (thetaPhi u * (u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) -
        thetaPhi t * (deriv (deriv thetaPhi) u * (u - t) ^ (s + 1) /
          ((s + 1).factorial : ℝ)) := by
    funext u
    ring
  rw [heq, integral_sub (hp.const_mul _) (hd.const_mul _), integral_const_mul,
    integral_const_mul, thetaPhi_second_tailKernel_integral s ht]
  rfl

/-- Absolute convergence of each source-gap residual integral. -/
theorem thetaTailGap_source_integrand_integrable (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => ((u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) *
      (deriv thetaPhi t * thetaPhi u - thetaPhi t * deriv thetaPhi u)) (Ici t) := by
  have hp := thetaTail_integrable (s + 1) ht
  have hd := (thetaPhi_deriv_sub_pow_integrable (s + 1) ht).div_const
    ((s + 1).factorial : ℝ)
  apply ((hp.const_mul (deriv thetaPhi t)).sub (hd.const_mul (thetaPhi t))).congr
  filter_upwards [] with u
  dsimp only [Pi.sub_apply]
  ring

/-- Absolute convergence of each differentiated source-gap residual integral. -/
theorem thetaTailGap_source_deriv_integrand_integrable (s : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => ((u - t) ^ (s + 1) / ((s + 1).factorial : ℝ)) *
      (deriv (deriv thetaPhi) t * thetaPhi u - thetaPhi t * deriv (deriv thetaPhi) u))
        (Ici t) := by
  have hp := thetaTail_integrable (s + 1) ht
  have hd := (thetaPhi_second_sub_pow_integrable (s + 1) ht).div_const
    ((s + 1).factorial : ℝ)
  apply ((hp.const_mul (deriv (deriv thetaPhi) t)).sub (hd.const_mul (thetaPhi t))).congr
  filter_upwards [] with u
  dsimp only [Pi.sub_apply]
  ring

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
