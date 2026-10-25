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
