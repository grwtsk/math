# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Admission.Variantc80d8317a2938acd67c634fd49006ac10e70510c43a73ed26b47e148c6daf3c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d279179c77e208154a05b28394494754fed8828` · SHA-256 `f59edb44993401a24fe84dcae6fcc958fc06b93a0a9b374280885578a25c7170`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdmissionStatus.Variant9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AdmissionStatus.Variant9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd","mathematical_subject":"Foundations.Unclassified","original_sha256":"9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/Admission.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Manifest

/-! # Legal and source-integrity admission -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdmissionStatus.Variant9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd

namespace Mathematics.Ecosystem

/-- A rejected source remains discoverable but cannot enter the admitted corpus. -/
inductive AdmissionStatus
  | admitted
  | rejected
  | pending
  deriving DecidableEq, Repr

/-- Admission binds legal evidence to an exact complete manifest. -/
structure ProjectAdmission where
  project : ProjectIdentity
  manifest : ProjectManifest
  license : LicenseRecord
  status : AdmissionStatus
  project_matches :
    manifest.revision.project.projectId = project.projectId
  license_matches :
    license.project = project.projectId ∧
      license.revisionId = manifest.revision.revisionId
  admitted_is_legal :
    status = .admitted → license.LegallyAdmissible
  source_open : Bool
  admissionDigest : Digest

namespace ProjectAdmission

theorem legal_of_admitted
    (admission : ProjectAdmission)
    (accepted : admission.status = .admitted) :
    admission.license.LegallyAdmissible :=
  admission.admitted_is_legal accepted

end ProjectAdmission

end Mathematics.Ecosystem
```
