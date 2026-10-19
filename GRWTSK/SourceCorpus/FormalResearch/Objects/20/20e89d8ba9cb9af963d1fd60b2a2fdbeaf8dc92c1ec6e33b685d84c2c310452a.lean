import Mathematics.Reflection.Positive

/-! # Reviewable upstream bundles -/

namespace Mathematics.Reflection

inductive MaintainerStatus
  | notSubmitted
  | underReview
  | rejected
  | accepted
  deriving DecidableEq, Repr

/-- Human-reviewable projection of a positively certified patch. -/
structure UpstreamBundle where
  patch : Patch
  positive : PositiveCertificate patch
  title : String
  summaryDigest : Digest
  patchArtifactId : StableId
  buildReceiptArtifactId : StableId
  theoremReportArtifactId : StableId
  licenseReportArtifactId : StableId
  provenanceArtifactId : StableId
  maintainerStatus : MaintainerStatus
  bundleDigest : Digest

end Mathematics.Reflection
