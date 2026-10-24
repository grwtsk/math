-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPhiExpMomentIntegrand.Variantf28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ThetaPhiExpMomentIntegrand.Variantf28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4","mathematical_subject":"Analysis.Calculus","original_sha256":"f28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/f2/f28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4--CoreBody.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPhiExpMomentIntegrand.Variantf28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Filter MeasureTheory Set
open scoped Topology

noncomputable section

/-- The actual theta source with its polynomial exponential derivative weight. -/
def thetaPhiExpMomentIntegrand (m : ℕ) (u : ℂ) (t : ℝ) : ℂ :=
  (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ m * Complex.exp (2 * u * (t : ℂ))

/-- Polynomial exponential theta moments as functions of the complex parameter. -/
def thetaPhiExpMoment (m : ℕ) (u : ℂ) : ℂ :=
  ∫ t in Ioi (0 : ℝ), thetaPhiExpMomentIntegrand m u t

/-- Continuity supplies all measurability obligations for the parameter integral. -/
theorem continuous_thetaPhiExpMomentIntegrand (m : ℕ) (u : ℂ) :
    Continuous (thetaPhiExpMomentIntegrand m u) := by
  unfold thetaPhiExpMomentIntegrand
  exact ((Complex.continuous_ofReal.comp continuous_thetaPhi).mul (by fun_prop)).mul
    (by fun_prop)

/-- A fixed real exponential weight controls the complex integrand uniformly
over every parameter set with the displayed norm bound. -/
theorem thetaPhiExpMomentIntegrand_norm_le (m : ℕ) (u : ℂ) (R : ℝ)
    (hu : 2 * ‖u‖ ≤ R) {t : ℝ} (ht : 0 ≤ t) :
    ‖thetaPhiExpMomentIntegrand m u t‖ ≤
      (2 : ℝ) ^ m * (thetaPhi t * t ^ m * Real.exp (R * t)) := by
  have hphi : 0 ≤ thetaPhi t := (thetaPhi_positive t ht).le
  have hnorm : ‖2 * u * (t : ℂ)‖ ≤ R * t := by
    simpa [norm_mul, abs_of_nonneg ht, mul_assoc] using
      mul_le_mul_of_nonneg_right hu ht
  have hexp : ‖Complex.exp (2 * u * (t : ℂ))‖ ≤ Real.exp (R * t) :=
    (Complex.norm_exp_le_exp_norm _).trans (Real.exp_le_exp.mpr hnorm)
  unfold thetaPhiExpMomentIntegrand
  simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg hphi, abs_of_nonneg ht]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ thetaPhi t * (2 * t) ^ m * Real.exp (R * t) :=
      mul_le_mul_of_nonneg_left hexp (by positivity)
    _ = _ := by rw [mul_pow]; ring

/-- Every complex exponential moment is absolutely integrable. -/
theorem thetaPhiExpMomentIntegrand_integrableOn (m : ℕ) (u : ℂ) :
    IntegrableOn (thetaPhiExpMomentIntegrand m u) (Ioi (0 : ℝ)) := by
  have hmajor := (thetaPhi_poly_exp_integrableOn m (2 * ‖u‖)).const_mul ((2 : ℝ) ^ m)
  apply hmajor.mono' (continuous_thetaPhiExpMomentIntegrand m u).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact thetaPhiExpMomentIntegrand_norm_le m u _ le_rfl (le_of_lt ht)

