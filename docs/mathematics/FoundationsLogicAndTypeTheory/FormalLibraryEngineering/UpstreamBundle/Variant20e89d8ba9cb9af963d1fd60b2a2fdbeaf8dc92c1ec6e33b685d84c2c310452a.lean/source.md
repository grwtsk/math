# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpstreamBundle.Variant20e89d8ba9cb9af963d1fd60b2a2fdbeaf8dc92c1ec6e33b685d84c2c310452a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d509ba66c8617b1e4700e90b3a4c4075a03b576b` · SHA-256 `20e89d8ba9cb9af963d1fd60b2a2fdbeaf8dc92c1ec6e33b685d84c2c310452a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
