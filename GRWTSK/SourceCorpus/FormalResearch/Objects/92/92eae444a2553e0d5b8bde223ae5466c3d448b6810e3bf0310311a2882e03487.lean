import ContractElements.ProjectExport

/-!
# Composite packet bindings

These structures bind metadata and content roots.  Packed bytes and activation
remain Rust-owned and are therefore not constructors in this package.
-/

namespace URSM.Contracts

structure CompositeObjectRoots where
  projectExports : ObjectRef
  theoremCertificates : ObjectRef
  transportCertificates : ObjectRef
  buildReceipts : ObjectRef
  kernelChecks : ObjectRef
  runtimeEvidence : ObjectRef
  residues : ObjectRef
  deriving DecidableEq, Repr

structure CompositePacketBinding where
  schemaVersion : Nat
  compositeSnapshotId : DigestRef
  parentCompositeSnapshotId : Option DigestRef
  leanToolchainDigest : DigestRef
  lakeGraphDigest : DigestRef
  projectTableDigest : DigestRef
  slotMapDigest : DigestRef
  objectRoots : CompositeObjectRoots
  packetDigest : DigestRef
  deriving DecidableEq, Repr

end URSM.Contracts
