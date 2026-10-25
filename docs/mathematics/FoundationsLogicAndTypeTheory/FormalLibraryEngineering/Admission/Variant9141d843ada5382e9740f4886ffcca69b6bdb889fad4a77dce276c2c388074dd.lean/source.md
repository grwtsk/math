# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Admission.Variant9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f64dcc9c5352076cef795c10f09888a12a84d5f1` · SHA-256 `9141d843ada5382e9740f4886ffcca69b6bdb889fad4a77dce276c2c388074dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
