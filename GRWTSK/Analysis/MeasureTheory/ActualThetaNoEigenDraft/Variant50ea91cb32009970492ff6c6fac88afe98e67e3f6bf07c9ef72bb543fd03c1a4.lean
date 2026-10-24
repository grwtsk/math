-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ActualMomentMeasureNullSingleton.Variante681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ActualMomentMeasureNullSingleton.Variante681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"e681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass2/theta_review/ActualThetaNoEigenDraft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import NoEigenDraft
import ThetaJacobiUnitary


namespace GRWTSK.Analysis.MeasureTheory.ActualMomentMeasureNullSingleton.Variante681a4706143c269724124f1d8cb64d698f4c6e4e7efa87018094a7fef535b84

set_option autoImplicit false

namespace ContinuousThetaNoEigenDraft

open MeasureTheory
open FormalResearch.RiemannHypothesis
open ThetaMomentMeasure ThetaMultiplicationDomain ThetaJacobiUnitary

noncomputable section

/-- Literal actual theta moment measure, not a renamed spectral assumption. -/
theorem actualMomentMeasure_nullSingleton (t : ℝ) :
    NullSingletonClass (momentMeasure t) :=
  shiftedDensityMeasure_nullSingleton t (fun u => ENNReal.ofReal (ThetaPositiveLift.thetaPhi u))

/-- Actual theta multiplication has no nonzero eigenvector at any complex value. -/
theorem actualTheta_coordinate_eigenvector_eq_zero (t : ℝ) (z : ℂ)
    (f : coordinateDomain (momentMeasure t))
    (h : coordinateMultiplication (momentMeasure t) f =
      z • (f : Lp ℂ 2 (momentMeasure t))) :
    (f : Lp ℂ 2 (momentMeasure t)) = 0 := by
  have := actualMomentMeasure_nullSingleton t
  exact coordinate_eigenvector_eq_zero _ z f h

/-- Exact domain-preserving unitary transports the actual absence of eigenvectors. -/
theorem actualTheta_jacobi_eigenvector_eq_zero {t : ℝ} (ht : 0 ≤ t) (z : ℂ)
    (f : jacobiDomain t ht)
    (h : jacobiOperator t ht f = z • (f : lp (fun _ : ℕ => ℂ) 2)) :
    (f : lp (fun _ : ℕ => ℂ) 2) = 0 := by
  have he : (domainUnitary t ht f : Lp ℂ 2 (momentMeasure t)) = 0 :=
    actualTheta_coordinate_eigenvector_eq_zero t z (domainUnitary t ht f) (by
      rw [← pointedUnitary_jacobiOperator ht f, h, map_smul]
      rfl)
  apply (pointedUnitary t ht).injective
  rw [map_zero]
  exact he

#print axioms actualMomentMeasure_nullSingleton
#print axioms actualTheta_coordinate_eigenvector_eq_zero
#print axioms actualTheta_jacobi_eigenvector_eq_zero

end
end ContinuousThetaNoEigenDraft
