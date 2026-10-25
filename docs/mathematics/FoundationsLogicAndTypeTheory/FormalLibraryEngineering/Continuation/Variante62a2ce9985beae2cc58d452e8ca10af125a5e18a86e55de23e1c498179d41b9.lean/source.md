# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuation.Variante62a2ce9985beae2cc58d452e8ca10af125a5e18a86e55de23e1c498179d41b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f8a7e49908f634911dfb8d34c0589e27ff4f494` · SHA-256 `6566967fc834e4fb6d4875efca9744a4f2caace5a3f30fdfb1bccc53c0827694`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationBinding.Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ContinuationBinding.Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5","mathematical_subject":"Foundations.Unclassified","original_sha256":"170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Continuation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Result

/-!
# Authenticated continuation bindings

A continuation is bound to the complete committed cut, proof-status table,
accepted registry, frontier, and next layer.  Authentication does not confer
theorem authority; it only prevents substitution of a different frontier.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationBinding.Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5

namespace Mathematics.Resolution

universe u

structure ContinuationBinding where
  cutDigest : String
  proofRegistryDigest : String
  statusDigest : String
  acceptedRegistryDigest : String
  frontierDigest : String
  contextDigest : String
  layerIndex : Nat
  deriving DecidableEq, Repr

structure ContinuationAuthenticator (Token : Type u) where
  sign : ContinuationBinding → Token
  verify : Token → ContinuationBinding → Bool
  verifies_signed :
    ∀ binding, verify (sign binding) binding = true
  binding_exclusive :
    ∀ token left right,
      verify token left = true →
      verify token right = true →
      left = right

structure AuthenticatedContinuation
    (authenticator : ContinuationAuthenticator Token)
    (binding : ContinuationBinding) where
  token : Token
  verified :
    authenticator.verify token binding = true

abbrev AuthenticatedToken
    (authenticator : ContinuationAuthenticator Token) :=
  Σ binding, AuthenticatedContinuation authenticator binding

def ContinuationAuthenticator.issue
    (authenticator : ContinuationAuthenticator Token)
    (binding : ContinuationBinding) :
    AuthenticatedContinuation authenticator binding :=
  {
    token := authenticator.sign binding
    verified := authenticator.verifies_signed binding
  }

theorem authenticated_binding_unique
    (authenticator : ContinuationAuthenticator Token)
    {left right : ContinuationBinding}
    (continuation :
      AuthenticatedContinuation authenticator left)
    (alsoVerified :
      authenticator.verify continuation.token right = true) :
    left = right :=
  authenticator.binding_exclusive
    continuation.token left right
    continuation.verified alsoVerified

end Mathematics.Resolution
```
