# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuation.Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5198f792870929681ea1c0aaacfc937b366ed6fc` · SHA-256 `170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Result

/-!
# Authenticated continuation bindings

A continuation is bound to the complete committed cut, proof-status table,
accepted registry, frontier, and next layer.  Authentication does not confer
theorem authority; it only prevents substitution of a different frontier.
-/

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
