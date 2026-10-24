-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityAllowedByDefault.Variant6ffeee093fedcda255f5a399d407d995dce04802f16e8b1592a8ae5b74e36a4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ffeee093fedcda255f5a399d407d995dce04802f16e8b1592a8ae5b74e36a4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.AuthorityAllowedByDefault.Variant6ffeee093fedcda255f5a399d407d995dce04802f16e8b1592a8ae5b74e36a4f","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"6ffeee093fedcda255f5a399d407d995dce04802f16e8b1592a8ae5b74e36a4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Presentation/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Presentation.Realization

/-!
What is formalized:
Small audit predicates for keeping raw Presentation records in interface or
certificate authority classes unless they are explicitly whitelisted.

What is certificate-gated:
Integration with generated AST export or broader CI audits remains an external
tooling step.

What is not claimed:
These Boolean audit predicates are not mathematical proofs and cannot establish
BSD, RH, analytic continuation, or spectral correspondence.

Primary mathematical source:
Surface claim-boundary and readiness-gate discipline.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityAllowedByDefault.Variant6ffeee093fedcda255f5a399d407d995dce04802f16e8b1592a8ae5b74e36a4f

namespace Surface.Presentation.Audit

/-- Raw Presentation records are normally interface or certificate artifacts. -/
def authorityAllowedByDefault : AuthorityClass → Bool
  | .interface => true
  | .certificate => true
  | .implementationTheorem => false
  | .mathematicalTheorem => false

/-- A raw presentation is compliant only under the declared authority boundary. -/
def isCompliantPresentation {α : Type u} (pres : Presentation α) : Bool :=
  pres.boundary.legacyFree &&
    (authorityAllowedByDefault pres.boundary.authority ||
      pres.boundary.theoremFacingAllowed)

theorem compliantPresentation_legacyFree
    {α : Type u}
    {pres : Presentation α}
    (h : isCompliantPresentation pres = true) :
    pres.boundary.legacyFree = true := by
  simp [isCompliantPresentation] at h
  exact h.1

theorem compliantMathematicalPresentation_is_whitelisted
    {α : Type u}
    {pres : Presentation α}
    (h : isCompliantPresentation pres = true)
    (hmath : pres.boundary.authority = AuthorityClass.mathematicalTheorem) :
    pres.boundary.theoremFacingAllowed = true := by
  simp [isCompliantPresentation, authorityAllowedByDefault, hmath] at h
  exact h.2

end Surface.Presentation.Audit
