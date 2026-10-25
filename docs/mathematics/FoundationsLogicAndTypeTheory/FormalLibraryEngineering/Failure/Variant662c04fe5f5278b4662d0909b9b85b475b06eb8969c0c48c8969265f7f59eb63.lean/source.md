# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Failure.Variant662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71a3db9dd27094e51d856d352e754825e03f8f45` · SHA-256 `662c04fe5f5278b4662d0909b9b85b475b06eb8969c0c48c8969265f7f59eb63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Fail-closed projection states

These are terminal proof failures, not ranking outcomes.  An implementation may
attach diagnostics, but it may not replace any constructor below with a guess.
-/

namespace Mathematics.Projection

/-- Every mandatory stop state in the rigidified projection protocol. -/
inductive ProjectionFailure
  | uncertifiedExternalLabel
  | labelCollision
  | incompleteLabelCoverage
  | ambiguousLabelDenotation
  | unresolvedDerivedNode
  | nonfunctionalProjectionLaw
  | projectionCertificateFailure
  deriving DecidableEq, Repr, Inhabited

/-- A projection can be emitted only on the successful side of this boundary. -/
abbrev ProjectionResult (Projection : Type) :=
  Except ProjectionFailure Projection

end Mathematics.Projection
```
