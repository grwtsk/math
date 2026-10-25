# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MappingTorus.Variant45d37977776c7f599bf3e41dd887cba55a9bd5825c922d7d21f961979f78b742

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c29c78b18390adcd17b77d2cb9e0c751e0ab5c28` · SHA-256 `45d37977776c7f599bf3e41dd887cba55a9bd5825c922d7d21f961979f78b742`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.Boundary

/-!
# Mapping-torus and line-fiber certificates

An involutive finite carrier supplies a permutation-loop mapping torus.  A
Möbius line-bundle claim requires the additional orientation-reversing real
fiber action.
-/

namespace Mathematics.TensorNetwork

/-- Certified mapping-torus monodromy. -/
structure MappingTorusCertificate (Carrier : Type*) where
  monodromy : Carrier → Carrier
  inverse : Carrier → Carrier
  leftInverse : Function.LeftInverse inverse monodromy
  rightInverse : Function.RightInverse inverse monodromy

/-- Mapping torus of the typed protocol involution. -/
def typedMobiusMappingTorus (width : Nat) :
    MappingTorusCertificate (TypedMobiusCarrier width) where
  monodromy := mobiusTwist
  inverse := mobiusTwist
  leftInverse := mobiusTwist_involutive
  rightInverse := mobiusTwist_involutive

/--
Additional data required for a genuine orientation-reversing real line fiber.
It is deliberately absent from the finite bit-carrier certificate.
-/
structure OrientationReversingLineFiberCertificate
    (Carrier : Type*) where
  base : MappingTorusCertificate Carrier
  fiberAction : Carrier → ℝ → ℝ
  reverses :
    ∀ carrier coordinate,
      fiberAction carrier coordinate = -coordinate

end Mathematics.TensorNetwork
```
