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
