# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stability.Variant767c33227e8056607ef60b1598178988a02e217c4614cb875df5078d9c8d1558

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f636bb744c99c1c38fa4edd5413e49684c81b91` · SHA-256 `003c4ddf5ab5ebdfaa37299f7dd158730e0accc795bbedb088876566760b9522`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopedFixedPointCertificate.Variantf2b2ba0e37be74f703a650917765452d31dcbbf5cc13fbc860a9e4330df56dfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2b2ba0e37be74f703a650917765452d31dcbbf5cc13fbc860a9e4330df56dfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ScopedFixedPointCertificate.Variantf2b2ba0e37be74f703a650917765452d31dcbbf5cc13fbc860a9e4330df56dfe","mathematical_subject":"Foundations.Unclassified","original_sha256":"f2b2ba0e37be74f703a650917765452d31dcbbf5cc13fbc860a9e4330df56dfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/Stability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.FixedPoint

/-! # Scoped stability certificates -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopedFixedPointCertificate.Variantf2b2ba0e37be74f703a650917765452d31dcbbf5cc13fbc860a9e4330df56dfe

namespace Mathematics.Relaxation

/--
Stability is indexed by one finite work package.  It creates no claim about
the undiscovered ecosystem or future source revisions.
-/
structure ScopedFixedPointCertificate
    (operator : Operator) where
  fixedPoint : FixedPoint operator
  scope : WorkPackage
  scope_matches : fixedPoint.state.workPackage = scope
  constraints_hold :
    SatisfiesAll operator.constraints fixedPoint.state
  certificateDigest : Digest
  globalCompletionNonclaim : Nonclaim

theorem ScopedFixedPointCertificate.source_is_unchanged
    {operator : Operator}
    (certificate : ScopedFixedPointCertificate operator) :
    (operator.step certificate.fixedPoint.state).ecosystemDigest =
      certificate.fixedPoint.state.ecosystemDigest :=
  (operator.source_preserved certificate.fixedPoint.state).1

end Mathematics.Relaxation
```
