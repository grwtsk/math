/-!
# Composite ABI identity elements

These textual wrappers cross package boundaries without importing either
mathematical project.  They carry identity only; equality never manufactures
semantic equivalence or theorem authority.
-/

namespace URSM.Contracts

structure DigestRef where
  value : String
  deriving DecidableEq, Repr, Inhabited

def DigestRef.Valid (digest : DigestRef) : Prop :=
  digest.value.length = 64 ∧
    digest.value.toList.all (fun character ↦
      "0123456789abcdef".contains character) = true

structure ProjectKey where
  projectId : String
  revisionId : String
  snapshotDigest : DigestRef
  deriving DecidableEq, Repr

structure ObjectRef where
  objectId : String
  digest : DigestRef
  deriving DecidableEq, Repr

end URSM.Contracts
