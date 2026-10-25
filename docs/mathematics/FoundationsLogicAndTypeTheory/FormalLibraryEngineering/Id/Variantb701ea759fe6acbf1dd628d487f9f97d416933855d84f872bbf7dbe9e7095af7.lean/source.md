# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Id.Variantb701ea759fe6acbf1dd628d487f9f97d416933855d84f872bbf7dbe9e7095af7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa2ab4a0c2b741e079518077a4343a3ef5564f19` · SHA-256 `b701ea759fe6acbf1dd628d487f9f97d416933855d84f872bbf7dbe9e7095af7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
