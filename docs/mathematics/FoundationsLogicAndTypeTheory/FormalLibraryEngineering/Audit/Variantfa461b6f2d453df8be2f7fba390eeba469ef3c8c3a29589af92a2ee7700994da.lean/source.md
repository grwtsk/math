# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Audit.Variantfa461b6f2d453df8be2f7fba390eeba469ef3c8c3a29589af92a2ee7700994da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b8c259627a79c7ef1ffc605c880213067ddb64f` · SHA-256 `0b67cc8e0184d223c933764e9e66fcf9d7198aad96e155ce5c8802221bbe508c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityAllowedByDefault.Variant4b20696fb01bbd1f7d843994faefe12c59262a57503e1784b74491f3ed62a825","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b20696fb01bbd1f7d843994faefe12c59262a57503e1784b74491f3ed62a825","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.AuthorityAllowedByDefault.Variant4b20696fb01bbd1f7d843994faefe12c59262a57503e1784b74491f3ed62a825","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"4b20696fb01bbd1f7d843994faefe12c59262a57503e1784b74491f3ed62a825","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.Realization

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
Claim-boundary and readiness-gate discipline.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityAllowedByDefault.Variant4b20696fb01bbd1f7d843994faefe12c59262a57503e1784b74491f3ed62a825

namespace Presentation.Audit

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

end Presentation.Audit
```
