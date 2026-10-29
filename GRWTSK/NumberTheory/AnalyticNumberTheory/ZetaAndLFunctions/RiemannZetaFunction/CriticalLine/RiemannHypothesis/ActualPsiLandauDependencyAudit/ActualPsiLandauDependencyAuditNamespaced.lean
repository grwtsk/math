-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiIntegerExact.Variant0c7191e1ac06c917d925b1c7b79b2cc60ca7ff77eec8df7476187624bb8b6ea4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c7191e1ac06c917d925b1c7b79b2cc60ca7ff77eec8df7476187624bb8b6ea4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualPsiIntegerExact.Variant0c7191e1ac06c917d925b1c7b79b2cc60ca7ff77eec8df7476187624bb8b6ea4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0c7191e1ac06c917d925b1c7b79b2cc60ca7ff77eec8df7476187624bb8b6ea4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualPsiLandauDependencyAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiIntegerExact
import FormalResearch.RiemannHypothesis.Landau.Bridge


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiIntegerExact.Variant0c7191e1ac06c917d925b1c7b79b2cc60ca7ff77eec8df7476187624bb8b6ea4

set_option autoImplicit false
open FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation
open FormalResearch.RiemannHypothesis.SourceActualPsiIntegerExact
open FormalResearch.RiemannHypothesis.Landau.Bridge

#check original_estimate_of_actual_psi_floor_upper
#print axioms original_estimate_of_actual_psi_floor_upper
#check riemann_hypothesis_of_uniform_lower_bound
#print axioms riemann_hypothesis_of_uniform_lower_bound

example {K R : ℝ} (hR : 1 ≤ R)
    (hpsi : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) :
    _root_.RiemannHypothesis := by
  exact riemann_hypothesis_of_uniform_lower_bound
    (original_estimate_of_actual_psi_floor_upper hR hpsi)
