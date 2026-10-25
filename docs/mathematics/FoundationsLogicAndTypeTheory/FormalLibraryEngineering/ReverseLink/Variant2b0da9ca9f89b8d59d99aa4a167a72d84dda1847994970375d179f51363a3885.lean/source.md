# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReverseLink.Variant2b0da9ca9f89b8d59d99aa4a167a72d84dda1847994970375d179f51363a3885

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86dfbd3aeb5e7e5df7101232e44b00f95f7a3d36` · SHA-256 `2b0da9ca9f89b8d59d99aa4a167a72d84dda1847994970375d179f51363a3885`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
