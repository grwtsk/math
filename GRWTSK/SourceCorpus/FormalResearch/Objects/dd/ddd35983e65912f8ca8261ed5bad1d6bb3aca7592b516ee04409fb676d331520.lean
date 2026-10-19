import Mathematics.BinaryFrontier.Refinement.CanonicalObstruction
import Mathematics.BinaryFrontier.Refinement.Address
import Mathematics.BinaryFrontier.Refinement.Boundary

/-!
# Total conservative resolution over certified finite input

Totality here means that every well-typed finite resolver input returns one of
four typed outcomes.  The input may explicitly carry unknown evidence; no
claim of universal semantic decidability is made.
-/

namespace Mathematics.BinaryFrontier

inductive FrontierResolution
    (Leaf Obstruction Unknown Rejection : Type)
  | completedLeaf (leaf : Leaf)
  | canonicalObstruction (obstruction : Obstruction)
  | explicitUnknown (unknown : Unknown)
  | malformedInput (rejection : Rejection)

inductive CertifiedResolutionEvidence
    (Leaf Obstruction Unknown Rejection : Type)
  | completed (leaf : Leaf)
  | obstructed (obstruction : Obstruction)
  | undecided (unknown : Unknown)
  | rejected (rejection : Rejection)

structure FiniteCertifiedResolverInput
    (Coordinate Leaf Obstruction Unknown Rejection : Type)
    [Fintype Coordinate]
    [DecidableEq Coordinate] where
  registeredCoordinates : Finset Coordinate
  registryComplete :
    registeredCoordinates = Finset.univ
  evidence :
    CertifiedResolutionEvidence
      Leaf Obstruction Unknown Rejection

def resolveFiniteCertified
    {Coordinate Leaf Obstruction Unknown Rejection : Type}
    [Fintype Coordinate]
    [DecidableEq Coordinate]
    (input :
      FiniteCertifiedResolverInput
        Coordinate Leaf Obstruction Unknown Rejection) :
    FrontierResolution
      Leaf Obstruction Unknown Rejection :=
  match input.evidence with
  | .completed leaf =>
      .completedLeaf leaf
  | .obstructed obstruction =>
      .canonicalObstruction obstruction
  | .undecided unknown =>
      .explicitUnknown unknown
  | .rejected rejection =>
      .malformedInput rejection

theorem finite_certified_resolver_total
    {Coordinate Leaf Obstruction Unknown Rejection : Type}
    [Fintype Coordinate]
    [DecidableEq Coordinate]
    (input :
      FiniteCertifiedResolverInput
        Coordinate Leaf Obstruction Unknown Rejection) :
    ∃ result,
      resolveFiniteCertified input = result :=
  ⟨resolveFiniteCertified input, rfl⟩

end Mathematics.BinaryFrontier
