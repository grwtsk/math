# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stability.Variantf2b2ba0e37be74f703a650917765452d31dcbbf5cc13fbc860a9e4330df56dfe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abc47d279d76e711507ec20314fa581c499a5e2e` · SHA-256 `f2b2ba0e37be74f703a650917765452d31dcbbf5cc13fbc860a9e4330df56dfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Relaxation.FixedPoint

/-! # Scoped stability certificates -/

namespace Mathematics.Relaxation

/--
Stability is indexed by one finite work package.  It creates no claim about
the undiscovered ecosystem or future source revisions.
-/
structure ScopedFixedPointCertificate
    (operator : Operator) where
  fixedPoint : FixedPoint operator
  scope : WorkPackage
  scope_matches : fixedPoint.state.workPackage = scope
  constraints_hold :
    SatisfiesAll operator.constraints fixedPoint.state
  certificateDigest : Digest
  globalCompletionNonclaim : Nonclaim

theorem ScopedFixedPointCertificate.source_is_unchanged
    {operator : Operator}
    (certificate : ScopedFixedPointCertificate operator) :
    (operator.step certificate.fixedPoint.state).ecosystemDigest =
      certificate.fixedPoint.state.ecosystemDigest :=
  (operator.source_preserved certificate.fixedPoint.state).1

end Mathematics.Relaxation
```
