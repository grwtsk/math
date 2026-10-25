# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant236cfcd256b813b15d72d0a3a652221dba906ef70cf4397bee722a9f7a442b16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b6408da3f1499f038c7f47c1e086f63ec8bd703` · SHA-256 `236cfcd256b813b15d72d0a3a652221dba906ef70cf4397bee722a9f7a442b16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-! # Closed authority and geometry vocabularies for square-plane elements. -/

namespace URSM.Contracts

inductive PlaneAuthority
  | kernelTheorem
  | reviewedImportedTheorem
  | checkedBuildEvidence
  | checkedRuntimeEvidence
  | committedPolicyDecision
  | navigationOnly
  deriving DecidableEq, Repr

inductive PlaneShape
  | diagonal
  | directed
  | symmetric
  | equivalenceCandidate
  | arbitrary
  deriving DecidableEq, Repr

structure PlaneDescriptor where
  id : String
  authority : PlaneAuthority
  shape : PlaneShape
  schemaVersion : Nat
  meaningDigest : String
  deriving DecidableEq, Repr

end URSM.Contracts
```
