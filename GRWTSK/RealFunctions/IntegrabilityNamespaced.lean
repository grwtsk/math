-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivThetaPhiPolyIntegrableOn.Varianta668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DerivThetaPhiPolyIntegrableOn.Varianta668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af","mathematical_subject":"Analysis.Calculus","original_sha256":"a668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/a6/a668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af--Integrability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivThetaPhiPolyIntegrableOn.Varianta668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set
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

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
