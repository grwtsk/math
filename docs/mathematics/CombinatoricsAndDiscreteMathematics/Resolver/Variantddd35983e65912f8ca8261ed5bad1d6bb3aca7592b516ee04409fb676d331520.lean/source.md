# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Resolver.Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd575ee13618d0180d7d812e80f8fe589f388f79` · SHA-256 `ddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
