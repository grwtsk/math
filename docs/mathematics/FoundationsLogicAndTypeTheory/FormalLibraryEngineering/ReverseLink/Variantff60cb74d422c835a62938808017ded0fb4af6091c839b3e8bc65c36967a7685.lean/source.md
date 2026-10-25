# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReverseLink.Variantff60cb74d422c835a62938808017ded0fb4af6091c839b3e8bc65c36967a7685

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b665ce0c49125383a293db860d47e1893451e60` · SHA-256 `81fa026d1c3f7b7d97881dc1f052806d737ac9c63b3115d73ff8a56389eb1e14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefusalCode.Variant2b0da9ca9f89b8d59d99aa4a167a72d84dda1847994970375d179f51363a3885","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b0da9ca9f89b8d59d99aa4a167a72d84dda1847994970375d179f51363a3885","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RefusalCode.Variant2b0da9ca9f89b8d59d99aa4a167a72d84dda1847994970375d179f51363a3885","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b0da9ca9f89b8d59d99aa4a167a72d84dda1847994970375d179f51363a3885","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Gateway/formalization/GatewayProof/ReverseLink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefusalCode.Variant2b0da9ca9f89b8d59d99aa4a167a72d84dda1847994970375d179f51363a3885

namespace GatewayProof
namespace ReverseLink

inductive RefusalCode
| registrationRefused
| sessionStale
| selectedClientStale
| configuredClientAbsent
| sessionAbsent
| ambiguousSessions
| queueFull
| forwardRefused
| forwardTimeout
deriving Repr, DecidableEq

def retryable : RefusalCode -> Bool
| .registrationRefused => false
| .sessionStale => true
| .selectedClientStale => true
| .configuredClientAbsent => true
| .sessionAbsent => true
| .ambiguousSessions => true
| .queueFull => true
| .forwardRefused => true
| .forwardTimeout => true

structure BrokerModel where
  healthySessionCount : Nat
  configuredClientPresent : Bool
  queueSize : Nat
  pendingMax : Nat
deriving Repr, DecidableEq

def ambiguous (s : BrokerModel) : Prop :=
  s.healthySessionCount > 1

def queueFull (s : BrokerModel) : Prop :=
  s.queueSize >= s.pendingMax

theorem registration_refused_not_retryable :
    retryable RefusalCode.registrationRefused = false := by
  rfl

theorem forward_timeout_retryable :
    retryable RefusalCode.forwardTimeout = true := by
  rfl

theorem ambiguous_definition (s : BrokerModel) :
    ambiguous s = (s.healthySessionCount > 1) := by
  rfl

theorem queue_full_definition (s : BrokerModel) :
    queueFull s = (s.queueSize >= s.pendingMax) := by
  rfl

end ReverseLink
end GatewayProof
```
