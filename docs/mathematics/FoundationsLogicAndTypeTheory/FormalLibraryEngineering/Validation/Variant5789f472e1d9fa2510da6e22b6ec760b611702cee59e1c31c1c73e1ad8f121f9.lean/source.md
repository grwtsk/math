# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variant5789f472e1d9fa2510da6e22b6ec760b611702cee59e1c31c1c73e1ad8f121f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bb51224473898b8e12d69cd490f0a6fbb8f2c19` · SHA-256 `ade308bc499df1ab1cdde704f8e37dd640d04b7b3087376a9167901ea19a1347`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValidationCertificate.Variant6093901b55cf1d989a2315f37a2b2270e328e37acb507a6f3811fa293a625708","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6093901b55cf1d989a2315f37a2b2270e328e37acb507a6f3811fa293a625708","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ValidationCertificate.Variant6093901b55cf1d989a2315f37a2b2270e328e37acb507a6f3811fa293a625708","mathematical_subject":"Foundations.Unclassified","original_sha256":"6093901b55cf1d989a2315f37a2b2270e328e37acb507a6f3811fa293a625708","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/SourceAnalysis/Validation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.SourceAnalysis.Invariant
import MathDiscovery.Atom.Validation

/-! # Source-analysis completion certificate -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValidationCertificate.Variant6093901b55cf1d989a2315f37a2b2270e328e37acb507a6f3811fa293a625708

namespace MathDiscovery.SourceAnalysis

open MathDiscovery

structure ValidationCertificate where
  commandCoverage : Digest
  alignmentCoverage : Digest
  contextCoverage : Digest
  witnessCoverage : Digest
  reconstructionDigest : Digest
  unresolvedCount : Nat
  valid : Bool
  deriving DecidableEq, Repr

def ValidationCertificate.Valid (certificate : ValidationCertificate) : Prop :=
  certificate.commandCoverage.Valid ∧ certificate.alignmentCoverage.Valid ∧
    certificate.contextCoverage.Valid ∧ certificate.witnessCoverage.Valid ∧
    certificate.reconstructionDigest.Valid ∧ certificate.unresolvedCount = 0 ∧
    certificate.valid = true

end MathDiscovery.SourceAnalysis
```
