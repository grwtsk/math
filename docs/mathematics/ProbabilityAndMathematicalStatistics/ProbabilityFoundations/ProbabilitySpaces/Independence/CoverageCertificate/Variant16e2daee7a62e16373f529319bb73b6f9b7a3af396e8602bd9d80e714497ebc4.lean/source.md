# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CoverageCertificate.Variant16e2daee7a62e16373f529319bb73b6f9b7a3af396e8602bd9d80e714497ebc4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae3c86c1f14fdfdd7887c4cd96046d5e5ce25056` · SHA-256 `a7904b8ad8236e69bda7568616fde71928fde8003d249471ec2340e3bbf2406d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.IndependentCoverageVerification.Variantd2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.IndependentCoverageVerification.Variantd2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c","mathematical_subject":"Probability.Independence","original_sha256":"d2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Verification/CoverageCertificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Exploration.UniversalSequence
import Mathematics.GraphAccess.Exploration.DeBruijn

/-!
# Independent coverage verification custody
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.IndependentCoverageVerification.Variantd2cf8b499cb9cda5b7aaf90dc24c2d67eaa351a717bd65c70a9246c5015cee7c

namespace Mathematics.GraphAccess

structure IndependentCoverageVerification where
  declaredClassOrAlphabetRef : String
  constructorRef : String
  verifierRef : String
  independent : Prop
  coverageAccepted : Prop
  independentEvidence : independent
  coverageAcceptedEvidence : coverageAccepted

theorem independently_verified_coverage_is_accepted
    (verification : IndependentCoverageVerification) :
    verification.coverageAccepted :=
  verification.coverageAcceptedEvidence

end Mathematics.GraphAccess
```
