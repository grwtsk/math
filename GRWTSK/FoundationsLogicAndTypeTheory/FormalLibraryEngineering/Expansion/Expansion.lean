import Mathematics.Stability.Contraction

/-! # Expansion and retry-circuit separation -/

namespace Mathematics.Stability

inductive RetryDisposition
  | prohibited
  | requiresNewEvidence
  | ownerAdmitted
  deriving DecidableEq, Repr

structure ExpansionCertificate where
  lowerBound : Nat
  scale : Nat
  expansive : scale < lowerBound
  retry : RetryDisposition := .prohibited

def ExpansionCertificate.authorizesAutomaticRetry
    (_ : ExpansionCertificate) : Bool :=
  false

theorem expansion_never_authorizes_automatic_retry
    (certificate : ExpansionCertificate) :
    certificate.authorizesAutomaticRetry = false :=
  rfl

structure ExpansionResolutionObligations where
  escapeSet : Prop
  periodicAlternative : Prop
  dampingAlternative : Prop
  boundaryIsolation : Prop
  escapeStatus : ProofDisposition
  periodicStatus : ProofDisposition
  dampingStatus : ProofDisposition
  boundaryStatus : ProofDisposition

end Mathematics.Stability
