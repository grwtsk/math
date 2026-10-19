import Mathematics.Resolution.Identity

/-!
# Indexed resolution obligations

The proposition, source, authority class, exactness, and certificate kind are
version-bound coordinates of one permanently identified obligation.
-/

namespace Mathematics.Resolution

universe u

inductive ObligationAuthorityClass
  | leanTheorem
  | runtimeRefinement
  | transportNaturality
  | snapshotConsistency
  | codec
  | identityPreservation
  | resultConstruction
  deriving DecidableEq, Repr

inductive ExactnessClass
  | exact
  | certifiedApproximation
  deriving DecidableEq, Repr

structure IndexedObligation (Statement : Type u) where
  identity : ObligationIdentity
  statement : Statement
  propositionDigest : String
  dependencyDigest : String
  authorityClass : ObligationAuthorityClass
  exactness : ExactnessClass
  certificateKind : String
  deriving DecidableEq, Repr

end Mathematics.Resolution
