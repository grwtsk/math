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
