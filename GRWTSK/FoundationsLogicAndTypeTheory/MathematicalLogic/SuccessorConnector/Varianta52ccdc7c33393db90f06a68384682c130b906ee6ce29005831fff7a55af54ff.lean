-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SuccessorStateConnector.Variant7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SuccessorStateConnector.Variant7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a","mathematical_subject":"Logic.Foundations","original_sha256":"7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/SuccessorConnector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Successor-cut state connector

The retraction law makes the predecessor projection surjective.  Kernel,
metric, symmetry, bitfield, and trace compatibility remain separate
certificates.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SuccessorStateConnector.Variant7fd9891ba2a03483eaa241e91d4e1dbfc5628eb78143a7aed664233d826d962a

namespace Mathematics.StratifiedBoundary

structure SuccessorStateConnector
    (Predecessor Successor : Type u) where
  embed : Predecessor → Successor
  project : Successor → Predecessor
  retract :
    ∀ state,
      project (embed state) = state
  predecessorDistance : Predecessor → Predecessor → Nat
  successorDistance : Successor → Successor → Nat
  metricNonexpansive :
    ∀ left right,
      predecessorDistance (project left) (project right) ≤
        successorDistance left right

theorem successor_projection_surjective
    {Predecessor Successor : Type u}
    (connector :
      SuccessorStateConnector Predecessor Successor) :
    Function.Surjective connector.project := by
  intro predecessor
  exact ⟨connector.embed predecessor, connector.retract predecessor⟩

structure SuccessorInvariantLawProjection
    (PredecessorLaw SuccessorLaw : Type u) where
  projectLaw : SuccessorLaw → PredecessorLaw
  predecessorLaw : PredecessorLaw
  successorLaw : SuccessorLaw
  kernelCompatibilityRef : String
  uniquenessRef : String
  projects :
    projectLaw successorLaw = predecessorLaw

theorem successor_invariant_law_projects
    {PredecessorLaw SuccessorLaw : Type u}
    (certificate :
      SuccessorInvariantLawProjection
        PredecessorLaw SuccessorLaw) :
    certificate.projectLaw certificate.successorLaw =
      certificate.predecessorLaw :=
  certificate.projects

end Mathematics.StratifiedBoundary