/-- Differentiation of the literal exponential kernel adds exactly one `2t` factor. -/
theorem hasDerivAt_thetaPhiExpMomentIntegrand (m : ℕ) (u : ℂ) (t : ℝ) :
    HasDerivAt (fun z => thetaPhiExpMomentIntegrand m z t)
      (thetaPhiExpMomentIntegrand (m + 1) u t) u := by
  have h := ((((hasDerivAt_id u).const_mul 2).mul_const (t : ℂ)).cexp).const_mul
    ((thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ m)
  simpa only [thetaPhiExpMomentIntegrand, pow_succ, id_eq, mul_one, one_mul,
    mul_assoc, mul_left_comm, mul_comm] using! h

/-- The exponential moment derivative is justified by a common integrable
bound on a neighborhood of each complex parameter. -/
theorem hasDerivAt_thetaPhiExpMoment (m : ℕ) (u : ℂ) :
    HasDerivAt (thetaPhiExpMoment m) (thetaPhiExpMoment (m + 1) u) u := by
  let R : ℝ := 2 * (‖u‖ + 1)
  let B : ℝ → ℝ := fun t => (2 : ℝ) ^ (m + 1) *
    (thetaPhi t * t ^ (m + 1) * Real.exp (R * t))
  have hs : Metric.ball (0 : ℂ) (‖u‖ + 1) ∈ 𝓝 u :=
    Metric.isOpen_ball.mem_nhds (by simp [Metric.mem_ball])
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := volume.restrict (Ioi (0 : ℝ)))
    (F := thetaPhiExpMomentIntegrand m)
    (F' := thetaPhiExpMomentIntegrand (m + 1)) (bound := B) hs
    (Eventually.of_forall fun z =>
      (continuous_thetaPhiExpMomentIntegrand m z).aestronglyMeasurable)
    (thetaPhiExpMomentIntegrand_integrableOn m u)
    (continuous_thetaPhiExpMomentIntegrand (m + 1) u).aestronglyMeasurable
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      intro z hz
      apply thetaPhiExpMomentIntegrand_norm_le (m + 1) z R ?_ (le_of_lt ht)
      have hz' : ‖z‖ < ‖u‖ + 1 := by simpa [Metric.mem_ball] using hz
      dsimp [R]
      linarith)
    ((thetaPhi_poly_exp_integrableOn (m + 1) R).const_mul ((2 : ℝ) ^ (m + 1)))
    (Eventually.of_forall fun t z _ => hasDerivAt_thetaPhiExpMomentIntegrand m z t)
  exact h.2

/-- The two exponential derivative contributions to the centered cosh transform. -/
def thetaCenteredMomentJet (m : ℕ) (u : ℂ) : ℂ :=
  4 * (thetaPhiExpMoment m u + (-1 : ℂ) ^ m * thetaPhiExpMoment m (-u))

/-- Both signs in the exponential recombination are retained in every derivative. -/
theorem hasDerivAt_thetaCenteredMomentJet (m : ℕ) (u : ℂ) :
    HasDerivAt (thetaCenteredMomentJet m) (thetaCenteredMomentJet (m + 1) u) u := by
  have hneg := (hasDerivAt_thetaPhiExpMoment m (-u)).comp u (hasDerivAt_id u).neg
  have h := ((hasDerivAt_thetaPhiExpMoment m u).add
    (hneg.const_mul ((-1 : ℂ) ^ m))).const_mul 4
  simpa only [thetaCenteredMomentJet, Pi.add_apply, Function.comp_apply, pow_succ,
    mul_assoc, mul_left_comm, mul_comm] using! h

/-- Iterated differentiation follows the proved integral derivative ladder. -/
theorem iteratedDeriv_thetaCenteredMomentJet (m : ℕ) :
    iteratedDeriv m (thetaCenteredMomentJet 0) = thetaCenteredMomentJet m := by
  induction m with
  | zero => rfl
  | succ m ih =>
    rw [iteratedDeriv_succ, ih]
    exact funext fun u => (hasDerivAt_thetaCenteredMomentJet m u).deriv

/-- At even order and parameter zero the two exponential terms add with factor eight. -/
theorem thetaCenteredMomentJet_even_zero (n : ℕ) :
    thetaCenteredMomentJet (2 * n) 0 =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n) := by
  simp only [thetaCenteredMomentJet, thetaPhiExpMoment, thetaPhiExpMomentIntegrand,
    neg_zero, mul_zero, zero_mul, Complex.exp_zero, mul_one, pow_mul]
  norm_num
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
