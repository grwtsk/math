# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant0d0ebd75faa2a54e6d78d7e122658da2db45f1f52cfd94df830088c136e2cb86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0c476a2c61fa5e94f658a14ffb15e8160726bcc` · SHA-256 `11248ea843d9eed7ea46dd291b00dbcbbf0ecc274b441fa343636951908d787d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityClass.Variant295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityClass.Variant295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18","mathematical_subject":"Foundations.Unclassified","original_sha256":"295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Basic

/-!
# Interpretation authority
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityClass.Variant295338e6ec5e156cb94bba57e396b2fdd82efaaa9ee18351b356e19856e14c18

namespace Mathematics.SemanticTokenization

inductive AuthorityClass
  | humanAccepted
  | lexicallyCertified
  | corpusSupported
  | parserSupported
  | modelSuggested
  | taskAssumed
deriving DecidableEq, Repr

inductive AssertionUse
  | structural
  | lexical
  | syntactic
  | semantic
  | pragmatic
  | theoremPremise
  | candidateOnly
deriving DecidableEq, Repr

structure AuthorityPolicy where
  permits : AuthorityClass → AssertionUse → Bool
  modelCannotProve :
    permits .modelSuggested .theoremPremise = false
  parserCannotProveSemantics :
    permits .parserSupported .semantic = false
  parserCannotProveTheorems :
    permits .parserSupported .theoremPremise = false

def conservativeAuthorityPolicy : AuthorityPolicy where
  permits
    | .humanAccepted, _ => true
    | .lexicallyCertified, .lexical => true
    | .corpusSupported, .lexical => true
    | .corpusSupported, .pragmatic => true
    | .parserSupported, .structural => true
    | .parserSupported, .syntactic => true
    | .modelSuggested, .candidateOnly => true
    | .taskAssumed, .candidateOnly => true
    | _, _ => false
  modelCannotProve := rfl
  parserCannotProveSemantics := rfl
  parserCannotProveTheorems := rfl

theorem model_suggestion_not_theorem_authority
    (policy : AuthorityPolicy) :
    policy.permits .modelSuggested .theoremPremise = false :=
  policy.modelCannotProve

end Mathematics.SemanticTokenization
```
