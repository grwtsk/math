# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variant331a387c1143ee12387652d0c2841c0389be6c52dcf1120336650f91a89557f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af90693ae3c6f7a47d5b1dc1badaa1f462e62e95` · SHA-256 `120c61da947b13bf14fd445dab57f78faceed10626be77edd50cd6a72b18e625`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckFailure.Variante965def4b51322100a690a2911472d3a5d0f26f185070f75cbfc10084a3bccdf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e965def4b51322100a690a2911472d3a5d0f26f185070f75cbfc10084a3bccdf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CheckFailure.Variante965def4b51322100a690a2911472d3a5d0f26f185070f75cbfc10084a3bccdf","mathematical_subject":"Foundations.Unclassified","original_sha256":"e965def4b51322100a690a2911472d3a5d0f26f185070f75cbfc10084a3bccdf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Kind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Conservative resolution kinds

Unknown proof availability is distinct from falsity and from rejection of an
invocation envelope.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckFailure.Variante965def4b51322100a690a2911472d3a5d0f26f185070f75cbfc10084a3bccdf

namespace Mathematics.Resolution

inductive CheckFailure
  | malformed
  | wrongProposition
  | wrongSnapshot
  | wrongSourceObject
  | missingDependency
  | revokedAuthority
  | unsupportedCertificateKind
  | kernelRejection
  deriving DecidableEq, Repr

inductive CheckResult
  | accept
  | reject (failure : CheckFailure)
  deriving DecidableEq, Repr

inductive ProofStatus
  | proved
  | unknownMissing
  | unknownUnaccepted
  deriving DecidableEq, Repr

inductive OverflowPolicy
  | backpressure
  | durableSpillover
  | certifiedAdmissionRejection
  deriving DecidableEq, Repr

inductive CutFailure
  | malformedSnapshot
  | invalidGraph
  | malformedInstance
  | invalidAuthority
  | inconsistentIdentity
  | inconsistentDependency
  | invalidOriginSpace
  | nonIdempotentProjection
  | invalidFieldCodec
  | invalidContext
  | collapsedProtectedDistinction
  | invalidEncoding
  deriving DecidableEq, Repr

end Mathematics.Resolution
```
