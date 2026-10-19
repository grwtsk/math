import Mathematics.Ecosystem.Manifest

/-! # Legal and source-integrity admission -/

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
