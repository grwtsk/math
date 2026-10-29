import Mathematics.Homology.TorsionLedger
import Mathlib.Topology.Instances.AddCircle.Defs

/-!
# Manifold-scoped torsion linking witnesses

The nonsingular torsion linking pairing is optional evidence for a closed
oriented manifold.  Relative and twisted variants require separate
certificates; no such pairing is attached to an arbitrary finite complex.
-/

namespace Mathematics.Homology

universe u v

/-- Hypotheses under which an absolute torsion linking pairing is admitted. -/
structure ClosedOrientedManifoldProfile where
  dimension : Nat
  carrierDigest : Digest
  closedManifoldCertificate : ObjectAddress
  orientationCertificate : ObjectAddress

/-- A nondegenerate `ℚ/ℤ` linking pairing in complementary degrees. -/
structure TorsionLinkingPairing
    (LeftTorsion : Type u) (RightTorsion : Type v)
    [AddCommGroup LeftTorsion] [AddCommGroup RightTorsion] where
  profile : ClosedOrientedManifoldProfile
  leftDegree : Nat
  rightDegree : Nat
  complementary :
    leftDegree + rightDegree + 1 = profile.dimension
  pairing :
    LeftTorsion →+ (RightTorsion →+ AddCircle (1 : ℚ))
  nondegenerateLeft :
    Function.Injective pairing
  nondegenerateRight :
    Function.Injective
      (fun right left ↦ pairing left right)
  pairingCertificate : ObjectAddress

end Mathematics.Homology
