import Mathematics.Ecosystem.ProjectIdentity

/-! # Source-license admission -/

namespace Mathematics.Ecosystem

/-- Legal disposition is independent of technical build success. -/
inductive LicenseDisposition
  | admitted
  | rejected
  | reviewRequired
  deriving DecidableEq, Repr

/-- Immutable license evidence attached to one exact source revision. -/
structure LicenseRecord where
  project : ProjectId
  revisionId : StableId
  licenseName : String
  licenseTextDigest : Digest
  sourceNoticeDigest : Digest
  disposition : LicenseDisposition
  rationale : String
  deriving DecidableEq, Repr

/-- Only an explicit admission is legally admissible. -/
def LicenseRecord.LegallyAdmissible (record : LicenseRecord) : Prop :=
  record.disposition = .admitted

theorem LicenseRecord.review_is_not_admission
    (record : LicenseRecord)
    (review : record.disposition = .reviewRequired) :
    ¬ record.LegallyAdmissible := by
  simp [LicenseRecord.LegallyAdmissible, review]

end Mathematics.Ecosystem
