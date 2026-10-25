# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Plane.Variant79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f7cc53036e9d8c9065d36f5c27dfbc2e3265587` · SHA-256 `79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ContractElements.Authority
import ContractElements.BitSquare

/-! # Proof-indexed formal planes and nonauthoritative operational planes. -/

namespace URSM.Contracts

structure FormalPlane
    (n : Nat)
    (Meaning : Fin n → Fin n → Prop) where
  descriptor : PlaneDescriptor
  square : ResolvedSquare n
  positive :
    ∀ i j, square.read? i j = some true → Meaning i j
  negative :
    ∀ i j, square.read? i j = some false → ¬ Meaning i j
  certificateRoot : String

structure OperationalPlane (n : Nat) where
  descriptor : PlaneDescriptor
  square : ResolvedSquare n
  evidenceRoot : String
  epoch : Nat

/--
The canonical formalization of an exact Boolean relation.  Its proposition is
the relation itself, not a theorem inferred from runtime bytes.
-/
def FormalPlane.ofBits
    (descriptor : PlaneDescriptor)
    (bits : BitSquare n)
    (certificateRoot : String) :
    FormalPlane n (fun i j ↦ bits i j = true) where
  descriptor := descriptor
  square := ResolvedSquare.fullyResolved bits
  positive := by
    intro i j observed
    simpa using observed
  negative := by
    intro i j observed
    have isFalse : bits i j = false := by
      simpa using observed
    simp [isFalse]
  certificateRoot := certificateRoot

end URSM.Contracts
```
