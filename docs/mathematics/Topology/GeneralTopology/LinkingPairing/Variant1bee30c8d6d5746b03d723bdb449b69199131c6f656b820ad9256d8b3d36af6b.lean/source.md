# Complete source: GRWTSK.Topology.GeneralTopology.LinkingPairing.Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bafdbbe228a90a2d4680b7f35019706b258065f2` · SHA-256 `1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
