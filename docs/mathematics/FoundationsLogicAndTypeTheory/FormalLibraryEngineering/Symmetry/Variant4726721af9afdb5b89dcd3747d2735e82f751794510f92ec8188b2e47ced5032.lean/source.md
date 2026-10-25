# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symmetry.Variant4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dadca1ce72b435599b01bdfceddbb38ccbfe4d32` · SHA-256 `4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Boundary
import Mathematics.AbelReynolds.Orbit
import Mathematics.AbelReynolds.Tally

/-!
# Boundary-aware involutive symmetry

Involutivity alone supplies no unstated linear, multiplicative, or
contravariant law.  Fixed reusable blocks therefore carry their exact action
and fixedness witness.
-/

namespace Mathematics.AbelReynolds

structure Involution (Carrier : Type*) where
  act : Carrier → Carrier
  involutive : Function.Involutive act

def Involution.Fixed
    (involution : Involution Carrier)
    (value : Carrier) : Prop :=
  involution.act value = value

@[simp] theorem Involution.act_act
    (involution : Involution Carrier)
    (value : Carrier) :
    involution.act (involution.act value) = value :=
  involution.involutive value

structure BoundaryInvolution (Carrier : Type*) where
  boundary : Involution BoundaryKey
  value : Involution Carrier
  covariance : String

structure TwistedFixedWitness
    (involution : BoundaryInvolution Carrier)
    (sourceBoundary : BoundaryKey)
    (value : Carrier) where
  identification : Carrier → Carrier
  identifiedFixed :
    identification (involution.value.act value) = value
  sourceMatches :
    involution.boundary.act sourceBoundary ≠ sourceBoundary

structure CertifiedTallyInvolution where
  mark : Involution CertifiedMark

def CertifiedTallyInvolution.act
    (involution : CertifiedTallyInvolution)
    (tally : CertifiedTally) : CertifiedTally :=
  tally.map involution.mark.act

theorem CertifiedTallyInvolution.act_involutive
    (involution : CertifiedTallyInvolution) :
    Function.Involutive involution.act := by
  intro tally
  simp [CertifiedTallyInvolution.act,
    involution.mark.involutive]

structure FixedReusableBlock
    (involution : CertifiedTallyInvolution) where
  tally : CertifiedTally
  nonempty : tally ≠ []
  fixed : involution.act tally = tally

structure ReynoldsSymmetryCompatibility
    (Carrier : Type*) where
  symmetry : Involution Carrier
  projector : Weight → Carrier → Carrier
  characterAction : Weight → Weight
  commutes :
    ∀ weight value,
      symmetry.act (projector weight value) =
        projector (characterAction weight)
          (symmetry.act value)

end Mathematics.AbelReynolds
```
