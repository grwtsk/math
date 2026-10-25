# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kind.Variante965def4b51322100a690a2911472d3a5d0f26f185070f75cbfc10084a3bccdf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0b521fa16e14fc8dc2da0c2e024a24d0f7a7ee5` · SHA-256 `e965def4b51322100a690a2911472d3a5d0f26f185070f75cbfc10084a3bccdf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Conservative resolution kinds

Unknown proof availability is distinct from falsity and from rejection of an
invocation envelope.
-/

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
