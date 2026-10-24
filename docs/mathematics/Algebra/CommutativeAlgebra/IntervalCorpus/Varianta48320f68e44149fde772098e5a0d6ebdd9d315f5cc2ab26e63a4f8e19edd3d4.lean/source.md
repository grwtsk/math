# Complete source: GRWTSK.Algebra.CommutativeAlgebra.IntervalCorpus.Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2661d19f48902234c8a2a9d6291731c2069d2794` · SHA-256 `f24a0ce29ced224d3cd1833f2d8b8f27b14dba4b88e8f28a12e8024f2c3e2f04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Source.Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Source.Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae","mathematical_subject":"Algebra.Polynomials","original_sha256":"4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Polynomial/IntervalCorpus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.IdeasCorpus
import Mathematics.Polynomial.Interval

/-!
# `ideas.md` cubic-integration reconstruction links

The source used “integral” for an endpoint difference.  The reconstruction
keeps that endpoint operation, gives it an exact name, and independently proves
its equality with the genuine interval integral.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.Source.Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae

namespace Mathematics.Polynomial.IntervalCorpus

open Mathematics
open Mathematics.Discovery

private def source
    (ordinal : Nat)
    (name : String)
    (name_nonempty : name ≠ "")
    (kind : CorpusDeclarationKind)
    (digest : String)
    (digest_valid : ({ value := digest } : Digest).Valid) :
    CorpusDeclarationAddress where
  corpus := ideasCorpus
  moduleOrdinal := 32
  modulePath := "Analysis/CubicIntegration.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "daa08671a11aba34e9def906e55831fe8b6d3b643cd70b622523c23eca8722e0"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide
  declarationOrdinal := ordinal
  declarationName := name
  declarationName_nonempty := name_nonempty
  declarationKind := kind
  declarationDigest := { value := digest }
  declarationDigest_valid := digest_valid

def endpointDifference : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-integration:integral:endpoint-difference" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    0
    "integral"
    (by decide)
    .definition
    "3156395ed4793b30a8ce6e64d6c1ae942a590d48dc26432092facb387b083822"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.cubicPotentialDifference"
  targetDeclaration_nonempty := by decide
  relation := .semanticCorrection
  rationale :=
    "Retain the exact endpoint-difference operation without calling it an integral by definition."

def endpointDifferenceSelf : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-integration:integral-same" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    1
    "integral_same"
    (by decide)
    .theorem
    "96250462fa4499e3f6fa6b83fd94583b6edfc52ae0ae906674ee31946115c01f"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration :=
    "Mathematics.Polynomial.cubicPotentialDifference_self"
  targetDeclaration_nonempty := by decide
  relation := .theoremReconstruction
  rationale := "Transport the zero-length endpoint identity to the corrected operation."

def endpointDifferenceComposition : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-integration:integral-add-interval" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    2
    "integral_add_interval"
    (by decide)
    .theorem
    "96d4061682c0980dc08bf1f480749acccb9ac8889e931c2f82bee2548137d9f1"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration :=
    "Mathematics.Polynomial.cubicPotentialDifference_trans"
  targetDeclaration_nonempty := by decide
  relation := .theoremReconstruction
  rationale := "Transport adjacent-interval composition to endpoint differences."

def genuineIntervalIntegral : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-integration:integral:ftc-correction" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    0
    "integral"
    (by decide)
    .definition
    "3156395ed4793b30a8ce6e64d6c1ae942a590d48dc26432092facb387b083822"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.intervalIntegral_cubic"
  targetDeclaration_nonempty := by decide
  relation := .semanticCorrection
  rationale :=
    "Connect the endpoint formula to Mathlib's interval integral through the fundamental theorem."

def links : List CorpusSubsumptionLink := [
  endpointDifference,
  endpointDifferenceSelf,
  endpointDifferenceComposition,
  genuineIntervalIntegral
]

@[simp] theorem links_length : links.length = 4 := by decide

end Mathematics.Polynomial.IntervalCorpus
```
