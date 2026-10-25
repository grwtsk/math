# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expansion.Variante22e9fd5ad27f7037dc4f059b255e1b11284e9e4c03c7835ea6a79eb2e054426

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b911bb12501b1cb0b92ea67112be517363c195d6` · SHA-256 `e22e9fd5ad27f7037dc4f059b255e1b11284e9e4c03c7835ea6a79eb2e054426`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
